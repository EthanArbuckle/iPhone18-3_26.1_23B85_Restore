@interface HMDLogEventReachabilityEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventReachabilityEventsAnalyzer)initWithEventCountersManager:(id)manager;
- (void)_handleCameraRecordingReachabilityLogEvent:(id)event;
- (void)_handleReachabiltiyAddRemoveEvent:(id)event;
- (void)_handleRemoteDeviceReachabilityChangedLogEvent:(id)event;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)resetAggregationAnalysisContext;
@end

@implementation HMDLogEventReachabilityEventsAnalyzer

- (void)resetAggregationAnalysisContext
{
  eventCountersManager = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager resetEventCountersForRequestGroup:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup"];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  dateCopy = date;
  eventCopy = event;
  eventCountersManager = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
  v10 = [eventCountersManager counterGroupForName:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup"];

  [eventCopy setCameraRecordingReachabilityChangedCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventReachabilityEventsAnalyzerCameraRecordingReachabilityChangedCounter", dateCopy)}];
  [eventCopy setCameraRecordingReachabilityOfflineDuration:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventReachabilityEventsAnalyzerCameraRecordingOfflineDurationCounter", dateCopy)}];
  [eventCopy setHomeHubReachabilityChangedCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventReachabilityEventsAnalyzerHomeHubReachabilityChangedCounter", dateCopy)}];
  v9 = [v10 fetchEventCounterForEventName:@"HMDLogEventReachabilityEventsAnalyzerReachabilityChangedCounter" forDate:dateCopy];

  [eventCopy setIpAccessoryReachabilityChangedCount:v9];
}

- (void)_handleCameraRecordingReachabilityLogEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy didCreateEventModel])
  {
    eventCountersManager = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager incrementEventCounterForEventName:@"HMDLogEventReachabilityEventsAnalyzerCameraRecordingReachabilityChangedCounter" requestGroup:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup"];

    [eventCopy offlineDuration];
    if (v5 > 0.0)
    {
      eventCountersManager2 = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
      [eventCopy offlineDuration];
      [eventCountersManager2 incrementEventCounterForEventName:@"HMDLogEventReachabilityEventsAnalyzerCameraRecordingOfflineDurationCounter" requestGroup:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup" withValue:v7];
    }
  }
}

- (void)_handleRemoteDeviceReachabilityChangedLogEvent:(id)event
{
  eventCountersManager = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager incrementEventCounterForEventName:@"HMDLogEventReachabilityEventsAnalyzerHomeHubReachabilityChangedCounter" requestGroup:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup"];
}

- (void)_handleReachabiltiyAddRemoveEvent:(id)event
{
  eventCountersManager = [(HMDLogEventReachabilityEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager incrementEventCounterForEventName:@"HMDLogEventReachabilityEventsAnalyzerReachabilityChangedCounter" requestGroup:@"HMDLogEventReachabilityEventsAnalyzerRequestGroup"];
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
    [(HMDLogEventReachabilityEventsAnalyzer *)self _handleRemoteDeviceReachabilityChangedLogEvent:v5];
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

- (HMDLogEventReachabilityEventsAnalyzer)initWithEventCountersManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = HMDLogEventReachabilityEventsAnalyzer;
  v6 = [(HMDLogEventReachabilityEventsAnalyzer *)&v9 init];
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
  v5[0] = @"HMDLogEventReachabilityEventsAnalyzerRequestGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end