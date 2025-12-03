@interface HMDHouseholdMetricsRequestContributor
- (HMDHouseholdMetricsRequestContributor)initWithCountersManager:(id)manager dateProvider:(id)provider;
- (void)coalesceLogEvent:(id)event fromSourceEvent:(id)sourceEvent;
- (void)contributeLogEvent:(id)event toCoreAnalyticsEvent:(id)analyticsEvent;
- (void)contributeLogEvent:(id)event toSerializedMetric:(id)metric;
- (void)deserializeLogEvent:(id)event fromSerializedMetric:(id)metric;
- (void)incrementRequestCountForHomeUUID:(id)d date:(id)date;
- (void)populateLogEvent:(id)event forHomeWithUUID:(id)d associatedToDate:(id)date;
@end

@implementation HMDHouseholdMetricsRequestContributor

- (void)coalesceLogEvent:(id)event fromSourceEvent:(id)sourceEvent
{
  eventCopy = event;
  [eventCopy setActiveDeviceCount:{objc_msgSend(eventCopy, "activeDeviceCount") + objc_msgSend(sourceEvent, "activeDeviceCount")}];
}

- (void)contributeLogEvent:(id)event toCoreAnalyticsEvent:(id)analyticsEvent
{
  v5 = MEMORY[0x277CCABB0];
  analyticsEventCopy = analyticsEvent;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(event, "activeDeviceCount")}];
  [analyticsEventCopy setObject:v7 forKeyedSubscript:@"activeDeviceCountKey"];
}

- (void)deserializeLogEvent:(id)event fromSerializedMetric:(id)metric
{
  metricCopy = metric;
  eventCopy = event;
  v6 = [metricCopy objectForKeyedSubscript:@"requestCountKey"];
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

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  [eventCopy setRequestCount:unsignedIntegerValue];
  v10 = [metricCopy objectForKeyedSubscript:@"activeDeviceCountKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  unsignedIntegerValue2 = [v12 unsignedIntegerValue];
  [eventCopy setActiveDeviceCount:unsignedIntegerValue2];
}

- (void)contributeLogEvent:(id)event toSerializedMetric:(id)metric
{
  v5 = MEMORY[0x277CCABB0];
  metricCopy = metric;
  eventCopy = event;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(eventCopy, "requestCount")}];
  [metricCopy setObject:v8 forKeyedSubscript:@"requestCountKey"];

  v9 = MEMORY[0x277CCABB0];
  activeDeviceCount = [eventCopy activeDeviceCount];

  v11 = [v9 numberWithUnsignedInteger:activeDeviceCount];
  [metricCopy setObject:v11 forKeyedSubscript:@"activeDeviceCountKey"];
}

- (void)populateLogEvent:(id)event forHomeWithUUID:(id)d associatedToDate:(id)date
{
  eventCopy = event;
  v9 = [(HMDHouseholdActivityLogEventContributor *)self householdGroupForHomeWithUUID:d associatedWithDate:date];
  [eventCopy setRequestCount:{objc_msgSend(v9, "fetchEventCounterForEventName:", @"RequestCount"}];
  [eventCopy setActiveDeviceCount:1];
}

- (void)incrementRequestCountForHomeUUID:(id)d date:(id)date
{
  v4 = [(HMDHouseholdActivityLogEventContributor *)self householdGroupForHomeWithUUID:d associatedWithDate:date];
  [v4 incrementEventCounterForEventName:@"RequestCount"];
}

- (HMDHouseholdMetricsRequestContributor)initWithCountersManager:(id)manager dateProvider:(id)provider
{
  v5.receiver = self;
  v5.super_class = HMDHouseholdMetricsRequestContributor;
  return [(HMDHouseholdActivityLogEventContributor *)&v5 initWithHouseholdGroupName:@"HouseholdMetricsClient" countersManager:manager dateProvider:provider];
}

@end