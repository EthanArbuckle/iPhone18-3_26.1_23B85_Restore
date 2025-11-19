@interface URLBagContract
- (AMSMescalBagContract)mescalContract;
- (_TtC9JetEngine14URLBagContract)init;
- (id)TFOSamplingPercentage;
- (id)TFOSamplingSessionDuration;
- (id)TLSSamplingPercentage;
- (id)TLSSamplingSessionDuration;
- (id)apsEnabledPatterns;
- (id)apsSamplingPercent;
- (id)guidSchemes;
- (id)metricsURL;
- (id)storefrontSuffix;
@end

@implementation URLBagContract

- (id)guidSchemes
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 arrayForKey_];

  return v5;
}

- (id)storefrontSuffix
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 stringForKey_];

  return v5;
}

- (AMSMescalBagContract)mescalContract
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (id)TLSSamplingPercentage
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 doubleForKey_];

  return v5;
}

- (id)TLSSamplingSessionDuration
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 integerForKey_];

  return v5;
}

- (id)TFOSamplingPercentage
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 doubleForKey_];

  return v5;
}

- (id)TFOSamplingSessionDuration
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 integerForKey_];

  return v5;
}

- (id)apsEnabledPatterns
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 arrayForKey_];

  return v5;
}

- (id)apsSamplingPercent
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 integerForKey_];

  return v5;
}

- (id)metricsURL
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 URLForKey_];

  return v5;
}

- (_TtC9JetEngine14URLBagContract)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end