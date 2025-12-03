@interface HKAllergyRecord(Localization)
- (id)sortDateTitle;
@end

@implementation HKAllergyRecord(Localization)

- (id)sortDateTitle
{
  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  v4 = [keyPath isEqualToString:*MEMORY[0x1E696B9B0]];

  if (v4)
  {
    v5 = @"ALLERGY_RECORD_SORT_DATE_TITLE_MODIFIED_DATE";
LABEL_9:
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];

    goto LABEL_10;
  }

  sortDate2 = [self sortDate];
  keyPath2 = [sortDate2 keyPath];
  v8 = [keyPath2 isEqualToString:*MEMORY[0x1E696B4A0]];

  if (v8)
  {
    v5 = @"ALLERGY_RECORD_SORT_DATE_TITLE_LAST_OCCURRENCE_DATE";
    goto LABEL_9;
  }

  sortDate3 = [self sortDate];
  keyPath3 = [sortDate3 keyPath];
  v11 = [keyPath3 isEqualToString:*MEMORY[0x1E696B4A8]];

  if (v11)
  {
    v5 = @"ALLERGY_RECORD_SORT_DATE_TITLE_ONSET_DATE";
    goto LABEL_9;
  }

  sortDate4 = [self sortDate];
  keyPath4 = [sortDate4 keyPath];
  v14 = [keyPath4 isEqualToString:*MEMORY[0x1E696B4B0]];

  if (v14)
  {
    v5 = @"ALLERGY_RECORD_SORT_DATE_TITLE_RECORDED_DATE";
    goto LABEL_9;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

@end