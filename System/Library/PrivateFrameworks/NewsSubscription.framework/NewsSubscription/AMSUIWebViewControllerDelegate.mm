@interface AMSUIWebViewControllerDelegate
- (_TtC16NewsSubscription30AMSUIWebViewControllerDelegate)init;
- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion;
@end

@implementation AMSUIWebViewControllerDelegate

- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  controllerCopy = controller;
  requestCopy = request;
  selfCopy = self;
  sub_1D77F671C(controllerCopy, requestCopy, sub_1D779D58C, v9);
}

- (_TtC16NewsSubscription30AMSUIWebViewControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end