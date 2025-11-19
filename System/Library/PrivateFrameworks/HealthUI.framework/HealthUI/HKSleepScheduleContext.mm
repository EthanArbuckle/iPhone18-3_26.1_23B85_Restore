@interface HKSleepScheduleContext
@end

@implementation HKSleepScheduleContext

void __110___HKSleepScheduleContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v6 = [*(a1 + 32) _schedulePhraseFromChartPoints:a2];
    v4 = [*(a1 + 32) _scheduleContextItemWithPhrase:v6];
    [*(a1 + 32) setLastUpdatedItem:v4];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

@end