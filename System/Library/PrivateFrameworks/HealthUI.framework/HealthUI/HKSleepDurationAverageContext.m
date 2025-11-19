@interface HKSleepDurationAverageContext
@end

@implementation HKSleepDurationAverageContext

void __117___HKSleepDurationAverageContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) _updateRangeDataWithChartPoints:v5 useInBedAverage:1 isHighlighted:objc_msgSend(*(a1 + 32) timeScope:{"useInBedAverage"), *(a1 + 48)}];
    [*(a1 + 32) _updateRangeDataWithChartPoints:v5 useInBedAverage:0 isHighlighted:objc_msgSend(*(a1 + 32) timeScope:{"useInBedAverage") ^ 1, *(a1 + 48)}];
  }

  (*(*(a1 + 40) + 16))();
}

@end