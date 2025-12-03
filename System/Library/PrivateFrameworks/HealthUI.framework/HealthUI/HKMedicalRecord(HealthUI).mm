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
  primaryConcept = [self primaryConcept];
  localizedPreferredName = [primaryConcept localizedPreferredName];

  if ([localizedPreferredName length])
  {
    goto LABEL_2;
  }

  medicalRecordCodings = [self medicalRecordCodings];
  v6 = [medicalRecordCodings hk_firstObjectPassingTest:&__block_literal_global_34];
  displayString = [v6 displayString];

  if ([displayString length])
  {
    v4 = displayString;
    goto LABEL_5;
  }

  medicalRecordCodings2 = [self medicalRecordCodings];
  v11 = [medicalRecordCodings2 hk_firstObjectPassingTest:&__block_literal_global_294_0];
  localizedPreferredName = [v11 displayString];

  if ([localizedPreferredName length])
  {
LABEL_2:
    v4 = localizedPreferredName;
LABEL_5:
    fallbackDisplayString = v4;
    localizedPreferredName = v4;
    goto LABEL_6;
  }

  fallbackDisplayString = [self fallbackDisplayString];
LABEL_6:

  return fallbackDisplayString;
}

- (uint64_t)isDateLess
{
  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  v3 = [keyPath isEqualToString:*MEMORY[0x1E696B9B0]];

  return v3;
}

- (id)displayItems
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  recordItem = [self recordItem];
  [v2 hk_addNonNilObject:recordItem];

  v4 = [v2 copy];

  return v4;
}

- (id)recordItem
{
  sortDate = [self sortDate];
  date = [sortDate date];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [date hk_utcDateAdjustedToCalendar:currentCalendar];

  sortDateTitle = [self sortDateTitle];
  v7 = HKLocalizedStringForDateAndTemplate(v5, 10);
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"DETAIL_VIEW_RECORDS_DATE_STRING_FORMAT_%1$@_%2$@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

  if ([sortDateTitle length])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, sortDateTitle, v7];
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  if ([self isDateLess])
  {
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"DETAIL_VIEW_RECORDS_NO_DATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  }

  else
  {
    v13 = v11;
  }

  displayName = [self displayName];
  v15 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:displayName detailText:v13 style:0];

  return v15;
}

- (id)statusItem
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"DETAIL_VIEW_RECORDS_STATUS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  localizedStatusDisplayString = [self localizedStatusDisplayString];
  v5 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v3 detailText:localizedStatusDisplayString style:1];

  return v5;
}

@end