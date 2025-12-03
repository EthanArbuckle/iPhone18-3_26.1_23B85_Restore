@interface UtilitySubscriptionResponse
- (_TtC19HomeUtilityServices27UtilitySubscriptionResponse)init;
- (_TtC19HomeUtilityServices27UtilitySubscriptionResponse)initWithSubscription:(id)subscription authorizationToken:(id)token;
@end

@implementation UtilitySubscriptionResponse

- (_TtC19HomeUtilityServices27UtilitySubscriptionResponse)initWithSubscription:(id)subscription authorizationToken:(id)token
{
  if (token)
  {
    v6 = sub_20E0091D4();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *(self + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionResponse_subscription) = subscription;
  v8 = (self + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionResponse_authorizationToken);
  *v8 = v6;
  v8[1] = v7;
  v11.receiver = self;
  v11.super_class = type metadata accessor for UtilitySubscriptionResponse();
  subscriptionCopy = subscription;
  return [(UtilitySubscriptionResponse *)&v11 init];
}

- (_TtC19HomeUtilityServices27UtilitySubscriptionResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end