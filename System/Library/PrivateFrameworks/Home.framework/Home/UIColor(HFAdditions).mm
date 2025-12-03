@interface UIColor(HFAdditions)
+ (id)hf_homePodControlCellBackgroundColor;
- (BOOL)isEqualToColor:()HFAdditions;
@end

@implementation UIColor(HFAdditions)

+ (id)hf_homePodControlCellBackgroundColor
{
  if (+[HFUtilities shouldUseControlCenterMaterials])
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      [MEMORY[0x277D75348] colorWithWhite:0.15 alpha:1.0];
    }

    else
    {
      [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    }
    clearColor = ;
  }

  return clearColor;
}

- (BOOL)isEqualToColor:()HFAdditions
{
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v4 = a3;
  [self getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
  [v4 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];

  return vabdd_f64(v13, v9) < 0.00000011920929 && vabdd_f64(v12, v8) < 0.00000011920929 && vabdd_f64(v11, v7) < 0.00000011920929 && vabdd_f64(v10, v6) < 0.00000011920929;
}

@end