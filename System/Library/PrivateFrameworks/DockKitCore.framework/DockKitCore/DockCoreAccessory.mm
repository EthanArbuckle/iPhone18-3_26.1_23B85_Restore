@interface DockCoreAccessory
- (BOOL)hasSystemWithName:(id)name kind:(Class)kind;
- (BOOL)isEqual:(id)equal;
- (NSArray)systems;
- (_TtC11DockKitCore17DockCoreAccessory)init;
- (_TtC11DockKitCore17DockCoreAccessory)initWithInfo:(id)info systems:(id)systems;
- (id)getActuatorWithName:(id)name;
- (id)getSystemSensorsWithName:(id)name sensors:(id)sensors;
- (int64_t)getActuatorIndexWithName:(id)name system:(id)system;
- (int64_t)hash;
- (void)actuatorFeedbackWithInfo:(id)info system:(id)system actuators:(id)actuators positions:(id)positions velocities:(id)velocities timestamp:(double)timestamp;
- (void)batteryStateDataWithInfo:(id)info data:(id)data;
- (void)disconnectWithAllowReconnect:(BOOL)reconnect;
- (void)disconnectedWithErr:(id)err;
- (void)encodeWithCoder:(id)coder;
- (void)sensorDataWithInfo:(id)info system:(id)system sensors:(id)sensors data:(id)data;
- (void)setInfo:(id)info;
- (void)setSystems:(id)systems;
- (void)systemEventDataWithInfo:(id)info data:(id)data;
- (void)trackingSummaryDataDebugWithInfo:(id)info data:(id)data;
- (void)trackingSummaryDataWithInfo:(id)info data:(id)data;
- (void)trajectoryProgressFeedbackWithInfo:(id)info system:(id)system progress:(id)progress;
- (void)updateFromAccessory:(id)accessory;
@end

@implementation DockCoreAccessory

- (void)setInfo:(id)info
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info) = info;
  infoCopy = info;
}

- (NSArray)systems
{
  type metadata accessor for System();

  v2 = sub_224627EB8();

  return v2;
}

- (void)setSystems:(id)systems
{
  type metadata accessor for System();
  *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems) = sub_224627ED8();
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_2245693D4(v8);

  sub_2245098A0(v8, &qword_27D0CA3B0);
  return v6 & 1;
}

- (int64_t)hash
{
  sub_2246287D8();
  v3 = *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  selfCopy = self;
  v5 = v3;
  sub_2246281F8();

  v6 = sub_2246287B8();
  return v6;
}

- (_TtC11DockKitCore17DockCoreAccessory)initWithInfo:(id)info systems:(id)systems
{
  type metadata accessor for System();
  v5 = sub_224627ED8();
  infoCopy = info;
  v7 = sub_22457E1D8(infoCopy, v5);

  return v7;
}

- (void)updateFromAccessory:(id)accessory
{
  v4 = *(accessory + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  v5 = *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info) = v4;
  accessoryCopy = accessory;
  selfCopy = self;
  v7 = v4;

  v8 = *&accessoryCopy[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems];

  *(selfCopy + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems) = v8;

  *(selfCopy + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_version) = 2;
}

- (void)disconnectWithAllowReconnect:(BOOL)reconnect
{
  selfCopy = self;
  sub_2245697B8(reconnect);
}

- (BOOL)hasSystemWithName:(id)name kind:(Class)kind
{
  v5 = sub_224627CD8();
  v7 = v6;
  swift_getObjCClassMetadata();
  selfCopy = self;
  v9 = sub_224569ED0(v5, v7);

  return v9;
}

- (int64_t)getActuatorIndexWithName:(id)name system:(id)system
{
  v5 = sub_224627CD8();
  v7 = v6;
  v8 = sub_224627CD8();
  v10 = v9;
  selfCopy = self;
  v12 = sub_22456A4B4(v5, v7, v8, v10);

  return v12;
}

- (id)getSystemSensorsWithName:(id)name sensors:(id)sensors
{
  v5 = sub_224627CD8();
  v7 = v6;
  v8 = sub_224627ED8();
  selfCopy = self;
  sub_22456ACC4(v5, v7, v8);

  type metadata accessor for Sensor();
  v10 = sub_224627EB8();

  return v10;
}

- (id)getActuatorWithName:(id)name
{
  v4 = sub_224627CD8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_22456B370(0);
  if (v8)
  {
    v9 = v8;
    type metadata accessor for ActuationController();
    if (swift_dynamicCastClass())
    {
      v10 = sub_2245BB488(v4, v6);

      v11 = v10;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_22456B570(coderCopy);
}

- (void)actuatorFeedbackWithInfo:(id)info system:(id)system actuators:(id)actuators positions:(id)positions velocities:(id)velocities timestamp:(double)timestamp
{
  sub_224627CD8();
  sub_224627ED8();
  sub_224627ED8();
  sub_224627ED8();
  infoCopy = info;
  selfCopy = self;
  sub_2245705BC(infoCopy, timestamp);
}

- (void)trajectoryProgressFeedbackWithInfo:(id)info system:(id)system progress:(id)progress
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong trajectoryProgressFeedbackWithInfo:info system:system progress:progress];

    swift_unknownObjectRelease();
  }
}

- (void)systemEventDataWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  dataCopy = data;
  selfCopy = self;
  sub_22457096C(infoCopy, dataCopy);
}

- (void)batteryStateDataWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  dataCopy = data;
  selfCopy = self;
  sub_2245709FC(infoCopy, dataCopy);
}

- (void)trackingSummaryDataWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  dataCopy = data;
  selfCopy = self;
  sub_224570A8C(infoCopy, dataCopy);
}

- (void)trackingSummaryDataDebugWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  dataCopy = data;
  selfCopy = self;
  sub_224570B1C(infoCopy, dataCopy);
}

- (void)disconnectedWithErr:(id)err
{
  selfCopy = self;
  errCopy = err;
  sub_224570C54(err);
}

- (void)sensorDataWithInfo:(id)info system:(id)system sensors:(id)sensors data:(id)data
{
  sub_224627CD8();
  sub_224627ED8();
  type metadata accessor for SensorData();
  sub_224627ED8();
  infoCopy = info;
  selfCopy = self;
  sub_224579E94(infoCopy);
}

- (_TtC11DockKitCore17DockCoreAccessory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end