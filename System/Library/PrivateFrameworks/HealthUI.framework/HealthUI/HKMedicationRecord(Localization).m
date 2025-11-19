@interface HKMedicationRecord(Localization)
- (id)sortDateTitle;
@end

@implementation HKMedicationRecord(Localization)

- (id)sortDateTitle
{
  v2 = [a1 sortDate];
  v3 = [v2 keyPath];
  v4 = [v3 isEqualToString:*MEMORY[0x1E696B9B0]];

  if (v4)
  {
    v5 = @"MEDICATION_RECORD_SORT_DATE_TITLE_MODIFIED_DATE";
LABEL_11:
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];

    goto LABEL_12;
  }

  v6 = [a1 sortDate];
  v7 = [v6 keyPath];
  v8 = [v7 isEqualToString:*MEMORY[0x1E696B9E8]];

  if (v8)
  {
    v5 = @"MEDICATION_RECORD_SORT_DATE_TITLE_ASSERTION_DATE";
    goto LABEL_11;
  }

  v9 = [a1 sortDate];
  v10 = [v9 keyPath];
  v11 = [v10 isEqualToString:*MEMORY[0x1E696B9F8]];

  if (v11)
  {
    v5 = @"MEDICATION_RECORD_SORT_DATE_TITLE_EFFECTIVE_END_DATE";
    goto LABEL_11;
  }

  v12 = [a1 sortDate];
  v13 = [v12 keyPath];
  v14 = [v13 isEqualToString:*MEMORY[0x1E696BA00]];

  if (v14)
  {
    v5 = @"MEDICATION_RECORD_SORT_DATE_TITLE_EFFECTIVE_START_DATE";
    goto LABEL_11;
  }

  v15 = [a1 sortDate];
  v16 = [v15 keyPath];
  v17 = [v16 isEqualToString:*MEMORY[0x1E696B9F0]];

  if (v17)
  {
    v5 = @"MEDICATION_RECORD_SORT_DATE_TITLE_EARLIEST_DOSAGE_DATE";
    goto LABEL_11;
  }

  v19 = 0;
LABEL_12:

  return v19;
}

@end