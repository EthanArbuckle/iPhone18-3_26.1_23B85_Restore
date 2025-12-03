@interface UIViewController(AuthenticationHelper)
- (void)hk_authenticateWithCompletionViewController:()AuthenticationHelper;
- (void)hk_authenticateWithGuard:()AuthenticationHelper completionViewController:;
@end

@implementation UIViewController(AuthenticationHelper)

- (void)hk_authenticateWithCompletionViewController:()AuthenticationHelper
{
  v4 = MEMORY[0x277CEBE98];
  v5 = a3;
  sharedGuard = [v4 sharedGuard];
  [self hk_authenticateWithGuard:sharedGuard completionViewController:v5];
}

- (void)hk_authenticateWithGuard:()AuthenticationHelper completionViewController:
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__UIViewController_AuthenticationHelper__hk_authenticateWithGuard_completionViewController___block_invoke;
  v9[3] = &unk_2796E54E8;
  objc_copyWeak(&v12, &location);
  v8 = v7;
  v10 = v8;
  selfCopy = self;
  [AuthenticationHelper _authenticateWithGuard:v6 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

@end