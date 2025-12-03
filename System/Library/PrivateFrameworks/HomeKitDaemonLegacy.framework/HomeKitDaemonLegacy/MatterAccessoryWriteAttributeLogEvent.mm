@interface MatterAccessoryWriteAttributeLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent)initWithHome:(id)home nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId value:(id)value timedWriteTimeout:(id)timeout;
- (_TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent)initWithHomeUUID:(id)d;
- (_TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent)initWithStartTime:(double)time homeUUID:(id)d;
- (id)value;
@end

@implementation MatterAccessoryWriteAttributeLogEvent

- (id)value
{
  sub_253205FF8(self + OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_value, v4);
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  v2 = sub_253CD1108();
  __swift_destroy_boxed_opaque_existential_0(v4);

  return v2;
}

- (_TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent)initWithHome:(id)home nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId value:(id)value timedWriteTimeout:(id)timeout
{
  homeCopy = home;
  endpointIdCopy = endpointId;
  clusterIdCopy = clusterId;
  attributeIdCopy = attributeId;
  swift_unknownObjectRetain();
  timeoutCopy = timeout;
  sub_253CD0E18();
  swift_unknownObjectRelease();
  v18 = sub_253231458(homeCopy, id, endpointIdCopy, clusterIdCopy, attributeIdCopy, &v20, timeout);

  return v18;
}

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_253CD0938();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_2532310E0();

  sub_25320DC70();
  v3 = sub_253CD08B8();

  return v3;
}

- (_TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent)initWithHomeUUID:(id)d
{
  v3 = sub_253CCFF58();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_253CCFF38();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent)initWithStartTime:(double)time homeUUID:(id)d
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