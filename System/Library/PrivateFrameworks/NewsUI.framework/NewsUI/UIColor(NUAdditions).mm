@interface UIColor(NUAdditions)
+ (id)arrayOfColors;
+ (id)nu_dynamicColor:()NUAdditions withDarkStyleVariant:;
+ (id)nu_safeColorForIdentifier:()NUAdditions;
@end

@implementation UIColor(NUAdditions)

+ (id)nu_safeColorForIdentifier:()NUAdditions
{
  v4 = a3;
  v5 = [a1 arrayOfColors];
  v6 = [v4 hash];

  v7 = [v5 objectAtIndex:{v6 % objc_msgSend(v5, "count")}];

  return v7;
}

+ (id)arrayOfColors
{
  v27[8] = *MEMORY[0x277D85DE8];
  v17 = [MEMORY[0x277D75348] systemBlueColor];
  v18 = [MEMORY[0x277D75348] systemPurpleColor];
  v25 = 0.0;
  v26 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  [v18 getRed:&v26 green:&v25 blue:&v24 alpha:&v23];
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  [v17 getRed:&v22 green:&v21 blue:&v20 alpha:&v19];
  v16 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.678431373 blue:0.0 alpha:1.0];
  v27[0] = v16;
  v15 = [MEMORY[0x277D75348] colorWithRed:0.992156863 green:0.466666667 blue:0.156862745 alpha:1.0];
  v27[1] = v15;
  v0 = MEMORY[0x277D75348];
  v14 = [MEMORY[0x277D75348] colorWithRed:0.411764706 green:0.337254902 blue:0.701960784 alpha:1.0];
  v1 = [MEMORY[0x277D75348] colorWithRed:v26 green:v25 blue:v24 alpha:v23];
  v2 = [v0 nu_dynamicColor:v14 withDarkStyleVariant:v1];
  v27[2] = v2;
  v3 = [MEMORY[0x277D75348] colorWithRed:0.764705882 green:0.384313725 blue:0.874509804 alpha:1.0];
  v27[3] = v3;
  v4 = [MEMORY[0x277D75348] colorWithRed:0.360784314 green:0.752941176 blue:0.549019608 alpha:1.0];
  v27[4] = v4;
  v5 = [MEMORY[0x277D75348] colorWithRed:0.0274509804 green:0.709803922 blue:0.796078431 alpha:1.0];
  v27[5] = v5;
  v6 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v27[6] = v6;
  v7 = MEMORY[0x277D75348];
  v8 = [MEMORY[0x277D75348] colorWithRed:0.149019608 green:0.28627451 blue:0.549019608 alpha:1.0];
  v9 = [MEMORY[0x277D75348] colorWithRed:v22 green:v21 blue:v20 alpha:v19];
  v10 = [v7 nu_dynamicColor:v8 withDarkStyleVariant:v9];
  v27[7] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:8];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)nu_dynamicColor:()NUAdditions withDarkStyleVariant:
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D75C80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 traitCollectionWithUserInterfaceStyle:0];
  v9 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v14[0] = v8;
  v14[1] = v9;
  v15[0] = v7;
  v15[1] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [MEMORY[0x277D75348] _dynamicColorWithColorsByTraitCollection:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end