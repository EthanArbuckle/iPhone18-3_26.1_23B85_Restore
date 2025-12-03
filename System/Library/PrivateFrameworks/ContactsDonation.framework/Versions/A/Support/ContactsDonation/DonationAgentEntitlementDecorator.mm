@interface DonationAgentEntitlementDecorator
- (_TtC21contactsdonationagent33DonationAgentEntitlementDecorator)init;
- (void)changeFromAccount:(id)account toAccount:(id)toAccount completionHandler:(id)handler;
- (void)donateMeCardValues:(id)values completionHandler:(id)handler;
- (void)removeDonatedMeCardValuesForIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)removeDonatedMeCardValuesWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation DonationAgentEntitlementDecorator

- (void)donateMeCardValues:(id)values completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_10000B4A8(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeDonatedMeCardValuesForIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_10000B648(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeDonatedMeCardValuesWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  selfCopy = self;
  if (sub_10000A9F0())
  {

    _Block_release(v5);
  }

  else
  {
    sub_10000AC18();
    v7 = _convertErrorToNSError(_:)();
    (*(v5 + 2))(v5, 0, v7);

    _Block_release(v5);
  }
}

- (void)changeFromAccount:(id)account toAccount:(id)toAccount completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  accountCopy = account;
  toAccountCopy = toAccount;
  selfCopy = self;
  sub_10000BC30(account, toAccount, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC21contactsdonationagent33DonationAgentEntitlementDecorator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end