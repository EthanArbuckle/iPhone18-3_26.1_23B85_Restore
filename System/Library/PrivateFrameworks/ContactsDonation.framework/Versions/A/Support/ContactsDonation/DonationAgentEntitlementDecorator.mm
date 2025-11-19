@interface DonationAgentEntitlementDecorator
- (_TtC21contactsdonationagent33DonationAgentEntitlementDecorator)init;
- (void)changeFromAccount:(id)a3 toAccount:(id)a4 completionHandler:(id)a5;
- (void)donateMeCardValues:(id)a3 completionHandler:(id)a4;
- (void)removeDonatedMeCardValuesForIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)removeDonatedMeCardValuesWithBundleIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation DonationAgentEntitlementDecorator

- (void)donateMeCardValues:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_10000B4A8(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeDonatedMeCardValuesForIdentifiers:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_10000B648(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeDonatedMeCardValuesWithBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = self;
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

- (void)changeFromAccount:(id)a3 toAccount:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10000BC30(a3, a4, v11, v8);
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