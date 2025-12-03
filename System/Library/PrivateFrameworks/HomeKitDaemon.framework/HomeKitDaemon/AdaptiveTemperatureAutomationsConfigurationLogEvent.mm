@interface AdaptiveTemperatureAutomationsConfigurationLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (NSString)description;
- (_TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent)initWithHomeUUID:(id)d;
- (_TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent)initWithStartTime:(double)time homeUUID:(id)d;
@end

@implementation AdaptiveTemperatureAutomationsConfigurationLogEvent

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_22A4DD5AC();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_229606FE8();

  sub_22956540C();
  v3 = sub_22A4DD47C();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  sub_22960738C();

  v3 = sub_22A4DD5AC();

  return v3;
}

- (_TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent)initWithHomeUUID:(id)d
{
  v3 = sub_22A4DB7DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent)initWithStartTime:(double)time homeUUID:(id)d
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