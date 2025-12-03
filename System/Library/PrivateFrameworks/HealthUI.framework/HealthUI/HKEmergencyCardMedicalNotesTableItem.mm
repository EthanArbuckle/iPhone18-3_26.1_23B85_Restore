@interface HKEmergencyCardMedicalNotesTableItem
- (BOOL)hasPresentableData;
- (id)_multilineStringValue;
- (id)_placeholderText;
- (id)title;
- (void)_updateMultilineStringValueWithValue:(id)value;
@end

@implementation HKEmergencyCardMedicalNotesTableItem

- (BOOL)hasPresentableData
{
  data = [(HKEmergencyCardTableItem *)self data];
  medicalNotes = [data medicalNotes];
  v4 = medicalNotes != 0;

  return v4;
}

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"medical_notes" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_placeholderText
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"medical_note_none_listed" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_multilineStringValue
{
  data = [(HKEmergencyCardTableItem *)self data];
  medicalNotes = [data medicalNotes];

  return medicalNotes;
}

- (void)_updateMultilineStringValueWithValue:(id)value
{
  valueCopy = value;
  data = [(HKEmergencyCardTableItem *)self data];
  [data setMedicalNotes:valueCopy];
}

@end