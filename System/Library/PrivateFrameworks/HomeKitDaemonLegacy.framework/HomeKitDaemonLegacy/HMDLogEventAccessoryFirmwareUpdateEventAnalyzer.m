@interface HMDLogEventAccessoryFirmwareUpdateEventAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventAccessoryFirmwareUpdateEventAnalyzer)initWithEventCountersManager:(id)a3;
- (void)observeEvent:(id)a3;
- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4;
- (void)resetAggregationAnalysisContext;
@end

@implementation HMDLogEventAccessoryFirmwareUpdateEventAnalyzer

- (void)resetAggregationAnalysisContext
{
  v2 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
  [v2 resetEventCountersForRequestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup"];
}

- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
  v10 = [v8 counterGroupForName:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup"];

  [v7 setPeakConcurrentIPAccessoryUpdateStaging:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventPeakConcurrentIPAccessoryUpdateStagingCounter", v6)}];
  [v7 setPeakConcurrentIPAccessoryUpdateApply:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventPeakConcurrentIPAccessoryUpdateApplyCounter", v6)}];
  [v7 setPeakConcurrentBLEAccessoryUpdateStaging:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventPeakConcurrentBLEAccessoryUpdateStagingCounter", v6)}];
  [v7 setPeakConcurrentBLEAccessoryUpdateApply:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventPeakConcurrentBLEAccessoryUpdateApplyCounter", v6)}];
  [v7 setPeakConcurrentThreadAccessoryUpdateStaging:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventPeakConcurrentThreadAccessoryUpdateStagingCounter", v6)}];
  v9 = [v10 fetchEventCounterForEventName:@"HMDLogEventPeakConcurrentThreadAccessoryUpdateApplyCounter" forDate:v6];

  [v7 setPeakConcurrentThreadAccessoryUpdateApply:v9];
}

- (void)observeEvent:(id)a3
{
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v12;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [v6 incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentIPAccessoryUpdateStagingCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentIPAccessoryUpdateStaging")}];

    v7 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [v7 incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentIPAccessoryUpdateApplyCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentIPAccessoryUpdateApply")}];

    v8 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [v8 incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentBLEAccessoryUpdateStagingCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentBLEAccessoryUpdateStaging")}];

    v9 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [v9 incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentBLEAccessoryUpdateApplyCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentBLEAccessoryUpdateApply")}];

    v10 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [v10 incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentThreadAccessoryUpdateStagingCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentThreadAccessoryUpdateStaging")}];

    v11 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)self eventCountersManager];
    [v11 incrementEventCounterForEventName:@"HMDLogEventPeakConcurrentThreadAccessoryUpdateApplyCounter" requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup" withValue:{objc_msgSend(v5, "peakConcurrentThreadAccessoryUpdateApply")}];
  }
}

- (HMDLogEventAccessoryFirmwareUpdateEventAnalyzer)initWithEventCountersManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDLogEventAccessoryFirmwareUpdateEventAnalyzer;
  v6 = [(HMDLogEventAccessoryFirmwareUpdateEventAnalyzer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventCountersManager, a3);
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