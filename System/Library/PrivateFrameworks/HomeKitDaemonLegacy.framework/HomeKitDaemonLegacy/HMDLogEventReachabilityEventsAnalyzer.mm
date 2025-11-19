@interface HMDLogEventReachabilityEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventReachabilityEventsAnalyzer)initWithEventCountersManager:(id)a3;
- (void)_handleCameraRecordingReachabilityLogEvent:(id)a3;
- (void)_handleReachabiltiyAddRemoveEvent:(id)a3;
- (void)_handleRemoteDeviceReachabilityChangedLogEvent:(id)a3;
- (void)observeEvent:(id)a3;
- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4;
- (void)resetAggregationAnalysisContext;
@end

@implementation HMDLogEventReachabilityEventsAnalyzer

- (void)resetAggregationAnalysisContext
{
  v2 = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
  [v2 resetEventCountersForRequestGroup:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup"];
}

- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
  v10 = [v8 counterGroupForName:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup"];

  [v7 setCameraRecordingReachabilityChangedCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventReachabilityEventsAnalyzerCameraRecordingReachabilityChangedCounter", v6)}];
  [v7 setCameraRecordingReachabilityOfflineDuration:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventReachabilityEventsAnalyzerCameraRecordingOfflineDurationCounter", v6)}];
  [v7 setHomeHubReachabilityChangedCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventReachabilityEventsAnalyzerHomeHubReachabilityChangedCounter", v6)}];
  v9 = [v10 fetchEventCounterForEventName:@"HMDLogEventReachabilityEventsAnalyzerReachabilityChangedCounter" forDate:v6];

  [v7 setIpAccessoryReachabilityChangedCount:v9];
}

- (void)_handleCameraRecordingReachabilityLogEvent:(id)a3
{
  v8 = a3;
  if ([v8 didCreateEventModel])
  {
    v4 = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
    [v4 incrementEventCounterForEventName:@"HMDLogEventReachabilityEventsAnalyzerCameraRecordingReachabilityChangedCounter" requestGroup:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup"];

    [v8 offlineDuration];
    if (v5 > 0.0)
    {
      v6 = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
      [v8 offlineDuration];
      [v6 incrementEventCounterForEventName:@"HMDLogEventReachabilityEventsAnalyzerCameraRecordingOfflineDurationCounter" requestGroup:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup" withValue:v7];
    }
  }
}

- (void)_handleRemoteDeviceReachabilityChangedLogEvent:(id)a3
{
  v3 = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
  [v3 incrementEventCounterForEventName:@"HMDLogEventReachabilityEventsAnalyzerHomeHubReachabilityChangedCounter" requestGroup:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup"];
}

- (void)_handleReachabiltiyAddRemoveEvent:(id)a3
{
  v3 = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
  [v3 incrementEventCounterForEventName:@"HMDLogEventReachabilityEventsAnalyzerReachabilityChangedCounter" requestGroup:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup"];
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
    [(HMDLogEventReachabilityEventsAnalyzer *)self _handleRemoteDeviceReachabilityChangedLogEvent:v5];
  }

  else
  {
    v6 = v12;
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

    if (v8)
    {
      [(HMDLogEventReachabilityEventsAnalyzer *)self _handleCameraRecordingReachabilityLogEvent:v8];
    }

    else
    {
      v9 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        [(HMDLogEventReachabilityEventsAnalyzer *)self _handleReachabiltiyAddRemoveEvent:v11];
      }
    }
  }
}

- (HMDLogEventReachabilityEventsAnalyzer)initWithEventCountersManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDLogEventReachabilityEventsAnalyzer;
  v6 = [(HMDLogEventReachabilityEventsAnalyzer *)&v9 init];
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
  v5[0] = @"HMDLogEventReachabilityEventsAnalyzerRequestGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end