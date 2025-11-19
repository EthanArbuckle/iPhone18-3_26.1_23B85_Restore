@interface WDWorkoutAddDataViewController
- (WDWorkoutAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7;
- (id)_activeEnergyDisplayName;
- (id)_activityTypeDescriptionForIndex:(int64_t)a3;
- (id)_displayTypeForDistanceType:(id)a3;
- (id)_displayTypeForIdentifier:(int64_t)a3;
- (id)_distanceDisplayName;
- (id)_generateSortedActivityTypes;
- (id)_quantityFromEntryItem:(id)a3 unit:(id)a4;
- (id)_sectionsForDistanceType:(id)a3;
- (id)_totalDistance;
- (id)_totalEnergyBurned;
- (id)_unitForDistanceType:(id)a3;
- (id)manualEntryItemsForSection:(int64_t)a3;
- (int64_t)_indexOfActivityType:(unint64_t)a3;
- (int64_t)numberOfSections;
- (unint64_t)_activityTypeForIndex:(int64_t)a3;
- (unint64_t)_selectedActivityType;
- (void)_createEntryItems;
- (void)_updateCurrentDistanceTypeWithActivityType:(unint64_t)a3;
- (void)dealloc;
- (void)manualEntryItemDidUpdate:(id)a3;
- (void)saveHKObjectWithCompletion:(id)a3;
- (void)unitPreferencesDidChange:(id)a3;
- (void)validateDataWithCompletion:(id)a3;
@end

@implementation WDWorkoutAddDataViewController

- (WDWorkoutAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7
{
  v27[2] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = WDWorkoutAddDataViewController;
  v7 = [(WDAddDataViewController *)&v21 initWithDisplayType:a3 healthStore:a4 unitController:a5 initialStartDate:a6 dateCache:a7];
  v8 = v7;
  if (v7)
  {
    v9 = [(WDWorkoutAddDataViewController *)v7 _generateSortedActivityTypes];
    workoutActivityTypePairs = v8->_workoutActivityTypePairs;
    v8->_workoutActivityTypePairs = v9;

    [(WDWorkoutAddDataViewController *)v8 _createEntryItems];
    v26[0] = v8->_activityTypeEntryItem;
    v26[1] = v8->_activeEnergyEntryItem;
    v26[2] = v8->_distanceEntryItem;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
    v27[0] = v11;
    dateRangeEntryItem = v8->_dateRangeEntryItem;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&dateRangeEntryItem count:1];
    v27[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    sectionsWithDistance = v8->_sectionsWithDistance;
    v8->_sectionsWithDistance = v13;

    v23[0] = v8->_activityTypeEntryItem;
    v23[1] = v8->_activeEnergyEntryItem;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v24[0] = v15;
    v22 = v8->_dateRangeEntryItem;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v24[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    sectionsWithoutDistance = v8->_sectionsWithoutDistance;
    v8->_sectionsWithoutDistance = v17;

    [(WDWorkoutAddDataViewController *)v8 _updateCurrentDistanceTypeWithActivityType:37];
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v8 selector:sel_unitPreferencesDidChange_ name:*MEMORY[0x1E696BE70] object:0];
  }

  return v8;
}

- (void)_createEntryItems
{
  v3 = [(HKDateCache *)self->super._dateCache oneMinuteBeforeEndOfDayMidnight];
  v4 = [WDAddDataManualEntryItem twoPartDateRangeItemWithMaximumEndDate:v3];
  dateRangeEntryItem = self->_dateRangeEntryItem;
  self->_dateRangeEntryItem = v4;

  [(WDAddDataManualEntryItem *)self->_dateRangeEntryItem setDelegate:self];
  v6 = [(WDWorkoutAddDataViewController *)self _indexOfActivityType:37];
  v7 = [WDAddDataManualEntrySpinner alloc];
  v8 = HABundle();
  v9 = [v8 localizedStringForKey:@"WORKOUT_ACTIVITY_TYPE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v10 = [(WDAddDataManualEntrySpinner *)v7 initWithDisplayName:v9];
  activityTypeEntryItem = self->_activityTypeEntryItem;
  self->_activityTypeEntryItem = v10;

  [(WDAddDataManualEntrySpinner *)self->_activityTypeEntryItem setDataSource:self];
  v12 = self->_activityTypeEntryItem;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  [(WDAddDataManualEntrySpinner *)v12 setValue:v13];

  [(WDAddDataManualEntryItem *)self->_activityTypeEntryItem setDelegate:self];
  v24 = [MEMORY[0x1E69A4380] sharedInstanceForHealthStore:self->super._healthStore];
  v14 = [v24 displayTypeWithIdentifier:&unk_1F38464B0];
  [v14 roundingMode];
  v15 = HKDecimalFormatter();
  v16 = [WDAddDataManualEntryItem numericItemWithManualEntryType:2 numberFormatter:v15];
  activeEnergyEntryItem = self->_activeEnergyEntryItem;
  self->_activeEnergyEntryItem = v16;

  v18 = self->_activeEnergyEntryItem;
  v19 = [(WDWorkoutAddDataViewController *)self _activeEnergyDisplayName];
  [(WDAddDataManualEntryItem *)v18 setTitle:v19];

  [(WDAddDataManualEntryItem *)self->_activeEnergyEntryItem setDelegate:self];
  v20 = [v24 displayTypeWithIdentifier:&unk_1F38464C8];
  [v20 roundingMode];
  v21 = HKDecimalFormatter();
  v22 = [WDAddDataManualEntryItem numericItemWithManualEntryType:2 numberFormatter:v21];
  distanceEntryItem = self->_distanceEntryItem;
  self->_distanceEntryItem = v22;

  [(WDAddDataManualEntryItem *)self->_distanceEntryItem setTitle:&stru_1F3823B88];
  [(WDAddDataManualEntryItem *)self->_distanceEntryItem setDelegate:self];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E696BE70] object:0];

  v4.receiver = self;
  v4.super_class = WDWorkoutAddDataViewController;
  [(WDWorkoutAddDataViewController *)&v4 dealloc];
}

- (void)unitPreferencesDidChange:(id)a3
{
  distanceEntryItem = self->_distanceEntryItem;
  v5 = [(WDWorkoutAddDataViewController *)self _distanceDisplayName];
  [(WDAddDataManualEntryItem *)distanceEntryItem setTitle:v5];

  activeEnergyEntryItem = self->_activeEnergyEntryItem;
  v7 = [(WDWorkoutAddDataViewController *)self _activeEnergyDisplayName];
  [(WDAddDataManualEntryItem *)activeEnergyEntryItem setTitle:v7];
}

- (id)_totalDistance
{
  distanceEntryItem = self->_distanceEntryItem;
  v4 = [(WDWorkoutAddDataViewController *)self _unitForDistanceType:self->_distanceType];
  v5 = [(WDWorkoutAddDataViewController *)self _quantityFromEntryItem:distanceEntryItem unit:v4];

  return v5;
}

- (id)_totalEnergyBurned
{
  v3 = [(WDWorkoutAddDataViewController *)self _displayTypeForIdentifier:10];
  activeEnergyEntryItem = self->_activeEnergyEntryItem;
  v5 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:v3];
  v6 = [(WDWorkoutAddDataViewController *)self _quantityFromEntryItem:activeEnergyEntryItem unit:v5];

  return v6;
}

- (id)_quantityFromEntryItem:(id)a3 unit:(id)a4
{
  v5 = a4;
  v6 = [a3 generateValue];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E696C348];
    [v6 doubleValue];
    v9 = [v8 quantityWithUnit:v5 doubleValue:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_displayTypeForIdentifier:(int64_t)a3
{
  v4 = [MEMORY[0x1E69A4380] sharedInstanceForHealthStore:self->super._healthStore];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 displayTypeWithIdentifier:v5];

  return v6;
}

- (id)_displayTypeForDistanceType:(id)a3
{
  v4 = [a3 code];
  if ((v4 - 83) > 0x37 || ((1 << (v4 - 83)) & 0x80000048000001) == 0)
  {
    v6 = 8;
  }

  else
  {
    v6 = v4;
  }

  v7 = [(WDWorkoutAddDataViewController *)self _displayTypeForIdentifier:v6];

  return v7;
}

- (id)_unitForDistanceType:(id)a3
{
  v4 = [(WDWorkoutAddDataViewController *)self _displayTypeForDistanceType:self->_distanceType];
  v5 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:v4];

  return v5;
}

- (id)_distanceDisplayName
{
  v3 = [(WDWorkoutAddDataViewController *)self _displayTypeForDistanceType:self->_distanceType];
  if (v3)
  {
    v4 = HABundle();
    v5 = [v4 localizedStringForKey:@"WORKOUT_TOTAL_DISTANCE_WITH_UNIT %@" value:&stru_1F3823B88 table:@"AddDataLocalization"];

    v6 = MEMORY[0x1E696AEC0];
    v7 = [(HKUnitPreferenceController *)self->super._unitController localizedDisplayNameForDisplayType:v3];
    v8 = [v6 stringWithFormat:v5, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_activeEnergyDisplayName
{
  v3 = [(WDWorkoutAddDataViewController *)self _displayTypeForIdentifier:10];
  if (v3)
  {
    v4 = [(HKUnitPreferenceController *)self->super._unitController localizedLongDisplayNameForDisplayType:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)validateDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WDAddDataManualEntryItem *)self->_dateRangeEntryItem generateValue];
  v6 = [v5 startDate];
  v7 = [v5 endDate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__WDWorkoutAddDataViewController_validateDataWithCompletion___block_invoke;
  v9[3] = &unk_1E7EEB118;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(WDAddDataViewController *)self validateMaximumAllowedDurationFor:v6 endDate:v7 competion:v9];
}

void __61__WDWorkoutAddDataViewController_validateDataWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v30 = v5;
    (*(*(a1 + 40) + 16))();
    goto LABEL_22;
  }

  v6 = [*(a1 + 32) _totalDistance];
  v7 = *(a1 + 32);
  if (*(v7 + 1112))
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || (v9 = [*(v7 + 1080) validateWorkoutDistance:v6], v7 = *(a1 + 32), v9 != 1))
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v10 = [v7 _displayTypeForDistanceType:*(v7 + 1112)];
    v11 = [*(a1 + 32) _unitForDistanceType:*(*(a1 + 32) + 1112)];
    v12 = MEMORY[0x1E696AD98];
    [v6 doubleValueForUnit:v11];
    v13 = [v12 numberWithDouble:?];
    v14 = [v10 hk_valueFormatterForUnit:v11];
    v15 = [v14 stringFromValue:v13 displayType:v10 unitController:*(*(a1 + 32) + 1064)];

    v7 = *(a1 + 32);
    v16 = 1;
  }

  v17 = [v7 _totalEnergyBurned];
  if (!v17)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

LABEL_16:
    v28 = MEMORY[0x1E696AEC0];
    v26 = HABundle();
    v27 = [v26 localizedStringForKey:@"OUT_OF_RANGE_ALERT_ONE_ITEM_FORMAT_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
    v31 = [v28 stringWithFormat:v27, v15];
    v23 = 0;
LABEL_20:

    v29 = v31;
    goto LABEL_21;
  }

  if ([*(*(a1 + 32) + 1080) validateWorkoutEnergyBurned:v17] == 1)
  {
    v18 = [*(a1 + 32) _displayTypeForIdentifier:10];
    v19 = [*(*(a1 + 32) + 1064) unitForDisplayType:v18];
    v20 = MEMORY[0x1E696AD98];
    [v17 doubleValueForUnit:v19];
    v21 = [v20 numberWithDouble:?];
    v22 = [v18 hk_valueFormatterForUnit:v19];
    v23 = [v22 stringFromValue:v21 displayType:v18 unitController:*(*(a1 + 32) + 1064)];

    v24 = MEMORY[0x1E696AEC0];
    v25 = HABundle();
    v26 = v25;
    if (v16)
    {
      v27 = [v25 localizedStringForKey:@"OUT_OF_RANGE_ALERT_TWO_ITEMS_FORMAT_%@_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
      [v24 stringWithFormat:v27, v15, v23];
    }

    else
    {
      v27 = [v25 localizedStringForKey:@"OUT_OF_RANGE_ALERT_ONE_ITEM_FORMAT_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
      [v24 stringWithFormat:v27, v23];
    }
    v31 = ;
    goto LABEL_20;
  }

  if (v16)
  {
    goto LABEL_16;
  }

LABEL_18:
  v23 = 0;
  v29 = 0;
LABEL_21:
  v30 = v29;
  (*(*(a1 + 40) + 16))();

LABEL_22:
}

- (void)saveHKObjectWithCompletion:(id)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  v33 = a3;
  v4 = [(WDWorkoutAddDataViewController *)self _selectedActivityType];
  v5 = [(WDWorkoutAddDataViewController *)self _totalEnergyBurned];
  v6 = [(WDWorkoutAddDataViewController *)self _totalDistance];
  v7 = [(WDAddDataManualEntryItem *)self->_dateRangeEntryItem generateValue];
  v8 = MEMORY[0x1E696C588];
  v9 = [v7 startDate];
  v10 = [v7 endDate];
  v11 = [(WDAddDataViewController *)self defaultMetadata];
  v12 = v8;
  v13 = v6;
  v32 = [v12 _workoutWithActivityType:v4 startDate:v9 endDate:v10 workoutEvents:0 totalEnergyBurned:v5 totalDistance:v6 device:0 metadata:v11];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5)
  {
    v15 = MEMORY[0x1E696C358];
    v16 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC38]];
    v17 = [v7 startDate];
    v18 = [v7 endDate];
    v19 = [v15 quantitySampleWithType:v16 quantity:v5 startDate:v17 endDate:v18];

    [v14 addObject:v19];
  }

  v20 = _HKWorkoutDistanceTypeForActivityType();
  v21 = v13;
  if (v20 && v13)
  {
    v22 = MEMORY[0x1E696C358];
    v23 = _HKWorkoutDistanceTypeForActivityType();
    v24 = [v7 startDate];
    v25 = [v7 endDate];
    v26 = [v22 quantitySampleWithType:v23 quantity:v13 startDate:v24 endDate:v25];

    v21 = v13;
    [v14 addObject:v26];
  }

  healthStore = self->super._healthStore;
  v39[0] = v32;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __61__WDWorkoutAddDataViewController_saveHKObjectWithCompletion___block_invoke;
  v34[3] = &unk_1E7EEB168;
  v35 = v14;
  v36 = self;
  v37 = v32;
  v38 = v33;
  v29 = v33;
  v30 = v32;
  v31 = v14;
  [(HKHealthStore *)healthStore saveObjects:v28 withCompletion:v34];
}

void __61__WDWorkoutAddDataViewController_saveHKObjectWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 && [*(a1 + 32) count])
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 40) + 1056);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__WDWorkoutAddDataViewController_saveHKObjectWithCompletion___block_invoke_2;
    v9[3] = &unk_1E7EEB140;
    v8 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v7 addSamples:v6 toWorkout:v8 completion:v9];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (int64_t)numberOfSections
{
  v2 = [(WDWorkoutAddDataViewController *)self _sectionsForDistanceType:self->_distanceType];
  v3 = [v2 count];

  return v3;
}

- (id)manualEntryItemsForSection:(int64_t)a3
{
  v4 = [(WDWorkoutAddDataViewController *)self _sectionsForDistanceType:self->_distanceType];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)_generateSortedActivityTypes
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = *MEMORY[0x1E696C7F0];
  for (i = *MEMORY[0x1E696C7F8]; v4 <= i; ++v4)
  {
    if (_HKWorkoutActivityTypeIsValid() && (_HKWorkoutActivityTypeIsDeprecated() & 1) == 0 && ![(WDWorkoutAddDataViewController *)self _isExcludedActivityType:v4])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
      v13[0] = v6;
      v7 = HKUILocalizedWorkoutTypeName();
      v13[1] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
      [v3 addObject:v8];
    }
  }

  [v3 sortUsingComparator:&__block_literal_global_0];
  v12[0] = &unk_1F38464E0;
  v9 = HKUILocalizedWorkoutTypeName();
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v3 addObject:v10];

  return v3;
}

uint64_t __62__WDWorkoutAddDataViewController__generateSortedActivityTypes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndexedSubscript:1];
  v6 = [v4 objectAtIndexedSubscript:1];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (int64_t)_indexOfActivityType:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  workoutActivityTypePairs = self->_workoutActivityTypePairs;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__WDWorkoutAddDataViewController__indexOfActivityType___block_invoke;
  v6[3] = &unk_1E7EEB1B0;
  v6[4] = &v7;
  v6[5] = a3;
  [(NSArray *)workoutActivityTypePairs enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __55__WDWorkoutAddDataViewController__indexOfActivityType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 objectAtIndexedSubscript:0];
  v8 = [v7 integerValue];
  v9 = *(a1 + 40);

  if (v8 == v9)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (id)_activityTypeDescriptionForIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_workoutActivityTypePairs objectAtIndexedSubscript:a3];
  v4 = [v3 objectAtIndexedSubscript:1];

  return v4;
}

- (unint64_t)_activityTypeForIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_workoutActivityTypePairs objectAtIndexedSubscript:a3];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 integerValue];

  return v5;
}

- (unint64_t)_selectedActivityType
{
  v3 = [(WDAddDataManualEntrySpinner *)self->_activityTypeEntryItem generateValue];
  v4 = v3;
  if (v3)
  {
    v5 = -[WDWorkoutAddDataViewController _activityTypeForIndex:](self, "_activityTypeForIndex:", [v3 integerValue]);
  }

  else
  {
    v5 = 37;
  }

  return v5;
}

- (id)_sectionsForDistanceType:(id)a3
{
  v3 = &OBJC_IVAR___WDWorkoutAddDataViewController__sectionsWithDistance;
  if (!a3)
  {
    v3 = &OBJC_IVAR___WDWorkoutAddDataViewController__sectionsWithoutDistance;
  }

  return *(&self->super.super.super.super.super.super.isa + *v3);
}

- (void)_updateCurrentDistanceTypeWithActivityType:(unint64_t)a3
{
  v4 = _HKWorkoutDistanceTypeForActivityType();
  v5 = v4;
  if (v4 != self->_distanceType)
  {
    obj = v4;
    v6 = [(HKQuantityType *)v4 isEqual:?];
    v5 = obj;
    if ((v6 & 1) == 0)
    {
      objc_storeStrong(&self->_distanceType, obj);
      distanceEntryItem = self->_distanceEntryItem;
      v8 = [(WDWorkoutAddDataViewController *)self _distanceDisplayName];
      [(WDAddDataManualEntryItem *)distanceEntryItem setTitle:v8];

      [(WDAddDataViewController *)self reloadManualEntryItemsAndReloadTableView:[(WDWorkoutAddDataViewController *)self isViewLoaded]];
      v5 = obj;
    }
  }
}

- (void)manualEntryItemDidUpdate:(id)a3
{
  v16 = a3;
  if (self->_activityTypeEntryItem == v16)
  {
    [(WDWorkoutAddDataViewController *)self _updateCurrentDistanceTypeWithActivityType:[(WDWorkoutAddDataViewController *)self _selectedActivityType]];
  }

  v4 = [(WDWorkoutAddDataViewController *)self _totalEnergyBurned];
  if (v4)
  {
    v5 = [(HKManualEntryValidationController *)self->super._validationController validateWorkoutEnergyBurned:v4]!= 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(WDWorkoutAddDataViewController *)self _totalDistance];
  v7 = v6;
  if (self->_distanceType)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v5 = ([(HKManualEntryValidationController *)self->super._validationController validateWorkoutDistance:v6]!= 2) & v5;
  }

  v9 = [(WDAddDataManualEntryItem *)self->_dateRangeEntryItem generateValue];
  v10 = [v9 endDate];
  v11 = [v9 startDate];
  [v10 timeIntervalSinceDate:v11];
  v13 = v12;

  validationController = self->super._validationController;
  v15 = [(HKDisplayType *)self->super._displayType sampleType];
  LODWORD(validationController) = [(HKManualEntryValidationController *)validationController validateMinimumAllowedDuration:v15 ofType:v13]!= 2;

  [(WDAddDataViewController *)self setSavingEnabled:validationController & v5];
}

@end