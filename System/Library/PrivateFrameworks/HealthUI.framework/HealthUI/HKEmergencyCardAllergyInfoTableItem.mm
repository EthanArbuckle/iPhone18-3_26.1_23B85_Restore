@interface HKEmergencyCardAllergyInfoTableItem
- (BOOL)hasPresentableData;
- (id)_multilineStringValue;
- (id)_placeholderText;
- (id)title;
- (void)_updateMultilineStringValueWithValue:(id)value;
@end

@implementation HKEmergencyCardAllergyInfoTableItem

- (BOOL)hasPresentableData
{
  data = [(HKEmergencyCardTableItem *)self data];
  allergyInfo = [data allergyInfo];
  v4 = allergyInfo != 0;

  return v4;
}

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"allergies_and_reactions" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_placeholderText
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"allergies_and_reactions_none_listed" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_multilineStringValue
{
  data = [(HKEmergencyCardTableItem *)self data];
  allergyInfo = [data allergyInfo];

  return allergyInfo;
}

- (void)_updateMultilineStringValueWithValue:(id)value
{
  valueCopy = value;
  data = [(HKEmergencyCardTableItem *)self data];
  [data setAllergyInfo:valueCopy];
}

@end