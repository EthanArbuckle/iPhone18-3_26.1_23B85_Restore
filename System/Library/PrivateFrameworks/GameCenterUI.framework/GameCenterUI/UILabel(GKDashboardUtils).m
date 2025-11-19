@interface UILabel(GKDashboardUtils)
- (void)_gkUpdateShadowForFocusChange:()GKDashboardUtils;
@end

@implementation UILabel(GKDashboardUtils)

- (void)_gkUpdateShadowForFocusChange:()GKDashboardUtils
{
  if (a3)
  {
    v3 = [MEMORY[0x277D75348] blackColor];
    v6 = [v3 CGColor];
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 layer];
  [v7 setShadowColor:v6];

  if (a3)
  {

    v8 = [a1 layer];
    LODWORD(v9) = 1053609165;
    [v8 setShadowOpacity:v9];

    v10 = 0.0;
    v11 = 2.0;
    v12 = 4.0;
  }

  else
  {
    v13 = [a1 layer];
    LODWORD(v14) = 1053609165;
    [v13 setShadowOpacity:v14];

    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
    v12 = 0.0;
  }

  v15 = [a1 layer];
  [v15 setShadowOffset:{v10, v11}];

  v16 = [a1 layer];
  [v16 setShadowRadius:v12];
}

@end