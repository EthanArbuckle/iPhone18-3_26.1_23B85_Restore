@interface DonationAgent
- (_TtC21contactsdonationagent13DonationAgent)init;
- (void)changeFromAccount:(id)account toAccount:(id)toAccount completionHandler:(id)handler;
- (void)donateMeCardValues:(id)values completionHandler:(id)handler;
- (void)fetchDonatedMeCard:(id)card;
- (void)meCardDonations:(id)donations;
- (void)removeAllRejectionsWithCompletionHandler:(id)handler;
- (void)removeDonatedMeCardValuesForIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)removeDonatedMeCardValuesWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)synchronousDonatedMeCard:(id)card;
@end

@implementation DonationAgent

- (void)donateMeCardValues:(id)values completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_100028D70(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeDonatedMeCardValuesForIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_100029054(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeDonatedMeCardValuesWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1000292F4(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)fetchDonatedMeCard:(id)card
{
  v4 = _Block_copy(card);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler);
  selfCopy = self;
  sub_10002994C("fetchDonatedMeCard:", v6, selfCopy, sub_10000C0F8, v5);
}

- (void)synchronousDonatedMeCard:(id)card
{
  v4 = _Block_copy(card);
  v5 = objc_opt_self();
  _Block_copy(v4);
  selfCopy = self;
  sub_100029D68("synchronousDonatedMeCard:", [v5 immediateScheduler], selfCopy, v4);
  _Block_release(v4);

  _Block_release(v4);

  swift_unknownObjectRelease();
}

- (void)meCardDonations:(id)donations
{
  v4 = _Block_copy(donations);
  _Block_copy(v4);
  selfCopy = self;
  sub_10002A184(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)changeFromAccount:(id)account toAccount:(id)toAccount completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  accountCopy = account;
  toAccountCopy = toAccount;
  selfCopy = self;
  sub_10002A3BC(account, toAccount, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)removeAllRejectionsWithCompletionHandler:(id)handler
{
  v4 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  selfCopy = self;
  [v5 willRemoveAllRejections];
  [*(&self->super.isa + v4) didRemoveAllRejections];
}

- (_TtC21contactsdonationagent13DonationAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end