@interface HUDashboardPresentationManager
+ (HUDashboardPresentationManager)sharedManager;
- (HUDashboardPresentationManager)init;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (void)navigationController:(id)controller didPushItem:(id)item;
- (void)navigationController:(id)controller didUpdatePreferredPaletteHeight:(double)height;
- (void)navigationController:(id)controller willPresent:(id)present animated:(BOOL)animated;
- (void)navigationController:(id)controller willPushItem:(id)item;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
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

- (void)navigationController:(id)controller willPushItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  selfCopy = self;
  sub_20D0F4A54(controllerCopy, itemCopy);
}

- (void)navigationController:(id)controller didPushItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  selfCopy = self;
  sub_20D0F4D84(controllerCopy, itemCopy);
}

- (void)navigationController:(id)controller didUpdatePreferredPaletteHeight:(double)height
{
  controllerCopy = controller;
  selfCopy = self;
  sub_20D0F5004(controllerCopy, height);
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  selfCopy = self;
  v14 = _s6HomeUI28DashboardPresentationManagerC20navigationController_09animationG3For4from2toSo06UIViewG21AnimatedTransitioning_pSgSo012UINavigationG0C_So0oG9OperationVSo0lG0CAOtF_0(controllerCopy, operation, viewControllerCopy, toViewControllerCopy);

  return v14;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  DashboardPresentationManager.navigationController(_:willShow:animated:)(controllerCopy, viewControllerCopy, animated);
}

- (void)navigationController:(id)controller willPresent:(id)present animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  presentCopy = present;
  selfCopy = self;
  sub_20D0F465C(controllerCopy, presentCopy, animatedCopy);
}

@end