@interface UIButton(GKDashboardUtils)
+ (_TtC12GameCenterUI11CloseButton)_gkXmarkedCloseButtonWithTarget:()GKDashboardUtils action:;
@end

@implementation UIButton(GKDashboardUtils)

+ (_TtC12GameCenterUI11CloseButton)_gkXmarkedCloseButtonWithTarget:()GKDashboardUtils action:
{
  v5 = a3;
  v6 = objc_alloc_init(_TtC12GameCenterUI11CloseButton);
  [(CloseButton *)v6 addTarget:v5 action:a4 forEvents:0x2000];

  return v6;
}

@end