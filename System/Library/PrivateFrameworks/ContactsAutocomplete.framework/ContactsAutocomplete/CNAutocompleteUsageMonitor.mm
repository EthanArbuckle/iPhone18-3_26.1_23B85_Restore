@interface CNAutocompleteUsageMonitor
+ (void)userIgnoredResultsForRequest:(id)a3 afterDelay:(double)a4;
- (CNAutocompleteUsageMonitor)init;
- (CNAutocompleteUsageMonitor)initWithProbeProvider:(id)a3;
- (void)userIgnoredResultsOfBatch:(unint64_t)a3 forRequest:(id)a4 afterDelay:(double)a5;
- (void)userSawNumberOfResults:(unint64_t)a3 forBatch:(unint64_t)a4 includingNumberOfSuggestions:(unint64_t)a5 forRequest:(id)a6;
@end

@implementation CNAutocompleteUsageMonitor

+ (void)userIgnoredResultsForRequest:(id)a3 afterDelay:(double)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a1);
  [v7 userIgnoredResultsOfBatch:0 forRequest:v6 afterDelay:a4];
}

- (CNAutocompleteUsageMonitor)init
{
  v3 = +[CNAutocompleteProbeProviderFactory defaultProbeProvider];
  v4 = [(CNAutocompleteUsageMonitor *)self initWithProbeProvider:v3];

  return v4;
}

- (CNAutocompleteUsageMonitor)initWithProbeProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNAutocompleteUsageMonitor;
  v6 = [(CNAutocompleteUsageMonitor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_probeProvider, a3);
  }

  return v7;
}

- (void)userIgnoredResultsOfBatch:(unint64_t)a3 forRequest:(id)a4 afterDelay:(double)a5
{
  v8 = a4;
  v9 = [(CNAutocompleteUsageMonitor *)self probeProvider];
  v12 = [v9 usageMonitorProbe];

  v10 = *MEMORY[0x277CFBD30];
  v11 = [v8 searchString];

  LODWORD(v10) = (*(v10 + 16))(v10, v11);
  if (v10)
  {
    [v12 recordUserIgnoredPredictionAfterDelay:a5];
  }

  else
  {
    [v12 recordUserIgnoredPrefixedResultAfterDelay:a3 batch:a5];
  }

  [v12 sendData];
}

- (void)userSawNumberOfResults:(unint64_t)a3 forBatch:(unint64_t)a4 includingNumberOfSuggestions:(unint64_t)a5 forRequest:(id)a6
{
  v9 = a6;
  v10 = [(CNAutocompleteUsageMonitor *)self probeProvider];
  v14 = [v10 usageMonitorProbe];

  v11 = *MEMORY[0x277CFBD30];
  v12 = [v9 searchString];

  LODWORD(v11) = (*(v11 + 16))(v11, v12);
  if (v11)
  {
    [v14 recordUserSawPredictions];
  }

  if (a5)
  {
    [v14 recordUserSawResultsConsideredSuggestion:a5];
  }

  v13 = a3 - a5;
  if (a3 != a5)
  {
    [v14 recordUserSawCuratedResults:v13];
  }

  [v14 sendData];
}

@end