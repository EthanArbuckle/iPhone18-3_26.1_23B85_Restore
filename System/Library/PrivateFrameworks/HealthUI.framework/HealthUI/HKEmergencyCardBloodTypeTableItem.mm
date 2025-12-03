@interface HKEmergencyCardBloodTypeTableItem
- (BOOL)hasPresentableData;
- (BOOL)shouldHighlightRowAtIndex:(int64_t)index;
- (double)tableView:(id)view heightForRowAtIndex:(int64_t)index;
- (id)_createEditableCell;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
- (id)title;
- (int64_t)commitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index;
- (int64_t)editingStyleForRowAtIndex:(int64_t)index;
- (void)didCommitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index;
- (void)medicalIDEditorCellDidChangeValue:(id)value;
@end

@implementation HKEmergencyCardBloodTypeTableItem

- (BOOL)hasPresentableData
{
  data = [(HKEmergencyCardTableItem *)self data];
  v3 = [data bloodType] != 0;

  return v3;
}

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"blood_type" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_createEditableCell
{
  v16[9] = *MEMORY[0x1E69E9840];
  v3 = [(HKMedicalIDEditorCell *)[HKMedicalIDEditorPickerCell alloc] initWithStyle:0 reuseIdentifier:@"kBloodTypeTableItemCellIdentifier"];
  title = [(HKEmergencyCardBloodTypeTableItem *)self title];
  [(HKMedicalIDEditorCell *)v3 setLabel:title];

  [(HKMedicalIDEditorCell *)v3 setMinimumLabelWidth:87.0];
  [(HKMedicalIDEditorCell *)v3 setEditDelegate:self];
  v15 = HKStringForBloodType(0);
  v16[0] = v15;
  v5 = HKStringForBloodType(1uLL);
  v16[1] = v5;
  v6 = HKStringForBloodType(2uLL);
  v16[2] = v6;
  v7 = HKStringForBloodType(3uLL);
  v16[3] = v7;
  v8 = HKStringForBloodType(4uLL);
  v16[4] = v8;
  v9 = HKStringForBloodType(5uLL);
  v16[5] = v9;
  v10 = HKStringForBloodType(6uLL);
  v16[6] = v10;
  v11 = HKStringForBloodType(7uLL);
  v16[7] = v11;
  v12 = HKStringForBloodType(8uLL);
  v16[8] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:9];
  [(HKMedicalIDEditorPickerCell *)v3 setPossibleValues:v13];

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    if (self->_isEditing || (-[HKEmergencyCardTableItem data](self, "data"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 bloodType], v6, v7))
    {
      _createEditableCell = [viewCopy dequeueReusableCellWithIdentifier:@"kBloodTypeTableItemCellIdentifier"];
      if (!_createEditableCell)
      {
        _createEditableCell = [(HKEmergencyCardBloodTypeTableItem *)self _createEditableCell];
      }

      data = [(HKEmergencyCardTableItem *)self data];
      [_createEditableCell setChosenValueIndex:{objc_msgSend(data, "bloodType")}];

      v10 = _createEditableCell;
      editableCell = self->_editableCell;
      self->_editableCell = v10;
    }

    else
    {
      editableCell = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v18 = [editableCell localizedStringForKey:@"add_blood_type" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v10 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:viewCopy withTitle:v18];
    }
  }

  else
  {
    v12 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
    v10 = [viewCopy dequeueReusableCellWithIdentifier:v12];

    title = [(HKEmergencyCardBloodTypeTableItem *)self title];
    titleLabel = [(HKMedicalIDEditorPickerCell *)v10 titleLabel];
    [titleLabel setText:title];

    editableCell = [(HKEmergencyCardTableItem *)self data];
    v15 = HKStringForBloodType([editableCell bloodType]);
    detailLabel = [(HKMedicalIDEditorPickerCell *)v10 detailLabel];
    [detailLabel setText:v15];
  }

  return v10;
}

- (double)tableView:(id)view heightForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v10.receiver = self;
    v10.super_class = HKEmergencyCardBloodTypeTableItem;
    [(HKEmergencyCardTableItem *)&v10 tableView:viewCopy heightForRowAtIndex:index];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (BOOL)shouldHighlightRowAtIndex:(int64_t)index
{
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    [(HKMedicalIDEditorPickerCell *)self->_editableCell beginEditing];
  }

  return 0;
}

- (void)medicalIDEditorCellDidChangeValue:(id)value
{
  chosenValueIndex = [(HKMedicalIDEditorPickerCell *)self->_editableCell chosenValueIndex];
  data = [(HKEmergencyCardTableItem *)self data];
  [data setBloodType:chosenValueIndex];
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)index
{
  if (self->_isEditing)
  {
    return 1;
  }

  data = [(HKEmergencyCardTableItem *)self data];
  bloodType = [data bloodType];

  if (bloodType)
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
    [v5 setBloodType:0];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  self->_isEditing = v6;
  return 2;
}

- (void)didCommitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index
{
  if (style == 2 && self->_isEditing)
  {
    [(HKMedicalIDEditorPickerCell *)self->_editableCell beginEditing];
  }
}

@end