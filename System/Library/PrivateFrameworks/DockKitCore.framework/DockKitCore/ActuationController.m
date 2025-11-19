@interface ActuationController
- (_TtC11DockKitCore19ActuationController)initWithAccessory:(id)a3 id:(int64_t)a4 motionModel:(int64_t)a5 name:(id)a6 actuators:(id)a7;
- (_TtC11DockKitCore19ActuationController)initWithAccessory:(id)a3 id:(int64_t)a4 type:(int64_t)a5 name:(id)a6;
- (void)actuatorFeedbackWithInfo:(id)a3 system:(id)a4 actuators:(id)a5 positions:(id)a6 velocities:(id)a7 timestamp:(double)a8;
- (void)disconnectedWithErr:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getActuatorFeedbackWithActuators:(NSArray *)a3 delegate:(_TtP11DockKitCore25XPCActuatorClientProtocol_ *)a4 occurrence:(int64_t)a5 completionHandler:(id)a6;
- (void)getCurrentFeedbackWithActuators:(NSArray *)a3 completionHandler:(id)a4;
- (void)setActuatorPositionsWithActuators:(NSArray *)a3 positions:(NSArray *)a4 completionHandler:(id)a5;
- (void)setActuatorVelocitiesWithActuatorNames:(NSArray *)a3 velocities:(NSArray *)a4 completionHandler:(id)a5;
- (void)setActuatorVelocitiesWithActuators:(NSArray *)a3 velocities:(NSArray *)a4 completionHandler:(id)a5;
- (void)setRotationWithYaw:(double)a3 pitch:(double)a4 roll:(double)a5 completionHandler:(id)a6;
- (void)setRotationalVelocityWithYaw:(double)a3 pitch:(double)a4 roll:(double)a5 completionHandler:(id)a6;
- (void)stopActuatorFeedbackWithCompletionHandler:(id)a3;
- (void)trajectoryProgressFeedbackWithInfo:(id)a3 system:(id)a4 progress:(id)a5;
@end

@implementation ActuationController

- (_TtC11DockKitCore19ActuationController)initWithAccessory:(id)a3 id:(int64_t)a4 motionModel:(int64_t)a5 name:(id)a6 actuators:(id)a7
{
  v10 = sub_224627CD8();
  v12 = v11;
  type metadata accessor for Actuator();
  v13 = sub_224627ED8();
  v14 = a3;
  v15 = sub_2245C894C(a3, a4, a5, v10, v12, v13);

  return v15;
}

- (_TtC11DockKitCore19ActuationController)initWithAccessory:(id)a3 id:(int64_t)a4 type:(int64_t)a5 name:(id)a6
{
  v9 = sub_224627CD8();
  v11 = v10;
  v12 = a3;
  v13 = sub_2245C8E90(a3, a4, a5, v9, v11);

  return v13;
}

- (void)actuatorFeedbackWithInfo:(id)a3 system:(id)a4 actuators:(id)a5 positions:(id)a6 velocities:(id)a7 timestamp:(double)a8
{
  v10 = sub_224627ED8();
  v11 = sub_224627ED8();
  v12 = sub_224627ED8();
  v13 = a3;
  v14 = self;
  sub_2245C91A4(v10, v11, v12);
}

- (void)trajectoryProgressFeedbackWithInfo:(id)a3 system:(id)a4 progress:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = self;
  sub_2245C9794(v8);
}

- (void)disconnectedWithErr:(id)a3
{
  v4 = self;
  v5 = a3;
  _s11DockKitCore19ActuationControllerC12disconnected3errys5Error_pSg_tF_0();
}

- (void)setRotationWithYaw:(double)a3 pitch:(double)a4 roll:(double)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
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
  v19 = self;
  sub_224616E14(0, 0, v13, &unk_224632808, v18);
}

- (void)setActuatorVelocitiesWithActuatorNames:(NSArray *)a3 velocities:(NSArray *)a4 completionHandler:(id)a5
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
  v15[4] = &unk_2246327D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2246327E0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_224616E14(0, 0, v11, &unk_2246327E8, v16);
}

- (void)setRotationalVelocityWithYaw:(double)a3 pitch:(double)a4 roll:(double)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
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
  v19 = self;
  sub_224616E14(0, 0, v13, &unk_2246327C8, v18);
}

- (void)setActuatorPositionsWithActuators:(NSArray *)a3 positions:(NSArray *)a4 completionHandler:(id)a5
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
  v15[4] = &unk_224632798;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2246327A0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_224616E14(0, 0, v11, &unk_2246327A8, v16);
}

- (void)setActuatorVelocitiesWithActuators:(NSArray *)a3 velocities:(NSArray *)a4 completionHandler:(id)a5
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
  v15[4] = &unk_224632778;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224632780;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_224616E14(0, 0, v11, &unk_224632788, v16);
}

- (void)getActuatorFeedbackWithActuators:(NSArray *)a3 delegate:(_TtP11DockKitCore25XPCActuatorClientProtocol_ *)a4 occurrence:(int64_t)a5 completionHandler:(id)a6
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
  v17[4] = &unk_224632758;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_224632760;
  v18[5] = v17;
  v19 = a3;
  swift_unknownObjectRetain();
  v20 = self;
  sub_224616E14(0, 0, v13, &unk_224632768, v18);
}

- (void)getCurrentFeedbackWithActuators:(NSArray *)a3 completionHandler:(id)a4
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
  v13[4] = &unk_224632730;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632738;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_224616E14(0, 0, v9, &unk_224632740, v14);
}

- (void)stopActuatorFeedbackWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_22462F560, v12);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = sub_224628008();
  v6 = sub_224627CB8();
  [v4 encodeObject:v5 forKey:v6];

  sub_2245B3BA4(v4);
}

@end