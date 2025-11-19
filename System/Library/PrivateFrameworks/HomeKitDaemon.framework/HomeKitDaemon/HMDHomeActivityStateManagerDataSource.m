@interface HMDHomeActivityStateManagerDataSource
- (BOOL)hasFinishedLoadingHomeData;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (BOOL)isEligibleForFMFDesignation;
- (BOOL)isResidentCapable;
- (BOOL)supportsAdaptiveTemperatureAutomations;
- (HMCContext)workingStoreContext;
- (HMDHome)home;
- (HMDHomeActivityStateManagerDataSource)initWithHome:(id)a3;
- (HMDResidentDevice)currentPrimaryResident;
- (HMDUser)currentUser;
- (id)createHomeActivityStateAggregatorManagerWithInitialStateHoldDetails:(id)a3;
- (id)createPresenceFeeder;
- (id)makeHomeActivityComingHomeAggregator;
- (id)makeHomeActivityHomeAwayAggregator;
- (id)makeHomeActivityStateAggregatorManagerStorage;
- (id)makeHomeActivityStateMachineWithAggregators:(id)a3 initialStateHoldDetails:(id)a4;
- (id)makeHomeActivityStateManagerStorage;
- (id)makeHomeActivityVacationAggregator;
- (id)makeUserActivityComingHomeStateDetector;
- (id)makeUserActivityHomeAwayStateDetector;
- (id)makeUserActivityReportCoordinator;
- (id)makeUserActivityVacationStateDetector;
@end

@implementation HMDHomeActivityStateManagerDataSource

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)makeUserActivityVacationStateDetector
{
  v2 = [[HMDUserActivityStateType4Detector alloc] initWithDataSource:self];

  return v2;
}

- (id)makeUserActivityComingHomeStateDetector
{
  v2 = [[HMDUserActivityType6Detector alloc] initWithDataSource:self];

  return v2;
}

- (id)makeUserActivityHomeAwayStateDetector
{
  v2 = [[HMDHomeAwayStateDetector alloc] initWithDataSource:self];

  return v2;
}

- (id)makeUserActivityReportCoordinator
{
  v2 = [(HMDHomeActivityStateManagerDataSource *)self home];
  if (v2)
  {
    v3 = v2;
    v4 = [HMDUserActivityReportCoordinatorFactory coordinatorWithHome:v2];

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return [(HMDHomeActivityStateManagerDataSource *)v6 createPresenceFeeder];
  }
}

- (id)createPresenceFeeder
{
  v2 = objc_alloc_init(HMDUserPresenceFeeder);

  return v2;
}

- (id)makeHomeActivityVacationAggregator
{
  v2 = [[HMDHomeActivityVacationAggregator alloc] initWithDataSource:self];

  return v2;
}

- (id)makeHomeActivityComingHomeAggregator
{
  v2 = [[HMDHomeActivityComingHomeAggregator alloc] initWithDataSource:self];

  return v2;
}

- (id)makeHomeActivityHomeAwayAggregator
{
  v2 = [[HMDHomeActivityHomeAwayAggregator alloc] initWithDataSource:self];

  return v2;
}

- (id)makeHomeActivityStateAggregatorManagerStorage
{
  v2 = [[HMDHomeActivityStateAggregatorManagerStorage alloc] initWithDataSource:self];

  return v2;
}

- (id)makeHomeActivityStateMachineWithAggregators:(id)a3 initialStateHoldDetails:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HMDHomeActivityStateMachine alloc] initWithDataSource:self aggregators:v7 initialStateHoldDetails:v6];

  return v8;
}

- (id)createHomeActivityStateAggregatorManagerWithInitialStateHoldDetails:(id)a3
{
  v4 = a3;
  v5 = [[HMDHomeActivityStateAggregatorManager alloc] initWithDataSource:self initialStateHoldDetails:v4];

  return v5;
}

- (id)makeHomeActivityStateManagerStorage
{
  v2 = [[HMDHomeActivityStateManagerStorage alloc] initWithDataSource:self];

  return v2;
}

- (BOOL)supportsAdaptiveTemperatureAutomations
{
  v2 = [(HMDHomeActivityStateManagerDataSource *)self home];
  v3 = [v2 hapAccessories];
  v4 = [v3 na_any:&__block_literal_global_207431];

  return v4;
}

uint64_t __79__HMDHomeActivityStateManagerDataSource_supportsAdaptiveTemperatureAutomations__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 supportsAdaptiveTemperatureAutomations];
  v3 = [v2 BOOLValue];

  return v3;
}

- (HMDUser)currentUser
{
  v2 = [(HMDHomeActivityStateManagerDataSource *)self home];
  v3 = [v2 currentUser];

  return v3;
}

- (HMCContext)workingStoreContext
{
  v2 = [(HMDHomeActivityStateManagerDataSource *)self home];
  v3 = [v2 backingStore];
  v4 = [v3 context];

  return v4;
}

- (HMDResidentDevice)currentPrimaryResident
{
  v2 = [(HMDHomeActivityStateManagerDataSource *)self home];
  v3 = [v2 residentDeviceManager];
  v4 = [v3 primaryResidentDevice];

  return v4;
}

- (BOOL)isCurrentDeviceConfirmedPrimaryResident
{
  v2 = [(HMDHomeActivityStateManagerDataSource *)self home];
  v3 = [v2 isCurrentDeviceConfirmedPrimaryResident];

  return v3;
}

- (BOOL)hasFinishedLoadingHomeData
{
  v2 = [(HMDHomeActivityStateManagerDataSource *)self home];
  v3 = [v2 homeManager];
  v4 = [v3 hasLoadedData];

  return v4;
}

- (BOOL)isResidentCapable
{
  if (self)
  {
    LOBYTE(self) = isTVOSDevice();
  }

  return self;
}

- (BOOL)isEligibleForFMFDesignation
{
  if (self)
  {
    if (isiOSDevice())
    {
      LOBYTE(self) = 1;
    }

    else
    {

      LOBYTE(self) = isWatch();
    }
  }

  return self;
}

- (HMDHomeActivityStateManagerDataSource)initWithHome:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HMDHomeActivityStateManagerDataSource;
  v5 = [(HMDHomeActivityStateManagerDataSource *)&v24 init];
  if (v5)
  {
    v6 = [v4 administratorHandler];
    administratorHandler = v5->_administratorHandler;
    v5->_administratorHandler = v6;

    v8 = +[HMDBulletinBoard sharedBulletinBoard];
    bulletinBoard = v5->_bulletinBoard;
    v5->_bulletinBoard = v8;

    v10 = objc_alloc_init(HMDFeaturesDataSource);
    featuresDataSource = v5->_featuresDataSource;
    v5->_featuresDataSource = v10;

    objc_storeWeak(&v5->_home, v4);
    v12 = +[HMDMetricsManager sharedLogEventSubmitter];
    logEventSubmitter = v5->_logEventSubmitter;
    v5->_logEventSubmitter = v12;

    v14 = [v4 uuid];
    v15 = [v14 UUIDString];
    logIdentifier = v5->_logIdentifier;
    v5->_logIdentifier = v15;

    v17 = [v4 msgDispatcher];
    messageDispatcher = v5->_messageDispatcher;
    v5->_messageDispatcher = v17;

    v19 = [v4 workQueue];
    queue = v5->_queue;
    v5->_queue = v19;

    v5->_reportValidityInterval = (60 * (presenceMonitorRefreshGracePeriodInMinutes + presenceFeedRefreshInMinutes));
    v21 = objc_alloc_init(HMDHomeActivityStateLoggerWithTTL);
    loggerWithTTL = v5->_loggerWithTTL;
    v5->_loggerWithTTL = v21;
  }

  return v5;
}

@end