@interface CDSizeMetricFamily
@end

@implementation CDSizeMetricFamily

void __48___CDSizeMetricFamily_sizeMetricFamilyWithName___block_invoke(uint64_t a1)
{
  v2 = [_CDSizeMetricFamilies objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [[_CDSizeMetricFamily alloc] initWithName:?];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v8 = _CDSizeMetricFamilies;
      v9 = *(a1 + 32);

      [v8 setObject:? forKeyedSubscript:?];
    }
  }
}

void __55___CDSizeMetricFamily_sizeMetricWithName_string_scale___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[7] + 8) + 40))
  {
    v5 = [[_CDMutableSizeMetric alloc] initWithName:a1[5] string:a1[6] scale:a1[8] family:a1[4]];
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

@end