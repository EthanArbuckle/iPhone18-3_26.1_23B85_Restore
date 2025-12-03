@interface UILabel(GKDashboardUtils)
- (void)_gkUpdateShadowForFocusChange:()GKDashboardUtils;
@end

@implementation UILabel(GKDashboardUtils)

- (void)_gkUpdateShadowForFocusChange:()GKDashboardUtils
{
  if (a3)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    cGColor = [blackColor CGColor];
  }

  else
  {
    cGColor = 0;
  }

  layer = [self layer];
  [layer setShadowColor:cGColor];

  if (a3)
  {

    layer2 = [self layer];
    LODWORD(v9) = 1053609165;
    [layer2 setShadowOpacity:v9];

    v10 = 0.0;
    v11 = 2.0;
    v12 = 4.0;
  }

  else
  {
    layer3 = [self layer];
    LODWORD(v14) = 1053609165;
    [layer3 setShadowOpacity:v14];

    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
    v12 = 0.0;
  }

  layer4 = [self layer];
  [layer4 setShadowOffset:{v10, v11}];

  layer5 = [self layer];
  [layer5 setShadowRadius:v12];
}

@end