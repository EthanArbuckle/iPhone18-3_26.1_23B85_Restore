@interface FindMyLocateSession
- (id)meDeviceUpdateCallback;
- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)a3;
- (void)setMeDeviceUpdateCallback:(id)a3;
- (void)startMonitoringPreferencesChangesWithCompletionHandler:(id)a3;
- (void)stopMonitoringPreferenceChangesWithCompletionHandler:(id)a3;
@end

@implementation FindMyLocateSession

- (id)meDeviceUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2491E5C18;
    aBlock[3] = &block_descriptor;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMeDeviceUpdateCallback:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_2491EAE94;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_2491E5DA4(v7);
}

- (void)startMonitoringPreferencesChangesWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC90, &qword_2491FFCB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2491F3E28();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2491FFE80;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2491FFE88;
  v12[5] = v11;
  v13 = self;
  sub_2491E9900(0, 0, v7, &unk_2491FFE90, v12);
}

- (void)stopMonitoringPreferenceChangesWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC90, &qword_2491FFCB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2491F3E28();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2491FFE60;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2491FFE68;
  v12[5] = v11;
  v13 = self;
  sub_2491E9900(0, 0, v7, &unk_2491FFE70, v12);
}

- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC90, &qword_2491FFCB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2491F3E28();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2491FFE18;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2491FFE28;
  v12[5] = v11;
  v13 = self;
  sub_2491E9900(0, 0, v7, &unk_2491FFE38, v12);
}

@end