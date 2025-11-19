@interface HKVaccinationRecord(HealthUI)
- (id)displayItems;
- (id)localizedStatusDisplayString;
- (id)lotNumberItem;
- (id)performerItem;
@end

@implementation HKVaccinationRecord(HealthUI)

- (id)localizedStatusDisplayString
{
  v1 = [a1 status];
  v2 = [v1 localizedPreferredName];

  return v2;
}

- (id)displayItems
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 recordItem];
  [v2 hk_addNonNilObject:v3];

  v4 = [a1 performerItem];
  [v2 hk_addNonNilObject:v4];

  v5 = [a1 lotNumberItem];
  [v2 hk_addNonNilObject:v5];

  v6 = [v2 copy];

  return v6;
}

- (id)performerItem
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"DETAIL_VIEW_RECORDS_PERFORMER_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v4 = [a1 performer];
  v5 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v3 detailText:v4 style:1];

  return v5;
}

- (id)lotNumberItem
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"DETAIL_VIEW_RECORDS_LOT_NUMBER_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v4 = [a1 lotNumber];
  v5 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v3 detailText:v4 style:1];

  return v5;
}

@end