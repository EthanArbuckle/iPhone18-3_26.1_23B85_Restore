@interface HKEmergencyCardHeightTableItem
- (BOOL)hasPresentableData;
- (BOOL)shouldHighlightRowAtIndex:(int64_t)a3;
- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4;
- (id)_createEditableCell;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
- (id)title;
- (int64_t)commitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4;
- (int64_t)editingStyleForRowAtIndex:(int64_t)a3;
- (void)didCommitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4;
- (void)medicalIDEditorCellDidChangeValue:(id)a3;
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
  v2 = [(HKEmergencyCardTableItem *)self data];
  v3 = [v2 height];
  v4 = v3 != 0;

  return v4;
}

- (id)_createEditableCell
{
  v3 = [[HKMedicalIDEditorHeightCell alloc] initWithStyle:0 reuseIdentifier:@"kHeightTableItemCellIdentifier"];
  v4 = [(HKEmergencyCardHeightTableItem *)self title];
  [(HKMedicalIDEditorCell *)v3 setLabel:v4];

  [(HKMedicalIDEditorCell *)v3 setMinimumLabelWidth:47.0];
  [(HKMedicalIDEditorCell *)v3 setEditDelegate:self];

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  v5 = a3;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v6 = [(HKEmergencyCardTableItem *)self data];
    v7 = [v6 height];

    if (v7)
    {
      v8 = [v5 dequeueReusableCellWithIdentifier:@"kHeightTableItemCellIdentifier"];
      if (!v8)
      {
        v8 = [(HKEmergencyCardHeightTableItem *)self _createEditableCell];
      }

      v9 = [(HKEmergencyCardTableItem *)self data];
      v10 = [v9 height];
      v11 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
      [v10 doubleValueForUnit:v11];
      v13 = v12;

      v14 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      [v8 setCentimeterValue:v14];

      v15 = v8;
      editableCell = self->_editableCell;
      self->_editableCell = v15;
    }

    else
    {
      editableCell = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v28 = [editableCell localizedStringForKey:@"add_height" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v15 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:v5 withTitle:v28];
    }
  }

  else
  {
    v17 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
    v15 = [v5 dequeueReusableCellWithIdentifier:v17];

    v18 = [(HKEmergencyCardHeightTableItem *)self title];
    v19 = [(HKMedicalIDEditorHeightCell *)v15 titleLabel];
    [v19 setText:v18];

    editableCell = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
    v20 = [(HKEmergencyCardTableItem *)self data];
    v21 = [v20 height];
    [v21 doubleValueForUnit:editableCell];
    v23 = v22;

    v24 = +[HKPersonHeightFormatter sharedFormatter];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
    v26 = [v24 localizedStringFromHeightInCentimeters:v25];
    v27 = [(HKMedicalIDEditorHeightCell *)v15 detailLabel];
    [v27 setText:v26];
  }

  return v15;
}

- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4
{
  v6 = a3;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v10.receiver = self;
    v10.super_class = HKEmergencyCardHeightTableItem;
    [(HKEmergencyCardTableItem *)&v10 tableView:v6 heightForRowAtIndex:a4];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (BOOL)shouldHighlightRowAtIndex:(int64_t)a3
{
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    [(HKMedicalIDEditorHeightCell *)self->_editableCell beginEditing];
  }

  return 0;
}

- (void)medicalIDEditorCellDidChangeValue:(id)a3
{
  v8 = [(HKMedicalIDEditorHeightCell *)self->_editableCell centimeterValue];
  if (v8)
  {
    v4 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
    v5 = MEMORY[0x1E696C348];
    [v8 doubleValue];
    v6 = [v5 quantityWithUnit:v4 doubleValue:?];
    v7 = [(HKEmergencyCardTableItem *)self data];
    [v7 setHeight:v6];
  }

  else
  {
    v4 = [(HKEmergencyCardTableItem *)self data];
    [v4 setHeight:0];
  }
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)a3
{
  v3 = [(HKEmergencyCardTableItem *)self data];
  v4 = [v3 height];

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
    [v5 setHeight:0];
  }

  else
  {
    v5 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:{5, a4}];
    v6 = MEMORY[0x1E696C348];
    +[HKMedicalIDHeightPickerDataProvider defaultCentimeterValue];
    v7 = [v6 quantityWithUnit:v5 doubleValue:?];
    v8 = [(HKEmergencyCardTableItem *)self data];
    [v8 setHeight:v7];
  }

  return 2;
}

- (void)didCommitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4
{
  if (a3 == 2)
  {
    [(HKMedicalIDEditorHeightCell *)self->_editableCell beginEditing:2];
  }
}

@end