@interface FindMyLocateSession
- (_TtC6HomeUI19FindMyLocateSession)init;
- (id)meDeviceUpdateCallback;
- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler;
- (void)getThisDeviceWithCompletionHandler:(id)handler;
- (void)setActiveLocationSharingDeviceToThisDeviceWithCompletionHandler:(id)handler;
- (void)setMeDeviceUpdateCallback:(id)callback;
- (void)startMonitoringPrefrenceChangesWithCompletionHandler:(id)handler;
- (void)stopMonitoringPreferenceChangesWithCompletionHandler:(id)handler;
@end

@implementation FindMyLocateSession

- (id)meDeviceUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20D0F6EB4;
    aBlock[3] = &block_descriptor_50;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMeDeviceUpdateCallback:(id)callback
{
  v4 = _Block_copy(callback);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_20D0FBCB0;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_20CEC8164(v7);
}

- (void)startMonitoringPrefrenceChangesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5C9770;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5C9778;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5C9780, v12);
}

- (void)stopMonitoringPreferenceChangesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5C9750;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5C9758;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5C9760, v12);
}

- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5C9730;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5C9738;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5C9740, v12);
}

- (void)getThisDeviceWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5C9710;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5C9718;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5C9720, v12);
}

- (void)setActiveLocationSharingDeviceToThisDeviceWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5C9700;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5C5200;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5BCD00, v12);
}

- (_TtC6HomeUI19FindMyLocateSession)init
{
  v3 = sub_20D563988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D563998();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v9 = (self + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_meDeviceUpdateCallback);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_session;
  (*(v4 + 104))(v6, *MEMORY[0x277D09060], v3, v8);
  sub_20D5639A8();
  sub_20D563A78();
  swift_allocObject();
  *(self + v10) = sub_20D563A88();
  *(self + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_preferenceChangesTask) = 0;
  Session = type metadata accessor for FindMyLocateSession();
  v13.receiver = self;
  v13.super_class = Session;
  return [(FindMyLocateSession *)&v13 init];
}

@end