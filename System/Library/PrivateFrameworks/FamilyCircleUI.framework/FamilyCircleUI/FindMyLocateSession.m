@interface FindMyLocateSession
- (_TtC14FamilyCircleUI19FindMyLocateSession)init;
- (void)handlesFollowingMyLocationWithCompletionHandler:(id)a3;
@end

@implementation FindMyLocateSession

- (void)handlesFollowingMyLocationWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_21BE28DAC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21BE40660;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21BE32A10;
  v13[5] = v12;
  v14 = self;
  sub_21BDC4F90(0, 0, v8, &unk_21BE391F0, v13);
}

- (_TtC14FamilyCircleUI19FindMyLocateSession)init
{
  v3 = sub_21BE2652C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE2653C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = OBJC_IVAR____TtC14FamilyCircleUI19FindMyLocateSession_session;
  (*(v4 + 104))(v7, *MEMORY[0x277D09060], v3);
  sub_21BE2654C();
  v11 = sub_21BE2661C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(&self->super.isa + v10) = sub_21BE2662C();
  Session = type metadata accessor for FindMyLocateSession();
  v16.receiver = self;
  v16.super_class = Session;
  return [(FindMyLocateSession *)&v16 init];
}

@end