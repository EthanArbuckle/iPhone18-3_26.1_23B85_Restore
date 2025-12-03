@interface HKVaccinationRecord(HealthUI)
- (id)displayItems;
- (id)localizedStatusDisplayString;
- (id)lotNumberItem;
- (id)performerItem;
@end

@implementation HKVaccinationRecord(HealthUI)

- (id)localizedStatusDisplayString
{
  status = [self status];
  localizedPreferredName = [status localizedPreferredName];

  return localizedPreferredName;
}

- (id)displayItems
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  recordItem = [self recordItem];
  [v2 hk_addNonNilObject:recordItem];

  performerItem = [self performerItem];
  [v2 hk_addNonNilObject:performerItem];

  lotNumberItem = [self lotNumberItem];
  [v2 hk_addNonNilObject:lotNumberItem];

  v6 = [v2 copy];

  return v6;
}

- (id)performerItem
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"DETAIL_VIEW_RECORDS_PERFORMER_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  performer = [self performer];
  v5 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v3 detailText:performer style:1];

  return v5;
}

- (id)lotNumberItem
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"DETAIL_VIEW_RECORDS_LOT_NUMBER_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  lotNumber = [self lotNumber];
  v5 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v3 detailText:lotNumber style:1];

  return v5;
}

@end