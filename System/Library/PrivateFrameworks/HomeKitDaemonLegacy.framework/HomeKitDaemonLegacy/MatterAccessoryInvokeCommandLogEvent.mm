@interface MatterAccessoryInvokeCommandLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent)initWithHomeUUID:(id)d;
- (_TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent)initWithStartTime:(double)time homeUUID:(id)d;
- (id)biomeEventsRepresentationForLogObserver:(id)observer;
@end

@implementation MatterAccessoryInvokeCommandLogEvent

- (id)biomeEventsRepresentationForLogObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  sub_253231CD0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A35E0, &qword_253D49570);
  v6 = sub_253CD0A38();

  return v6;
}

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_253CD0938();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_2532379D0();

  sub_25320DC70();
  v3 = sub_253CD08B8();

  return v3;
}

- (_TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent)initWithHomeUUID:(id)d
{
  v3 = sub_253CCFF58();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_253CCFF38();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent)initWithStartTime:(double)time homeUUID:(id)d
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