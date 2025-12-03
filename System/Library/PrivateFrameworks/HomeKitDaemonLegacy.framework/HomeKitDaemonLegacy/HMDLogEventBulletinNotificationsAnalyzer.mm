@interface HMDLogEventBulletinNotificationsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventBulletinNotificationsAnalyzer)initWithDataSource:(id)source notificationSettingsProvider:(id)provider;
- (int64_t)cameraReachabilityThresholdFromConfiguration:(id)configuration;
- (void)configurationChanged:(id)changed;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)resetAggregationAnalysisContext;
- (void)runDailyTask;
@end

@implementation HMDLogEventBulletinNotificationsAnalyzer

- (void)runDailyTask
{
  notificationSettingsProvider = [(HMDLogEventBulletinNotificationsAnalyzer *)self notificationSettingsProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HMDLogEventBulletinNotificationsAnalyzer_runDailyTask__block_invoke;
  v4[3] = &unk_279724838;
  v4[4] = self;
  [notificationSettingsProvider notificationSettingsWithCompletionHandler:v4];
}

void __56__HMDLogEventBulletinNotificationsAnalyzer_runDailyTask__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) topicEventGroup];
  v5 = [v4 summedEventCounters];

  v6 = [*(a1 + 32) logEventSubmitter];
  v7 = [[HMDBulletinNotificationDailyTotalLogEvent alloc] initWithTopic:@"AllTopics" countForTopic:v5 userNotificationSettings:v3];
  [v6 submitLogEvent:v7];

  v8 = [*(a1 + 32) topicEventGroup];
  v9 = [v8 eventCounters];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v22}];
        v17 = [v16 unsignedIntegerValue];

        v18 = [*(a1 + 32) logEventSubmitter];
        v19 = [[HMDBulletinNotificationDailyTotalLogEvent alloc] initWithTopic:v15 countForTopic:v17 userNotificationSettings:v3];
        [v18 submitLogEvent:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v20 = [*(a1 + 32) topicEventGroup];
  [v20 resetEventCounters];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)resetAggregationAnalysisContext
{
  aggregationEventGroup = [(HMDLogEventBulletinNotificationsAnalyzer *)self aggregationEventGroup];
  [aggregationEventGroup resetEventCounters];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  dateCopy = date;
  eventCopy = event;
  aggregationEventGroup = [(HMDLogEventBulletinNotificationsAnalyzer *)self aggregationEventGroup];
  v8 = [aggregationEventGroup fetchEventCounterForEventName:@"BulletinTotalCount" forDate:dateCopy];

  [eventCopy setBulletinNotificationsPostedCount:v8];
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    aggregationEventGroup = [(HMDLogEventBulletinNotificationsAnalyzer *)self aggregationEventGroup];
    [aggregationEventGroup incrementEventCounterForEventName:@"BulletinTotalCount"];

    topicEventGroup = [(HMDLogEventBulletinNotificationsAnalyzer *)self topicEventGroup];
    topic = [v5 topic];
    [topicEventGroup incrementEventCounterForEventName:topic];
  }
}

- (int64_t)cameraReachabilityThresholdFromConfiguration:(id)configuration
{
  v3 = 30 * [configuration totalCameraAccessoriesRecordingEnabled];
  if (v3 <= 45)
  {
    v3 = 45;
  }

  if (v3 >= 200)
  {
    return 200;
  }

  else
  {
    return v3;
  }
}

- (void)configurationChanged:(id)changed
{
  v4 = [(HMDLogEventBulletinNotificationsAnalyzer *)self cameraReachabilityThresholdFromConfiguration:changed];
  cameraReachabilityTTRTrigger = [(HMDLogEventBulletinNotificationsAnalyzer *)self cameraReachabilityTTRTrigger];
  [cameraReachabilityTTRTrigger setTargetThreshold:v4];
}

- (HMDLogEventBulletinNotificationsAnalyzer)initWithDataSource:(id)source notificationSettingsProvider:(id)provider
{
  v47[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  providerCopy = provider;
  v46.receiver = self;
  v46.super_class = HMDLogEventBulletinNotificationsAnalyzer;
  v8 = [(HMDLogEventBulletinNotificationsAnalyzer *)&v46 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationSettingsProvider, provider);
    legacyCountersManager = [sourceCopy legacyCountersManager];
    v11 = [legacyCountersManager counterGroupForName:@"BulletinAggregationEventGroup"];
    aggregationEventGroup = v9->_aggregationEventGroup;
    v9->_aggregationEventGroup = v11;

    legacyCountersManager2 = [sourceCopy legacyCountersManager];
    v14 = [legacyCountersManager2 counterGroupForName:@"BulletinTopicEventGroup"];
    topicEventGroup = v9->_topicEventGroup;
    v9->_topicEventGroup = v14;

    logEventSubmitter = [sourceCopy logEventSubmitter];
    logEventSubmitter = v9->_logEventSubmitter;
    v9->_logEventSubmitter = logEventSubmitter;

    radarInitiator = [sourceCopy radarInitiator];

    if (radarInitiator)
    {
      v19 = [HMDCounterThresholdTTRTrigger alloc];
      radarInitiator2 = [sourceCopy radarInitiator];
      v21 = [(HMDCounterThresholdTTRTrigger *)v19 initWithThreshold:20 displayReason:@"home hub couldn't be reached" radarInitiator:radarInitiator2];
      homeHubReachabilityTTRTrigger = v9->_homeHubReachabilityTTRTrigger;
      v9->_homeHubReachabilityTTRTrigger = v21;

      legacyCountersManager3 = [sourceCopy legacyCountersManager];
      v24 = v9->_homeHubReachabilityTTRTrigger;
      v25 = @"HomeHubReachability";
      [legacyCountersManager3 addObserver:v24 forEventName:@"HomeHubReachability" requestGroup:@"BulletinTopicEventGroup"];

      cachedConfiguration = [sourceCopy cachedConfiguration];
      v27 = [(HMDLogEventBulletinNotificationsAnalyzer *)v9 cameraReachabilityThresholdFromConfiguration:cachedConfiguration];

      v28 = [HMDCounterThresholdTTRTrigger alloc];
      radarInitiator3 = [sourceCopy radarInitiator];
      v30 = [(HMDCounterThresholdTTRTrigger *)v28 initWithThreshold:v27 displayReason:@"camera was unreachable" radarInitiator:radarInitiator3];
      cameraReachabilityTTRTrigger = v9->_cameraReachabilityTTRTrigger;
      v9->_cameraReachabilityTTRTrigger = v30;

      legacyCountersManager4 = [sourceCopy legacyCountersManager];
      v33 = v9->_cameraReachabilityTTRTrigger;
      v34 = @"CameraReachability";
      [legacyCountersManager4 addObserver:v33 forEventName:@"CameraReachability" requestGroup:@"BulletinTopicEventGroup"];

      objc_initWeak(&location, v9);
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __92__HMDLogEventBulletinNotificationsAnalyzer_initWithDataSource_notificationSettingsProvider___block_invoke;
      v43 = &unk_279724810;
      objc_copyWeak(&v44, &location);
      [sourceCopy addConfigurationChangedObserver:&v40];
      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);
    }

    logEventDispatcher = [sourceCopy logEventDispatcher];
    v47[0] = objc_opt_class();
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    [logEventDispatcher addObserver:v9 forEventClasses:v36];

    dailyScheduler = [sourceCopy dailyScheduler];
    [dailyScheduler registerDailyTaskRunner:v9];
  }

  v38 = *MEMORY[0x277D85DE8];
  return v9;
}

void __92__HMDLogEventBulletinNotificationsAnalyzer_initWithDataSource_notificationSettingsProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configurationChanged:v3];
}

+ (id)managedEventCounterRequestGroups
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"BulletinAggregationEventGroup";
  v5[1] = @"BulletinTopicEventGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end