@interface HMDLogEventHAPMetricsEventAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventHAPMetricsEventAnalyzer)initWithEventCountersManager:(id)manager;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)resetAggregationAnalysisContext;
@end

@implementation HMDLogEventHAPMetricsEventAnalyzer

- (void)resetAggregationAnalysisContext
{
  eventCountersManager = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
  [eventCountersManager resetEventCountersForRequestGroup:@"HMDLogEventHAPMetricsRequestGroup"];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  dateCopy = date;
  eventCopy = event;
  eventCountersManager = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
  v10 = [eventCountersManager counterGroupForName:@"HMDLogEventHAPMetricsRequestGroup"];

  [eventCopy setHapIPSentHTTPRequestsCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPIPSentHTTPMessagesCounter", dateCopy)}];
  [eventCopy setHapIPReceivedHTTPResponsesCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPIPReceivedHTTPMessagesCounter", dateCopy)}];
  [eventCopy setHapIPInvalidationCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPIPInvalidationCounter", dateCopy)}];
  [eventCopy setHapIPReceivedHTTPEventCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPIPReceivedHTTPEventsCounter", dateCopy)}];
  [eventCopy setHapBTLEConnectionsCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEConnectionsCounter", dateCopy)}];
  [eventCopy setHapBTLEDiscoveriesCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEDiscoveryCounter", dateCopy)}];
  v9 = [v10 fetchEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEConnectionPerReasonCounter" forDate:dateCopy];

  [eventCopy setHapBTLEConnectionPerReasonsCount:v9];
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
    eventCountersManager = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [eventCountersManager incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPIPInvalidationCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "accessoryServerInvalidations")}];

    eventCountersManager2 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [eventCountersManager2 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPIPSentHTTPMessagesCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "sentHTTPRequests")}];

    eventCountersManager3 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [eventCountersManager3 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPIPReceivedHTTPMessagesCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "receivedHTTPResponses")}];

    eventCountersManager4 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [eventCountersManager4 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPIPReceivedHTTPEventsCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "receivedHTTPEvents")}];

    eventCountersManager5 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [eventCountersManager5 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEConnectionsCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "btleConnections")}];

    eventCountersManager6 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [eventCountersManager6 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEDiscoveryCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "btleDiscoveries")}];

    eventCountersManager7 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [eventCountersManager7 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEConnectionPerReasonCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "btleConnectionPerReasons")}];
  }
}

- (HMDLogEventHAPMetricsEventAnalyzer)initWithEventCountersManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = HMDLogEventHAPMetricsEventAnalyzer;
  v6 = [(HMDLogEventHAPMetricsEventAnalyzer *)&v9 init];
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
  v5[0] = @"HMDLogEventHAPMetricsRequestGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end