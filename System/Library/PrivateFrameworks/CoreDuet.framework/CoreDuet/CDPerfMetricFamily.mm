@interface CDPerfMetricFamily
@end

@implementation CDPerfMetricFamily

void __48___CDPerfMetricFamily_perfMetricFamilyWithName___block_invoke(uint64_t a1)
{
  v2 = [_CDPerfMetricFamilies objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [[_CDPerfMetricFamily alloc] initWithName:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v8 = _CDPerfMetricFamilies;
      v9 = *(a1 + 32);

      [v8 setObject:? forKeyedSubscript:?];
    }
  }
}

void __49___CDPerfMetricFamily_perfMetricWithName_string___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[7] + 8) + 40))
  {
    v5 = [[_CDMutablePerfMetric alloc] initWithName:a1[5] string:a1[6] family:a1[4]];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(a1[7] + 8) + 40))
    {
      v8 = a1[5];
      v9 = *(a1[4] + 16);

      [v9 setObject:? forKeyedSubscript:?];
    }
  }
}

uint64_t __42___CDPerfMetricFamily_perfMetricWithName___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __37___CDPerfMetricFamily_allPerfMetrics__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

@end