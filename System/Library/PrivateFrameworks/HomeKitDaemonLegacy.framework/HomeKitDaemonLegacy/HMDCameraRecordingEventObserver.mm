@interface HMDCameraRecordingEventObserver
- (HMDCameraRecordingEventObserver)init;
- (HMDCameraRecordingEventObserver)initWithLogEventDispatcher:(id)a3 countersManager:(id)a4 dailyScheduler:(id)a5 dateProvider:(id)a6 currentHomeDataSource:(id)a7;
- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource;
- (HMMLogEventDispatching)logEventDispatcher;
- (id)logEventForCurrentHomeWithDate:(id)a3;
- (void)deleteCountersBefore:(BOOL)a3 date:(id)a4;
- (void)handleRecordingSessionLogEvent:(id)a3;
- (void)handleRecordingUploadOperationEvent:(id)a3;
- (void)observeEvent:(id)a3;
- (void)runDailyTask;
- (void)setCountersManager:(id)a3;
- (void)setDailyScheduler:(id)a3;
- (void)setDateProvider:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation HMDCameraRecordingEventObserver

- (HMMLogEventDispatching)logEventDispatcher
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_logEventDispatcher);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setCountersManager:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_countersManager);
  *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_countersManager) = a3;
  v3 = a3;
}

- (void)setDailyScheduler:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_dailyScheduler);
  *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_dailyScheduler) = a3;
  v3 = a3;
}

- (void)setDateProvider:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_dateProvider);
  *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_dateProvider) = a3;
  v3 = a3;
}

- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_currentHomeDataSource);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (HMDCameraRecordingEventObserver)initWithLogEventDispatcher:(id)a3 countersManager:(id)a4 dailyScheduler:(id)a5 dateProvider:(id)a6 currentHomeDataSource:(id)a7
{
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = a5;
  v14 = a6;
  swift_unknownObjectRetain();
  return sub_253210310(a3, v12, v13, v14, a7);
}

- (void)start
{
  swift_getObjectType();
  v3 = (self + OBJC_IVAR___HMDCameraRecordingEventObserver_startMutex);
  v4 = self;
  os_unfair_lock_lock(v3);
  sub_253210420(&v3[1], v4);
  os_unfair_lock_unlock(v3);
}

- (void)stop
{
  v2 = (self + OBJC_IVAR___HMDCameraRecordingEventObserver_startMutex);
  v3 = self;
  os_unfair_lock_lock(v2);
  sub_253210674(&v2[1], v3);
  os_unfair_lock_unlock(v2);
}

- (void)handleRecordingSessionLogEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_253211AC8();
}

- (void)handleRecordingUploadOperationEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_253210880(v4);
}

- (id)logEventForCurrentHomeWithDate:(id)a3
{
  v4 = sub_253CCFEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFEA8();
  v9 = self;
  v10 = sub_253210B68();

  (*(v5 + 8))(v8, v4);

  return v10;
}

- (void)deleteCountersBefore:(BOOL)a3 date:(id)a4
{
  v6 = sub_253CCFEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFEA8();
  v11 = self;
  sub_253211170(a3, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)observeEvent:(id)a3
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = &selRef_handleRecordingSessionLogEvent_;
  }

  else
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
      return;
    }

    v5 = v7;
    v6 = &selRef_handleRecordingUploadOperationEvent_;
  }

  v8 = *v6;

  [self v8];
}

- (void)runDailyTask
{
  v2 = self;
  sub_253211720();
}

- (HMDCameraRecordingEventObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end