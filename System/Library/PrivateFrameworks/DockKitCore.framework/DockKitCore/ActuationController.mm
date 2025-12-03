@interface ActuationController
- (_TtC11DockKitCore19ActuationController)initWithAccessory:(id)accessory id:(int64_t)id motionModel:(int64_t)model name:(id)name actuators:(id)actuators;
- (_TtC11DockKitCore19ActuationController)initWithAccessory:(id)accessory id:(int64_t)id type:(int64_t)type name:(id)name;
- (void)actuatorFeedbackWithInfo:(id)info system:(id)system actuators:(id)actuators positions:(id)positions velocities:(id)velocities timestamp:(double)timestamp;
- (void)disconnectedWithErr:(id)err;
- (void)encodeWithCoder:(id)coder;
- (void)getActuatorFeedbackWithActuators:(NSArray *)actuators delegate:(_TtP11DockKitCore25XPCActuatorClientProtocol_ *)delegate occurrence:(int64_t)occurrence completionHandler:(id)handler;
- (void)getCurrentFeedbackWithActuators:(NSArray *)actuators completionHandler:(id)handler;
- (void)setActuatorPositionsWithActuators:(NSArray *)actuators positions:(NSArray *)positions completionHandler:(id)handler;
- (void)setActuatorVelocitiesWithActuatorNames:(NSArray *)names velocities:(NSArray *)velocities completionHandler:(id)handler;
- (void)setActuatorVelocitiesWithActuators:(NSArray *)actuators velocities:(NSArray *)velocities completionHandler:(id)handler;
- (void)setRotationWithYaw:(double)yaw pitch:(double)pitch roll:(double)roll completionHandler:(id)handler;
- (void)setRotationalVelocityWithYaw:(double)yaw pitch:(double)pitch roll:(double)roll completionHandler:(id)handler;
- (void)stopActuatorFeedbackWithCompletionHandler:(id)handler;
- (void)trajectoryProgressFeedbackWithInfo:(id)info system:(id)system progress:(id)progress;
@end

@implementation ActuationController

- (_TtC11DockKitCore19ActuationController)initWithAccessory:(id)accessory id:(int64_t)id motionModel:(int64_t)model name:(id)name actuators:(id)actuators
{
  v10 = sub_224627CD8();
  v12 = v11;
  type metadata accessor for Actuator();
  v13 = sub_224627ED8();
  accessoryCopy = accessory;
  v15 = sub_2245C894C(accessory, id, model, v10, v12, v13);

  return v15;
}

- (_TtC11DockKitCore19ActuationController)initWithAccessory:(id)accessory id:(int64_t)id type:(int64_t)type name:(id)name
{
  v9 = sub_224627CD8();
  v11 = v10;
  accessoryCopy = accessory;
  v13 = sub_2245C8E90(accessory, id, type, v9, v11);

  return v13;
}

- (void)actuatorFeedbackWithInfo:(id)info system:(id)system actuators:(id)actuators positions:(id)positions velocities:(id)velocities timestamp:(double)timestamp
{
  v10 = sub_224627ED8();
  v11 = sub_224627ED8();
  v12 = sub_224627ED8();
  infoCopy = info;
  selfCopy = self;
  sub_2245C91A4(v10, v11, v12);
}

- (void)trajectoryProgressFeedbackWithInfo:(id)info system:(id)system progress:(id)progress
{
  infoCopy = info;
  progressCopy = progress;
  selfCopy = self;
  sub_2245C9794(progressCopy);
}

- (void)disconnectedWithErr:(id)err
{
  selfCopy = self;
  errCopy = err;
  _s11DockKitCore19ActuationControllerC12disconnected3errys5Error_pSg_tF_0();
}

- (void)setRotationWithYaw:(double)yaw pitch:(double)pitch roll:(double)roll completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = yaw;
  *(v15 + 24) = pitch;
  *(v15 + 32) = roll;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_224627F78();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2246327F8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_224632800;
  v18[5] = v17;
  selfCopy = self;
  sub_224616E14(0, 0, v13, &unk_224632808, v18);
}

- (void)setActuatorVelocitiesWithActuatorNames:(NSArray *)names velocities:(NSArray *)velocities completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = names;
  v13[3] = velocities;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2246327D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2246327E0;
  v16[5] = v15;
  namesCopy = names;
  velocitiesCopy = velocities;
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_2246327E8, v16);
}

- (void)setRotationalVelocityWithYaw:(double)yaw pitch:(double)pitch roll:(double)roll completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = yaw;
  *(v15 + 24) = pitch;
  *(v15 + 32) = roll;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_224627F78();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2246327B8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2246327C0;
  v18[5] = v17;
  selfCopy = self;
  sub_224616E14(0, 0, v13, &unk_2246327C8, v18);
}

- (void)setActuatorPositionsWithActuators:(NSArray *)actuators positions:(NSArray *)positions completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = actuators;
  v13[3] = positions;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224632798;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2246327A0;
  v16[5] = v15;
  actuatorsCopy = actuators;
  positionsCopy = positions;
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_2246327A8, v16);
}

- (void)setActuatorVelocitiesWithActuators:(NSArray *)actuators velocities:(NSArray *)velocities completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = actuators;
  v13[3] = velocities;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224632778;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224632780;
  v16[5] = v15;
  actuatorsCopy = actuators;
  velocitiesCopy = velocities;
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_224632788, v16);
}

- (void)getActuatorFeedbackWithActuators:(NSArray *)actuators delegate:(_TtP11DockKitCore25XPCActuatorClientProtocol_ *)delegate occurrence:(int64_t)occurrence completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = actuators;
  v15[3] = delegate;
  v15[4] = occurrence;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_224627F78();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_224632758;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_224632760;
  v18[5] = v17;
  actuatorsCopy = actuators;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_224616E14(0, 0, v13, &unk_224632768, v18);
}

- (void)getCurrentFeedbackWithActuators:(NSArray *)actuators completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = actuators;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632730;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632738;
  v14[5] = v13;
  actuatorsCopy = actuators;
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224632740, v14);
}

- (void)stopActuatorFeedbackWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224632720;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2246336D0;
  v12[5] = v11;
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_22462F560, v12);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_224628008();
  v6 = sub_224627CB8();
  [coderCopy encodeObject:v5 forKey:v6];

  sub_2245B3BA4(coderCopy);
}

@end