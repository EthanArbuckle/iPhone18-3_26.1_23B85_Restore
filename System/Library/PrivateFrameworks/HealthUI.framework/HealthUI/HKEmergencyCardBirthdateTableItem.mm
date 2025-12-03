@interface HKEmergencyCardBirthdateTableItem
- (double)tableView:(id)view heightForRowAtIndex:(int64_t)index;
- (id)_cachedCalendar;
- (id)_createEditableCell;
- (id)initInEditMode:(BOOL)mode;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
- (id)title;
- (int64_t)commitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index;
- (int64_t)editingStyleForRowAtIndex:(int64_t)index;
- (void)didCommitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index;
- (void)medicalIDEditorCellDidChangeValue:(id)value;
@end

@implementation HKEmergencyCardBirthdateTableItem

- (id)initInEditMode:(BOOL)mode
{
  modeCopy = mode;
  if (!mode)
  {
    [(HKEmergencyCardBirthdateTableItem *)a2 initInEditMode:?];
  }

  v6.receiver = self;
  v6.super_class = HKEmergencyCardBirthdateTableItem;
  return [(HKEmergencyCardTableItem *)&v6 initInEditMode:modeCopy];
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
  title = [(HKEmergencyCardBirthdateTableItem *)self title];
  [(HKMedicalIDEditorCell *)v3 setLabel:title];

  [(HKMedicalIDEditorCell *)v3 setMinimumLabelWidth:47.0];
  [(HKMedicalIDEditorCell *)v3 setEditDelegate:self];

  return v3;
}

- (double)tableView:(id)view heightForRowAtIndex:(int64_t)index
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

- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  data = [(HKEmergencyCardTableItem *)self data];
  gregorianBirthday = [data gregorianBirthday];

  if (gregorianBirthday)
  {
    _createEditableCell = [viewCopy dequeueReusableCellWithIdentifier:@"kBirthdateTableItemCellIdentifier"];
    if (!_createEditableCell)
    {
      _createEditableCell = [(HKEmergencyCardBirthdateTableItem *)self _createEditableCell];
    }

    _cachedCalendar = [(HKEmergencyCardBirthdateTableItem *)self _cachedCalendar];
    data2 = [(HKEmergencyCardTableItem *)self data];
    gregorianBirthday2 = [data2 gregorianBirthday];
    v12 = [_cachedCalendar dateFromComponents:gregorianBirthday2];
    [_createEditableCell setDateValue:v12];

    v13 = _createEditableCell;
    editableCell = self->_editableCell;
    self->_editableCell = v13;
  }

  else
  {
    editableCell = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [editableCell localizedStringForKey:@"add_birthdate" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v13 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:viewCopy withTitle:v15];
  }

  return v13;
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)index
{
  data = [(HKEmergencyCardTableItem *)self data];
  gregorianBirthday = [data gregorianBirthday];

  if (gregorianBirthday)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)commitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index
{
  if (style == 1)
  {
    v5 = [(HKEmergencyCardTableItem *)self data:1];
    [v5 setGregorianBirthday:0];
  }

  else
  {
    v5 = HKUIDefaultGregorianBirthday();
    data = [(HKEmergencyCardTableItem *)self data];
    [data setGregorianBirthday:v5];
  }

  return 2;
}

- (void)didCommitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index
{
  if (style == 2)
  {
    [(HKMedicalIDEditorDateCell *)self->_editableCell beginEditing:2];
  }
}

- (void)medicalIDEditorCellDidChangeValue:(id)value
{
  dateValue = [(HKMedicalIDEditorDateCell *)self->_editableCell dateValue];
  if (dateValue)
  {
    _cachedCalendar = [(HKEmergencyCardBirthdateTableItem *)self _cachedCalendar];
    v5 = [_cachedCalendar hk_dateOfBirthDateComponentsWithDate:dateValue];
  }

  else
  {
    v5 = 0;
  }

  data = [(HKEmergencyCardTableItem *)self data];
  [data setGregorianBirthday:v5];

  v7 = dateValue;
  if (dateValue)
  {

    v7 = dateValue;
  }
}

- (id)_cachedCalendar
{
  gregorianCalendar = self->_gregorianCalendar;
  if (!gregorianCalendar)
  {
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    v5 = self->_gregorianCalendar;
    self->_gregorianCalendar = hk_gregorianCalendar;

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