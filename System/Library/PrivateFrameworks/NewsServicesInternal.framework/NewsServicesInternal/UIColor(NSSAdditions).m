@interface UIColor(NSSAdditions)
+ (id)nss_dynamicColor:()NSSAdditions withDarkStyleVariant:;
@end

@implementation UIColor(NSSAdditions)

+ (id)nss_dynamicColor:()NSSAdditions withDarkStyleVariant:
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