@interface UIColor(Dynamic)
+ (id)gk_dynamicColorWithLightColor:()Dynamic darkColor:lightHighContrastColor:darkHighContrastColor:;
@end

@implementation UIColor(Dynamic)

+ (id)gk_dynamicColorWithLightColor:()Dynamic darkColor:lightHighContrastColor:darkHighContrastColor:
{
  v32[2] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D75C80];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 traitCollectionWithUserInterfaceStyle:1];
  v32[0] = v14;
  v15 = [MEMORY[0x277D75C80] _traitCollectionWithContrast:1];
  v32[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v17 = [v9 traitCollectionWithTraitsFromCollections:v16];

  v18 = MEMORY[0x277D75C80];
  v19 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v31[0] = v19;
  v20 = [MEMORY[0x277D75C80] _traitCollectionWithContrast:1];
  v31[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v22 = [v18 traitCollectionWithTraitsFromCollections:v21];

  v23 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  v29[0] = v23;
  v30[0] = v13;
  v24 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v29[1] = v24;
  v30[1] = v13;
  v25 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v29[2] = v25;
  v29[3] = v17;
  v30[2] = v12;
  v30[3] = v11;
  v29[4] = v22;
  v30[4] = v10;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];

  v27 = [MEMORY[0x277D75348] _dynamicColorWithColorsByTraitCollection:v26];

  return v27;
}

@end