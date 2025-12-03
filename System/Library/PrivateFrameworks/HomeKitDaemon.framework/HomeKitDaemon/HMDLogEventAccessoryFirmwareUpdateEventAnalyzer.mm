@interface HMDLogEventAccessoryFirmwareUpdateEventAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventAccessoryFirmwareUpdateEventAnalyzer)initWithEventCountersManager:(id)manager;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)resetAggregationAnalysisContext;
@end

@implementation HMDLogEventAccessoryFirmwareUpdateEventAnalyzer

- (void)resetAggregationAnalysisContext
{
  eventCountersManager = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
  [eventCountersManager resetEventCountersForRequestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup"];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  dateCopy = date;
  eventCopy = event;
  eventCountersManager = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
  v10 = [eventCountersManager counterGroupForName:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup"];

  [eventCopy setPeakConcurrentIPAccessoryUpdateStaging:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventPeakConcurrentIPAccessoryUpdateStagingCounter", dateCopy)}];
  [eventCopy setPeakConcurrentIPAccessoryUpdateApply:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventPeakConcurrentIPAccessoryUpdateApplyCounter", dateCopy)}];
  [eventCopy setPeakConcurrentBLEAccessoryUpdateStaging:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventPeakConcurrentBLEAccessoryUpdateStagingCounter", dateCopy)}];
  [eventCopy setPeakConcurrentBLEAccessoryUpdateApply:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventPeakConcurrentBLEAccessoryUpdateApplyCounter", dateCopy)}];
  [eventCopy setPeakConcurrentThreadAccessoryUpdateStaging:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventPeakConcurrentThreadAccessoryUpdateStagingCounter", dateCopy)}];
  v9 = [v10 fetchEventCounterForEventName:@"HMDLogEventPeakConcurrentThreadAccessoryUpdateApplyCounter" forDate:dateCopy];

  [eventCopy setPeakConcurrentThreadAccessoryUpdateApply:v9];
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
    eventCountersManager = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [eventCountersManager incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentIPAccessoryUpdateStagingCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentIPAccessoryUpdateStaging")}];

    eventCountersManager2 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [eventCountersManager2 incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentIPAccessoryUpdateApplyCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentIPAccessoryUpdateApply")}];

    eventCountersManager3 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [eventCountersManager3 incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentBLEAccessoryUpdateStagingCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentBLEAccessoryUpdateStaging")}];

    eventCountersManager4 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [eventCountersManager4 incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentBLEAccessoryUpdateApplyCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentBLEAccessoryUpdateApply")}];

    eventCountersManager5 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [eventCountersManager5 incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentThreadAccessoryUpdateStagingCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentThreadAccessoryUpdateStaging")}];

    eventCountersManager6 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [eventCountersManager6 incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentThreadAccessoryUpdateApplyCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentThreadAccessoryUpdateApply")}];
  }
}

- (HMDLogEventAccessoryFirmwareUpdateEventAnalyzer)initWithEventCountersManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = HMDLogEventAccessoryFirmwareUpdateEventAnalyzer;
  v6 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventCountersManager, manager);
  }

  return v7;
}

+ (id)managedEventCounterRequestGroups
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"HMDLogEventAccessoryFirmwareUpdateRequestGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end