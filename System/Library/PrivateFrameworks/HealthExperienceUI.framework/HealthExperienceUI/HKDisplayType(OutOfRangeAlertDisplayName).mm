@interface HKDisplayType(OutOfRangeAlertDisplayName)
- (id)wd_outOfRangeAlertDisplayName;
@end

@implementation HKDisplayType(OutOfRangeAlertDisplayName)

- (id)wd_outOfRangeAlertDisplayName
{
  if ([self displayTypeIdentifier] == 99)
  {
    v2 = MEMORY[0x1E696AEC0];
    localization = [self localization];
    displayNameKey = [localization displayNameKey];
    v5 = [v2 stringWithFormat:@"OUT_OF_RANGE_ALERT_%@", displayNameKey];

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