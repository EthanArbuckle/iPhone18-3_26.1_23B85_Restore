@interface HKEmergencyCardMedicationInfoTableItem
- (BOOL)hasPresentableData;
- (id)_multilineStringValue;
- (id)_placeholderText;
- (id)title;
- (void)_configureEditableCell:(id)a3;
- (void)_updateMultilineStringValueWithValue:(id)a3;
@end

@implementation HKEmergencyCardMedicationInfoTableItem

- (BOOL)hasPresentableData
{
  v2 = [(HKEmergencyCardTableItem *)self data];
  v3 = [v2 medicationInfo];
  v4 = v3 != 0;

  return v4;
}

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"medications" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_placeholderText
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"medications_none_listed" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_multilineStringValue
{
  v2 = [(HKEmergencyCardTableItem *)self data];
  v3 = [v2 medicationInfo];

  return v3;
}

- (void)_updateMultilineStringValueWithValue:(id)a3
{
  v4 = a3;
  v5 = [(HKEmergencyCardTableItem *)self data];
  [v5 setMedicationInfo:v4];
}

- (void)_configureEditableCell:(id)a3
{
  v3 = [a3 textView];
  [v3 setAutocorrectionType:1];
}

@end