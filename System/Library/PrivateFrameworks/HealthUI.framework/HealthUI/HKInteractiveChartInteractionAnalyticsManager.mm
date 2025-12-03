@interface HKInteractiveChartInteractionAnalyticsManager
- (_TtC8HealthUI45HKInteractiveChartInteractionAnalyticsManager)init;
- (_TtC8HealthUI45HKInteractiveChartInteractionAnalyticsManager)initWithHealthStore:(id)store;
- (void)submitWithEvent:(id)event;
@end

@implementation HKInteractiveChartInteractionAnalyticsManager

- (_TtC8HealthUI45HKInteractiveChartInteractionAnalyticsManager)initWithHealthStore:(id)store
{
  storeCopy = store;
  v4 = sub_1C3C3747C(storeCopy);

  return v4;
}

- (void)submitWithEvent:(id)event
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8HealthUI45HKInteractiveChartInteractionAnalyticsManager_submissionManager);
  if (v3)
  {
    ObjectType = swift_getObjectType();
    v7 = swift_allocObject();
    *(v7 + 16) = ObjectType;
    v11[4] = sub_1C3C37720;
    v11[5] = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1C3C37218;
    v11[3] = &block_descriptor_9;
    v8 = _Block_copy(v11);
    eventCopy = event;
    selfCopy = self;

    [v3 submitEvent:eventCopy completion:v8];

    _Block_release(v8);
  }
}

- (_TtC8HealthUI45HKInteractiveChartInteractionAnalyticsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end