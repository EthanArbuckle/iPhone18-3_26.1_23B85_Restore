@interface HMAccessoryNumberSetting(HFAdditions)
- (uint64_t)hf_isBooleanSetting;
@end

@implementation HMAccessoryNumberSetting(HFAdditions)

- (uint64_t)hf_isBooleanSetting
{
  maximumValue = [self maximumValue];
  if ([maximumValue isEqual:&unk_282524F78])
  {
    minimumValue = [self minimumValue];
    if ([minimumValue isEqual:&unk_282524F90])
    {
      stepValue = [self stepValue];
      v5 = [stepValue isEqual:&unk_282524F78];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end