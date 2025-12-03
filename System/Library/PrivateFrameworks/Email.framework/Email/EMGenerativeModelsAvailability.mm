@interface EMGenerativeModelsAvailability
- (_TtC5Email30EMGenerativeModelsAvailability)init;
- (int64_t)feature;
- (void)dealloc;
- (void)setFeature:(int64_t)feature;
@end

@implementation EMGenerativeModelsAvailability

- (int64_t)feature
{
  v3 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_feature;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setFeature:(int64_t)feature
{
  v5 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_feature;
  swift_beginAccess();
  *(&self->super.isa + v5) = feature;
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availabilityNotification))
  {
    selfCopy = self;

    sub_1C672574C();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for EMGenerativeModelsAvailability();
  [(EMGenerativeModelsAvailability *)&v5 dealloc];
}

- (_TtC5Email30EMGenerativeModelsAvailability)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end