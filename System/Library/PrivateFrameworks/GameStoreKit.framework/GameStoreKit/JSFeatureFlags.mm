@interface JSFeatureFlags
- (BOOL)isEnabled:(id)enabled;
- (_TtC12GameStoreKit14JSFeatureFlags)init;
@end

@implementation JSFeatureFlags

- (BOOL)isEnabled:(id)enabled
{
  v4 = sub_24F92B0D8();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_24F26F55C(v4, v6);

  return v4 & 1;
}

- (_TtC12GameStoreKit14JSFeatureFlags)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSFeatureFlags *)&v3 init];
}

@end