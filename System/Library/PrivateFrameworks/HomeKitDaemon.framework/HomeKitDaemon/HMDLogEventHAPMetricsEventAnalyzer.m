@interface HMDLogEventHAPMetricsEventAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventHAPMetricsEventAnalyzer)initWithEventCountersManager:(id)a3;
- (void)observeEvent:(id)a3;
- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4;
- (void)resetAggregationAnalysisContext;
@end

@implementation HMDLogEventHAPMetricsEventAnalyzer

- (void)resetAggregationAnalysisContext
{
  v2 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
  [v2 resetEventCountersForRequestGroup:@"HMDLogEventHAPMetricsRequestGroup"];
}

- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
  v10 = [v8 counterGroupForName:@"HMDLogEventHAPMetricsRequestGroup"];

  [v7 setHapIPSentHTTPRequestsCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPIPSentHTTPMessagesCounter", v6)}];
  [v7 setHapIPReceivedHTTPResponsesCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPIPReceivedHTTPMessagesCounter", v6)}];
  [v7 setHapIPInvalidationCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPIPInvalidationCounter", v6)}];
  [v7 setHapIPReceivedHTTPEventCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPIPReceivedHTTPEventsCounter", v6)}];
  [v7 setHapBTLEConnectionsCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEConnectionsCounter", v6)}];
  [v7 setHapBTLEDiscoveriesCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEDiscoveryCounter", v6)}];
  v9 = [v10 fetchEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEConnectionPerReasonCounter" forDate:v6];

  [v7 setHapBTLEConnectionPerReasonsCount:v9];
}

- (void)observeEvent:(id)a3
{
  v13 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v13;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [v6 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPIPInvalidationCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "accessoryServerInvalidations")}];

    v7 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [v7 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPIPSentHTTPMessagesCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "sentHTTPRequests")}];

    v8 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [v8 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPIPReceivedHTTPMessagesCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "receivedHTTPResponses")}];

    v9 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [v9 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPIPReceivedHTTPEventsCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "receivedHTTPEvents")}];

    v10 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [v10 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEConnectionsCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "btleConnections")}];

    v11 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [v11 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEDiscoveryCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "btleDiscoveries")}];

    v12 = [(HMDLogEventHAPMetricsEventAnalyzer *)self eventCountersManager];
    [v12 incrementEventCounterForEventName:@"HMDLogEventHAPMetricsEventAnalyzerHAPBTLEConnectionPerReasonCounter" requestGroup:@"HMDLogEventHAPMetricsRequestGroup" withValue:{objc_msgSend(v5, "btleConnectionPerReasons")}];
  }
}

- (HMDLogEventHAPMetricsEventAnalyzer)initWithEventCountersManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDLogEventHAPMetricsEventAnalyzer;
  v6 = [(HMDLogEventHAPMetricsEventAnalyzer *)&v9 init];
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
  v5[0] = @"HMDLogEventHAPMetricsRequestGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end