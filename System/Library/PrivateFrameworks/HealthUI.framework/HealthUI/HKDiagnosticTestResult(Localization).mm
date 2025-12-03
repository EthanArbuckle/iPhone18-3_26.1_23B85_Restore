@interface HKDiagnosticTestResult(Localization)
- (id)sortDateTitle;
@end

@implementation HKDiagnosticTestResult(Localization)

- (id)sortDateTitle
{
  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  v4 = [keyPath isEqualToString:*MEMORY[0x1E696B9B0]];

  if (v4)
  {
    v5 = @"DIAGNOSTIC_TEST_RESULT_SORT_DATE_TITLE_MODIFIED_DATE";
LABEL_9:
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];

    goto LABEL_10;
  }

  sortDate2 = [self sortDate];
  keyPath2 = [sortDate2 keyPath];
  v8 = [keyPath2 isEqualToString:*MEMORY[0x1E696B7B0]];

  if (v8)
  {
    v5 = @"DIAGNOSTIC_TEST_RESULT_SORT_DATE_TITLE_ISSUE_DATE";
    goto LABEL_9;
  }

  sortDate3 = [self sortDate];
  keyPath3 = [sortDate3 keyPath];
  v11 = [keyPath3 isEqualToString:*MEMORY[0x1E696B7A0]];

  if (v11)
  {
    v5 = @"DIAGNOSTIC_TEST_RESULT_SORT_DATE_TITLE_EFFECTIVE_END_DATE";
    goto LABEL_9;
  }

  sortDate4 = [self sortDate];
  keyPath4 = [sortDate4 keyPath];
  v14 = [keyPath4 isEqualToString:*MEMORY[0x1E696B7A8]];

  if (v14)
  {
    v5 = @"DIAGNOSTIC_TEST_RESULT_SORT_DATE_TITLE_EFFECTIVE_START_DATE";
    goto LABEL_9;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

@end