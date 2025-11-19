@interface AdaptiveTemperatureAutomationsConfigurationLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (NSString)description;
- (_TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent)initWithHomeUUID:(id)a3;
- (_TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4;
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
  v2 = self;
  sub_229606FE8();

  sub_22956540C();
  v3 = sub_22A4DD47C();

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_22960738C();

  v3 = sub_22A4DD5AC();

  return v3;
}

- (_TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent)initWithHomeUUID:(id)a3
{
  v3 = sub_22A4DB7DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4
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