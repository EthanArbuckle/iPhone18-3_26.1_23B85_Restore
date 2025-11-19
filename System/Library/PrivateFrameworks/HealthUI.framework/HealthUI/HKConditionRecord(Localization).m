@interface HKConditionRecord(Localization)
- (id)sortDateTitle;
@end

@implementation HKConditionRecord(Localization)

- (id)sortDateTitle
{
  v2 = [a1 sortDate];
  v3 = [v2 keyPath];
  v4 = [v3 isEqualToString:*MEMORY[0x1E696B9B0]];

  if (v4)
  {
    v5 = @"CONDITION_RECORD_SORT_DATE_TITLE_MODIFIED_DATE";
LABEL_7:
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];

    goto LABEL_8;
  }

  v6 = [a1 sortDate];
  v7 = [v6 keyPath];
  v8 = [v7 isEqualToString:*MEMORY[0x1E696B720]];

  if (v8)
  {
    v5 = @"CONDITION_RECORD_SORT_DATE_TITLE_ONSET";
    goto LABEL_7;
  }

  v9 = [a1 sortDate];
  v10 = [v9 keyPath];
  v11 = [v10 isEqualToString:*MEMORY[0x1E696B728]];

  if (v11)
  {
    v5 = @"CONDITION_RECORD_SORT_DATE_TITLE_RECORDED_DATE";
    goto LABEL_7;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

@end