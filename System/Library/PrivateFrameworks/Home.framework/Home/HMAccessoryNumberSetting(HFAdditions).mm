@interface HMAccessoryNumberSetting(HFAdditions)
- (uint64_t)hf_isBooleanSetting;
@end

@implementation HMAccessoryNumberSetting(HFAdditions)

- (uint64_t)hf_isBooleanSetting
{
  v2 = [a1 maximumValue];
  if ([v2 isEqual:&unk_282524F78])
  {
    v3 = [a1 minimumValue];
    if ([v3 isEqual:&unk_282524F90])
    {
      v4 = [a1 stepValue];
      v5 = [v4 isEqual:&unk_282524F78];
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