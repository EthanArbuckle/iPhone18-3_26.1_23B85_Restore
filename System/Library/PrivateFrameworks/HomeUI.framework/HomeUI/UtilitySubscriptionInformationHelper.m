@interface UtilitySubscriptionInformationHelper
- (NSArray)accountIds;
- (NSDictionary)serviceLocation;
- (_TtC6HomeUI36UtilitySubscriptionInformationHelper)init;
- (_TtC6HomeUI36UtilitySubscriptionInformationHelper)initWithSubscriptionID:(id)a3 serviceLocation:(id)a4 accountIds:(id)a5;
@end

@implementation UtilitySubscriptionInformationHelper

- (NSDictionary)serviceLocation
{
  sub_20D5663C8();
  v2 = sub_20D567738();

  return v2;
}

- (NSArray)accountIds
{
  sub_20D5663C8();
  v2 = sub_20D567A58();

  return v2;
}

- (_TtC6HomeUI36UtilitySubscriptionInformationHelper)initWithSubscriptionID:(id)a3 serviceLocation:(id)a4 accountIds:(id)a5
{
  v6 = sub_20D567838();
  v8 = v7;
  v9 = sub_20D567758();
  v10 = sub_20D567A78();
  v11 = (self + OBJC_IVAR____TtC6HomeUI36UtilitySubscriptionInformationHelper_subscriptionID);
  *v11 = v6;
  v11[1] = v8;
  *(self + OBJC_IVAR____TtC6HomeUI36UtilitySubscriptionInformationHelper_serviceLocation) = v9;
  *(self + OBJC_IVAR____TtC6HomeUI36UtilitySubscriptionInformationHelper_accountIds) = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for UtilitySubscriptionInformationHelper();
  return [(UtilitySubscriptionInformationHelper *)&v13 init];
}

- (_TtC6HomeUI36UtilitySubscriptionInformationHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end