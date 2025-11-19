@interface UtilitySubscriptionInformation
- (_TtC19HomeUtilityServices30UtilitySubscriptionInformation)init;
- (_TtC19HomeUtilityServices30UtilitySubscriptionInformation)initWithSubscriptionID:(id)a3 state:(id)a4 startDate:(id)a5 serviceLocation:(id)a6 customerAgreements:(id)a7;
@end

@implementation UtilitySubscriptionInformation

- (_TtC19HomeUtilityServices30UtilitySubscriptionInformation)initWithSubscriptionID:(id)a3 state:(id)a4 startDate:(id)a5 serviceLocation:(id)a6 customerAgreements:(id)a7
{
  v9 = sub_20E0091D4();
  v11 = v10;
  v12 = sub_20E0091D4();
  v14 = v13;
  v15 = sub_20E0091D4();
  v17 = v16;
  type metadata accessor for UtilityCustomerAgreement();
  v18 = sub_20E009424();
  v19 = (self + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_subscriptionID);
  *v19 = v9;
  v19[1] = v11;
  v20 = (self + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_state);
  *v20 = v12;
  v20[1] = v14;
  v21 = (self + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_startDate);
  *v21 = v15;
  v21[1] = v17;
  *(self + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_serviceLocation) = a6;
  *(self + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_customerAgreements) = v18;
  v24.receiver = self;
  v24.super_class = type metadata accessor for UtilitySubscriptionInformation();
  v22 = a6;
  return [(UtilitySubscriptionInformation *)&v24 init];
}

- (_TtC19HomeUtilityServices30UtilitySubscriptionInformation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end