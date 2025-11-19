@interface HKEmergencyCardBirthdateTableItem
- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4;
- (id)_cachedCalendar;
- (id)_createEditableCell;
- (id)initInEditMode:(BOOL)a3;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
- (id)title;
- (int64_t)commitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4;
- (int64_t)editingStyleForRowAtIndex:(int64_t)a3;
- (void)didCommitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4;
- (void)medicalIDEditorCellDidChangeValue:(id)a3;
@end

@implementation HKEmergencyCardBirthdateTableItem

- (id)initInEditMode:(BOOL)a3
{
  v3 = a3;
  if (!a3)
  {
    [(HKEmergencyCardBirthdateTableItem *)a2 initInEditMode:?];
  }

  v6.receiver = self;
  v6.super_class = HKEmergencyCardBirthdateTableItem;
  return [(HKEmergencyCardTableItem *)&v6 initInEditMode:v3];
}

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"birthdate" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_createEditableCell
{
  v3 = [(HKMedicalIDEditorCell *)[HKMedicalIDEditorDateCell alloc] initWithStyle:0 reuseIdentifier:@"kBirthdateTableItemCellIdentifier"];
  v4 = [(HKEmergencyCardBirthdateTableItem *)self title];
  [(HKMedicalIDEditorCell *)v3 setLabel:v4];

  [(HKMedicalIDEditorCell *)v3 setMinimumLabelWidth:47.0];
  [(HKMedicalIDEditorCell *)v3 setEditDelegate:self];

  return v3;
}

- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4
{
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    return *MEMORY[0x1E69DE3D0];
  }

  else
  {
    return 52.0 + 24.0 - 6.0;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  v5 = a3;
  v6 = [(HKEmergencyCardTableItem *)self data];
  v7 = [v6 gregorianBirthday];

  if (v7)
  {
    v8 = [v5 dequeueReusableCellWithIdentifier:@"kBirthdateTableItemCellIdentifier"];
    if (!v8)
    {
      v8 = [(HKEmergencyCardBirthdateTableItem *)self _createEditableCell];
    }

    v9 = [(HKEmergencyCardBirthdateTableItem *)self _cachedCalendar];
    v10 = [(HKEmergencyCardTableItem *)self data];
    v11 = [v10 gregorianBirthday];
    v12 = [v9 dateFromComponents:v11];
    [v8 setDateValue:v12];

    v13 = v8;
    editableCell = self->_editableCell;
    self->_editableCell = v13;
  }

  else
  {
    editableCell = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [editableCell localizedStringForKey:@"add_birthdate" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v13 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:v5 withTitle:v15];
  }

  return v13;
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)a3
{
  v3 = [(HKEmergencyCardTableItem *)self data];
  v4 = [v3 gregorianBirthday];

  if (v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)commitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4
{
  if (a3 == 1)
  {
    v5 = [(HKEmergencyCardTableItem *)self data:1];
    [v5 setGregorianBirthday:0];
  }

  else
  {
    v5 = HKUIDefaultGregorianBirthday();
    v6 = [(HKEmergencyCardTableItem *)self data];
    [v6 setGregorianBirthday:v5];
  }

  return 2;
}

- (void)didCommitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4
{
  if (a3 == 2)
  {
    [(HKMedicalIDEditorDateCell *)self->_editableCell beginEditing:2];
  }
}

- (void)medicalIDEditorCellDidChangeValue:(id)a3
{
  v8 = [(HKMedicalIDEditorDateCell *)self->_editableCell dateValue];
  if (v8)
  {
    v3 = [(HKEmergencyCardBirthdateTableItem *)self _cachedCalendar];
    v5 = [v3 hk_dateOfBirthDateComponentsWithDate:v8];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HKEmergencyCardTableItem *)self data];
  [v6 setGregorianBirthday:v5];

  v7 = v8;
  if (v8)
  {

    v7 = v8;
  }
}

- (id)_cachedCalendar
{
  gregorianCalendar = self->_gregorianCalendar;
  if (!gregorianCalendar)
  {
    v4 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    v5 = self->_gregorianCalendar;
    self->_gregorianCalendar = v4;

    gregorianCalendar = self->_gregorianCalendar;
  }

  return gregorianCalendar;
}

- (void)initInEditMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKEmergencyCardBirthdateTableItem.m" lineNumber:28 description:@"HKEmergencyCardBirthdateTableItem only supports edit mode"];
}

@end