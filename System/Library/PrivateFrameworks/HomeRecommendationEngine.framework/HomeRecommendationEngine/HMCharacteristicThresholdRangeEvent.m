@interface HMCharacteristicThresholdRangeEvent
@end

@implementation HMCharacteristicThresholdRangeEvent

uint64_t __73__HMCharacteristicThresholdRangeEvent_HREAdditions__hre_triggeringValues__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) thresholdRange];
  v5 = [v4 minValue];
  if (v5)
  {
    [v3 doubleValue];
    v7 = v6;
    v8 = [*(a1 + 32) thresholdRange];
    v9 = [v8 minValue];
    [v9 doubleValue];
    v11 = v7 > v10;
  }

  else
  {
    v11 = 1;
  }

  v12 = [*(a1 + 32) thresholdRange];
  v13 = [v12 maxValue];
  if (v13)
  {
    [v3 doubleValue];
    v15 = v14;
    v16 = [*(a1 + 32) thresholdRange];
    v17 = [v16 maxValue];
    [v17 doubleValue];
    v19 = v15 < v18;
  }

  else
  {
    v19 = 1;
  }

  return v11 & v19;
}

@end