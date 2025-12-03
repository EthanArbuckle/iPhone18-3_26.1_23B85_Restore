@interface HMCharacteristicThresholdRangeEvent(HFAdditions)
- (uint64_t)hf_wouldFireForValue:()HFAdditions;
@end

@implementation HMCharacteristicThresholdRangeEvent(HFAdditions)

- (uint64_t)hf_wouldFireForValue:()HFAdditions
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  characteristic = [self characteristic];
  metadata = [characteristic metadata];

  v7 = [metadata hf_valueRoundedToNearestStepValue:v4];

  thresholdRange = [self thresholdRange];
  minValue = [thresholdRange minValue];

  if (minValue)
  {
    thresholdRange2 = [self thresholdRange];
    minValue2 = [thresholdRange2 minValue];
    v12 = [metadata hf_valueRoundedToNearestStepValue:minValue2];

    [v7 doubleValue];
    v14 = v13;
    [v12 doubleValue];
    v16 = v15 + -0.00000011920929;

    if (v14 < v16)
    {
      goto LABEL_8;
    }
  }

  thresholdRange3 = [self thresholdRange];
  maxValue = [thresholdRange3 maxValue];

  if (!maxValue)
  {
    goto LABEL_6;
  }

  thresholdRange4 = [self thresholdRange];
  maxValue2 = [thresholdRange4 maxValue];
  v21 = [metadata hf_valueRoundedToNearestStepValue:maxValue2];

  [v7 doubleValue];
  v23 = v22;
  [v21 doubleValue];
  v25 = v24 + 0.00000011920929;

  if (v23 > v25)
  {
LABEL_8:
    v26 = 0;
  }

  else
  {
LABEL_6:
    v26 = 1;
  }

  return v26;
}

@end