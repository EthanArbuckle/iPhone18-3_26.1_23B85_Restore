@interface ActivityCurrentValueView
@end

@implementation ActivityCurrentValueView

uint64_t __102___ActivityCurrentValueView__computeMultiDayVisibleSummaryForGraphView_timeScope_filterDateIntervals___block_invoke(uint64_t a1, void *a2)
{
  v10 = [a2 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v10;
  if (isKindOfClass)
  {
    v5 = [v10 activitySummaryData];
    if (([*(a1 + 32) _summaryOutsideRanges:*(a1 + 40) summary:v5] & 1) == 0)
    {
      v6 = *(*(a1 + 56) + 8);
      if (v5 != *(v6 + 40))
      {
        [*(a1 + 48) combineWithActivitySummary:v5];
        v6 = *(*(a1 + 56) + 8);
      }

      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
      v8 = v5;

      ++*(*(*(a1 + 64) + 8) + 24);
    }

    v4 = v10;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v4);
}

@end