@interface HKBloodGlucosePercentInRangeContext
@end

@implementation HKBloodGlucosePercentInRangeContext

uint64_t __123___HKBloodGlucosePercentInRangeContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [*(a1 + 32) _updateContextItemFromChartPoints:a2];
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }
}

@end