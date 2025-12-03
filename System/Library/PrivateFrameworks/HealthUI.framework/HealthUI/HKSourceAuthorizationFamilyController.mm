@interface HKSourceAuthorizationFamilyController
- (HKSourceAuthorizationFamilyController)initWithController:(id)controller viewController:(id)viewController;
@end

@implementation HKSourceAuthorizationFamilyController

- (HKSourceAuthorizationFamilyController)initWithController:(id)controller viewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v12.receiver = self;
  v12.super_class = HKSourceAuthorizationFamilyController;
  v9 = [(HKSourceAuthorizationFamilyController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controller, controller);
    objc_storeStrong(&v10->_viewController, viewController);
  }

  return v10;
}

@end