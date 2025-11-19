@interface ConcreteHealthContentDaemonExtension
- (_TtC25HealthContentDaemonPlugin36ConcreteHealthContentDaemonExtension)init;
- (void)prepareForObliteration;
@end

@implementation ConcreteHealthContentDaemonExtension

- (void)prepareForObliteration
{
  v3 = OBJC_IVAR____TtC25HealthContentDaemonPlugin36ConcreteHealthContentDaemonExtension_ontologyBackingStore;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC25HealthContentDaemonPlugin36ConcreteHealthContentDaemonExtension_ontologyBackingStore);
  v8 = self;
  [v4 invalidate];
  v5 = *(&self->super.isa + v3);
  if (v5)
  {
    v6 = sub_25154D250();
    [v5 obliterateWithReason_];

    v7 = v6;
  }

  else
  {
    v7 = v8;
  }
}

- (_TtC25HealthContentDaemonPlugin36ConcreteHealthContentDaemonExtension)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end