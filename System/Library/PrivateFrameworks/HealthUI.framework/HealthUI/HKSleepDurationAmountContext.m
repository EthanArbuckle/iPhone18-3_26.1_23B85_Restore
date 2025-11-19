@interface HKSleepDurationAmountContext
@end

@implementation HKSleepDurationAmountContext

void __116___HKSleepDurationAmountContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v7 = [*(a1 + 32) _countsOfSleepDataFromChartPoints:a2];
    v4 = [*(a1 + 32) _amountStringFromCounts:v7 timeScope:*(a1 + 48)];
    v5 = [*(a1 + 32) _contextItemWithAmountString:v4];
    [*(a1 + 32) setLastUpdatedItem:v5];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

@end