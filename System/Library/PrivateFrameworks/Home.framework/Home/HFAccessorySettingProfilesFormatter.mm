@interface HFAccessorySettingProfilesFormatter
- (id)stringForObjectValue:(id)value;
@end

@implementation HFAccessorySettingProfilesFormatter

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v4 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v6, "count")];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end