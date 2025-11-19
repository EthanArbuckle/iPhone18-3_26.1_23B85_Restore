@interface ContinuityPairing
- (_TtC19DSContinuityPairing17ContinuityPairing)init;
- (void)fetchContinuityDevicesWithCompletionHandler:(id)a3;
- (void)unpairDeviceWith:(NSUUID *)a3 completionHandler:(id)a4;
@end

@implementation ContinuityPairing

- (void)fetchContinuityDevicesWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80690, &qword_247F3B018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_247F3A6F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_247F3B070;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_247F3B078;
  v12[5] = v11;
  v13 = self;
  sub_247F37264(0, 0, v7, &unk_247F3B080, v12);
}

- (void)unpairDeviceWith:(NSUUID *)a3 completionHandler:(id)a4
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80690, &qword_247F3B018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_247F3A6F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_247F3B028;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_247F3B038;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_247F37264(0, 0, v9, &unk_247F3B048, v14);
}

- (_TtC19DSContinuityPairing17ContinuityPairing)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC19DSContinuityPairing17ContinuityPairing_manager;
  sub_247F3A5E8();
  *(&self->super.isa + v4) = sub_247F3A5D8();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ContinuityPairing *)&v6 init];
}

@end