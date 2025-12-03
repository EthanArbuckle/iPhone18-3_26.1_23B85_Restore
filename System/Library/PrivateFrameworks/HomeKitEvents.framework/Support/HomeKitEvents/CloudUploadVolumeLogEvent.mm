@interface CloudUploadVolumeLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC11homeeventsd25CloudUploadVolumeLogEvent)init;
- (_TtC11homeeventsd25CloudUploadVolumeLogEvent)initWithStartTime:(double)time;
@end

@implementation CloudUploadVolumeLogEvent

- (_TtC11homeeventsd25CloudUploadVolumeLogEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11homeeventsd25CloudUploadVolumeLogEvent)initWithStartTime:(double)time
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
  sub_100012418();

  sub_1000123CC();
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end