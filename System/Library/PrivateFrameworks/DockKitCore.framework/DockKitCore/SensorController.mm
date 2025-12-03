@interface SensorController
- (_TtC11DockKitCore16SensorController)initWithAccessory:(id)accessory id:(int64_t)id name:(id)name sensors:(id)sensors;
- (_TtC11DockKitCore16SensorController)initWithAccessory:(id)accessory id:(int64_t)id type:(int64_t)type name:(id)name;
- (void)encodeWithCoder:(id)coder;
- (void)getSensorDataWithSensors:(NSArray *)sensors delegate:(_TtP11DockKitCore23XPCSensorClientProtocol_ *)delegate occurrence:(int64_t)occurrence completionHandler:(id)handler;
- (void)setSensorStateWithSensors:(NSArray *)sensors states:(NSArray *)states completionHandler:(id)handler;
- (void)stopSensorDataWithSensors:(NSArray *)sensors completionHandler:(id)handler;
@end

@implementation SensorController

- (_TtC11DockKitCore16SensorController)initWithAccessory:(id)accessory id:(int64_t)id name:(id)name sensors:(id)sensors
{
  v8 = sub_224627CD8();
  v10 = v9;
  type metadata accessor for Sensor();
  v11 = sub_224627ED8();
  accessoryCopy = accessory;
  v13 = sub_22460F760(accessory, id, v8, v10, v11);

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2245B3BA4(coderCopy);
}

- (void)getSensorDataWithSensors:(NSArray *)sensors delegate:(_TtP11DockKitCore23XPCSensorClientProtocol_ *)delegate occurrence:(int64_t)occurrence completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = sensors;
  v15[3] = delegate;
  v15[4] = occurrence;
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
  sensorsCopy = sensors;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_224616E14(0, 0, v13, &unk_2246334F8, v18);
}

- (void)stopSensorDataWithSensors:(NSArray *)sensors completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = sensors;
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
  sensorsCopy = sensors;
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_2246334D0, v14);
}

- (void)setSensorStateWithSensors:(NSArray *)sensors states:(NSArray *)states completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = sensors;
  v13[3] = states;
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
  sensorsCopy = sensors;
  statesCopy = states;
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_22462F560, v16);
}

- (_TtC11DockKitCore16SensorController)initWithAccessory:(id)accessory id:(int64_t)id type:(int64_t)type name:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end