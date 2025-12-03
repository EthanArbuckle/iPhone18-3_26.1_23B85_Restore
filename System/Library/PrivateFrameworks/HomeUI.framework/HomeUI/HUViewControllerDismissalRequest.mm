@interface HUViewControllerDismissalRequest
+ (id)requestWithViewController:(id)controller;
- (HUViewControllerDismissalRequest)initWithViewController:(id)controller;
@end

@implementation HUViewControllerDismissalRequest

+ (id)requestWithViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [[HUViewControllerDismissalRequest alloc] initWithViewController:controllerCopy];

  return v4;
}

- (HUViewControllerDismissalRequest)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = HUViewControllerDismissalRequest;
  v6 = [(HUViewControllerDismissalRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, controller);
    v7->_animated = 1;
  }

  return v7;
}

@end