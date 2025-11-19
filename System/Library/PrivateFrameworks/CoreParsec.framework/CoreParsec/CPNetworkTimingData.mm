@interface CPNetworkTimingData
@end

@implementation CPNetworkTimingData

void __64___CPNetworkTimingData_Dictionary__startMetricsForNormalization__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"_kCFNTimingDataConnectStart";
  v3[1] = @"_kCFNTimingDataFetchStart";
  v3[2] = @"_kCFNTimingDataRedirectStart";
  v3[3] = @"_kCFNTimingDataRequestStart";
  v3[4] = @"_kCFNTimingDataDomainLookupStart";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v1 = startMetricsForNormalization_startMetricNames;
  startMetricsForNormalization_startMetricNames = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end