@interface DockCoreAccessory
- (BOOL)hasSystemWithName:(id)a3 kind:(Class)a4;
- (BOOL)isEqual:(id)a3;
- (NSArray)systems;
- (_TtC11DockKitCore17DockCoreAccessory)init;
- (_TtC11DockKitCore17DockCoreAccessory)initWithInfo:(id)a3 systems:(id)a4;
- (id)getActuatorWithName:(id)a3;
- (id)getSystemSensorsWithName:(id)a3 sensors:(id)a4;
- (int64_t)getActuatorIndexWithName:(id)a3 system:(id)a4;
- (int64_t)hash;
- (void)actuatorFeedbackWithInfo:(id)a3 system:(id)a4 actuators:(id)a5 positions:(id)a6 velocities:(id)a7 timestamp:(double)a8;
- (void)batteryStateDataWithInfo:(id)a3 data:(id)a4;
- (void)disconnectWithAllowReconnect:(BOOL)a3;
- (void)disconnectedWithErr:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)sensorDataWithInfo:(id)a3 system:(id)a4 sensors:(id)a5 data:(id)a6;
- (void)setInfo:(id)a3;
- (void)setSystems:(id)a3;
- (void)systemEventDataWithInfo:(id)a3 data:(id)a4;
- (void)trackingSummaryDataDebugWithInfo:(id)a3 data:(id)a4;
- (void)trackingSummaryDataWithInfo:(id)a3 data:(id)a4;
- (void)trajectoryProgressFeedbackWithInfo:(id)a3 system:(id)a4 progress:(id)a5;
- (void)updateFromAccessory:(id)a3;
@end

@implementation DockCoreAccessory

- (void)setInfo:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info) = a3;
  v3 = a3;
}

- (NSArray)systems
{
  type metadata accessor for System();

  v2 = sub_224627EB8();

  return v2;
}

- (void)setSystems:(id)a3
{
  type metadata accessor for System();
  *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems) = sub_224627ED8();
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_2245693D4(v8);

  sub_2245098A0(v8, &qword_27D0CA3B0);
  return v6 & 1;
}

- (int64_t)hash
{
  sub_2246287D8();
  v3 = *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  v4 = self;
  v5 = v3;
  sub_2246281F8();

  v6 = sub_2246287B8();
  return v6;
}

- (_TtC11DockKitCore17DockCoreAccessory)initWithInfo:(id)a3 systems:(id)a4
{
  type metadata accessor for System();
  v5 = sub_224627ED8();
  v6 = a3;
  v7 = sub_22457E1D8(v6, v5);

  return v7;
}

- (void)updateFromAccessory:(id)a3
{
  v4 = *(a3 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  v5 = *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  *(self + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info) = v4;
  v6 = a3;
  v9 = self;
  v7 = v4;

  v8 = *&v6[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems];

  *(v9 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems) = v8;

  *(v9 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_version) = 2;
}

- (void)disconnectWithAllowReconnect:(BOOL)a3
{
  v4 = self;
  sub_2245697B8(a3);
}

- (BOOL)hasSystemWithName:(id)a3 kind:(Class)a4
{
  v5 = sub_224627CD8();
  v7 = v6;
  swift_getObjCClassMetadata();
  v8 = self;
  v9 = sub_224569ED0(v5, v7);

  return v9;
}

- (int64_t)getActuatorIndexWithName:(id)a3 system:(id)a4
{
  v5 = sub_224627CD8();
  v7 = v6;
  v8 = sub_224627CD8();
  v10 = v9;
  v11 = self;
  v12 = sub_22456A4B4(v5, v7, v8, v10);

  return v12;
}

- (id)getSystemSensorsWithName:(id)a3 sensors:(id)a4
{
  v5 = sub_224627CD8();
  v7 = v6;
  v8 = sub_224627ED8();
  v9 = self;
  sub_22456ACC4(v5, v7, v8);

  type metadata accessor for Sensor();
  v10 = sub_224627EB8();

  return v10;
}

- (id)getActuatorWithName:(id)a3
{
  v4 = sub_224627CD8();
  v6 = v5;
  v7 = self;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22456B570(v4);
}

- (void)actuatorFeedbackWithInfo:(id)a3 system:(id)a4 actuators:(id)a5 positions:(id)a6 velocities:(id)a7 timestamp:(double)a8
{
  sub_224627CD8();
  sub_224627ED8();
  sub_224627ED8();
  sub_224627ED8();
  v11 = a3;
  v12 = self;
  sub_2245705BC(v11, a8);
}

- (void)trajectoryProgressFeedbackWithInfo:(id)a3 system:(id)a4 progress:(id)a5
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong trajectoryProgressFeedbackWithInfo:a3 system:a4 progress:a5];

    swift_unknownObjectRelease();
  }
}

- (void)systemEventDataWithInfo:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22457096C(v6, v7);
}

- (void)batteryStateDataWithInfo:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2245709FC(v6, v7);
}

- (void)trackingSummaryDataWithInfo:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_224570A8C(v6, v7);
}

- (void)trackingSummaryDataDebugWithInfo:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_224570B1C(v6, v7);
}

- (void)disconnectedWithErr:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_224570C54(a3);
}

- (void)sensorDataWithInfo:(id)a3 system:(id)a4 sensors:(id)a5 data:(id)a6
{
  sub_224627CD8();
  sub_224627ED8();
  type metadata accessor for SensorData();
  sub_224627ED8();
  v8 = a3;
  v9 = self;
  sub_224579E94(v8);
}

- (_TtC11DockKitCore17DockCoreAccessory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end