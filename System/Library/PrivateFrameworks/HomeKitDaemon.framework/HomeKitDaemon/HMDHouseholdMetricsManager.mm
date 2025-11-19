@interface HMDHouseholdMetricsManager
+ (id)logCategory;
- (HMDHouseholdMetricsManager)initWithCountersManager:(id)a3 dataSource:(id)a4 accessoryDetailsManager:(id)a5 metricsHomeDataChangedManager:(id)a6 dailyScheduler:(id)a7 logEventSubmitter:(id)a8 dateProvider:(id)a9 activityContributors:(id)a10 logEventFactories:(id)a11;
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

- (HMDHouseholdMetricsManager)initWithCountersManager:(id)a3 dataSource:(id)a4 accessoryDetailsManager:(id)a5 metricsHomeDataChangedManager:(id)a6 dailyScheduler:(id)a7 logEventSubmitter:(id)a8 dateProvider:(id)a9 activityContributors:(id)a10 logEventFactories:(id)a11
{
  v63[7] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v60 = a6;
  v18 = a9;
  v19 = a11;
  v20 = a10;
  v57 = a8;
  v56 = a7;
  v21 = a5;
  v61 = v16;
  v59 = v18;
  v22 = [[HMDHouseholdMetricsRequestContributor alloc] initWithCountersManager:v16 dateProvider:v18];
  v23 = [MEMORY[0x277CBEB18] arrayWithArray:v20];

  v55 = v22;
  [v23 addObject:v22];
  v51 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v19];

  v62[0] = @"householdData";
  v24 = [HMDHouseholdActivityLogEventFactory alloc];
  v54 = v23;
  v53 = [v23 copy];
  v52 = [(HMDHouseholdActivityLogEventFactory *)v24 initWithContributors:v53];
  v63[0] = v52;
  v62[1] = @"siriEndpointEnablement";
  v50 = [[HMDSiriEndpointEnablementLogEventFactory alloc] initWithDataSource:v17];
  v63[1] = v50;
  v62[2] = @"networkStability";
  v25 = [HMDHouseholdNetworkStabilityLogEventFactory alloc];
  v49 = [v17 networkObserver];
  v26 = [(HMDHouseholdNetworkStabilityLogEventFactory *)v25 initWithNetworkObserver:v49];
  v63[2] = v26;
  v62[3] = @"threadNetworkStability";
  v27 = [HMDHouseholdThreadNetworkStabilityLogEventFactory alloc];
  v28 = [v17 threadNetworkObserver];
  v29 = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)v27 initWithThreadNetworkObserver:v28];
  v63[3] = v29;
  v62[4] = @"accessoryCategoriesKey";
  v30 = [v21 householdMetricsLogEventFactory];

  v63[4] = v30;
  v62[5] = @"matterV2KeyCount";
  v31 = [[HMDMatterV2KeyCountLogEventFactory alloc] initWithDataSource:v17];
  v63[5] = v31;
  v62[6] = @"cameraRecordingDailySummary";
  v32 = [HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory alloc];
  v33 = [v17 cameraRecordingEventObserver];
  v34 = [(HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory *)v32 initWithCameraRecordingEventObserver:v33];
  v63[6] = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:7];
  [v51 addEntriesFromDictionary:v35];

  v36 = +[HMDFeaturesDataSource defaultDataSource];
  LODWORD(v33) = [v36 isHomeActivityStateFeatureEnabled];

  if (v33)
  {
    v37 = [HMDHouseholdHomeActivityStateTransitionLogEventFactory alloc];
    v38 = [v17 homeActivityStateLogEventAnalyzer];
    v39 = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)v37 initWithAnalyzer:v38];
    [v51 setObject:v39 forKeyedSubscript:@"HouseholdHomeActivityStateTransition"];

    v40 = [HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory alloc];
    v41 = [v17 homeActivityStateLogEventAnalyzer];
    v42 = [(HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEventFactory *)v40 initWithAnalyzer:v41];
    [v51 setObject:v42 forKeyedSubscript:@"HouseholdHomeActivityStateTransitionTypeByReason"];

    v43 = [[HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory alloc] initWithDataSource:v17];
    [v51 setObject:v43 forKeyedSubscript:@"HouseholdMetricsMessageAdaptiveTemperatureAutomationsConfigurationKey"];
  }

  if (isInternalBuild())
  {
    v44 = [v60 householdMetricsLogEventFactory];
    [v51 setObject:v44 forKeyedSubscript:@"homeDataChangedKey"];
  }

  v45 = [v51 copy];
  v46 = [(HMDHouseholdMetricsManager *)self initWithCountersManager:v61 dataSource:v17 dailyScheduler:v56 logEventSubmitter:v57 dateProvider:v59 requestCountProvider:v55 logEventFactories:v45];

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