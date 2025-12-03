@interface CameraRecordingEventDailySummaryLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent)initWithHomeUUID:(id)d;
- (_TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent)initWithStartTime:(double)time homeUUID:(id)d;
@end

@implementation CameraRecordingEventDailySummaryLogEvent

- (NSString)coreAnalyticsEventName
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent);
  v2 = sub_22A4DD5AC();

  return v2;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  CameraRecordingEventDailySummaryLogEvent.coreAnalyticsEventDictionary.getter();

  sub_22956540C();
  v3 = sub_22A4DD47C();

  return v3;
}

- (_TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent)initWithHomeUUID:(id)d
{
  v3 = sub_22A4DB7DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent)initWithStartTime:(double)time homeUUID:(id)d
{
  v4 = sub_22A4DB7DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end