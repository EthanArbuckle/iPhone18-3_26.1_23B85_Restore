@interface MatterAccessoryWriteAttributeLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithHome:(id)home nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId value:(id)value timedWriteTimeout:(id)timeout;
- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithHomeUUID:(id)d;
- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithStartTime:(double)time homeUUID:(id)d;
- (id)value;
@end

@implementation MatterAccessoryWriteAttributeLogEvent

- (id)value
{
  sub_2295404B0(self + OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_value, v4);
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  v2 = sub_22A4DE5FC();
  __swift_destroy_boxed_opaque_existential_0(v4);

  return v2;
}

- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithHome:(id)home nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId value:(id)value timedWriteTimeout:(id)timeout
{
  homeCopy = home;
  endpointIdCopy = endpointId;
  clusterIdCopy = clusterId;
  attributeIdCopy = attributeId;
  swift_unknownObjectRetain();
  timeoutCopy = timeout;
  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v18 = sub_229565A48(homeCopy, id, endpointIdCopy, clusterIdCopy, attributeIdCopy, &v20, timeout);

  return v18;
}

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_22A4DD5AC();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_2295656D0();

  sub_22956540C();
  v3 = sub_22A4DD47C();

  return v3;
}

- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithHomeUUID:(id)d
{
  v3 = sub_22A4DB7DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithStartTime:(double)time homeUUID:(id)d
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