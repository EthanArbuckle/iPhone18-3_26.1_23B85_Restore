@interface HMDThreadNetworkObserver
+ (id)supportedEventClasses;
- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource;
- (HMDEventCountersManager)countersManager;
- (HMDThreadNetworkObserver)initWithLogEventDispatcher:(id)dispatcher countersManager:(id)manager dailyScheduler:(id)scheduler currentHomeDataSource:(id)source dateProvider:(id)provider;
- (HMDThreadNetworkObserver)initWithLogEventDispatcher:(id)dispatcher countersManager:(id)manager dailyScheduler:(id)scheduler currentHomeDataSource:(id)source dateProvider:(id)provider notificationCenter:(id)center;
- (HMMDateProvider)dateProvider;
- (HMMLogEventDispatching)logEventDispatcher;
- (NSNotificationCenter)notificationCenter;
- (id)_keyOfLargestCountInHistogram:(id)histogram;
- (id)counterGroupForName:(id)name homeUUID:(id)d date:(id)date;
- (id)logEventForHomeWithUUID:(id)d associatedWithDate:(id)date isDailySummary:(BOOL)summary;
- (void)_handleAccessorySessionEvent:(id)event;
- (void)_handleReadWriteLogEvent:(id)event;
- (void)_incrementError:(id)error forHistogram:(id)histogram byValue:(unint64_t)value;
- (void)_injectThreadNetworkStateForTestingWithNumAdvertisedBRs:(unint64_t)rs numAppleBRs:(unint64_t)bRs numThirdPartyBRs:(unint64_t)partyBRs numThreadNetworks:(unint64_t)networks maxSimuIPPrefixesDetected:(unint64_t)detected txTotal:(unint64_t)total txSuccess:(unint64_t)success txDelayAvg:(unint64_t)self0 rxTotal:(unint64_t)self1 rxSuccess:(unint64_t)self2 reportDuration:(unint64_t)self3 reportDate:(id)self4 reportDailySummary:(BOOL)self5;
- (void)_setDailyScheduler:(id)scheduler;
- (void)_updateDailyCountersAndResetCurrentReportStatsForHomeWithUUID:(id)d associatedWithDate:(id)date;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
- (void)observeEvent:(id)event;
- (void)runDailyTask;
- (void)start;
- (void)stop;
@end

@implementation HMDThreadNetworkObserver

- (HMMDateProvider)dateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dateProvider);

  return WeakRetained;
}

- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_currentHomeDataSource);

  return WeakRetained;
}

- (NSNotificationCenter)notificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationCenter);

  return WeakRetained;
}

- (HMDEventCountersManager)countersManager
{
  WeakRetained = objc_loadWeakRetained(&self->_countersManager);

  return WeakRetained;
}

- (HMMLogEventDispatching)logEventDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventDispatcher);

  return WeakRetained;
}

- (void)_injectThreadNetworkStateForTestingWithNumAdvertisedBRs:(unint64_t)rs numAppleBRs:(unint64_t)bRs numThirdPartyBRs:(unint64_t)partyBRs numThreadNetworks:(unint64_t)networks maxSimuIPPrefixesDetected:(unint64_t)detected txTotal:(unint64_t)total txSuccess:(unint64_t)success txDelayAvg:(unint64_t)self0 rxTotal:(unint64_t)self1 rxSuccess:(unint64_t)self2 reportDuration:(unint64_t)self3 reportDate:(id)self4 reportDailySummary:(BOOL)self5
{
  dateCopy = date;
  [(HMDThreadNetworkObserver *)self setCurReport_numAdvertisedBRs:rs];
  [(HMDThreadNetworkObserver *)self setCurReport_numAppleBRs:bRs];
  [(HMDThreadNetworkObserver *)self setCurReport_numThirdPartyBRs:partyBRs];
  [(HMDThreadNetworkObserver *)self setCurReport_numThreadNetworks:networks];
  [(HMDThreadNetworkObserver *)self setCurReport_maxSimuIPPrefixes:detected];
  [(HMDThreadNetworkObserver *)self setCurReport_txTotal:total];
  [(HMDThreadNetworkObserver *)self setCurReport_txSuccess:success];
  [(HMDThreadNetworkObserver *)self setCurReport_txDelayAvg:avg];
  [(HMDThreadNetworkObserver *)self setCurReport_rxTotal:rxTotal];
  [(HMDThreadNetworkObserver *)self setCurReport_rxSuccess:rxSuccess];
  [(HMDThreadNetworkObserver *)self setCurReport_reportDuration:duration];
  [(HMDThreadNetworkObserver *)self _runLoggingForDate:dateCopy isDailySummary:summary];
}

- (void)deleteCountersAfterDate:(id)date
{
  dateCopy = date;
  countersManager = [(HMDThreadNetworkObserver *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDThreadNetworkObserver_deleteCountersAfterDate___block_invoke;
  v7[3] = &unk_279735988;
  v8 = dateCopy;
  v6 = dateCopy;
  [countersManager removeCounterGroupsBasedOnPredicate:v7];
}

uint64_t __52__HMDThreadNetworkObserver_deleteCountersAfterDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 groupName];
  if (v5)
  {
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == 1)
    {
      if ([v6 isEqual:@"ThreadNetworkStabilityEventGroup"] & 1) != 0 || (objc_msgSend(v6, "isEqual:", @"ReadWriteErrorEventGroup_ThreadReporting"))
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:@"AccessorySessionErrorGroup_ThreadReporting"];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)deleteCountersBeforeDate:(id)date
{
  dateCopy = date;
  countersManager = [(HMDThreadNetworkObserver *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HMDThreadNetworkObserver_deleteCountersBeforeDate___block_invoke;
  v7[3] = &unk_279735988;
  v8 = dateCopy;
  v6 = dateCopy;
  [countersManager removeCounterGroupsBasedOnPredicate:v7];
}

uint64_t __53__HMDThreadNetworkObserver_deleteCountersBeforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 groupName];
  if (v5)
  {
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == -1)
    {
      if ([v6 isEqual:@"ThreadNetworkStabilityEventGroup"] & 1) != 0 || (objc_msgSend(v6, "isEqual:", @"ReadWriteErrorEventGroup_ThreadReporting"))
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:@"AccessorySessionErrorGroup_ThreadReporting"];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_keyOfLargestCountInHistogram:(id)histogram
{
  histogramCopy = histogram;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__179122;
  v11 = __Block_byref_object_dispose__179123;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HMDThreadNetworkObserver__keyOfLargestCountInHistogram___block_invoke;
  v6[3] = &unk_279735960;
  v6[4] = v13;
  v6[5] = &v7;
  [histogramCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(v13, 8);

  return v4;
}

void __58__HMDThreadNetworkObserver__keyOfLargestCountInHistogram___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (*(*(*(a1 + 32) + 8) + 24) < [v6 unsignedIntValue])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v6 unsignedIntValue];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)_incrementError:(id)error forHistogram:(id)histogram byValue:(unint64_t)value
{
  histogramCopy = histogram;
  errorCopy = error;
  v9 = [histogramCopy objectForKeyedSubscript:errorCopy];
  v11 = v9;
  if (v9)
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v9, "unsignedLongValue") + value}];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  }
  v10 = ;
  [histogramCopy setObject:v10 forKeyedSubscript:errorCopy];
}

- (void)_updateDailyCountersAndResetCurrentReportStatsForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  countersManager = [(HMDThreadNetworkObserver *)self countersManager];
  v9 = [HMDDateCounterGroupSpecifier specifierWithGroupName:@"ThreadNetworkStabilityEventGroup" date:dateCopy];
  v10 = [countersManager objectForKeyedSubscript:v9];

  v11 = dCopy;
  [v10 incrementEventCounterForEventName:@"ThreadNetwork_txTotal" withValue:{-[HMDThreadNetworkObserver curReport_txTotal](self, "curReport_txTotal")}];
  [v10 incrementEventCounterForEventName:@"ThreadNetwork_txSuccess" withValue:{-[HMDThreadNetworkObserver curReport_txSuccess](self, "curReport_txSuccess")}];
  [v10 incrementEventCounterForEventName:@"ThreadNetwork_rxTotal" withValue:{-[HMDThreadNetworkObserver curReport_rxTotal](self, "curReport_rxTotal")}];
  [v10 incrementEventCounterForEventName:@"ThreadNetwork_rxSuccess" withValue:{-[HMDThreadNetworkObserver curReport_rxSuccess](self, "curReport_rxSuccess")}];
  [v10 incrementEventCounterForEventName:@"ThreadNetwork_reportDuration" withValue:{-[HMDThreadNetworkObserver curReport_reportDuration](self, "curReport_reportDuration")}];
  [(HMDThreadNetworkObserver *)self curReport_threadNetworkUpDuration];
  [v10 incrementEventCounterForEventName:@"ThreadNetwork_uptime" withValue:v12];
  [(HMDThreadNetworkObserver *)self curReport_threadNetworkDownDuration];
  [v10 incrementEventCounterForEventName:@"ThreadNetwork_downtime" withValue:v13];
  [v10 addValue:-[HMDThreadNetworkObserver curReport_numAdvertisedBRs](self toStatisticsName:{"curReport_numAdvertisedBRs"), @"ThreadNetwork_numAdvertisedBRs"}];
  [v10 addValue:-[HMDThreadNetworkObserver curReport_numAppleBRs](self toStatisticsName:{"curReport_numAppleBRs"), @"ThreadNetwork_numAppleBRs"}];
  [v10 addValue:-[HMDThreadNetworkObserver curReport_numThirdPartyBRs](self toStatisticsName:{"curReport_numThirdPartyBRs"), @"ThreadNetwork_numThirdPartyBRs"}];
  [v10 addValue:-[HMDThreadNetworkObserver curReport_numThreadNetworks](self toStatisticsName:{"curReport_numThreadNetworks"), @"ThreadNetwork_numThreadNetworks"}];
  [v10 addValue:-[HMDThreadNetworkObserver curReport_maxSimuIPPrefixes](self toStatisticsName:{"curReport_maxSimuIPPrefixes"), @"ThreadNetwork_maxSimuIPPrefixes"}];
  [v10 addValue:-[HMDThreadNetworkObserver curReport_txDelayAvg](self toStatisticsName:{"curReport_txDelayAvg"), @"ThreadNetwork_txDelayAvg"}];
  [v10 incrementEventCounterForEventName:@"ReadWriteCount_ThreadReporting" withValue:{-[HMDThreadNetworkObserver curReport_readWritesCount](self, "curReport_readWritesCount")}];
  [v10 incrementEventCounterForEventName:@"ReadErrorCount_ThreadReporting" withValue:{-[HMDThreadNetworkObserver curReport_readErrorCount](self, "curReport_readErrorCount")}];
  v37 = v10;
  [v10 incrementEventCounterForEventName:@"WriteErrorCount_ThreadReporting" withValue:{-[HMDThreadNetworkObserver curReport_writeErrorCount](self, "curReport_writeErrorCount")}];
  v39 = dateCopy;
  v40 = [(HMDThreadNetworkObserver *)self counterGroupForName:@"ReadWriteErrorEventGroup_ThreadReporting" homeUUID:dCopy date:dateCopy];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  curReport_topReadWriteErrors = [(HMDThreadNetworkObserver *)self curReport_topReadWriteErrors];
  v15 = [curReport_topReadWriteErrors countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v46;
    do
    {
      v19 = 0;
      v20 = v17;
      do
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(curReport_topReadWriteErrors);
        }

        v21 = *(*(&v45 + 1) + 8 * v19);
        curReport_topReadWriteErrors2 = [(HMDThreadNetworkObserver *)self curReport_topReadWriteErrors];
        v17 = [curReport_topReadWriteErrors2 objectForKey:v21];

        [v40 incrementEventCounterForEventName:v21 withValue:{objc_msgSend(v17, "unsignedIntValue")}];
        ++v19;
        v20 = v17;
      }

      while (v16 != v19);
      v16 = [curReport_topReadWriteErrors countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v38 = v11;
  v23 = [(HMDThreadNetworkObserver *)self counterGroupForName:@"AccessorySessionErrorGroup_ThreadReporting" homeUUID:v11 date:v39];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  curReport_topSessionErrors = [(HMDThreadNetworkObserver *)self curReport_topSessionErrors];
  v25 = [curReport_topSessionErrors countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v42;
    do
    {
      v28 = 0;
      v29 = v17;
      do
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(curReport_topSessionErrors);
        }

        v30 = *(*(&v41 + 1) + 8 * v28);
        curReport_topSessionErrors2 = [(HMDThreadNetworkObserver *)self curReport_topSessionErrors];
        v17 = [curReport_topSessionErrors2 objectForKey:v30];

        [v23 incrementEventCounterForEventName:v30 withValue:{objc_msgSend(v17, "unsignedIntValue")}];
        ++v28;
        v29 = v17;
      }

      while (v26 != v28);
      v26 = [curReport_topSessionErrors countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v26);
  }

  [(HMDThreadNetworkObserver *)self setCurReport_readWritesCount:0];
  [(HMDThreadNetworkObserver *)self setCurReport_readErrorCount:0];
  [(HMDThreadNetworkObserver *)self setCurReport_writeErrorCount:0];
  curReport_topReadWriteErrors3 = [(HMDThreadNetworkObserver *)self curReport_topReadWriteErrors];
  [curReport_topReadWriteErrors3 removeAllObjects];

  curReport_topSessionErrors3 = [(HMDThreadNetworkObserver *)self curReport_topSessionErrors];
  [curReport_topSessionErrors3 removeAllObjects];

  [(HMDThreadNetworkObserver *)self setCurReport_threadNetworkUpDuration:0.0];
  [(HMDThreadNetworkObserver *)self setCurReport_threadNetworkDownDuration:0.0];
  if ([(HMDThreadNetworkObserver *)self curReport_threadNetworkUp])
  {
    v34 = [MEMORY[0x277CBEAA8] now];
    [(HMDThreadNetworkObserver *)self setCurReport_threadNetworkLastUpTime:v34];

    [(HMDThreadNetworkObserver *)self setCurReport_threadNetworkLastDownTime:0];
  }

  else
  {
    [(HMDThreadNetworkObserver *)self setCurReport_threadNetworkLastUpTime:0];
    v35 = [MEMORY[0x277CBEAA8] now];
    [(HMDThreadNetworkObserver *)self setCurReport_threadNetworkLastDownTime:v35];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)logEventForHomeWithUUID:(id)d associatedWithDate:(id)date isDailySummary:(BOOL)summary
{
  summaryCopy = summary;
  dCopy = d;
  dateCopy = date;
  currentHomeDataSource = [(HMDThreadNetworkObserver *)self currentHomeDataSource];
  homeUUIDForCurrentResidentDevice = [currentHomeDataSource homeUUIDForCurrentResidentDevice];
  v12 = [dCopy hmf_isEqualToUUID:homeUUIDForCurrentResidentDevice];

  if (v12)
  {
    v70 = dateCopy;
    if (summaryCopy)
    {
      countersManager = [(HMDThreadNetworkObserver *)self countersManager];
      v14 = [HMDDateCounterGroupSpecifier specifierWithGroupName:@"ThreadNetworkStabilityEventGroup" date:dateCopy];
      v15 = [countersManager objectForKeyedSubscript:v14];

      v16 = [(HMDThreadNetworkObserver *)self counterGroupForName:@"ReadWriteErrorEventGroup_ThreadReporting" homeUUID:dCopy date:dateCopy];
      v17 = [(HMDThreadNetworkObserver *)self counterGroupForName:@"AccessorySessionErrorGroup_ThreadReporting" homeUUID:dCopy date:dateCopy];
      v61 = [v15 fetchEventCounterForEventName:@"ReadWriteCount_ThreadReporting"];
      v69 = [v15 fetchEventCounterForEventName:@"ReadErrorCount_ThreadReporting"];
      v68 = [v15 fetchEventCounterForEventName:@"WriteErrorCount_ThreadReporting"];
      v72[0] = 0;
      [v16 maxCounterName:v72];
      v60 = v72[0];
      v71 = 0;
      [v17 maxCounterName:&v71];
      v66 = v71;
      v67 = [v17 fetchEventCounterForEventName:?];
      v59 = [v15 fetchMaxValueForStatisticsName:@"ThreadNetwork_numAdvertisedBRs"];
      v58 = [v15 fetchMaxValueForStatisticsName:@"ThreadNetwork_numAppleBRs"];
      v57 = [v15 fetchMaxValueForStatisticsName:@"ThreadNetwork_numThirdPartyBRs"];
      curReport_numThreadNetworks = [v15 fetchMaxValueForStatisticsName:@"ThreadNetwork_numThreadNetworks"];
      curReport_maxSimuIPPrefixes = [v15 fetchMaxValueForStatisticsName:@"ThreadNetwork_maxSimuIPPrefixes"];
      curReport_txTotal = [v15 fetchEventCounterForEventName:@"ThreadNetwork_txTotal"];
      curReport_txSuccess = [v15 fetchEventCounterForEventName:@"ThreadNetwork_txSuccess"];
      v18 = [v15 fetchMaxValueForStatisticsName:@"ThreadNetwork_txDelayAvg"];
      v19 = [v15 fetchEventCounterForEventName:@"ThreadNetwork_rxTotal"];
      v20 = [v15 fetchEventCounterForEventName:@"ThreadNetwork_rxSuccess"];
      v21 = [v15 fetchEventCounterForEventName:@"ThreadNetwork_reportDuration"];
      v22 = [v15 fetchEventCounterForEventName:@"ThreadNetwork_uptime"];
      v23 = [v15 fetchEventCounterForEventName:@"ThreadNetwork_downtime"];

      v24 = @"Daily Metrics";
    }

    else
    {
      curReport_readWritesCount = [(HMDThreadNetworkObserver *)self curReport_readWritesCount];
      curReport_readErrorCount = [(HMDThreadNetworkObserver *)self curReport_readErrorCount];
      curReport_writeErrorCount = [(HMDThreadNetworkObserver *)self curReport_writeErrorCount];
      curReport_topReadWriteErrors = [(HMDThreadNetworkObserver *)self curReport_topReadWriteErrors];
      v30 = [(HMDThreadNetworkObserver *)self _keyOfLargestCountInHistogram:curReport_topReadWriteErrors];

      curReport_topSessionErrors = [(HMDThreadNetworkObserver *)self curReport_topSessionErrors];
      v32 = [(HMDThreadNetworkObserver *)self _keyOfLargestCountInHistogram:curReport_topSessionErrors];

      v68 = curReport_writeErrorCount;
      v69 = curReport_readErrorCount;
      v66 = v32;
      if (v32)
      {
        curReport_topSessionErrors2 = [(HMDThreadNetworkObserver *)self curReport_topSessionErrors];
        v34 = [curReport_topSessionErrors2 objectForKeyedSubscript:v32];
        unsignedIntValue = [v34 unsignedIntValue];
      }

      else
      {
        unsignedIntValue = 0;
      }

      v36 = v30;
      curReport_numAdvertisedBRs = [(HMDThreadNetworkObserver *)self curReport_numAdvertisedBRs];
      curReport_numAppleBRs = [(HMDThreadNetworkObserver *)self curReport_numAppleBRs];
      curReport_numThirdPartyBRs = [(HMDThreadNetworkObserver *)self curReport_numThirdPartyBRs];
      curReport_numThreadNetworks = [(HMDThreadNetworkObserver *)self curReport_numThreadNetworks];
      curReport_maxSimuIPPrefixes = [(HMDThreadNetworkObserver *)self curReport_maxSimuIPPrefixes];
      curReport_txTotal = [(HMDThreadNetworkObserver *)self curReport_txTotal];
      curReport_txSuccess = [(HMDThreadNetworkObserver *)self curReport_txSuccess];
      curReport_txDelayAvg = [(HMDThreadNetworkObserver *)self curReport_txDelayAvg];
      curReport_rxTotal = [(HMDThreadNetworkObserver *)self curReport_rxTotal];
      curReport_rxSuccess = [(HMDThreadNetworkObserver *)self curReport_rxSuccess];
      curReport_reportDuration = [(HMDThreadNetworkObserver *)self curReport_reportDuration];
      v67 = unsignedIntValue;
      v41 = curReport_txDelayAvg;
      if ([(HMDThreadNetworkObserver *)self curReport_threadNetworkUp])
      {
        curReport_threadNetworkLastUpTime = [(HMDThreadNetworkObserver *)self curReport_threadNetworkLastUpTime];
        [curReport_threadNetworkLastUpTime timeIntervalSinceNow];
        v44 = fabs(v43);
        [(HMDThreadNetworkObserver *)self curReport_threadNetworkUpDuration];
        [(HMDThreadNetworkObserver *)self setCurReport_threadNetworkUpDuration:v45 + v44];
      }

      else
      {
        curReport_threadNetworkLastUpTime = [(HMDThreadNetworkObserver *)self curReport_threadNetworkLastDownTime];
        [curReport_threadNetworkLastUpTime timeIntervalSinceNow];
        v47 = fabs(v46);
        [(HMDThreadNetworkObserver *)self curReport_threadNetworkDownDuration];
        [(HMDThreadNetworkObserver *)self setCurReport_threadNetworkDownDuration:v48 + v47];
      }

      v61 = curReport_readWritesCount;

      [(HMDThreadNetworkObserver *)self curReport_threadNetworkUpDuration];
      v22 = v49;
      [(HMDThreadNetworkObserver *)self curReport_threadNetworkDownDuration];
      v23 = v50;
      [(HMDThreadNetworkObserver *)self _updateDailyCountersAndResetCurrentReportStatsForHomeWithUUID:dCopy associatedWithDate:v70];
      v24 = @"Periodic Snapshot";
      v59 = curReport_numAdvertisedBRs;
      v60 = v36;
      v57 = curReport_numThirdPartyBRs;
      v58 = curReport_numAppleBRs;
      v18 = v41;
      v20 = curReport_rxSuccess;
      v19 = curReport_rxTotal;
      v21 = curReport_reportDuration;
    }

    v51 = [HMDThreadNetworkStabilityLogEvent alloc];
    v52 = [[HMDThreadNetworkStatusReport alloc] initWithNumAdvertisedBRs:v59 numAppleBRs:v58 numThirdPartyBRs:v57 numThreadNetworks:curReport_numThreadNetworks maxSimuIPPrefixesDetected:curReport_maxSimuIPPrefixes txTotal:curReport_txTotal txSuccess:curReport_txSuccess txDelayAvg:v18 rxTotal:v19 rxSuccess:v20 reportDuration:v21];
    v25 = [(HMDThreadNetworkStabilityLogEvent *)v51 initWithHomeUUID:dCopy threadNetworkStatusReport:v52 threadNetworkUptime:v22 / 0x3C threadNetworkDowntime:v23 / 0x3C numReadWrites:v61 numReadErrors:v69 numWriteErrors:v68 topReadWriteError:v60 topSessionError:v66 numSessionErrors:v67 logTriggerReason:v24];

    dateCopy = v70;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)runDailyTask
{
  dateProvider = [(HMDThreadNetworkObserver *)self dateProvider];
  v4 = [dateProvider startOfDayByAddingDayCount:-1];

  [(HMDThreadNetworkObserver *)self _runLoggingForDate:v4 isDailySummary:1];
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
    [(HMDThreadNetworkObserver *)self _handleReadWriteLogEvent:v5];
  }

  else
  {
    v6 = eventCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (!v8)
    {
      goto LABEL_12;
    }

    [(HMDThreadNetworkObserver *)self _handleAccessorySessionEvent:v8];
  }

LABEL_12:
}

- (void)_handleAccessorySessionEvent:(id)event
{
  eventCopy = event;
  topErrorDomain = [eventCopy topErrorDomain];
  if (topErrorDomain)
  {
    v5 = topErrorDomain;
    expectedTransport = [eventCopy expectedTransport];
    v7 = [expectedTransport isEqual:@"Thread"];

    if (v7)
    {
      v8 = MEMORY[0x277CCA9B8];
      topErrorDomain2 = [eventCopy topErrorDomain];
      v10 = [v8 errorWithDomain:topErrorDomain2 code:objc_msgSend(eventCopy userInfo:{"topErrorCode"), 0}];
      v11 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:v10];

      curReport_topSessionErrors = [(HMDThreadNetworkObserver *)self curReport_topSessionErrors];
      -[HMDThreadNetworkObserver _incrementError:forHistogram:byValue:](self, "_incrementError:forHistogram:byValue:", v11, curReport_topSessionErrors, [eventCopy sessionFailures]);
    }
  }
}

- (void)_handleReadWriteLogEvent:(id)event
{
  eventCopy = event;
  [(HMDThreadNetworkObserver *)self setCurReport_readWritesCount:[(HMDThreadNetworkObserver *)self curReport_readWritesCount]+ 1];
  error = [eventCopy error];
  if (error)
  {
    v5 = error;
    isThreadAccessory = [eventCopy isThreadAccessory];

    if (isThreadAccessory)
    {
      if ([eventCopy isWriteOperation])
      {
        [(HMDThreadNetworkObserver *)self setCurReport_writeErrorCount:[(HMDThreadNetworkObserver *)self curReport_writeErrorCount]+ 1];
      }

      else
      {
        [(HMDThreadNetworkObserver *)self setCurReport_readErrorCount:[(HMDThreadNetworkObserver *)self curReport_readErrorCount]+ 1];
      }

      error2 = [eventCopy error];
      v8 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:error2];

      curReport_topReadWriteErrors = [(HMDThreadNetworkObserver *)self curReport_topReadWriteErrors];
      [(HMDThreadNetworkObserver *)self _incrementError:v8 forHistogram:curReport_topReadWriteErrors byValue:1];

      if ([eventCopy isSentOverThread])
      {
        -[HMDThreadNetworkObserver requestThreadNetworkStateCaptureForAccessory:failingScenario:](self, "requestThreadNetworkStateCaptureForAccessory:failingScenario:", 0, [eventCopy isWriteOperation]);
      }
    }
  }
}

- (id)counterGroupForName:(id)name homeUUID:(id)d date:(id)date
{
  if (d)
  {
    dateCopy = date;
    dCopy = d;
    nameCopy = name;
    countersManager = [(HMDThreadNetworkObserver *)self countersManager];
    v12 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:nameCopy homeUUID:dCopy date:dateCopy];

    v13 = [countersManager objectForKeyedSubscript:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)stop
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_started)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    self->_started = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_autoreleasePoolPush();
  v8 = selfCopy;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@This device does not support Thread network stability reporting", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v8->_started = 1;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setDailyScheduler:(id)scheduler
{
  if (!self->_dailyReportingRegistered)
  {
    self->_dailyReportingRegistered = 1;
    [scheduler registerDailyTaskRunner:self];
  }
}

- (HMDThreadNetworkObserver)initWithLogEventDispatcher:(id)dispatcher countersManager:(id)manager dailyScheduler:(id)scheduler currentHomeDataSource:(id)source dateProvider:(id)provider notificationCenter:(id)center
{
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  sourceCopy = source;
  providerCopy = provider;
  centerCopy = center;
  v27.receiver = self;
  v27.super_class = HMDThreadNetworkObserver;
  v18 = [(HMDThreadNetworkObserver *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_logEventDispatcher, dispatcherCopy);
    objc_storeWeak(&v19->_countersManager, managerCopy);
    objc_storeWeak(&v19->_notificationCenter, centerCopy);
    objc_storeWeak(&v19->_currentHomeDataSource, sourceCopy);
    objc_storeWeak(&v19->_dateProvider, providerCopy);
    v19->_curReport_threadNetworkUp = 0;
    *&v19->_curReport_numAdvertisedBRs = 0u;
    *&v19->_curReport_numThirdPartyBRs = 0u;
    *&v19->_curReport_maxSimuIPPrefixes = 0u;
    *&v19->_curReport_txSuccess = 0u;
    *&v19->_curReport_rxTotal = 0u;
    *&v19->_curReport_reportDuration = 0u;
    curReport_threadNetworkLastUpTime = v19->_curReport_threadNetworkLastUpTime;
    v19->_curReport_threadNetworkDownDuration = 0.0;
    v19->_curReport_threadNetworkLastUpTime = 0;

    curReport_threadNetworkLastDownTime = v19->_curReport_threadNetworkLastDownTime;
    v19->_curReport_threadNetworkLastDownTime = 0;

    v19->_curReport_readWritesCount = 0;
    v19->_curReport_readErrorCount = 0;
    v19->_curReport_writeErrorCount = 0;
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    curReport_topReadWriteErrors = v19->_curReport_topReadWriteErrors;
    v19->_curReport_topReadWriteErrors = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    curReport_topSessionErrors = v19->_curReport_topSessionErrors;
    v19->_curReport_topSessionErrors = v24;

    *&v19->_started = 0;
  }

  return v19;
}

- (HMDThreadNetworkObserver)initWithLogEventDispatcher:(id)dispatcher countersManager:(id)manager dailyScheduler:(id)scheduler currentHomeDataSource:(id)source dateProvider:(id)provider
{
  v12 = MEMORY[0x277CCAB98];
  providerCopy = provider;
  sourceCopy = source;
  schedulerCopy = scheduler;
  managerCopy = manager;
  dispatcherCopy = dispatcher;
  defaultCenter = [v12 defaultCenter];
  v19 = [(HMDThreadNetworkObserver *)self initWithLogEventDispatcher:dispatcherCopy countersManager:managerCopy dailyScheduler:schedulerCopy currentHomeDataSource:sourceCopy dateProvider:providerCopy notificationCenter:defaultCenter];

  return v19;
}

+ (id)supportedEventClasses
{
  if (supportedEventClasses_onceToken_179182 != -1)
  {
    dispatch_once(&supportedEventClasses_onceToken_179182, &__block_literal_global_179183);
  }

  v3 = supportedEventClasses_supportedEventClasses_179184;

  return v3;
}

void __49__HMDThreadNetworkObserver_supportedEventClasses__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = supportedEventClasses_supportedEventClasses_179184;
  supportedEventClasses_supportedEventClasses_179184 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end