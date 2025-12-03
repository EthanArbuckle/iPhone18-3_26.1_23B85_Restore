@interface HKEmergencyCardWeightTableItem
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

@implementation HKEmergencyCardWeightTableItem

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"weight" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (BOOL)hasPresentableData
{
  data = [(HKEmergencyCardTableItem *)self data];
  weight = [data weight];
  v4 = weight != 0;

  return v4;
}

- (id)_createEditableCell
{
  v3 = [[HKMedicalIDEditorWeightCell alloc] initWithStyle:0 reuseIdentifier:@"kWeightTableItemCellIdentifier"];
  title = [(HKEmergencyCardWeightTableItem *)self title];
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
    weight = [data weight];

    if (weight)
    {
      _createEditableCell = [viewCopy dequeueReusableCellWithIdentifier:@"kWeightTableItemCellIdentifier"];
      if (!_createEditableCell)
      {
        _createEditableCell = [(HKEmergencyCardWeightTableItem *)self _createEditableCell];
      }

      data2 = [(HKEmergencyCardTableItem *)self data];
      weight2 = [data2 weight];
      v11 = [MEMORY[0x1E696C510] gramUnitWithMetricPrefix:9];
      [weight2 doubleValueForUnit:v11];
      v13 = v12;

      v14 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      [_createEditableCell setKilogramValue:v14];

      v15 = _createEditableCell;
      editableCell = self->_editableCell;
      self->_editableCell = v15;
    }

    else
    {
      editableCell = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v28 = [editableCell localizedStringForKey:@"add_weight" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v15 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:viewCopy withTitle:v28];
    }
  }

  else
  {
    v17 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
    v15 = [viewCopy dequeueReusableCellWithIdentifier:v17];

    title = [(HKEmergencyCardWeightTableItem *)self title];
    titleLabel = [(HKMedicalIDEditorWeightCell *)v15 titleLabel];
    [titleLabel setText:title];

    data3 = [(HKEmergencyCardTableItem *)self data];
    weight3 = [data3 weight];
    v22 = [MEMORY[0x1E696C510] gramUnitWithMetricPrefix:9];
    [weight3 doubleValueForUnit:v22];
    v24 = v23;

    editableCell = +[HKPersonWeightFormatter sharedFormatter];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
    v26 = [editableCell stringFromWeightInKilograms:v25];
    detailLabel = [(HKMedicalIDEditorWeightCell *)v15 detailLabel];
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
    v10.super_class = HKEmergencyCardWeightTableItem;
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
  data = [(HKEmergencyCardTableItem *)self data];
  weight = [data weight];

  if (weight)
  {
    [(HKMedicalIDEditorWeightCell *)self->_editableCell beginEditing];
  }

  return 0;
}

- (void)medicalIDEditorCellDidChangeValue:(id)value
{
  kilogramValue = [(HKMedicalIDEditorWeightCell *)self->_editableCell kilogramValue];
  if (kilogramValue)
  {
    data2 = [MEMORY[0x1E696C510] gramUnitWithMetricPrefix:9];
    v5 = MEMORY[0x1E696C348];
    [kilogramValue doubleValue];
    v6 = [v5 quantityWithUnit:data2 doubleValue:?];
    data = [(HKEmergencyCardTableItem *)self data];
    [data setWeight:v6];
  }

  else
  {
    data2 = [(HKEmergencyCardTableItem *)self data];
    [data2 setWeight:0];
  }
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)index
{
  data = [(HKEmergencyCardTableItem *)self data];
  weight = [data weight];

  if (weight)
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
    [v5 setWeight:0];
  }

  else
  {
    v5 = [MEMORY[0x1E696C510] gramUnitWithMetricPrefix:{9, index}];
    v6 = MEMORY[0x1E696C348];
    +[HKMedicalIDWeightPickerDataProvider defaultKilogramValue];
    v7 = [v6 quantityWithUnit:v5 doubleValue:?];
    data = [(HKEmergencyCardTableItem *)self data];
    [data setWeight:v7];
  }

  return 2;
}

- (void)didCommitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index
{
  if (style == 2)
  {
    [(HKMedicalIDEditorWeightCell *)self->_editableCell beginEditing:2];
  }
}

@end