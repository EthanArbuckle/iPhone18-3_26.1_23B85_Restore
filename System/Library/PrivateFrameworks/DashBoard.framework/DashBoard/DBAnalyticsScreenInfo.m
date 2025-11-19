@interface DBAnalyticsScreenInfo
@end

@implementation DBAnalyticsScreenInfo

void __74___DBAnalyticsScreenInfo_analytics_sessionStartedDictionaryRepresentation__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a2;
  [v29 unadjustedSafeFrame];
  v6 = v5;
  v8 = v7;
  [v29 visibleFrame];
  if (v6 != v10 || v8 != v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if ([v29 displaysTransitionControl])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  [v29 visibleFrame];
  v13 = v12;
  v15 = v14;
  v16 = [*(a1 + 32) screenInfo];
  [v16 pixelSize];
  v18 = v17;
  v20 = v19;

  if (v13 == v18 && v15 == v20)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v22 = *(*(a1 + 64) + 8);
  if (*(v22 + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v22 + 24) = a3;
  }

  else
  {
    v23 = [*(a1 + 32) screenInfo];
    v24 = [v23 viewAreas];
    v25 = [v24 objectAtIndexedSubscript:*(*(*(a1 + 64) + 8) + 24)];

    [v25 visibleFrame];
    Width = CGRectGetWidth(v31);
    [v25 visibleFrame];
    v27 = (Width * CGRectGetHeight(v32));
    [v29 visibleFrame];
    v28 = CGRectGetWidth(v33);
    [v29 visibleFrame];
    if ((v28 * CGRectGetHeight(v34)) > v27)
    {
      *(*(*(a1 + 64) + 8) + 24) = a3;
    }
  }
}

void __72___DBAnalyticsScreenInfo_analytics_sessionEndedDictionaryRepresentation__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a2;
  v5 = [*(a1 + 32) _identifierForViewArea:v31];
  [*(a1 + 32) accumulatedTimeForKey:v5];
  v7 = v6;
  [v31 unadjustedSafeFrame];
  v9 = v8;
  v11 = v10;
  [v31 visibleFrame];
  if (v9 != v13 || v11 != v12)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if ([v31 displaysTransitionControl])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  [v31 visibleFrame];
  v16 = v15;
  v18 = v17;
  v19 = [*(a1 + 32) screenInfo];
  [v19 pixelSize];
  v21 = v20;
  v23 = v22;

  if (v16 == v21 && v18 == v23)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v25 = *(*(a1 + 64) + 8);
  if (*(v25 + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v25 + 24) = a3;
  }

  else
  {
    v26 = [*(a1 + 32) screenInfo];
    v27 = [v26 viewAreas];
    v28 = [v27 objectAtIndexedSubscript:*(*(*(a1 + 64) + 8) + 24)];

    v29 = [*(a1 + 32) _identifierForViewArea:v28];
    [*(a1 + 32) accumulatedTimeForKey:v29];
    if (v7 > v30)
    {
      *(*(*(a1 + 64) + 8) + 24) = a3;
    }
  }
}

@end