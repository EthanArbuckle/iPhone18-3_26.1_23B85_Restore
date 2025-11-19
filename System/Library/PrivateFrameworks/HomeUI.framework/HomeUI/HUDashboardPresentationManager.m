@interface HUDashboardPresentationManager
+ (HUDashboardPresentationManager)sharedManager;
- (HUDashboardPresentationManager)init;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (void)navigationController:(id)a3 didPushItem:(id)a4;
- (void)navigationController:(id)a3 didUpdatePreferredPaletteHeight:(double)a4;
- (void)navigationController:(id)a3 willPresent:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willPushItem:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
@end

@implementation HUDashboardPresentationManager

+ (HUDashboardPresentationManager)sharedManager
{
  if (qword_281120548 != -1)
  {
    swift_once();
  }

  v3 = qword_281120550;

  return v3;
}

- (HUDashboardPresentationManager)init
{
  v3 = self + OBJC_IVAR___HUDashboardPresentationManager_delegate;
  v4 = type metadata accessor for DashboardPresentationManager();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(HUDashboardPresentationManager *)&v6 init];
}

- (void)navigationController:(id)a3 willPushItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D0F4A54(v6, v7);
}

- (void)navigationController:(id)a3 didPushItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D0F4D84(v6, v7);
}

- (void)navigationController:(id)a3 didUpdatePreferredPaletteHeight:(double)a4
{
  v6 = a3;
  v7 = self;
  sub_20D0F5004(v6, a4);
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  v14 = _s6HomeUI28DashboardPresentationManagerC20navigationController_09animationG3For4from2toSo06UIViewG21AnimatedTransitioning_pSgSo012UINavigationG0C_So0oG9OperationVSo0lG0CAOtF_0(v10, a4, v11, v12);

  return v14;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  DashboardPresentationManager.navigationController(_:willShow:animated:)(v8, v9, a5);
}

- (void)navigationController:(id)a3 willPresent:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_20D0F465C(v8, v9, v5);
}

@end