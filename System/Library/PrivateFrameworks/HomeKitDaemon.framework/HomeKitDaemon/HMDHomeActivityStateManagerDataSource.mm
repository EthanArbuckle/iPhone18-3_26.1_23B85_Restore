@interface HMDHomeActivityStateManagerDataSource
- (BOOL)hasFinishedLoadingHomeData;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (BOOL)isEligibleForFMFDesignation;
- (BOOL)isResidentCapable;
- (BOOL)supportsAdaptiveTemperatureAutomations;
- (HMCContext)workingStoreContext;
- (HMDHome)home;
- (HMDHomeActivityStateManagerDataSource)initWithHome:(id)home;
- (HMDResidentDevice)currentPrimaryResident;
- (HMDUser)currentUser;
- (id)createHomeActivityStateAggregatorManagerWithInitialStateHoldDetails:(id)details;
- (id)createPresenceFeeder;
- (id)makeHomeActivityComingHomeAggregator;
- (id)makeHomeActivityHomeAwayAggregator;
- (id)makeHomeActivityStateAggregatorManagerStorage;
- (id)makeHomeActivityStateMachineWithAggregators:(id)aggregators initialStateHoldDetails:(id)details;
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
  home = [(HMDHomeActivityStateManagerDataSource *)self home];
  if (home)
  {
    v3 = home;
    v4 = [HMDUserActivityReportCoordinatorFactory coordinatorWithHome:home];

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

- (id)makeHomeActivityStateMachineWithAggregators:(id)aggregators initialStateHoldDetails:(id)details
{
  detailsCopy = details;
  aggregatorsCopy = aggregators;
  v8 = [[HMDHomeActivityStateMachine alloc] initWithDataSource:self aggregators:aggregatorsCopy initialStateHoldDetails:detailsCopy];

  return v8;
}

- (id)createHomeActivityStateAggregatorManagerWithInitialStateHoldDetails:(id)details
{
  detailsCopy = details;
  v5 = [[HMDHomeActivityStateAggregatorManager alloc] initWithDataSource:self initialStateHoldDetails:detailsCopy];

  return v5;
}

- (id)makeHomeActivityStateManagerStorage
{
  v2 = [[HMDHomeActivityStateManagerStorage alloc] initWithDataSource:self];

  return v2;
}

- (BOOL)supportsAdaptiveTemperatureAutomations
{
  home = [(HMDHomeActivityStateManagerDataSource *)self home];
  hapAccessories = [home hapAccessories];
  v4 = [hapAccessories na_any:&__block_literal_global_207431];

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
  home = [(HMDHomeActivityStateManagerDataSource *)self home];
  currentUser = [home currentUser];

  return currentUser;
}

- (HMCContext)workingStoreContext
{
  home = [(HMDHomeActivityStateManagerDataSource *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  return context;
}

- (HMDResidentDevice)currentPrimaryResident
{
  home = [(HMDHomeActivityStateManagerDataSource *)self home];
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  return primaryResidentDevice;
}

- (BOOL)isCurrentDeviceConfirmedPrimaryResident
{
  home = [(HMDHomeActivityStateManagerDataSource *)self home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  return isCurrentDeviceConfirmedPrimaryResident;
}

- (BOOL)hasFinishedLoadingHomeData
{
  home = [(HMDHomeActivityStateManagerDataSource *)self home];
  homeManager = [home homeManager];
  hasLoadedData = [homeManager hasLoadedData];

  return hasLoadedData;
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

- (HMDHomeActivityStateManagerDataSource)initWithHome:(id)home
{
  homeCopy = home;
  v24.receiver = self;
  v24.super_class = HMDHomeActivityStateManagerDataSource;
  v5 = [(HMDHomeActivityStateManagerDataSource *)&v24 init];
  if (v5)
  {
    administratorHandler = [homeCopy administratorHandler];
    administratorHandler = v5->_administratorHandler;
    v5->_administratorHandler = administratorHandler;

    v8 = +[HMDBulletinBoard sharedBulletinBoard];
    bulletinBoard = v5->_bulletinBoard;
    v5->_bulletinBoard = v8;

    v10 = objc_alloc_init(HMDFeaturesDataSource);
    featuresDataSource = v5->_featuresDataSource;
    v5->_featuresDataSource = v10;

    objc_storeWeak(&v5->_home, homeCopy);
    v12 = +[HMDMetricsManager sharedLogEventSubmitter];
    logEventSubmitter = v5->_logEventSubmitter;
    v5->_logEventSubmitter = v12;

    uuid = [homeCopy uuid];
    uUIDString = [uuid UUIDString];
    logIdentifier = v5->_logIdentifier;
    v5->_logIdentifier = uUIDString;

    msgDispatcher = [homeCopy msgDispatcher];
    messageDispatcher = v5->_messageDispatcher;
    v5->_messageDispatcher = msgDispatcher;

    workQueue = [homeCopy workQueue];
    queue = v5->_queue;
    v5->_queue = workQueue;

    v5->_reportValidityInterval = (60 * (presenceMonitorRefreshGracePeriodInMinutes + presenceFeedRefreshInMinutes));
    v21 = objc_alloc_init(HMDHomeActivityStateLoggerWithTTL);
    loggerWithTTL = v5->_loggerWithTTL;
    v5->_loggerWithTTL = v21;
  }

  return v5;
}

@end