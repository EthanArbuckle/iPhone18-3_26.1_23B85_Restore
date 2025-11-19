@interface HKModalNavigationController
- (HKModalNavigationController)initWithRootViewController:(id)a3;
- (void)dismissWithAnimation:(id)a3;
@end

@implementation HKModalNavigationController

- (HKModalNavigationController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKModalNavigationController;
  v5 = [(HKModalNavigationController *)&v11 initWithRootViewController:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v5 action:sel_dismissWithAnimation_];
    v7 = [@"UIA.Health" stringByAppendingString:@".ModalNavigationItem.Done"];
    [v6 setAccessibilityIdentifier:v7];

    v8 = [v4 navigationItem];
    [v8 setRightBarButtonItem:v6];

    v9 = [v4 title];
    [(HKModalNavigationController *)v5 setTitle:v9];

    [(HKModalNavigationController *)v5 setCompletion:0];
  }

  return v5;
}

- (void)dismissWithAnimation:(id)a3
{
  v4 = [(HKModalNavigationController *)self completion];
  [(HKModalNavigationController *)self dismissViewControllerAnimated:1 completion:v4];
}

@end