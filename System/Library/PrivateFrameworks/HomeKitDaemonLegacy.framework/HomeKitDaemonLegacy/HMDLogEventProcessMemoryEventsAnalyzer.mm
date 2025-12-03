@interface HMDLogEventProcessMemoryEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventProcessMemoryEventsAnalyzer)initWithDataSource:(id)source;
- (unint64_t)storedAverageProcessMemoryKB;
- (unint64_t)storedPeakProcessMemoryKB;
- (void)_handleMemoryPressureNotificationLogEvent:(id)event;
- (void)_handleMemorySampleLogEvent:(id)event;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)resetAggregationAnalysisContext;
@end

@implementation HMDLogEventProcessMemoryEventsAnalyzer

- (void)resetAggregationAnalysisContext
{
  eventCountersManager = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager resetEventCountersForRequestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  dateCopy = date;
  eventCopy = event;
  eventCountersManager = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  v10 = [eventCountersManager counterGroupForName:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

  [eventCopy setProcessMemoryPressureStateWarningCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessMemoryEventsAnalyzerProcessMemoryPressureStateWarningEventCounter", dateCopy)}];
  v9 = [v10 fetchEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemoryPressureStateCriticalEventCounter" forDate:dateCopy];

  [eventCopy setProcessMemoryPressureStateCriticalCount:v9];
  [eventCopy setSampledAverageProcessMemoryUsageMB:{-[HMDLogEventProcessMemoryEventsAnalyzer storedAverageProcessMemoryKB](self, "storedAverageProcessMemoryKB") >> 10}];
  [eventCopy setSampledPeakProcessMemoryUsageMB:{-[HMDLogEventProcessMemoryEventsAnalyzer storedPeakProcessMemoryKB](self, "storedPeakProcessMemoryKB") >> 10}];
}

- (void)_handleMemorySampleLogEvent:(id)event
{
  eventCopy = event;
  currentMemoryUsage = [eventCopy currentMemoryUsage];
  v5 = ([eventCopy intervalMaxMemoryUsage] >> 10);
  eventCountersManager = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  v7 = [eventCountersManager counterGroupForName:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

  [v7 addValue:v5 toStatisticsName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySamplePeakValueKB"];
  radarInitiator = [(HMDLogEventProcessMemoryEventsAnalyzer *)self radarInitiator];

  if (radarInitiator && v5 > 0x1E000)
  {
    radarInitiator2 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self radarInitiator];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"homed used excessive memory: %lu MB", v5 >> 10];
    [radarInitiator2 requestRadarWithDisplayReason:@"homed used excessive memory" radarTitle:v10 componentName:@"HomeKit" componentVersion:@"Performance - Memory" componentID:1302798];
  }

  if ([eventCopy reason] == 1)
  {
    eventCountersManager2 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager2 incrementEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySampleEventCount" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

    eventCountersManager3 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager3 incrementEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySampleAggregateValueKB" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup" withValue:(currentMemoryUsage >> 10)];
  }
}

- (void)_handleMemoryPressureNotificationLogEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy processMemoryEvent] == 4)
  {
    eventCountersManager = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager incrementEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemoryPressureStateWarningEventCounter" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];
  }

  else
  {
    if ([eventCopy processMemoryEvent] != 5)
    {
      goto LABEL_6;
    }

    eventCountersManager2 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager2 incrementEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemoryPressureStateCriticalEventCounter" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

    eventCountersManager = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager forceSave];
  }

LABEL_6:
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
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

  v9 = eventCopy;
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
  eventCountersManager = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  v3 = [eventCountersManager counterGroupForName:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

  v4 = [v3 fetchMaxValueForStatisticsName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySamplePeakValueKB"];
  return v4;
}

- (unint64_t)storedAverageProcessMemoryKB
{
  eventCountersManager = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  v4 = [eventCountersManager fetchEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySampleEventCount" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

  if (!v4)
  {
    return 0;
  }

  eventCountersManager2 = [(HMDLogEventProcessMemoryEventsAnalyzer *)self eventCountersManager];
  v6 = [eventCountersManager2 fetchEventCounterForEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemorySampleAggregateValueKB" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup"];

  return v6 / v4;
}

- (HMDLogEventProcessMemoryEventsAnalyzer)initWithDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = HMDLogEventProcessMemoryEventsAnalyzer;
  v5 = [(HMDLogEventProcessMemoryEventsAnalyzer *)&v11 init];
  if (v5)
  {
    legacyCountersManager = [sourceCopy legacyCountersManager];
    eventCountersManager = v5->_eventCountersManager;
    v5->_eventCountersManager = legacyCountersManager;

    radarInitiator = [sourceCopy radarInitiator];
    radarInitiator = v5->_radarInitiator;
    v5->_radarInitiator = radarInitiator;

    [sourceCopy addThresholdTrigger:@"memoryPressureStateCritical" forEventName:@"HMDLogEventProcessMemoryEventsAnalyzerProcessMemoryPressureStateCriticalEventCounter" requestGroup:@"HMDLogEventProcessMemoryEventsAnalyzerRequestGroup" atThreshold:1];
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