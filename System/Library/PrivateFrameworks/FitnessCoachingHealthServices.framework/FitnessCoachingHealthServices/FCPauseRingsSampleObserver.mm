@interface FCPauseRingsSampleObserver
- (FCPauseRingsSampleObserver)initWithProfile:(id)profile;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation FCPauseRingsSampleObserver

- (FCPauseRingsSampleObserver)initWithProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = FCPauseRingsSampleObserver;
  v5 = [(FCPauseRingsSampleObserver *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HDCreateSerialUtilityDispatchQueue();
    serviceQueue = v6->_serviceQueue;
    v6->_serviceQueue = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:v6->_serviceQueue];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  pauseRingsScheduleType = [MEMORY[0x277CCD720] pauseRingsScheduleType];
  [dataManager addObserver:self forDataType:pauseRingsScheduleType];
}

uint64_t __50__FCPauseRingsSampleObserver_samplesAdded_anchor___block_invoke()
{
  v0 = [*MEMORY[0x277D09C48] UTF8String];

  return notify_post(v0);
}

uint64_t __63__FCPauseRingsSampleObserver_samplesOfTypesWereRemoved_anchor___block_invoke()
{
  v0 = [*MEMORY[0x277D09C48] UTF8String];

  return notify_post(v0);
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  pauseRingsScheduleType = [MEMORY[0x277CCD720] pauseRingsScheduleType];
  [dataManager removeObserver:self forDataType:pauseRingsScheduleType];

  v6.receiver = self;
  v6.super_class = FCPauseRingsSampleObserver;
  [(FCPauseRingsSampleObserver *)&v6 dealloc];
}

@end