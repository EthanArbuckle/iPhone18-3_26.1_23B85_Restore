@interface HMDWidgetTimelineRefresherEventsAnalyzer
- (HMDWidgetTimelineRefresherEventsAnalyzer)initWithEventCountersManager:(id)manager logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler;
- (HMDWidgetTimelineRefresherEventsAnalyzer)initWithEventCountersManager:(id)manager logEventSubmitter:(id)submitter widgetKinds:(id)kinds dailyScheduler:(id)scheduler;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)resetAggregationAnalysisContext;
- (void)runDailyTask;
@end

@implementation HMDWidgetTimelineRefresherEventsAnalyzer

- (void)resetAggregationAnalysisContext
{
  widgetRefreshReasonCounterGroupByKind = [(HMDWidgetTimelineRefresherEventsAnalyzer *)self widgetRefreshReasonCounterGroupByKind];
  [widgetRefreshReasonCounterGroupByKind enumerateKeysAndObjectsUsingBlock:&__block_literal_global_42833];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  eventCopy = event;
  dateCopy = date;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  widgetRefreshReasonCounterGroupByKind = [(HMDWidgetTimelineRefresherEventsAnalyzer *)self widgetRefreshReasonCounterGroupByKind];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __88__HMDWidgetTimelineRefresherEventsAnalyzer_populateAggregationAnalysisLogEvent_forDate___block_invoke;
  v13 = &unk_278672F70;
  v15 = &v16;
  v9 = dateCopy;
  v14 = v9;
  [widgetRefreshReasonCounterGroupByKind enumerateKeysAndObjectsUsingBlock:&v10];

  [eventCopy setWidgetMaxRefreshCountForKind:{v17[3], v10, v11, v12, v13}];
  _Block_object_dispose(&v16, 8);
}

unint64_t __88__HMDWidgetTimelineRefresherEventsAnalyzer_populateAggregationAnalysisLogEvent_forDate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(*(a1 + 40) + 8) + 24);
  result = [a3 summedEventCountersForDate:*(a1 + 32)];
  if (v4 <= result)
  {
    v6 = result;
  }

  else
  {
    v6 = v4;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  return result;
}

- (void)runDailyTask
{
  widgetRefreshReasonCounterGroupByKind = [(HMDWidgetTimelineRefresherEventsAnalyzer *)self widgetRefreshReasonCounterGroupByKind];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HMDWidgetTimelineRefresherEventsAnalyzer_runDailyTask__block_invoke;
  v4[3] = &unk_278672F48;
  v4[4] = self;
  [widgetRefreshReasonCounterGroupByKind enumerateKeysAndObjectsUsingBlock:v4];
}

void __56__HMDWidgetTimelineRefresherEventsAnalyzer_runDailyTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 eventCounters];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDWidgetTimelineRefresherEventsAnalyzer_runDailyTask__block_invoke_2;
  v8[3] = &unk_278672F20;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void __56__HMDWidgetTimelineRefresherEventsAnalyzer_runDailyTask__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v12 = [v5 logEventSubmitter];
  v8 = [HMDWidgetTimelineRefresherDailyTotalLogEvent alloc];
  v9 = *(a1 + 40);
  v10 = [v6 unsignedIntValue];

  v11 = [(HMDWidgetTimelineRefresherDailyTotalLogEvent *)v8 initWithKind:v9 reason:v7 count:v10];
  [v12 submitLogEvent:v11];
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
    widgetRefreshReasonCounterGroupByKind = [(HMDWidgetTimelineRefresherEventsAnalyzer *)self widgetRefreshReasonCounterGroupByKind];
    kind = [v5 kind];
    v8 = [widgetRefreshReasonCounterGroupByKind objectForKeyedSubscript:kind];

    if (!v8)
    {
      eventCountersManager = [(HMDWidgetTimelineRefresherEventsAnalyzer *)self eventCountersManager];
      kind2 = [v5 kind];
      v8 = [eventCountersManager counterGroupForName:kind2];

      widgetRefreshReasonCounterGroupByKind2 = [(HMDWidgetTimelineRefresherEventsAnalyzer *)self widgetRefreshReasonCounterGroupByKind];
      kind3 = [v5 kind];
      [widgetRefreshReasonCounterGroupByKind2 setObject:v8 forKeyedSubscript:kind3];
    }

    reason = [v5 reason];
    [v8 incrementEventCounterForEventName:reason];
  }
}

- (HMDWidgetTimelineRefresherEventsAnalyzer)initWithEventCountersManager:(id)manager logEventSubmitter:(id)submitter widgetKinds:(id)kinds dailyScheduler:(id)scheduler
{
  v36 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  submitterCopy = submitter;
  kindsCopy = kinds;
  schedulerCopy = scheduler;
  v34.receiver = self;
  v34.super_class = HMDWidgetTimelineRefresherEventsAnalyzer;
  v15 = [(HMDWidgetTimelineRefresherEventsAnalyzer *)&v34 init];
  v16 = v15;
  if (v15)
  {
    v29 = submitterCopy;
    objc_storeStrong(&v15->_logEventSubmitter, submitter);
    objc_storeStrong(&v16->_eventCountersManager, manager);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = kindsCopy;
    v18 = kindsCopy;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v30 + 1) + 8 * i);
          v24 = [managerCopy counterGroupForName:{v23, v28}];
          [(NSMutableDictionary *)dictionary setObject:v24 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v20);
    }

    widgetRefreshReasonCounterGroupByKind = v16->_widgetRefreshReasonCounterGroupByKind;
    v16->_widgetRefreshReasonCounterGroupByKind = dictionary;

    [schedulerCopy registerDailyTaskRunner:v16];
    kindsCopy = v28;
    submitterCopy = v29;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

- (HMDWidgetTimelineRefresherEventsAnalyzer)initWithEventCountersManager:(id)manager logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler
{
  v17[1] = *MEMORY[0x277D85DE8];
  schedulerCopy = scheduler;
  submitterCopy = submitter;
  managerCopy = manager;
  v11 = +[HMDWidgetFetchSpecification allHomeLockScreenWidgetKinds];
  v17[0] = @"com.apple.Home.widget.interactive";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v13 = [v11 setByAddingObjectsFromArray:v12];

  v14 = [(HMDWidgetTimelineRefresherEventsAnalyzer *)self initWithEventCountersManager:managerCopy logEventSubmitter:submitterCopy widgetKinds:v13 dailyScheduler:schedulerCopy];
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end