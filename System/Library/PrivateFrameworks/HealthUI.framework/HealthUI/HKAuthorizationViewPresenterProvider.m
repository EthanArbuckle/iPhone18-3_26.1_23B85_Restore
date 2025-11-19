@interface HKAuthorizationViewPresenterProvider
- (id)hkAuthorizationViewControllerPresenter:(id)a3;
@end

@implementation HKAuthorizationViewPresenterProvider

- (id)hkAuthorizationViewControllerPresenter:(id)a3
{
  v3 = a3;
  v4 = [v3 presentedViewController];

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
    v5 = [v6 rootViewController];
  }

  return v5;
}

@end