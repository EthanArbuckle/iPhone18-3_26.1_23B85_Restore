@interface BlockSchedulerLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC14HomeKitMetrics22BlockSchedulerLogEvent)init;
- (_TtC14HomeKitMetrics22BlockSchedulerLogEvent)initWithStartTime:(double)time;
@end

@implementation BlockSchedulerLogEvent

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_22B0DF300();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_22B0BDD30();

  sub_22B0A1440();
  v3 = sub_22B0DF220();

  return v3;
}

- (_TtC14HomeKitMetrics22BlockSchedulerLogEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14HomeKitMetrics22BlockSchedulerLogEvent)initWithStartTime:(double)time
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end