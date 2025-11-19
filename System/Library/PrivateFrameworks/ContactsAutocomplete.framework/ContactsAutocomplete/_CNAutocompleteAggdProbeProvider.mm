@interface _CNAutocompleteAggdProbeProvider
- (id)performanceProbe;
- (id)suggestionsProbe;
- (id)usageMonitorProbe;
@end

@implementation _CNAutocompleteAggdProbeProvider

- (id)usageMonitorProbe
{
  v2 = objc_alloc_init(CNAutocompleteCoreAnalyticsUsageMonitorProbe);

  return v2;
}

- (id)performanceProbe
{
  v2 = objc_alloc_init(CNAutocompleteAggdPerformanceProbe);

  return v2;
}

- (id)suggestionsProbe
{
  v2 = objc_alloc_init(CNAutocompleteSuggestionsProbe);

  return v2;
}

@end