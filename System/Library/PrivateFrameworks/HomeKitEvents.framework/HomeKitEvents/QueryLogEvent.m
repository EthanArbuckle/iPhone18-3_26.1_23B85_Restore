@interface QueryLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC13HomeKitEvents13QueryLogEvent)init;
- (_TtC13HomeKitEvents13QueryLogEvent)initWithStartTime:(double)a3;
- (double)startTime;
@end

@implementation QueryLogEvent

- (double)startTime
{
  if ((*(self + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartTime + 8) & 1) == 0)
  {
    return *(self + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartTime);
  }

  v3.receiver = self;
  v3.super_class = type metadata accessor for QueryLogEvent();
  [(HMMLogEvent *)&v3 startTime];
  return result;
}

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_25424DCA8();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v2 = self;
  sub_2542355D8();

  sub_254236630();
  v3 = sub_25424DB68();

  return v3;
}

- (_TtC13HomeKitEvents13QueryLogEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeKitEvents13QueryLogEvent)initWithStartTime:(double)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end