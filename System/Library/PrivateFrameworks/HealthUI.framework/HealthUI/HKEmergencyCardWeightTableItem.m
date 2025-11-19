@interface HKEmergencyCardWeightTableItem
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

@implementation HKEmergencyCardWeightTableItem

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"weight" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (BOOL)hasPresentableData
{
  v2 = [(HKEmergencyCardTableItem *)self data];
  v3 = [v2 weight];
  v4 = v3 != 0;

  return v4;
}

- (id)_createEditableCell
{
  v3 = [[HKMedicalIDEditorWeightCell alloc] initWithStyle:0 reuseIdentifier:@"kWeightTableItemCellIdentifier"];
  v4 = [(HKEmergencyCardWeightTableItem *)self title];
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
    v7 = [v6 weight];

    if (v7)
    {
      v8 = [v5 dequeueReusableCellWithIdentifier:@"kWeightTableItemCellIdentifier"];
      if (!v8)
      {
        v8 = [(HKEmergencyCardWeightTableItem *)self _createEditableCell];
      }

      v9 = [(HKEmergencyCardTableItem *)self data];
      v10 = [v9 weight];
      v11 = [MEMORY[0x1E696C510] gramUnitWithMetricPrefix:9];
      [v10 doubleValueForUnit:v11];
      v13 = v12;

      v14 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      [v8 setKilogramValue:v14];

      v15 = v8;
      editableCell = self->_editableCell;
      self->_editableCell = v15;
    }

    else
    {
      editableCell = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v28 = [editableCell localizedStringForKey:@"add_weight" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v15 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:v5 withTitle:v28];
    }
  }

  else
  {
    v17 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
    v15 = [v5 dequeueReusableCellWithIdentifier:v17];

    v18 = [(HKEmergencyCardWeightTableItem *)self title];
    v19 = [(HKMedicalIDEditorWeightCell *)v15 titleLabel];
    [v19 setText:v18];

    v20 = [(HKEmergencyCardTableItem *)self data];
    v21 = [v20 weight];
    v22 = [MEMORY[0x1E696C510] gramUnitWithMetricPrefix:9];
    [v21 doubleValueForUnit:v22];
    v24 = v23;

    editableCell = +[HKPersonWeightFormatter sharedFormatter];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
    v26 = [editableCell stringFromWeightInKilograms:v25];
    v27 = [(HKMedicalIDEditorWeightCell *)v15 detailLabel];
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
    v10.super_class = HKEmergencyCardWeightTableItem;
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
  v4 = [(HKEmergencyCardTableItem *)self data];
  v5 = [v4 weight];

  if (v5)
  {
    [(HKMedicalIDEditorWeightCell *)self->_editableCell beginEditing];
  }

  return 0;
}

- (void)medicalIDEditorCellDidChangeValue:(id)a3
{
  v8 = [(HKMedicalIDEditorWeightCell *)self->_editableCell kilogramValue];
  if (v8)
  {
    v4 = [MEMORY[0x1E696C510] gramUnitWithMetricPrefix:9];
    v5 = MEMORY[0x1E696C348];
    [v8 doubleValue];
    v6 = [v5 quantityWithUnit:v4 doubleValue:?];
    v7 = [(HKEmergencyCardTableItem *)self data];
    [v7 setWeight:v6];
  }

  else
  {
    v4 = [(HKEmergencyCardTableItem *)self data];
    [v4 setWeight:0];
  }
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)a3
{
  v3 = [(HKEmergencyCardTableItem *)self data];
  v4 = [v3 weight];

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
    [v5 setWeight:0];
  }

  else
  {
    v5 = [MEMORY[0x1E696C510] gramUnitWithMetricPrefix:{9, a4}];
    v6 = MEMORY[0x1E696C348];
    +[HKMedicalIDWeightPickerDataProvider defaultKilogramValue];
    v7 = [v6 quantityWithUnit:v5 doubleValue:?];
    v8 = [(HKEmergencyCardTableItem *)self data];
    [v8 setWeight:v7];
  }

  return 2;
}

- (void)didCommitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4
{
  if (a3 == 2)
  {
    [(HKMedicalIDEditorWeightCell *)self->_editableCell beginEditing:2];
  }
}

@end