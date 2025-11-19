@interface HKHeartbeatSeriesSample
@end

@implementation HKHeartbeatSeriesSample

uint64_t __76__HKHeartbeatSeriesSample_HKDataMetadataSampleExtensions__sequenceChartData__block_invoke(uint64_t a1, char a2, double a3)
{
  if (a2)
  {
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      ++*(*(*(a1 + 56) + 8) + 24);
    }
  }

  else if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = [[HKHeartbeatSequencePoint alloc] initWithTimeInterval:a3 beatsPerMinute:1.0 / ((a3 - *(*(*(a1 + 48) + 8) + 24)) / 60.0)];
    [*(a1 + 32) addSequencePoint:v5 section:*(*(*(a1 + 56) + 8) + 24)];
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  return 1;
}

@end