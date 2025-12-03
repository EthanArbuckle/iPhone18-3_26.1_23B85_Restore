@interface HKModalNavigationController
- (HKModalNavigationController)initWithRootViewController:(id)controller;
- (void)dismissWithAnimation:(id)animation;
@end

@implementation HKModalNavigationController

- (HKModalNavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = HKModalNavigationController;
  v5 = [(HKModalNavigationController *)&v11 initWithRootViewController:controllerCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v5 action:sel_dismissWithAnimation_];
    v7 = [@"UIA.Health" stringByAppendingString:@".ModalNavigationItem.Done"];
    [v6 setAccessibilityIdentifier:v7];

    navigationItem = [controllerCopy navigationItem];
    [navigationItem setRightBarButtonItem:v6];

    title = [controllerCopy title];
    [(HKModalNavigationController *)v5 setTitle:title];

    [(HKModalNavigationController *)v5 setCompletion:0];
  }

  return v5;
}

- (void)dismissWithAnimation:(id)animation
{
  completion = [(HKModalNavigationController *)self completion];
  [(HKModalNavigationController *)self dismissViewControllerAnimated:1 completion:completion];
}

@end