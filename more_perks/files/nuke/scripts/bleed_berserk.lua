dofile("data/scripts/lib/utilities.lua")

table.insert( perk_list,
{
	id = "BLEED_BERSERK",
	ui_name = "Berserker Blood",
	ui_description = "You bleed a lot of berserkium.",
	ui_icon = "mods/more_perks/files/nuke/perks_gfx/ui/berz_blood.png",
	perk_icon = "mods/more_perks/files/nuke/perks_gfx/ig/berz_blood.png",
	--not_in_default_perk_pool = cfg_disable_wandbuff,
	func = function( entity_perk_item, entity_who_picked, item_name )
		
		local damagemodels = EntityGetComponent( entity_who_picked, "DamageModelComponent" )
		
		if( damagemodels ~= nil ) then
		
			for i,damagemodel in ipairs(damagemodels) do
			
				ComponentSetValue( damagemodel, "blood_material", "magic_liquid_berserk" )
				ComponentSetValue( damagemodel, "blood_spray_material", "magic_liquid_berserk" )
				ComponentSetValue( damagemodel, "blood_multiplier", "5.5" )
				ComponentSetValue( damagemodel, "blood_sprite_directional", "files/nuke/perks_gfx/bloodsplatter_directional_purple_1.xml" )
				ComponentSetValue( damagemodel, "blood_sprite_large", "files/nuke/perks_gfx/bloodsplatter_purple_1.xml" )
				
			end
			
		end
			
	end,
		
})


