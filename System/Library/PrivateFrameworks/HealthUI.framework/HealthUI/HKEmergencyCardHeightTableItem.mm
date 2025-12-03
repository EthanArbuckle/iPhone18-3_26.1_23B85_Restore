@interface HKEmergencyCardHeightTableItem
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

@implementation HKEmergencyCardHeightTableItem

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"height" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (BOOL)hasPresentableData
{
  data = [(HKEmergencyCardTableItem *)self data];
  height = [data height];
  v4 = height != 0;

  return v4;
}

- (id)_createEditableCell
{
  v3 = [[HKMedicalIDEditorHeightCell alloc] initWithStyle:0 reuseIdentifier:@"kHeightTableItemCellIdentifier"];
  title = [(HKEmergencyCardHeightTableItem *)self title];
  [(HKMedicalIDEditorCell *)v3 setLabel:title];

  [(HKMedicalIDEditorCell *)v3 setMinimumLabelWidth:47.0];
  [(HKMedicalIDEditorCell *)v3 setEditDelegate:self];

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    data = [(HKEmergencyCardTableItem *)self data];
    height = [data height];

    if (height)
    {
      _createEditableCell = [viewCopy dequeueReusableCellWithIdentifier:@"kHeightTableItemCellIdentifier"];
      if (!_createEditableCell)
      {
        _createEditableCell = [(HKEmergencyCardHeightTableItem *)self _createEditableCell];
      }

      data2 = [(HKEmergencyCardTableItem *)self data];
      height2 = [data2 height];
      v11 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
      [height2 doubleValueForUnit:v11];
      v13 = v12;

      v14 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      [_createEditableCell setCentimeterValue:v14];

      v15 = _createEditableCell;
      editableCell = self->_editableCell;
      self->_editableCell = v15;
    }

    else
    {
      editableCell = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v28 = [editableCell localizedStringForKey:@"add_height" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v15 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:viewCopy withTitle:v28];
    }
  }

  else
  {
    v17 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
    v15 = [viewCopy dequeueReusableCellWithIdentifier:v17];

    title = [(HKEmergencyCardHeightTableItem *)self title];
    titleLabel = [(HKMedicalIDEditorHeightCell *)v15 titleLabel];
    [titleLabel setText:title];

    editableCell = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
    data3 = [(HKEmergencyCardTableItem *)self data];
    height3 = [data3 height];
    [height3 doubleValueForUnit:editableCell];
    v23 = v22;

    v24 = +[HKPersonHeightFormatter sharedFormatter];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
    v26 = [v24 localizedStringFromHeightInCentimeters:v25];
    detailLabel = [(HKMedicalIDEditorHeightCell *)v15 detailLabel];
    [detailLabel setText:v26];
  }

  return v15;
}

- (double)tableView:(id)view heightForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v10.receiver = self;
    v10.super_class = HKEmergencyCardHeightTableItem;
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
    [(HKMedicalIDEditorHeightCell *)self->_editableCell beginEditing];
  }

  return 0;
}

- (void)medicalIDEditorCellDidChangeValue:(id)value
{
  centimeterValue = [(HKMedicalIDEditorHeightCell *)self->_editableCell centimeterValue];
  if (centimeterValue)
  {
    data2 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
    v5 = MEMORY[0x1E696C348];
    [centimeterValue doubleValue];
    v6 = [v5 quantityWithUnit:data2 doubleValue:?];
    data = [(HKEmergencyCardTableItem *)self data];
    [data setHeight:v6];
  }

  else
  {
    data2 = [(HKEmergencyCardTableItem *)self data];
    [data2 setHeight:0];
  }
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)index
{
  data = [(HKEmergencyCardTableItem *)self data];
  height = [data height];

  if (height)
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
    [v5 setHeight:0];
  }

  else
  {
    v5 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:{5, index}];
    v6 = MEMORY[0x1E696C348];
    +[HKMedicalIDHeightPickerDataProvider defaultCentimeterValue];
    v7 = [v6 quantityWithUnit:v5 doubleValue:?];
    data = [(HKEmergencyCardTableItem *)self data];
    [data setHeight:v7];
  }

  return 2;
}

- (void)didCommitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index
{
  if (style == 2)
  {
    [(HKMedicalIDEditorHeightCell *)self->_editableCell beginEditing:2];
  }
}

@end