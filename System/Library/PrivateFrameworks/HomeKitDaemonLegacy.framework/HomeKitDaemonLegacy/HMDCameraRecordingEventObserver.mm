@interface HMDCameraRecordingEventObserver
- (HMDCameraRecordingEventObserver)init;
- (HMDCameraRecordingEventObserver)initWithLogEventDispatcher:(id)dispatcher countersManager:(id)manager dailyScheduler:(id)scheduler dateProvider:(id)provider currentHomeDataSource:(id)source;
- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource;
- (HMMLogEventDispatching)logEventDispatcher;
- (id)logEventForCurrentHomeWithDate:(id)date;
- (void)deleteCountersBefore:(BOOL)before date:(id)date;
- (void)handleRecordingSessionLogEvent:(id)event;
- (void)handleRecordingUploadOperationEvent:(id)event;
- (void)observeEvent:(id)event;
- (void)runDailyTask;
- (void)setCountersManager:(id)manager;
- (void)setDailyScheduler:(id)scheduler;
- (void)setDateProvider:(id)provider;
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

- (void)setCountersManager:(id)manager
{
  v4 = *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_countersManager);
  *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_countersManager) = manager;
  managerCopy = manager;
}

- (void)setDailyScheduler:(id)scheduler
{
  v4 = *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_dailyScheduler);
  *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_dailyScheduler) = scheduler;
  schedulerCopy = scheduler;
}

- (void)setDateProvider:(id)provider
{
  v4 = *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_dateProvider);
  *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_dateProvider) = provider;
  providerCopy = provider;
}

- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventObserver_currentHomeDataSource);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (HMDCameraRecordingEventObserver)initWithLogEventDispatcher:(id)dispatcher countersManager:(id)manager dailyScheduler:(id)scheduler dateProvider:(id)provider currentHomeDataSource:(id)source
{
  swift_unknownObjectRetain();
  managerCopy = manager;
  schedulerCopy = scheduler;
  providerCopy = provider;
  swift_unknownObjectRetain();
  return sub_253210310(dispatcher, managerCopy, schedulerCopy, providerCopy, source);
}

- (void)start
{
  swift_getObjectType();
  v3 = (self + OBJC_IVAR___HMDCameraRecordingEventObserver_startMutex);
  selfCopy = self;
  os_unfair_lock_lock(v3);
  sub_253210420(&v3[1], selfCopy);
  os_unfair_lock_unlock(v3);
}

- (void)stop
{
  v2 = (self + OBJC_IVAR___HMDCameraRecordingEventObserver_startMutex);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  sub_253210674(&v2[1], selfCopy);
  os_unfair_lock_unlock(v2);
}

- (void)handleRecordingSessionLogEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_253211AC8();
}

- (void)handleRecordingUploadOperationEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_253210880(eventCopy);
}

- (id)logEventForCurrentHomeWithDate:(id)date
{
  v4 = sub_253CCFEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFEA8();
  selfCopy = self;
  v10 = sub_253210B68();

  (*(v5 + 8))(v8, v4);

  return v10;
}

- (void)deleteCountersBefore:(BOOL)before date:(id)date
{
  v6 = sub_253CCFEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFEA8();
  selfCopy = self;
  sub_253211170(before, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)observeEvent:(id)event
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
  selfCopy = self;
  sub_253211720();
}

- (HMDCameraRecordingEventObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end