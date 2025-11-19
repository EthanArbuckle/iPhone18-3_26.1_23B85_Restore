@interface CameraRecordingEventDailySummaryLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent)initWithHomeUUID:(id)a3;
- (_TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4;
@end

@implementation CameraRecordingEventDailySummaryLogEvent

- (NSString)coreAnalyticsEventName
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent);
  v2 = sub_253CD0938();

  return v2;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v2 = self;
  CameraRecordingEventDailySummaryLogEvent.coreAnalyticsEventDictionary.getter();

  sub_253200644(0, &qword_281530D00, 0x277D82BB8);
  v3 = sub_253CD08B8();

  return v3;
}

- (_TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent)initWithHomeUUID:(id)a3
{
  v3 = sub_253CCFF58();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_253CCFF38();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4
{
  v4 = sub_253CCFF58();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_253CCFF38();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end