@interface HKDisplayType(OutOfRangeAlertDisplayName)
- (id)wd_outOfRangeAlertDisplayName;
@end

@implementation HKDisplayType(OutOfRangeAlertDisplayName)

- (id)wd_outOfRangeAlertDisplayName
{
  if ([a1 displayTypeIdentifier] == 99)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [a1 localization];
    v4 = [v3 displayNameKey];
    v5 = [v2 stringWithFormat:@"OUT_OF_RANGE_ALERT_%@", v4];

    v6 = HABundle();
    v7 = [v6 localizedStringForKey:v5 value:&stru_1F3823B88 table:@"AddDataLocalization"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end