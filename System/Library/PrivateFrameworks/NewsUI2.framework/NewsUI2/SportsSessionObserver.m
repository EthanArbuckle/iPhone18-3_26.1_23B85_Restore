@interface SportsSessionObserver
- (_TtC7NewsUI221SportsSessionObserver)init;
- (void)bundleSubscriptionDidChange:(id)a3 previousBundleSubscription:(id)a4;
- (void)pushUserSubscriptionContextData;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
- (void)userInfoDidChangeSportsUserID:(id)a3;
@end

@implementation SportsSessionObserver

- (void)userInfoDidChangeSportsUserID:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_218F33074(v4);
  sub_218F331B8(v4);
}

- (_TtC7NewsUI221SportsSessionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidChange:(id)a3 previousBundleSubscription:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_219BDCDE4();
  *(swift_allocObject() + 16) = v5;
  v7 = v5;
  sub_219BDD154();

  *(swift_allocObject() + 16) = v7;
  v8 = v7;
  sub_219BDCD84();
}

- (void)pushUserSubscriptionContextData
{
  v2 = self;
  sub_2187561AC();
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  if (a3)
  {
    v11 = self;
    v9 = a3;
    sub_219BDCDE4();
    *(swift_allocObject() + 16) = v9;
    v10 = v9;
    sub_219BDD154();
  }

  else
  {
    __break(1u);
  }
}

@end