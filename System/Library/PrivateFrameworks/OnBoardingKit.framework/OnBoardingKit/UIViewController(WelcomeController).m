@interface UIViewController(WelcomeController)
- (BOOL)ob_isFormSheet;
@end

@implementation UIViewController(WelcomeController)

- (BOOL)ob_isFormSheet
{
  v2 = [a1 navigationController];

  if (v2)
  {
    v3 = [a1 navigationController];
    v4 = [v3 modalPresentationStyle];
  }

  else
  {
    v4 = [a1 modalPresentationStyle];
  }

  return v4 == 2;
}

@end