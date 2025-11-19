@interface HKMedicationDispenseRecord(Localization)
- (id)sortDateTitle;
@end

@implementation HKMedicationDispenseRecord(Localization)

- (id)sortDateTitle
{
  v2 = [a1 sortDate];
  v3 = [v2 keyPath];
  v4 = [v3 isEqualToString:*MEMORY[0x1E696B9B0]];

  if (v4)
  {
    v5 = @"MEDICATION_DISPENSE_RECORD_SORT_DATE_TITLE_MODIFIED_DATE";
LABEL_9:
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];

    goto LABEL_10;
  }

  v6 = [a1 sortDate];
  v7 = [v6 keyPath];
  v8 = [v7 isEqualToString:*MEMORY[0x1E696B9C0]];

  if (v8)
  {
    v5 = @"MEDICATION_DISPENSE_RECORD_SORT_DATE_TITLE_EARLIEST_DOSAGE_DATE";
    goto LABEL_9;
  }

  v9 = [a1 sortDate];
  v10 = [v9 keyPath];
  v11 = [v10 isEqualToString:*MEMORY[0x1E696B9D0]];

  if (v11)
  {
    v5 = @"MEDICATION_DISPENSE_RECORD_SORT_DATE_TITLE_PREPARATION_DATE";
    goto LABEL_9;
  }

  v12 = [a1 sortDate];
  v13 = [v12 keyPath];
  v14 = [v13 isEqualToString:*MEMORY[0x1E696B9C8]];

  if (v14)
  {
    v5 = @"MEDICATION_DISPENSE_RECORD_SORT_DATE_TITLE_HAND_OVER_DATE";
    goto LABEL_9;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

@end