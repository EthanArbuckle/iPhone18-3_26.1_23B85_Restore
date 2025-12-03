@interface CloudUploadResultLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC11homeeventsd25CloudUploadResultLogEvent)init;
- (_TtC11homeeventsd25CloudUploadResultLogEvent)initWithStartTime:(double)time;
@end

@implementation CloudUploadResultLogEvent

- (_TtC11homeeventsd25CloudUploadResultLogEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11homeeventsd25CloudUploadResultLogEvent)initWithStartTime:(double)time
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)coreAnalyticsEventName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_1000115EC();

  sub_1000123CC();
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end