@interface UIColor(NewsUI)
+ (id)nu_darkStyleDividerColor;
+ (id)nu_dividerColor;
+ (id)nu_dynamicColor:()NewsUI withDarkStyleVariant:;
+ (id)nu_lightStyleDividerColor;
@end

@implementation UIColor(NewsUI)

+ (id)nu_dynamicColor:()NewsUI withDarkStyleVariant:
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

+ (id)nu_dividerColor
{
  if (nu_dividerColor_onceToken != -1)
  {
    +[UIColor(NewsUI) nu_dividerColor];
  }

  v1 = nu_dividerColor_dividerColor;

  return v1;
}

+ (id)nu_lightStyleDividerColor
{
  if (nu_lightStyleDividerColor_onceToken != -1)
  {
    +[UIColor(NewsUI) nu_lightStyleDividerColor];
  }

  v1 = nu_lightStyleDividerColor_dividerColor;

  return v1;
}

+ (id)nu_darkStyleDividerColor
{
  if (nu_darkStyleDividerColor_onceToken != -1)
  {
    +[UIColor(NewsUI) nu_darkStyleDividerColor];
  }

  v1 = nu_darkStyleDividerColor_dividerColor;

  return v1;
}

@end