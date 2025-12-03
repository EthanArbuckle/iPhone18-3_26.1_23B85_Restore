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
  selfCopy = self;
  v4 = sub_1AB460514();
  arrayForKey_ = [v2 arrayForKey_];

  return arrayForKey_;
}

- (id)storefrontSuffix
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  stringForKey_ = [v2 stringForKey_];

  return stringForKey_;
}

- (AMSMescalBagContract)mescalContract
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (id)TLSSamplingPercentage
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  doubleForKey_ = [v2 doubleForKey_];

  return doubleForKey_;
}

- (id)TLSSamplingSessionDuration
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  integerForKey_ = [v2 integerForKey_];

  return integerForKey_;
}

- (id)TFOSamplingPercentage
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  doubleForKey_ = [v2 doubleForKey_];

  return doubleForKey_;
}

- (id)TFOSamplingSessionDuration
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  integerForKey_ = [v2 integerForKey_];

  return integerForKey_;
}

- (id)apsEnabledPatterns
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  arrayForKey_ = [v2 arrayForKey_];

  return arrayForKey_;
}

- (id)apsSamplingPercent
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  integerForKey_ = [v2 integerForKey_];

  return integerForKey_;
}

- (id)metricsURL
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  uRLForKey_ = [v2 URLForKey_];

  return uRLForKey_;
}

- (_TtC9JetEngine14URLBagContract)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end