@interface NWCColor
+ (UIColor)conditionsBackgroundColor;
+ (UIColor)conditionsBlueTintColor;
+ (UIColor)conditionsNoDataColor;
+ (UIColor)conditionsYellowTintColor;
+ (UIColor)titleNoDataColor;
@end

@implementation NWCColor

+ (UIColor)conditionsBackgroundColor
{
  if (conditionsBackgroundColor_onceToken != -1)
  {
    +[NWCColor conditionsBackgroundColor];
  }

  v3 = conditionsBackgroundColor_ConditionsBackgroundColor;

  return v3;
}

void __37__NWCColor_conditionsBackgroundColor__block_invoke()
{
  v2 = +[NWCColor tintColor];
  v0 = [v2 colorWithAlphaComponent:0.2];
  v1 = conditionsBackgroundColor_ConditionsBackgroundColor;
  conditionsBackgroundColor_ConditionsBackgroundColor = v0;
}

+ (UIColor)conditionsBlueTintColor
{
  if (conditionsBlueTintColor_onceToken != -1)
  {
    +[NWCColor conditionsBlueTintColor];
  }

  v3 = conditionsBlueTintColor_ConditionsBlueTintColor;

  return v3;
}

uint64_t __35__NWCColor_conditionsBlueTintColor__block_invoke()
{
  conditionsBlueTintColor_ConditionsBlueTintColor = [MEMORY[0x277D75348] colorWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

+ (UIColor)conditionsYellowTintColor
{
  if (conditionsYellowTintColor_onceToken != -1)
  {
    +[NWCColor conditionsYellowTintColor];
  }

  v3 = conditionsYellowTintColor_ConditionsYellowTintColor;

  return v3;
}

uint64_t __37__NWCColor_conditionsYellowTintColor__block_invoke()
{
  conditionsYellowTintColor_ConditionsYellowTintColor = [MEMORY[0x277D75348] colorWithRed:0.992156863 green:0.839215686 blue:0.270588235 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

+ (UIColor)conditionsNoDataColor
{
  if (conditionsNoDataColor_onceToken != -1)
  {
    +[NWCColor conditionsNoDataColor];
  }

  v3 = conditionsNoDataColor_ConditionsNoDataColor;

  return v3;
}

uint64_t __33__NWCColor_conditionsNoDataColor__block_invoke()
{
  conditionsNoDataColor_ConditionsNoDataColor = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.25];

  return MEMORY[0x2821F96F8]();
}

+ (UIColor)titleNoDataColor
{
  if (titleNoDataColor_onceToken != -1)
  {
    +[NWCColor titleNoDataColor];
  }

  v3 = titleNoDataColor_TitleNoDataColor;

  return v3;
}

uint64_t __28__NWCColor_titleNoDataColor__block_invoke()
{
  titleNoDataColor_TitleNoDataColor = [MEMORY[0x277D75348] colorWithRed:0.501960784 green:0.501960784 blue:0.501960784 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

@end