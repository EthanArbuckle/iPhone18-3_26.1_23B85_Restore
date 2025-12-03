@interface HMDHouseholdMetricsManager
+ (id)logCategory;
- (HMDHouseholdMetricsManager)initWithCountersManager:(id)manager dataSource:(id)source accessoryDetailsManager:(id)detailsManager metricsHomeDataChangedManager:(id)changedManager dailyScheduler:(id)scheduler logEventSubmitter:(id)submitter dateProvider:(id)provider activityContributors:(id)self0 logEventFactories:(id)self1;
- (HMDHouseholdMetricsManager)initWithCountersManager:(id)manager dataSource:(id)source dailyScheduler:(id)scheduler logEventSubmitter:(id)submitter dateProvider:(id)provider requestCountProvider:(id)countProvider logEventFactories:(id)factories;
- (void)handleRequest:(id)request;
- (void)runDailyTask;
- (void)runHomeutilTask;
@end

@implementation HMDHouseholdMetricsManager

- (void)runHomeutilTask
{
  dateProvider = [(HMDHouseholdMetricsManager *)self dateProvider];
  v5 = [dateProvider startOfDayByAddingDayCount:0];

  server = [(HMDHouseholdMetricsManager *)self server];
  [server runHouseholdMetricsDataCollectionAssociatedToDate:v5 forceSubmit:1];
}

- (void)runDailyTask
{
  dateProvider = [(HMDHouseholdMetricsManager *)self dateProvider];
  v6 = [dateProvider startOfDayByAddingDayCount:-1];

  server = [(HMDHouseholdMetricsManager *)self server];
  [server runHouseholdMetricsDataCollectionAssociatedToDate:v6 forceSubmit:0];

  client = [(HMDHouseholdMetricsManager *)self client];
  [client deleteExpiredCounters];
}

- (void)handleRequest:(id)request
{
  requestCopy = request;
  client = [(HMDHouseholdMetricsManager *)self client];
  [client handleRequest:requestCopy];
}

- (HMDHouseholdMetricsManager)initWithCountersManager:(id)manager dataSource:(id)source dailyScheduler:(id)scheduler logEventSubmitter:(id)submitter dateProvider:(id)provider requestCountProvider:(id)countProvider logEventFactories:(id)factories
{
  managerCopy = manager;
  sourceCopy = source;
  schedulerCopy = scheduler;
  submitterCopy = submitter;
  providerCopy = provider;
  countProviderCopy = countProvider;
  factoriesCopy = factories;
  v46.receiver = self;
  v46.super_class = HMDHouseholdMetricsManager;
  v21 = [(HMDHouseholdMetricsManager *)&v46 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_dateProvider, provider);
    v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"810360B7-987E-4A25-BEC7-9CC06CDDA0F2"];
    messageTargetUUID = v22->_messageTargetUUID;
    v22->_messageTargetUUID = v23;

    v25 = [[HMDHouseholdMetricsMessagingProvider alloc] initWithReceiver:v22];
    v44 = schedulerCopy;
    messagingProvider = v22->_messagingProvider;
    v22->_messagingProvider = v25;

    v27 = HMDispatchQueueNameString();
    uTF8String = [v27 UTF8String];
    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_queue_attr_make_with_qos_class(v29, QOS_CLASS_BACKGROUND, 0);
    v30 = factoriesCopy;
    v31 = countProviderCopy;
    v32 = providerCopy;
    v33 = submitterCopy;
    v35 = v34 = sourceCopy;
    v36 = dispatch_queue_create(uTF8String, v35);
    workQueue = v22->_workQueue;
    v22->_workQueue = v36;

    sourceCopy = v34;
    submitterCopy = v33;
    providerCopy = v32;
    countProviderCopy = v31;
    factoriesCopy = v30;

    v38 = [[HMDHouseholdMetricsClient alloc] initWithCountersManager:managerCopy dateProvider:providerCopy remoteMessageDispatcher:v22->_messagingProvider requestCountProvider:countProviderCopy logEventFactories:v30];
    client = v22->_client;
    v22->_client = v38;

    schedulerCopy = v44;
    v40 = [[HMDHouseholdMetricsServer alloc] initWithDataSource:sourceCopy logEventSubmitter:submitterCopy householdMetricsProvider:v22->_client remoteMessageDispatcher:v22->_messagingProvider logEventFactories:factoriesCopy workQueue:v22->_workQueue];
    server = v22->_server;
    v22->_server = v40;

    [v44 registerDailyTaskRunner:v22];
    v42 = v22;
  }

  return v22;
}

- (HMDHouseholdMetricsManager)initWithCountersManager:(id)manager dataSource:(id)source accessoryDetailsManager:(id)detailsManager metricsHomeDataChangedManager:(id)changedManager dailyScheduler:(id)scheduler logEventSubmitter:(id)submitter dateProvider:(id)provider activityContributors:(id)self0 logEventFactories:(id)self1
{
  v63[7] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  sourceCopy = source;
  changedManagerCopy = changedManager;
  providerCopy = provider;
  factoriesCopy = factories;
  contributorsCopy = contributors;
  submitterCopy = submitter;
  schedulerCopy = scheduler;
  detailsManagerCopy = detailsManager;
  v61 = managerCopy;
  v59 = providerCopy;
  v22 = [[HMDHouseholdMetricsRequestContributor alloc] initWithCountersManager:managerCopy dateProvider:providerCopy];
  v23 = [MEMORY[0x277CBEB18] arrayWithArray:contributorsCopy];

  v55 = v22;
  [v23 addObject:v22];
  v51 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:factoriesCopy];

  v62[0] = @"householdData";
  v24 = [HMDHouseholdActivityLogEventFactory alloc];
  v54 = v23;
  v53 = [v23 copy];
  v52 = [(HMDHouseholdActivityLogEventFactory *)v24 initWithContributors:v53];
  v63[0] = v52;
  v62[1] = @"siriEndpointEnablement";
  v50 = [[HMDSiriEndpointEnablementLogEventFactory alloc] initWithDataSource:sourceCopy];
  v63[1] = v50;
  v62[2] = @"networkStability";
  v25 = [HMDHouseholdNetworkStabilityLogEventFactory alloc];
  networkObserver = [sourceCopy networkObserver];
  v26 = [(HMDHouseholdNetworkStabilityLogEventFactory *)v25 initWithNetworkObserver:networkObserver];
  v63[2] = v26;
  v62[3] = @"threadNetworkStability";
  v27 = [HMDHouseholdThreadNetworkStabilityLogEventFactory alloc];
  threadNetworkObserver = [sourceCopy threadNetworkObserver];
  v29 = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)v27 initWithThreadNetworkObserver:threadNetworkObserver];
  v63[3] = v29;
  v62[4] = @"accessoryCategoriesKey";
  householdMetricsLogEventFactory = [detailsManagerCopy householdMetricsLogEventFactory];

  v63[4] = householdMetricsLogEventFactory;
  v62[5] = @"matterV2KeyCount";
  v31 = [[HMDMatterV2KeyCountLogEventFactory alloc] initWithDataSource:sourceCopy];
  v63[5] = v31;
  v62[6] = @"cameraRecordingDailySummary";
  v32 = [HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory alloc];
  cameraRecordingEventObserver = [sourceCopy cameraRecordingEventObserver];
  v34 = [(HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory *)v32 initWithCameraRecordingEventObserver:cameraRecordingEventObserver];
  v63[6] = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:7];
  [v51 addEntriesFromDictionary:v35];

  v36 = +[HMDFeaturesDataSource defaultDataSource];
  LODWORD(cameraRecordingEventObserver) = [v36 isHomeActivityStateFeatureEnabled];

  if (cameraRecordingEventObserver)
  {
    v37 = [HMDHouseholdHomeActivityStateTransitionLogEventFactory alloc];
    homeActivityStateLogEventAnalyzer = [sourceCopy homeActivityStateLogEventAnalyzer];
    v39 = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)v37 initWithAnalyzer:homeActivityStateLogEventAnalyzer];
    [v51 setObject:v39 forKeyedSubscript:@"HouseholdHomeActivityStateTransition"];

    v40 = [HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory alloc];
    homeActivityStateLogEventAnalyzer2 = [sourceCopy homeActivityStateLogEventAnalyzer];
    v42 = [(HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory *)v40 initWithAnalyzer:homeActivityStateLogEventAnalyzer2];
    [v51 setObject:v42 forKeyedSubscript:@"HouseholdHomeActivityStateTransitionTypeByReason"];

    v43 = [[HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory alloc] initWithDataSource:sourceCopy];
    [v51 setObject:v43 forKeyedSubscript:@"HouseholdMetricsMessageAdaptiveTemperatureAutomationsConfigurationKey"];
  }

  if (isInternalBuild())
  {
    householdMetricsLogEventFactory2 = [changedManagerCopy householdMetricsLogEventFactory];
    [v51 setObject:householdMetricsLogEventFactory2 forKeyedSubscript:@"homeDataChangedKey"];
  }

  v45 = [v51 copy];
  v46 = [(HMDHouseholdMetricsManager *)self initWithCountersManager:v61 dataSource:sourceCopy dailyScheduler:schedulerCopy logEventSubmitter:submitterCopy dateProvider:v59 requestCountProvider:v55 logEventFactories:v45];

  v47 = *MEMORY[0x277D85DE8];
  return v46;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_116703 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_116703, &__block_literal_global_116704);
  }

  v3 = logCategory__hmf_once_v1_116705;

  return v3;
}

void __41__HMDHouseholdMetricsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_116705;
  logCategory__hmf_once_v1_116705 = v1;
}

@end