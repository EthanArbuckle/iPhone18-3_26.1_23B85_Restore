@interface FCPauseRingsSampleObserver
- (FCPauseRingsSampleObserver)initWithProfile:(id)a3;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation FCPauseRingsSampleObserver

- (FCPauseRingsSampleObserver)initWithProfile:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FCPauseRingsSampleObserver;
  v5 = [(FCPauseRingsSampleObserver *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HDCreateSerialUtilityDispatchQueue();
    serviceQueue = v6->_serviceQueue;
    v6->_serviceQueue = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:v6->_serviceQueue];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained dataManager];
  v5 = [MEMORY[0x277CCD720] pauseRingsScheduleType];
  [v4 addObserver:self forDataType:v5];
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
  v4 = [WeakRetained dataManager];
  v5 = [MEMORY[0x277CCD720] pauseRingsScheduleType];
  [v4 removeObserver:self forDataType:v5];

  v6.receiver = self;
  v6.super_class = FCPauseRingsSampleObserver;
  [(FCPauseRingsSampleObserver *)&v6 dealloc];
}

@end