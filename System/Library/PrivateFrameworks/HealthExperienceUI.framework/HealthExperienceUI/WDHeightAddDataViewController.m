@interface WDHeightAddDataViewController
- (BOOL)_inputUnitIsFeetWithDisplayType:(id)a3 unitController:(id)a4;
- (WDHeightAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7;
- (id)_feetUnitString;
- (id)_inchUnitString;
- (id)createValueFieldManualEntryItem;
@end

@implementation WDHeightAddDataViewController

- (WDHeightAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7
{
  v12 = a3;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = WDHeightAddDataViewController;
  v14 = [(WDAddDataViewController *)&v21 initWithDisplayType:v12 healthStore:a4 unitController:v13 initialStartDate:a6 dateCache:a7];
  v15 = v14;
  if (v14 && [(WDHeightAddDataViewController *)v14 _inputUnitIsFeetWithDisplayType:v12 unitController:v13])
  {
    v16 = [(WDHeightAddDataViewController *)v15 _feetUnitString];
    v17 = [(WDHeightAddDataViewController *)v15 _inchUnitString];
    v18 = [WDAddDataManualEntryItem heightPickerItemWithFeetUnitString:v16 inchUnitString:v17];
    heightPickerManualEntryItem = v15->_heightPickerManualEntryItem;
    v15->_heightPickerManualEntryItem = v18;
  }

  return v15;
}

- (id)createValueFieldManualEntryItem
{
  heightPickerManualEntryItem = self->_heightPickerManualEntryItem;
  if (heightPickerManualEntryItem)
  {
    v3 = heightPickerManualEntryItem;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WDHeightAddDataViewController;
    v3 = [(WDDisplayTypeAddDataViewController *)&v5 createValueFieldManualEntryItem];
  }

  return v3;
}

- (BOOL)_inputUnitIsFeetWithDisplayType:(id)a3 unitController:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a4 unitForDisplayType:?];
  v5 = [MEMORY[0x1E696C510] footUnit];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)_feetUnitString
{
  v3 = [MEMORY[0x1E696C510] footUnit];
  v4 = [(HKUnitPreferenceController *)self->super.super._unitController localizedDisplayNameForUnit:v3 value:0];

  return v4;
}

- (id)_inchUnitString
{
  v3 = [MEMORY[0x1E696C510] inchUnit];
  v4 = [(HKUnitPreferenceController *)self->super.super._unitController localizedDisplayNameForUnit:v3 value:0];

  return v4;
}

@end