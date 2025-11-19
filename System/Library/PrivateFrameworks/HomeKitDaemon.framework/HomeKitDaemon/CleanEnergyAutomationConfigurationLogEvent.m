@interface CleanEnergyAutomationConfigurationLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (NSString)description;
- (_TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent)initWithHomeUUID:(id)a3;
- (_TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4;
@end

@implementation CleanEnergyAutomationConfigurationLogEvent

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_22A4DD5AC();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v2 = self;
  sub_229722A50();

  sub_229562F68(0, &qword_281401760, 0x277D82BB8);
  v3 = sub_22A4DD47C();

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_229722EE0();

  v3 = sub_22A4DD5AC();

  return v3;
}

- (_TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent)initWithHomeUUID:(id)a3
{
  v3 = sub_22A4DB7DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4
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