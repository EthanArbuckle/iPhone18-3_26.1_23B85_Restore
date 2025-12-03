@interface HKSignedClinicalDataRecord(Localization)
- (id)sortDateTitle;
@end

@implementation HKSignedClinicalDataRecord(Localization)

- (id)sortDateTitle
{
  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  v3 = [keyPath isEqualToString:*MEMORY[0x1E696BE48]];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"SIGNED_CLINICAL_DATA_RECORD_SORT_DATE_TITLE_ISSUED_DATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end