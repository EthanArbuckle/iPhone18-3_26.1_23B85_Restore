@interface ProcessLaunchSummaryLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent)init;
- (_TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent)initWithStartTime:(double)time;
- (unint64_t)coreAnalyticsEventOptions;
- (void)setCoreAnalyticsEventOptions:(unint64_t)options;
@end

@implementation ProcessLaunchSummaryLogEvent

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_22B0DF300();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_22B0A0D18();

  sub_22B0A1440();
  v3 = sub_22B0DF220();

  return v3;
}

- (unint64_t)coreAnalyticsEventOptions
{
  v3 = OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCoreAnalyticsEventOptions:(unint64_t)options
{
  v5 = OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  *(self + v5) = options;
}

- (_TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent)initWithStartTime:(double)time
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end