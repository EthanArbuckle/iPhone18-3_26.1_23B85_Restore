@interface HMDLogEventProcessMemoryEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventProcessMemoryEventsAnalyzer)initWithDataSource:(id)a3;
- (unint64_t)storedAverageProcessMemoryKB;
- (unint64_t)storedPeakProcessMemoryKB;
- (void)_handleMemoryPressureNotificationLogEvent:(id)a3;
- (void)_handleMemorySampleLogEvent:(id)a3;
- (void)observeEvent:(id)a3;
- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4;
- (void)resetAggregationAnalysisContext;
@end

@implementation HMDLogEventProcessMemoryEventsAnalyzer

- (void)resetAggregationAnalysisContext
{
  v2 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  [v2 resetEventCountersForRequestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];
}

- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  v10 = [v8 counterGroupForName:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

  [v7 setProcessMemoryPressureStateWarningCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessMemoryEventsAnalyzerProcessMemoryPressureStateWarningEventCounter", v6)}];
  v9 = [v10 fetchEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemoryPressureStateCriticalEventCounter" forDate:v6];

  [v7 setProcessMemoryPressureStateCriticalCount:v9];
  [v7 setSampledAverageProcessMemoryUsageMB:{-[HMDLogEventProcessMemoryEventsAnalyzer storedAverageProcessMemoryKB](self, "storedAverageProcessMemoryKB") >> 10}];
  [v7 setSampledPeakProcessMemoryUsageMB:{-[HMDLogEventProcessMemoryEventsAnalyzer storedPeakProcessMemoryKB](self, "storedPeakProcessMemoryKB") >> 10}];
}

- (void)_handleMemorySampleLogEvent:(id)a3
{
  v13 = a3;
  v4 = [v13 currentMemoryUsage];
  v5 = ([v13 intervalMaxMemoryUsage] >> 10);
  v6 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  v7 = [v6 counterGroupForName:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

  [v7 addValue:v5 toStatisticsName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySamplePeakValueKB"];
  v8 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self radarInitiator];

  if (v8 && v5 > 0x1E000)
  {
    v9 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self radarInitiator];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"homed used excessive memory: %lu MB", v5 >> 10];
    [v9 requestRadarWithDisplayReason:@"homed used excessive memory" radarTitle:v10 componentName:@"HomeKit" componentVersion:@"Performance - Memory" componentID:1302798];
  }

  if ([v13 reason] == 1)
  {
    v11 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
    [v11 incrementEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySampleEventCount" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

    v12 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
    [v12 incrementEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySampleAggregateValueKB" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup" withValue:(v4 >> 10)];
  }
}

- (void)_handleMemoryPressureNotificationLogEvent:(id)a3
{
  v6 = a3;
  if ([v6 processMemoryEvent] == 4)
  {
    v4 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
    [v4 incrementEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemoryPressureStateWarningEventCounter" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];
  }

  else
  {
    if ([v6 processMemoryEvent] != 5)
    {
      goto LABEL_6;
    }

    v5 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
    [v5 incrementEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemoryPressureStateCriticalEventCounter" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

    v4 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
    [v4 forceSave];
  }

LABEL_6:
}

- (void)observeEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    [(HMDLogEventProcessMemoryEventsAnalyzer *)self _handleMemoryPressureNotificationLogEvent:v6];
  }

  v9 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [(HMDLogEventProcessMemoryEventsAnalyzer *)self _handleMemorySampleLogEvent:v8];
  }
}

- (unint64_t)storedPeakProcessMemoryKB
{
  v2 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  v3 = [v2 counterGroupForName:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

  v4 = [v3 fetchMaxValueForStatisticsName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySamplePeakValueKB"];
  return v4;
}

- (unint64_t)storedAverageProcessMemoryKB
{
  v3 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  v4 = [v3 fetchEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySampleEventCount" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

  if (!v4)
  {
    return 0;
  }

  v5 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  v6 = [v5 fetchEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySampleAggregateValueKB" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

  return v6 / v4;
}

- (HMDLogEventProcessMemoryEventsAnalyzer)initWithDataSource:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDLogEventProcessMemoryEventsAnalyzer;
  v5 = [(HMDLogEventProcessMemoryEventsAnalyzer *)&v11 init];
  if (v5)
  {
    v6 = [v4 legacyCountersManager];
    eventCountersManager = v5->_eventCountersManager;
    v5->_eventCountersManager = v6;

    v8 = [v4 radarInitiator];
    radarInitiator = v5->_radarInitiator;
    v5->_radarInitiator = v8;

    [v4 addThresholdTrigger:@"memoryPressureStateCritical" forEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemoryPressureStateCriticalEventCounter" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup" atThreshold:1];
  }

  return v5;
}

+ (id)managedEventCounterRequestGroups
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end