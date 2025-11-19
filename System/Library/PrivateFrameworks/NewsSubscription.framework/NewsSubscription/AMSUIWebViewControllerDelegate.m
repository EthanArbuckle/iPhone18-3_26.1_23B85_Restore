@interface AMSUIWebViewControllerDelegate
- (_TtC16NewsSubscription30AMSUIWebViewControllerDelegate)init;
- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
@end

@implementation AMSUIWebViewControllerDelegate

- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1D77F671C(v10, v11, sub_1D779D58C, v9);
}

- (_TtC16NewsSubscription30AMSUIWebViewControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end