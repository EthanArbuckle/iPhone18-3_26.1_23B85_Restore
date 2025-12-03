@interface HFCameraEventDebugLogger
+ (NSURL)debugLogDirectory;
- (HFCameraEventDebugLogger)initWithCameraProfile:(id)profile;
- (void)logEvents:(NSArray *)events toJSONWithDebugLogType:(unint64_t)type completionHandler:(id)handler;
- (void)logFetchEventsToJSONWithDateInterval:(NSDateInterval *)interval limit:(unint64_t)limit ascending:(BOOL)ascending reason:(NSString *)reason playheadPosition:(NSDate *)position completionHandler:(id)handler;
- (void)removeExistingFilesWithCompletionHandler:(id)handler;
@end

@implementation HFCameraEventDebugLogger

- (HFCameraEventDebugLogger)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  swift_defaultActor_initialize();
  *self->cameraProfile = 0;
  *self->fetchCounter = 0;
  *self->updateCounter = sub_20D9D5DF8(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval;
  v7 = sub_20DD63484();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *&self->_anon_60[8] = profile;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CameraEventDebugLogger();
  return [(HFCameraEventDebugLogger *)&v9 init];
}

+ (NSURL)debugLogDirectory
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  swift_getObjCClassMetadata();
  static CameraEventDebugLogger.debugLogDirectory.getter(v5);
  v6 = sub_20DD63514();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_20DD634D4();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (void)removeExistingFilesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD94DD0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD94DD8;
  v13[5] = v12;

  sub_20DAB35AC(0, 0, v8, &unk_20DD94DE0, v13);
}

- (void)logFetchEventsToJSONWithDateInterval:(NSDateInterval *)interval limit:(unint64_t)limit ascending:(BOOL)ascending reason:(NSString *)reason playheadPosition:(NSDate *)position completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = interval;
  *(v20 + 24) = limit;
  *(v20 + 32) = ascending;
  *(v20 + 40) = reason;
  *(v20 + 48) = position;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_20DD65114();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_20DD94DB0;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_20DD94DB8;
  v23[5] = v22;
  intervalCopy = interval;
  reasonCopy = reason;
  positionCopy = position;

  sub_20DAB35AC(0, 0, v18, &unk_20DD94DC0, v23);
}

- (void)logEvents:(NSArray *)events toJSONWithDebugLogType:(unint64_t)type completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = events;
  v14[3] = type;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_20DD65114();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20DD94D88;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20DD94D90;
  v17[5] = v16;
  eventsCopy = events;

  sub_20DAB35AC(0, 0, v12, &unk_20DD95520, v17);
}

@end