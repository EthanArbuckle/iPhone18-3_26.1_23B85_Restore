@interface HMDHouseholdMetricsManager
+ (id)logCategory;
- (HMDHouseholdMetricsManager)initWithCountersManager:(id)manager dataSource:(id)source accessoryDetailsManager:(id)detailsManager dailyScheduler:(id)scheduler logEventSubmitter:(id)submitter dateProvider:(id)provider activityContributors:(id)contributors logEventFactories:(id)self0;
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

- (HMDHouseholdMetricsManager)initWithCountersManager:(id)manager dataSource:(id)source accessoryDetailsManager:(id)detailsManager dailyScheduler:(id)scheduler logEventSubmitter:(id)submitter dateProvider:(id)provider activityContributors:(id)contributors logEventFactories:(id)self0
{
  v51[7] = *MEMORY[0x277D85DE8];
  factoriesCopy = factories;
  contributorsCopy = contributors;
  providerCopy = provider;
  submitterCopy = submitter;
  schedulerCopy = scheduler;
  detailsManagerCopy = detailsManager;
  sourceCopy = source;
  managerCopy = manager;
  v43 = [[HMDHouseholdMetricsRequestContributor alloc] initWithCountersManager:managerCopy dateProvider:providerCopy];
  v20 = [MEMORY[0x277CBEB18] arrayWithArray:contributorsCopy];

  v44 = v20;
  [v20 addObject:v43];
  v21 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:factoriesCopy];

  v50[0] = @"householdData";
  v22 = [HMDHouseholdActivityLogEventFactory alloc];
  v42 = [v20 copy];
  v41 = [(HMDHouseholdActivityLogEventFactory *)v22 initWithContributors:v42];
  v51[0] = v41;
  v50[1] = @"siriEndpointEnablement";
  v40 = [[HMDSiriEndpointEnablementLogEventFactory alloc] initWithDataSource:sourceCopy];
  v51[1] = v40;
  v50[2] = @"networkStability";
  v23 = [HMDHouseholdNetworkStabilityLogEventFactory alloc];
  networkObserver = [sourceCopy networkObserver];
  v24 = [(HMDHouseholdNetworkStabilityLogEventFactory *)v23 initWithNetworkObserver:networkObserver];
  v51[2] = v24;
  v50[3] = @"threadNetworkStability";
  v25 = [HMDHouseholdThreadNetworkStabilityLogEventFactory alloc];
  threadNetworkObserver = [sourceCopy threadNetworkObserver];
  v27 = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)v25 initWithThreadNetworkObserver:threadNetworkObserver];
  v51[3] = v27;
  v50[4] = @"accessoryCategoriesKey";
  householdMetricsLogEventFactory = [detailsManagerCopy householdMetricsLogEventFactory];

  v51[4] = householdMetricsLogEventFactory;
  v50[5] = @"matterV2KeyCount";
  v29 = [[HMDMatterV2KeyCountLogEventFactory alloc] initWithDataSource:sourceCopy];
  v51[5] = v29;
  v50[6] = @"cameraRecordingDailySummary";
  v30 = [HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory alloc];
  cameraRecordingEventObserver = [sourceCopy cameraRecordingEventObserver];
  v32 = [(HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory *)v30 initWithCameraRecordingEventObserver:cameraRecordingEventObserver];
  v51[6] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:7];
  [v21 addEntriesFromDictionary:v33];

  v34 = v21;
  v35 = [v21 copy];
  v36 = [(HMDHouseholdMetricsManager *)self initWithCountersManager:managerCopy dataSource:sourceCopy dailyScheduler:schedulerCopy logEventSubmitter:submitterCopy dateProvider:providerCopy requestCountProvider:v43 logEventFactories:v35];

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_95321 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_95321, &__block_literal_global_95322);
  }

  v3 = logCategory__hmf_once_v1_95323;

  return v3;
}

uint64_t __41__HMDHouseholdMetricsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_95323;
  logCategory__hmf_once_v1_95323 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end