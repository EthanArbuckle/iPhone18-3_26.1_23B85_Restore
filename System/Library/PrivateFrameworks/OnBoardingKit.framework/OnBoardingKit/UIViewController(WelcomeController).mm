@interface UIViewController(WelcomeController)
- (BOOL)ob_isFormSheet;
@end

@implementation UIViewController(WelcomeController)

- (BOOL)ob_isFormSheet
{
  navigationController = [self navigationController];

  if (navigationController)
  {
    navigationController2 = [self navigationController];
    modalPresentationStyle = [navigationController2 modalPresentationStyle];
  }

  else
  {
    modalPresentationStyle = [self modalPresentationStyle];
  }

  return modalPresentationStyle == 2;
}

@end