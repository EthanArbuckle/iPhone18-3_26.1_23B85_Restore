@interface UIColor
@end

@implementation UIColor

void __66__UIColor_CarPlayUIServices__crsui_dashboardWidgetBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.270588235 green:0.270588235 blue:0.28627451 alpha:1.0];
  v1 = [MEMORY[0x277D75348] colorWithRed:0.168627451 green:0.176470588 blue:0.184313725 alpha:1.0];
  v2 = [MEMORY[0x277D75348] colorWithWhite:0.960784314 alpha:1.0];
  v3 = MEMORY[0x277D75348];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__UIColor_CarPlayUIServices__crsui_dashboardWidgetBackgroundColor__block_invoke_2;
  v9[3] = &unk_278DA0A50;
  v10 = v2;
  v11 = v1;
  v12 = v0;
  v4 = v0;
  v5 = v1;
  v6 = v2;
  v7 = [v3 colorWithDynamicProvider:v9];
  v8 = crsui_dashboardWidgetBackgroundColor_dashboardWidgetBackgroundColor;
  crsui_dashboardWidgetBackgroundColor_dashboardWidgetBackgroundColor = v7;
}

void *__66__UIColor_CarPlayUIServices__crsui_dashboardWidgetBackgroundColor__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 userInterfaceStyle] == 1)
  {
    v4 = 32;
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v3 valueForNSIntegerTrait:v5];

    v4 = 48;
    if (v6 == 1)
    {
      v4 = 40;
    }
  }

  v7 = *(a1 + v4);
  v8 = v7;

  return v7;
}

uint64_t __73__UIColor_CarPlayUIServices__crsui_consoleTurnCardETATrayBackgroundColor__block_invoke()
{
  crsui_consoleTurnCardETATrayBackgroundColor_consoleTurnCardBackgroundColor = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_6];

  return MEMORY[0x2821F96F8]();
}

id __73__UIColor_CarPlayUIServices__crsui_consoleTurnCardETATrayBackgroundColor__block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = [MEMORY[0x277D75348] blackColor];
    v3 = v2;
    v4 = 0.65;
  }

  else
  {
    v2 = [MEMORY[0x277D75348] whiteColor];
    v3 = v2;
    v4 = 0.75;
  }

  v5 = [v2 colorWithAlphaComponent:v4];

  return v5;
}

@end