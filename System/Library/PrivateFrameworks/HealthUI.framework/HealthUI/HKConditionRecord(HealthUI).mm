@interface HKConditionRecord(HealthUI)
- (id)abatementItem;
- (id)asserterItem;
- (id)categoryItem;
- (id)displayItems;
- (id)verificationStatusItem;
@end

@implementation HKConditionRecord(HealthUI)

- (id)displayItems
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  recordItem = [self recordItem];
  [v2 hk_addNonNilObject:recordItem];

  verificationStatusItem = [self verificationStatusItem];
  [v2 hk_addNonNilObject:verificationStatusItem];

  categoryItem = [self categoryItem];
  [v2 hk_addNonNilObject:categoryItem];

  abatementItem = [self abatementItem];
  [v2 hk_addNonNilObject:abatementItem];

  asserterItem = [self asserterItem];
  [v2 hk_addNonNilObject:asserterItem];

  v8 = [v2 copy];

  return v8;
}

- (id)verificationStatusItem
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"DETAIL_VIEW_RECORDS_VERIFICATION_STATUS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  verificationStatus = [self verificationStatus];
  localizedPreferredName = [verificationStatus localizedPreferredName];
  v6 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v3 detailText:localizedPreferredName style:1];

  return v6;
}

- (id)categoryItem
{
  categories = [self categories];
  v2 = [categories hk_map:&__block_literal_global_341];

  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_RECORDS_CATEGORY_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [v2 componentsJoinedByString:@"\n"];
  v6 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v4 detailText:v5 style:1];

  return v6;
}

- (id)abatementItem
{
  abatement = [self abatement];

  if (abatement && ([self abatement], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "valueType"), v3, v4 != 3))
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"DETAIL_VIEW_RECORDS_ABATEMENT_TITLE_ALLEVIATED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

    sortDateTitle = [self sortDateTitle];
    v9 = [v7 isEqualToString:sortDateTitle];

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      abatement2 = [self abatement];
      displayString = [abatement2 displayString];
      v5 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v7 detailText:displayString style:1];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)asserterItem
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"DETAIL_VIEW_RECORDS_ASSERTER_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  asserter = [self asserter];
  v5 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v3 detailText:asserter style:1];

  return v5;
}

@end