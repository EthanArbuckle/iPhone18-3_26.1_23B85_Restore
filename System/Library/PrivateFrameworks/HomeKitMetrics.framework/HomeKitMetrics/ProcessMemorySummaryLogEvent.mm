@interface ProcessMemorySummaryLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent)init;
- (_TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent)initWithStartTime:(double)time;
@end

@implementation ProcessMemorySummaryLogEvent

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_22B0DF300();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_22B0A37E4();

  sub_22B0A1440();
  v3 = sub_22B0DF220();

  return v3;
}

- (_TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent)initWithStartTime:(double)time
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end