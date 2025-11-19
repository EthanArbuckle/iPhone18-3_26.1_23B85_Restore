@interface HKMedicalRecord(HealthUI)
- (id)displayItems;
- (id)displayName;
- (id)recordItem;
- (id)statusItem;
- (uint64_t)isDateLess;
@end

@implementation HKMedicalRecord(HealthUI)

- (id)displayName
{
  v2 = [a1 primaryConcept];
  v3 = [v2 localizedPreferredName];

  if ([v3 length])
  {
    goto LABEL_2;
  }

  v5 = [a1 medicalRecordCodings];
  v6 = [v5 hk_firstObjectPassingTest:&__block_literal_global_34];
  v7 = [v6 displayString];

  if ([v7 length])
  {
    v4 = v7;
    goto LABEL_5;
  }

  v10 = [a1 medicalRecordCodings];
  v11 = [v10 hk_firstObjectPassingTest:&__block_literal_global_294_0];
  v3 = [v11 displayString];

  if ([v3 length])
  {
LABEL_2:
    v4 = v3;
LABEL_5:
    v8 = v4;
    v3 = v4;
    goto LABEL_6;
  }

  v8 = [a1 fallbackDisplayString];
LABEL_6:

  return v8;
}

- (uint64_t)isDateLess
{
  v1 = [a1 sortDate];
  v2 = [v1 keyPath];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696B9B0]];

  return v3;
}

- (id)displayItems
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 recordItem];
  [v2 hk_addNonNilObject:v3];

  v4 = [v2 copy];

  return v4;
}

- (id)recordItem
{
  v2 = [a1 sortDate];
  v3 = [v2 date];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v3 hk_utcDateAdjustedToCalendar:v4];

  v6 = [a1 sortDateTitle];
  v7 = HKLocalizedStringForDateAndTemplate(v5, 10);
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"DETAIL_VIEW_RECORDS_DATE_STRING_FORMAT_%1$@_%2$@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

  if ([v6 length])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, v6, v7];
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  if ([a1 isDateLess])
  {
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"DETAIL_VIEW_RECORDS_NO_DATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  }

  else
  {
    v13 = v11;
  }

  v14 = [a1 displayName];
  v15 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v14 detailText:v13 style:0];

  return v15;
}

- (id)statusItem
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"DETAIL_VIEW_RECORDS_STATUS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v4 = [a1 localizedStatusDisplayString];
  v5 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v3 detailText:v4 style:1];

  return v5;
}

@end