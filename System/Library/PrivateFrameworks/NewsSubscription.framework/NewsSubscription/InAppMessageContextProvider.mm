@interface InAppMessageContextProvider
- (_TtC16NewsSubscriptionP33_2BC9D414A52E1C4290962E677FF5534227InAppMessageContextProvider)init;
- (id)viewControllerForModalPresentation;
@end

@implementation InAppMessageContextProvider

- (id)viewControllerForModalPresentation
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedApplication];
  v6 = [v5 key_window];

  if (v6)
  {
    v7 = [v6 rootViewController];

    if (v7)
    {
      v6 = sub_1D78B60B4();

      v4 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (_TtC16NewsSubscriptionP33_2BC9D414A52E1C4290962E677FF5534227InAppMessageContextProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(InAppMessageContextProvider *)&v3 init];
}

@end