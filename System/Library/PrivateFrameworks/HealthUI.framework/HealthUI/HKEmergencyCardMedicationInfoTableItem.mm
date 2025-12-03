@interface HKEmergencyCardMedicationInfoTableItem
- (BOOL)hasPresentableData;
- (id)_multilineStringValue;
- (id)_placeholderText;
- (id)title;
- (void)_configureEditableCell:(id)cell;
- (void)_updateMultilineStringValueWithValue:(id)value;
@end

@implementation HKEmergencyCardMedicationInfoTableItem

- (BOOL)hasPresentableData
{
  data = [(HKEmergencyCardTableItem *)self data];
  medicationInfo = [data medicationInfo];
  v4 = medicationInfo != 0;

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
  data = [(HKEmergencyCardTableItem *)self data];
  medicationInfo = [data medicationInfo];

  return medicationInfo;
}

- (void)_updateMultilineStringValueWithValue:(id)value
{
  valueCopy = value;
  data = [(HKEmergencyCardTableItem *)self data];
  [data setMedicationInfo:valueCopy];
}

- (void)_configureEditableCell:(id)cell
{
  textView = [cell textView];
  [textView setAutocorrectionType:1];
}

@end