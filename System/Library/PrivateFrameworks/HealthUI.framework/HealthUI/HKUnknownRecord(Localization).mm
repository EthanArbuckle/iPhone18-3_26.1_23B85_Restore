@interface HKUnknownRecord(Localization)
- (id)sortDateTitle;
@end

@implementation HKUnknownRecord(Localization)

- (id)sortDateTitle
{
  v1 = [a1 sortDate];
  v2 = [v1 keyPath];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696B9B0]];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"UNKNOWN_RECORD_SORT_DATE_TITLE_MODIFIED_DATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end