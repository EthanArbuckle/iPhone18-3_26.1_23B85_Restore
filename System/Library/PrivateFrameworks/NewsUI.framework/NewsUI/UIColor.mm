@interface UIColor
@end

@implementation UIColor

void __34__UIColor_NewsUI__nu_dividerColor__block_invoke()
{
  v0 = MEMORY[0x277D75348];
  v4 = [MEMORY[0x277D75348] nu_lightStyleDividerColor];
  v1 = [MEMORY[0x277D75348] nu_darkStyleDividerColor];
  v2 = [v0 nu_dynamicColor:v4 withDarkStyleVariant:v1];
  v3 = nu_dividerColor_dividerColor;
  nu_dividerColor_dividerColor = v2;
}

uint64_t __44__UIColor_NewsUI__nu_lightStyleDividerColor__block_invoke()
{
  nu_lightStyleDividerColor_dividerColor = [MEMORY[0x277D75348] colorWithWhite:0.901960784 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

uint64_t __43__UIColor_NewsUI__nu_darkStyleDividerColor__block_invoke()
{
  nu_darkStyleDividerColor_dividerColor = [MEMORY[0x277D75348] colorWithWhite:0.0980392157 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

@end