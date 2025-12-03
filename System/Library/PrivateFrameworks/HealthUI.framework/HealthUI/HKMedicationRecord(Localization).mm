@interface HKMedicationRecord(Localization)
- (id)sortDateTitle;
@end

@implementation HKMedicationRecord(Localization)

- (id)sortDateTitle
{
  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  v4 = [keyPath isEqualToString:*MEMORY[0x1E696B9B0]];

  if (v4)
  {
    v5 = @"MEDICATION_RECORD_SORT_DATE_TITLE_MODIFIED_DATE";
LABEL_11:
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];

    goto LABEL_12;
  }

  sortDate2 = [self sortDate];
  keyPath2 = [sortDate2 keyPath];
  v8 = [keyPath2 isEqualToString:*MEMORY[0x1E696B9E8]];

  if (v8)
  {
    v5 = @"MEDICATION_RECORD_SORT_DATE_TITLE_ASSERTION_DATE";
    goto LABEL_11;
  }

  sortDate3 = [self sortDate];
  keyPath3 = [sortDate3 keyPath];
  v11 = [keyPath3 isEqualToString:*MEMORY[0x1E696B9F8]];

  if (v11)
  {
    v5 = @"MEDICATION_RECORD_SORT_DATE_TITLE_EFFECTIVE_END_DATE";
    goto LABEL_11;
  }

  sortDate4 = [self sortDate];
  keyPath4 = [sortDate4 keyPath];
  v14 = [keyPath4 isEqualToString:*MEMORY[0x1E696BA00]];

  if (v14)
  {
    v5 = @"MEDICATION_RECORD_SORT_DATE_TITLE_EFFECTIVE_START_DATE";
    goto LABEL_11;
  }

  sortDate5 = [self sortDate];
  keyPath5 = [sortDate5 keyPath];
  v17 = [keyPath5 isEqualToString:*MEMORY[0x1E696B9F0]];

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