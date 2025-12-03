@interface HKAuthorizationViewPresenterProvider
- (id)hkAuthorizationViewControllerPresenter:(id)presenter;
@end

@implementation HKAuthorizationViewPresenterProvider

- (id)hkAuthorizationViewControllerPresenter:(id)presenter
{
  presenterCopy = presenter;
  presentedViewController = [presenterCopy presentedViewController];

  if (presentedViewController)
  {
    rootViewController = presenterCopy;
  }

  else
  {
    _applicationKeyWindow = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
    rootViewController = [_applicationKeyWindow rootViewController];
  }

  return rootViewController;
}

@end