@interface HFCameraEventDebugLogger
+ (NSURL)debugLogDirectory;
- (HFCameraEventDebugLogger)initWithCameraProfile:(id)a3;
- (void)logEvents:(NSArray *)a3 toJSONWithDebugLogType:(unint64_t)a4 completionHandler:(id)a5;
- (void)logFetchEventsToJSONWithDateInterval:(NSDateInterval *)a3 limit:(unint64_t)a4 ascending:(BOOL)a5 reason:(NSString *)a6 playheadPosition:(NSDate *)a7 completionHandler:(id)a8;
- (void)removeExistingFilesWithCompletionHandler:(id)a3;
@end

@implementation HFCameraEventDebugLogger

- (HFCameraEventDebugLogger)initWithCameraProfile:(id)a3
{
  v5 = a3;
  swift_defaultActor_initialize();
  *self->cameraProfile = 0;
  *self->fetchCounter = 0;
  *self->updateCounter = sub_20D9D5DF8(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval;
  v7 = sub_20DD63484();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *&self->_anon_60[8] = a3;
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

- (void)removeExistingFilesWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
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

- (void)logFetchEventsToJSONWithDateInterval:(NSDateInterval *)a3 limit:(unint64_t)a4 ascending:(BOOL)a5 reason:(NSString *)a6 playheadPosition:(NSDate *)a7 completionHandler:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  *(v20 + 48) = a7;
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
  v24 = a3;
  v25 = a6;
  v26 = a7;

  sub_20DAB35AC(0, 0, v18, &unk_20DD94DC0, v23);
}

- (void)logEvents:(NSArray *)a3 toJSONWithDebugLogType:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;

  sub_20DAB35AC(0, 0, v12, &unk_20DD95520, v17);
}

@end