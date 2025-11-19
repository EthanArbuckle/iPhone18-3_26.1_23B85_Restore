@interface EventUploadScheduledWaitLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC11homeeventsd32EventUploadScheduledWaitLogEvent)init;
- (_TtC11homeeventsd32EventUploadScheduledWaitLogEvent)initWithStartTime:(double)a3;
@end

@implementation EventUploadScheduledWaitLogEvent

- (_TtC11homeeventsd32EventUploadScheduledWaitLogEvent)init
{
  ObjectType = swift_getObjectType();
  self->HMMLogEvent_opaque[OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome] = 4;
  v4 = OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_metricsManager;
  type metadata accessor for MetricsManager();
  *&self->HMMLogEvent_opaque[v4] = static MetricsManager.sharedInstance.getter();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(EventUploadScheduledWaitLogEvent *)&v6 init];
}

- (_TtC11homeeventsd32EventUploadScheduledWaitLogEvent)initWithStartTime:(double)a3
{
  ObjectType = swift_getObjectType();
  self->HMMLogEvent_opaque[OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome] = 4;
  v6 = OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_metricsManager;
  type metadata accessor for MetricsManager();
  *&self->HMMLogEvent_opaque[v6] = static MetricsManager.sharedInstance.getter();
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(EventUploadScheduledWaitLogEvent *)&v8 initWithStartTime:a3];
}

- (NSString)coreAnalyticsEventName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v2 = self;
  sub_10007AB68();

  sub_10000D544(0, &qword_1000AB070, NSObject_ptr);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end