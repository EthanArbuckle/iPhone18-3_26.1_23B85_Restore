@interface MatterAccessoryInvokeCommandLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent)initWithHomeUUID:(id)a3;
- (_TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4;
- (id)biomeEventsRepresentationForLogObserver:(id)a3;
@end

@implementation MatterAccessoryInvokeCommandLogEvent

- (id)biomeEventsRepresentationForLogObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_229621E84();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E180, &qword_22A57B2F0);
  v6 = sub_22A4DD81C();

  return v6;
}

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_22A4DD5AC();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v2 = self;
  sub_229656904();

  sub_22956540C();
  v3 = sub_22A4DD47C();

  return v3;
}

- (_TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent)initWithHomeUUID:(id)a3
{
  v3 = sub_22A4DB7DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4
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