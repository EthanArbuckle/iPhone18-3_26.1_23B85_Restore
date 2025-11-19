@interface SensorController
- (_TtC11DockKitCore16SensorController)initWithAccessory:(id)a3 id:(int64_t)a4 name:(id)a5 sensors:(id)a6;
- (_TtC11DockKitCore16SensorController)initWithAccessory:(id)a3 id:(int64_t)a4 type:(int64_t)a5 name:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)getSensorDataWithSensors:(NSArray *)a3 delegate:(_TtP11DockKitCore23XPCSensorClientProtocol_ *)a4 occurrence:(int64_t)a5 completionHandler:(id)a6;
- (void)setSensorStateWithSensors:(NSArray *)a3 states:(NSArray *)a4 completionHandler:(id)a5;
- (void)stopSensorDataWithSensors:(NSArray *)a3 completionHandler:(id)a4;
@end

@implementation SensorController

- (_TtC11DockKitCore16SensorController)initWithAccessory:(id)a3 id:(int64_t)a4 name:(id)a5 sensors:(id)a6
{
  v8 = sub_224627CD8();
  v10 = v9;
  type metadata accessor for Sensor();
  v11 = sub_224627ED8();
  v12 = a3;
  v13 = sub_22460F760(a3, a4, v8, v10, v11);

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2245B3BA4(v4);
}

- (void)getSensorDataWithSensors:(NSArray *)a3 delegate:(_TtP11DockKitCore23XPCSensorClientProtocol_ *)a4 occurrence:(int64_t)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_224627F78();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2246334E8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2246334F0;
  v18[5] = v17;
  v19 = a3;
  swift_unknownObjectRetain();
  v20 = self;
  sub_224616E14(0, 0, v13, &unk_2246334F8, v18);
}

- (void)stopSensorDataWithSensors:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2246334C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2246334C8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_224616E14(0, 0, v9, &unk_2246334D0, v14);
}

- (void)setSensorStateWithSensors:(NSArray *)a3 states:(NSArray *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2246334B0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2246336D0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_224616E14(0, 0, v11, &unk_22462F560, v16);
}

- (_TtC11DockKitCore16SensorController)initWithAccessory:(id)a3 id:(int64_t)a4 type:(int64_t)a5 name:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end