@interface SubscribeActionHandler
- (_TtC12NewsArticles22SubscribeActionHandler)init;
- (void)bundleSubscriptionDidSubscribe:(id)a3;
- (void)handleAMSPurchaseCompletion;
- (void)handleSubscribeActionOnPresenter:(id)a3 completionBlock:(id)a4;
- (void)handleSubscribeActionOnPresenter:(id)a3 inAppPurchaseIdKey:(id)a4 completionBlock:(id)a5;
@end

@implementation SubscribeActionHandler

- (_TtC12NewsArticles22SubscribeActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleSubscribeActionOnPresenter:(id)a3 inAppPurchaseIdKey:(id)a4 completionBlock:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_1D7D3034C();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  swift_unknownObjectRetain();
  v11 = self;
  sub_1D7BF62A0(a3, v9, a4, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)handleSubscribeActionOnPresenter:(id)a3 completionBlock:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  v7 = self;
  sub_1D7BF62A0(a3, 0, 0, v7, v6);
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
    v7 = self;
    v5 = [v4 controller];
    swift_unknownObjectRelease();
    if (v5)
    {
      [(SubscribeActionHandler *)v5 dismissViewControllerAnimated:1 completion:0];

      v6 = v5;
    }

    else
    {
      v6 = v7;
    }
  }
}

- (void)bundleSubscriptionDidSubscribe:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D7BF9C0C();
}

@end