@interface HMDHouseholdMetricsManager
+ (id)logCategory;
- (HMDHouseholdMetricsManager)initWithCountersManager:(id)a3 dataSource:(id)a4 accessoryDetailsManager:(id)a5 dailyScheduler:(id)a6 logEventSubmitter:(id)a7 dateProvider:(id)a8 activityContributors:(id)a9 logEventFactories:(id)a10;
- (HMDHouseholdMetricsManager)initWithCountersManager:(id)a3 dataSource:(id)a4 dailyScheduler:(id)a5 logEventSubmitter:(id)a6 dateProvider:(id)a7 requestCountProvider:(id)a8 logEventFactories:(id)a9;
- (void)handleRequest:(id)a3;
- (void)runDailyTask;
- (void)runHomeutilTask;
@end

@implementation HMDHouseholdMetricsManager

- (void)runHomeutilTask
{
  v3 = [(HMDHouseholdMetricsManager *)self dateProvider];
  v5 = [v3 startOfDayByAddingDayCount:0];

  v4 = [(HMDHouseholdMetricsManager *)self server];
  [v4 runHouseholdMetricsDataCollectionAssociatedToDate:v5 forceSubmit:1];
}

- (void)runDailyTask
{
  v3 = [(HMDHouseholdMetricsManager *)self dateProvider];
  v6 = [v3 startOfDayByAddingDayCount:-1];

  v4 = [(HMDHouseholdMetricsManager *)self server];
  [v4 runHouseholdMetricsDataCollectionAssociatedToDate:v6 forceSubmit:0];

  v5 = [(HMDHouseholdMetricsManager *)self client];
  [v5 deleteExpiredCounters];
}

- (void)handleRequest:(id)a3
{
  v4 = a3;
  v5 = [(HMDHouseholdMetricsManager *)self client];
  [v5 handleRequest:v4];
}

- (HMDHouseholdMetricsManager)initWithCountersManager:(id)a3 dataSource:(id)a4 dailyScheduler:(id)a5 logEventSubmitter:(id)a6 dateProvider:(id)a7 requestCountProvider:(id)a8 logEventFactories:(id)a9
{
  v45 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v46.receiver = self;
  v46.super_class = HMDHouseholdMetricsManager;
  v21 = [(HMDHouseholdMetricsManager *)&v46 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_dateProvider, a7);
    v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"810360B7-987E-4A25-BEC7-9CC06CDDA0F2"];
    messageTargetUUID = v22->_messageTargetUUID;
    v22->_messageTargetUUID = v23;

    v25 = [[HMDHouseholdMetricsMessagingProvider alloc] initWithReceiver:v22];
    v44 = v16;
    messagingProvider = v22->_messagingProvider;
    v22->_messagingProvider = v25;

    v27 = HMDispatchQueueNameString();
    v28 = [v27 UTF8String];
    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_queue_attr_make_with_qos_class(v29, QOS_CLASS_BACKGROUND, 0);
    v30 = v20;
    v31 = v19;
    v32 = v18;
    v33 = v17;
    v35 = v34 = v15;
    v36 = dispatch_queue_create(v28, v35);
    workQueue = v22->_workQueue;
    v22->_workQueue = v36;

    v15 = v34;
    v17 = v33;
    v18 = v32;
    v19 = v31;
    v20 = v30;

    v38 = [[HMDHouseholdMetricsClient alloc] initWithCountersManager:v45 dateProvider:v18 remoteMessageDispatcher:v22->_messagingProvider requestCountProvider:v19 logEventFactories:v30];
    client = v22->_client;
    v22->_client = v38;

    v16 = v44;
    v40 = [[HMDHouseholdMetricsServer alloc] initWithDataSource:v15 logEventSubmitter:v17 householdMetricsProvider:v22->_client remoteMessageDispatcher:v22->_messagingProvider logEventFactories:v20 workQueue:v22->_workQueue];
    server = v22->_server;
    v22->_server = v40;

    [v44 registerDailyTaskRunner:v22];
    v42 = v22;
  }

  return v22;
}

- (HMDHouseholdMetricsManager)initWithCountersManager:(id)a3 dataSource:(id)a4 accessoryDetailsManager:(id)a5 dailyScheduler:(id)a6 logEventSubmitter:(id)a7 dateProvider:(id)a8 activityContributors:(id)a9 logEventFactories:(id)a10
{
  v51[7] = *MEMORY[0x277D85DE8];
  v16 = a10;
  v17 = a9;
  v46 = a8;
  v48 = a7;
  v47 = a6;
  v18 = a5;
  v19 = a4;
  v45 = a3;
  v43 = [[HMDHouseholdMetricsRequestContributor alloc] initWithCountersManager:v45 dateProvider:v46];
  v20 = [MEMORY[0x277CBEB18] arrayWithArray:v17];

  v44 = v20;
  [v20 addObject:v43];
  v21 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v16];

  v50[0] = @"householdData";
  v22 = [HMDHouseholdActivityLogEventFactory alloc];
  v42 = [v20 copy];
  v41 = [(HMDHouseholdActivityLogEventFactory *)v22 initWithContributors:v42];
  v51[0] = v41;
  v50[1] = @"siriEndpointEnablement";
  v40 = [[HMDSiriEndpointEnablementLogEventFactory alloc] initWithDataSource:v19];
  v51[1] = v40;
  v50[2] = @"networkStability";
  v23 = [HMDHouseholdNetworkStabilityLogEventFactory alloc];
  v39 = [v19 networkObserver];
  v24 = [(HMDHouseholdNetworkStabilityLogEventFactory *)v23 initWithNetworkObserver:v39];
  v51[2] = v24;
  v50[3] = @"threadNetworkStability";
  v25 = [HMDHouseholdThreadNetworkStabilityLogEventFactory alloc];
  v26 = [v19 threadNetworkObserver];
  v27 = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)v25 initWithThreadNetworkObserver:v26];
  v51[3] = v27;
  v50[4] = @"accessoryCategoriesKey";
  v28 = [v18 householdMetricsLogEventFactory];

  v51[4] = v28;
  v50[5] = @"matterV2KeyCount";
  v29 = [[HMDMatterV2KeyCountLogEventFactory alloc] initWithDataSource:v19];
  v51[5] = v29;
  v50[6] = @"cameraRecordingDailySummary";
  v30 = [HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory alloc];
  v31 = [v19 cameraRecordingEventObserver];
  v32 = [(HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory *)v30 initWithCameraRecordingEventObserver:v31];
  v51[6] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:7];
  [v21 addEntriesFromDictionary:v33];

  v34 = v21;
  v35 = [v21 copy];
  v36 = [(HMDHouseholdMetricsManager *)self initWithCountersManager:v45 dataSource:v19 dailyScheduler:v47 logEventSubmitter:v48 dateProvider:v46 requestCountProvider:v43 logEventFactories:v35];

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