@interface HKDiagnosticTestResult(HealthUI)
- (id)displayItems;
- (id)localizedStatusDisplayString;
- (id)valueItem;
@end

@implementation HKDiagnosticTestResult(HealthUI)

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

  valueItem = [self valueItem];
  [v2 hk_addNonNilObject:valueItem];

  statusItem = [self statusItem];
  [v2 hk_addNonNilObject:statusItem];

  v6 = [v2 copy];

  return v6;
}

- (id)valueItem
{
  value = [self value];
  inspectableValue = [value inspectableValue];
  stringValue = [inspectableValue stringValue];
  v5 = stringValue;
  if (stringValue)
  {
    localizedPreferredName = stringValue;
  }

  else
  {
    value2 = [self value];
    inspectableValue2 = [value2 inspectableValue];
    ontologyConcept = [inspectableValue2 ontologyConcept];
    localizedPreferredName = [ontologyConcept localizedPreferredName];
  }

  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"DETAIL_VIEW_RECORDS_VALUE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v12 = [HKVerifiableClinicalRecordDisplayItem subtitleItemWithTitleText:v11 detailText:localizedPreferredName style:1];

  return v12;
}

@end