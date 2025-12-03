@interface WDHeightAddDataViewController
- (BOOL)_inputUnitIsFeetWithDisplayType:(id)type unitController:(id)controller;
- (WDHeightAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache;
- (id)_feetUnitString;
- (id)_inchUnitString;
- (id)createValueFieldManualEntryItem;
@end

@implementation WDHeightAddDataViewController

- (WDHeightAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache
{
  typeCopy = type;
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = WDHeightAddDataViewController;
  v14 = [(WDAddDataViewController *)&v21 initWithDisplayType:typeCopy healthStore:store unitController:controllerCopy initialStartDate:date dateCache:cache];
  v15 = v14;
  if (v14 && [(WDHeightAddDataViewController *)v14 _inputUnitIsFeetWithDisplayType:typeCopy unitController:controllerCopy])
  {
    _feetUnitString = [(WDHeightAddDataViewController *)v15 _feetUnitString];
    _inchUnitString = [(WDHeightAddDataViewController *)v15 _inchUnitString];
    v18 = [WDAddDataManualEntryItem heightPickerItemWithFeetUnitString:_feetUnitString inchUnitString:_inchUnitString];
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
    createValueFieldManualEntryItem = heightPickerManualEntryItem;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WDHeightAddDataViewController;
    createValueFieldManualEntryItem = [(WDDisplayTypeAddDataViewController *)&v5 createValueFieldManualEntryItem];
  }

  return createValueFieldManualEntryItem;
}

- (BOOL)_inputUnitIsFeetWithDisplayType:(id)type unitController:(id)controller
{
  if (!type)
  {
    return 0;
  }

  v4 = [controller unitForDisplayType:?];
  footUnit = [MEMORY[0x1E696C510] footUnit];
  v6 = [v4 isEqual:footUnit];

  return v6;
}

- (id)_feetUnitString
{
  footUnit = [MEMORY[0x1E696C510] footUnit];
  v4 = [(HKUnitPreferenceController *)self->super.super._unitController localizedDisplayNameForUnit:footUnit value:0];

  return v4;
}

- (id)_inchUnitString
{
  inchUnit = [MEMORY[0x1E696C510] inchUnit];
  v4 = [(HKUnitPreferenceController *)self->super.super._unitController localizedDisplayNameForUnit:inchUnit value:0];

  return v4;
}

@end