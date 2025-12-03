@interface InAppMessageContextProvider
- (_TtC16NewsSubscriptionP33_2BC9D414A52E1C4290962E677FF5534227InAppMessageContextProvider)init;
- (id)viewControllerForModalPresentation;
@end

@implementation InAppMessageContextProvider

- (id)viewControllerForModalPresentation
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedApplication = [v3 sharedApplication];
  key_window = [sharedApplication key_window];

  if (key_window)
  {
    rootViewController = [key_window rootViewController];

    if (rootViewController)
    {
      key_window = sub_1D78B60B4();

      selfCopy = rootViewController;
    }

    else
    {
      key_window = 0;
    }
  }

  return key_window;
}

- (_TtC16NewsSubscriptionP33_2BC9D414A52E1C4290962E677FF5534227InAppMessageContextProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(InAppMessageContextProvider *)&v3 init];
}

@end