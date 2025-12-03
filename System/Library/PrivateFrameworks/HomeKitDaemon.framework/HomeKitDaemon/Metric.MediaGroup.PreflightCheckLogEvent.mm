@interface Metric.MediaGroup.PreflightCheckLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent)initWithHomeUUID:(id)d;
- (_TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent)initWithStartTime:(double)time homeUUID:(id)d;
@end

@implementation Metric.MediaGroup.PreflightCheckLogEvent

- (NSString)coreAnalyticsEventName
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_eventName);
  v3 = *(&self->super.super._lock._os_unfair_lock_opaque + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_eventName);

  v4 = sub_22A4DD5AC();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_2297ECBCC();

  sub_22956540C();
  v3 = sub_22A4DD47C();

  return v3;
}

- (_TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent)initWithHomeUUID:(id)d
{
  v3 = sub_22A4DB7DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent)initWithStartTime:(double)time homeUUID:(id)d
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