@interface HKCoverageRecord(Localization)
- (id)sortDateTitle;
@end

@implementation HKCoverageRecord(Localization)

- (id)sortDateTitle
{
  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  v4 = [keyPath isEqualToString:*MEMORY[0x1E696B9B0]];

  if (v4)
  {
    v5 = @"COVERAGE_RECORD_SORT_DATE_TITLE_MODIFIED_DATE";
LABEL_7:
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];

    goto LABEL_8;
  }

  sortDate2 = [self sortDate];
  keyPath2 = [sortDate2 keyPath];
  v8 = [keyPath2 isEqualToString:*MEMORY[0x1E696B750]];

  if (v8)
  {
    v5 = @"COVERAGE_RECORD_SORT_DATE_TITLE_PERIOD_START_DATE";
    goto LABEL_7;
  }

  sortDate3 = [self sortDate];
  keyPath3 = [sortDate3 keyPath];
  v11 = [keyPath3 isEqualToString:*MEMORY[0x1E696B748]];

  if (v11)
  {
    v5 = @"COVERAGE_RECORD_SORT_DATE_TITLE_PERIOD_END_DATE";
    goto LABEL_7;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

@end