@interface FindMyLocateSession
- (_TtC15HomeDeviceSetup19FindMyLocateSession)init;
- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler;
- (void)setActiveLocationSharingDeviceToThisDeviceWithCompletionHandler:(id)handler;
@end

@implementation FindMyLocateSession

- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57FA68, &qword_252FEE2D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_252FE9F64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_252FEE328;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_252FEE330;
  v12[5] = v11;
  selfCopy = self;
  sub_252FD7008(0, 0, v7, &unk_252FEE338, v12);
}

- (void)setActiveLocationSharingDeviceToThisDeviceWithCompletionHandler:(id)handler
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57FA68, &qword_252FEE2D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_252FE9F64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_252FEE2E0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_252FEE2F0;
  v12[5] = v11;
  selfCopy = self;
  sub_252FD7008(0, 0, v7, &unk_252FEE300, v12);
}

- (_TtC15HomeDeviceSetup19FindMyLocateSession)init
{
  v3 = sub_252FE9DF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_252FE9E04() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = OBJC_IVAR____TtC15HomeDeviceSetup19FindMyLocateSession_session;
  (*(v4 + 104))(v7, *MEMORY[0x277D09060], v3);
  sub_252FE9E14();
  v10 = sub_252FE9EC4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(&self->super.isa + v9) = sub_252FE9ED4();
  *(&self->super.isa + OBJC_IVAR____TtC15HomeDeviceSetup19FindMyLocateSession_preferenceChangesTask) = 0;
  Session = type metadata accessor for FindMyLocateSession();
  v15.receiver = self;
  v15.super_class = Session;
  return [(FindMyLocateSession *)&v15 init];
}

@end