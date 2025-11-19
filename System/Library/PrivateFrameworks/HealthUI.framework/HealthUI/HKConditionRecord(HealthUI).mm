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
  v3 = [a1 recordItem];
  [v2 hk_addNonNilObject:v3];

  v4 = [a1 verificationStatusItem];
  [v2 hk_addNonNilObject:v4];

  v5 = [a1 categoryItem];
  [v2 hk_addNonNilObject:v5];

  v6 = [a1 abatementItem];
  [v2 hk_addNonNilObject:v6];

  v7 = [a1 asserterItem];
  [v2 hk_addNonNilObject:v7];

  v8 = [v2 copy];

  return v8;
}

- (id)verificationStatusItem
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"DETAIL_VIEW_RECORDS_VERIFICATION_STATUS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v4 = [a1 verificationStatus];
  v5 = [v4 localizedPreferredName];
  v6 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v3 detailText:v5 style:1];

  return v6;
}

- (id)categoryItem
{
  v1 = [a1 categories];
  v2 = [v1 hk_map:&__block_literal_global_341];

  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_RECORDS_CATEGORY_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [v2 componentsJoinedByString:@"\n"];
  v6 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v4 detailText:v5 style:1];

  return v6;
}

- (id)abatementItem
{
  v2 = [a1 abatement];

  if (v2 && ([a1 abatement], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "valueType"), v3, v4 != 3))
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"DETAIL_VIEW_RECORDS_ABATEMENT_TITLE_ALLEVIATED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

    v8 = [a1 sortDateTitle];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v10 = [a1 abatement];
      v11 = [v10 displayString];
      v5 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v7 detailText:v11 style:1];
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
  v4 = [a1 asserter];
  v5 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v3 detailText:v4 style:1];

  return v5;
}

@end