@interface MatterAccessoryWriteAttributeLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithHome:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 attributeId:(id)a7 value:(id)a8 timedWriteTimeout:(id)a9;
- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithHomeUUID:(id)a3;
- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4;
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

- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithHome:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 attributeId:(id)a7 value:(id)a8 timedWriteTimeout:(id)a9
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  swift_unknownObjectRetain();
  v17 = a9;
  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v18 = sub_229565A48(v13, a4, v14, v15, v16, &v20, a9);

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
  v2 = self;
  sub_2295656D0();

  sub_22956540C();
  v3 = sub_22A4DD47C();

  return v3;
}

- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithHomeUUID:(id)a3
{
  v3 = sub_22A4DB7DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4
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