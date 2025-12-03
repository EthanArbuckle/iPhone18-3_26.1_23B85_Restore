@interface SportsSessionObserver
- (_TtC7NewsUI221SportsSessionObserver)init;
- (void)bundleSubscriptionDidChange:(id)change previousBundleSubscription:(id)subscription;
- (void)pushUserSubscriptionContextData;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
- (void)userInfoDidChangeSportsUserID:(id)d;
@end

@implementation SportsSessionObserver

- (void)userInfoDidChangeSportsUserID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_218F33074(dCopy);
  sub_218F331B8(dCopy);
}

- (_TtC7NewsUI221SportsSessionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidChange:(id)change previousBundleSubscription:(id)subscription
{
  changeCopy = change;
  selfCopy = self;
  sub_219BDCDE4();
  *(swift_allocObject() + 16) = changeCopy;
  v7 = changeCopy;
  sub_219BDD154();

  *(swift_allocObject() + 16) = v7;
  v8 = v7;
  sub_219BDCD84();
}

- (void)pushUserSubscriptionContextData
{
  selfCopy = self;
  sub_2187561AC();
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  if (controller)
  {
    selfCopy = self;
    controllerCopy = controller;
    sub_219BDCDE4();
    *(swift_allocObject() + 16) = controllerCopy;
    v10 = controllerCopy;
    sub_219BDD154();
  }

  else
  {
    __break(1u);
  }
}

@end