@interface GMOptIn
+ (id)current;
- (BOOL)isOptedIn;
- (_TtC25CloudSubscriptionFeatures7GMOptIn)init;
- (int64_t)state;
- (void)setIsOptedIn:(BOOL)a3;
@end

@implementation GMOptIn

+ (id)current
{
  v0 = _s25CloudSubscriptionFeatures7GMOptInC7currentACSgvgZ_0();

  return v0;
}

- (BOOL)isOptedIn
{
  v2 = self;
  v3 = sub_1DF4BFA44();

  return v3 & 1;
}

- (void)setIsOptedIn:(BOOL)a3
{
  v4 = self;
  sub_1DF4BFD90(a3);
}

- (int64_t)state
{
  v2 = self;
  if (sub_1DF4C1694())
  {
    v3 = sub_1DF4BFA44();

    if (v3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 0;
  }
}

- (_TtC25CloudSubscriptionFeatures7GMOptIn)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end