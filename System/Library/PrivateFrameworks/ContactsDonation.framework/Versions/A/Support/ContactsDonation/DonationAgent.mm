@interface DonationAgent
- (_TtC21contactsdonationagent13DonationAgent)init;
- (void)changeFromAccount:(id)a3 toAccount:(id)a4 completionHandler:(id)a5;
- (void)donateMeCardValues:(id)a3 completionHandler:(id)a4;
- (void)fetchDonatedMeCard:(id)a3;
- (void)meCardDonations:(id)a3;
- (void)removeAllRejectionsWithCompletionHandler:(id)a3;
- (void)removeDonatedMeCardValuesForIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)removeDonatedMeCardValuesWithBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)synchronousDonatedMeCard:(id)a3;
@end

@implementation DonationAgent

- (void)donateMeCardValues:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_100028D70(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeDonatedMeCardValuesForIdentifiers:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_100029054(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeDonatedMeCardValuesWithBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1000292F4(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)fetchDonatedMeCard:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler);
  v7 = self;
  sub_10002994C("fetchDonatedMeCard:", v6, v7, sub_10000C0F8, v5);
}

- (void)synchronousDonatedMeCard:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = objc_opt_self();
  _Block_copy(v4);
  v6 = self;
  sub_100029D68("synchronousDonatedMeCard:", [v5 immediateScheduler], v6, v4);
  _Block_release(v4);

  _Block_release(v4);

  swift_unknownObjectRelease();
}

- (void)meCardDonations:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10002A184(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)changeFromAccount:(id)a3 toAccount:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10002A3BC(a3, a4, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)removeAllRejectionsWithCompletionHandler:(id)a3
{
  v4 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  v6 = self;
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