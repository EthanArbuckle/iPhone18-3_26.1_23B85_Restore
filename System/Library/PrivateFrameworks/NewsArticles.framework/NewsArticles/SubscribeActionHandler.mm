@interface SubscribeActionHandler
- (_TtC12NewsArticles22SubscribeActionHandler)init;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
- (void)handleAMSPurchaseCompletion;
- (void)handleSubscribeActionOnPresenter:(id)presenter completionBlock:(id)block;
- (void)handleSubscribeActionOnPresenter:(id)presenter inAppPurchaseIdKey:(id)key completionBlock:(id)block;
@end

@implementation SubscribeActionHandler

- (_TtC12NewsArticles22SubscribeActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleSubscribeActionOnPresenter:(id)presenter inAppPurchaseIdKey:(id)key completionBlock:(id)block
{
  v8 = _Block_copy(block);
  if (key)
  {
    v9 = sub_1D7D3034C();
    key = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D7BF62A0(presenter, v9, key, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)handleSubscribeActionOnPresenter:(id)presenter completionBlock:(id)block
{
  v6 = _Block_copy(block);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D7BF62A0(presenter, 0, 0, selfCopy, v6);
  _Block_release(v6);

  _Block_release(v6);

  swift_unknownObjectRelease();
}

- (void)handleAMSPurchaseCompletion
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    controller = [v4 controller];
    swift_unknownObjectRelease();
    if (controller)
    {
      [(SubscribeActionHandler *)controller dismissViewControllerAnimated:1 completion:0];

      v6 = controller;
    }

    else
    {
      v6 = selfCopy;
    }
  }
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  sub_1D7BF9C0C();
}

@end