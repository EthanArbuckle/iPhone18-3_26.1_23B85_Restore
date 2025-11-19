@interface SubscriptionActivationEligibilityProvider
- (_TtC16NewsSubscription41SubscriptionActivationEligibilityProvider)init;
- (int64_t)eligibility;
@end

@implementation SubscriptionActivationEligibilityProvider

- (int64_t)eligibility
{
  v3 = *&self->offerManager[OBJC_IVAR____TtC16NewsSubscription41SubscriptionActivationEligibilityProvider_offerManager];
  ObjectType = swift_getObjectType();
  LOBYTE(v10[0]) = 4;
  v5 = *(v3 + 40);
  v6 = self;
  v5(v12, v10, ObjectType, v3);
  v10[8] = v12[8];
  v10[9] = v12[9];
  v11 = v13;
  v10[4] = v12[4];
  v10[5] = v12[5];
  v10[6] = v12[6];
  v10[7] = v12[7];
  v10[0] = v12[0];
  v10[1] = v12[1];
  v10[2] = v12[2];
  v10[3] = v12[3];
  sub_1D7814684(v12, v9);
  v7 = sub_1D78144A8(v10);

  sub_1D7782600(v12);
  return v7;
}

- (_TtC16NewsSubscription41SubscriptionActivationEligibilityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end