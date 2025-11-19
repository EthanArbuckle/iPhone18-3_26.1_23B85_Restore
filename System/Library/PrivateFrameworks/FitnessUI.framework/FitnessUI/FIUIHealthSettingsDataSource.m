@interface FIUIHealthSettingsDataSource
- (BOOL)shouldBypassFirstResponderAction:(id)a3;
- (BOOL)shouldHighlightRowAtIndexPath:(id)a3;
- (FIUIHealthSettingsBirthDatePickerController)birthDatePickerController;
- (FIUIHealthSettingsDataSource)initWithActivitySettingsController:(id)a3 showWheelchair:(BOOL)a4;
- (FIUIHealthSettingsDataSource)initWithActivitySettingsController:(id)a3 showWheelchair:(BOOL)a4 pregnancyStateProvider:(id)a5 showPregnancy:(BOOL)a6;
- (FIUIHealthSettingsDataSourceDelegate)delegate;
- (FIUIHealthSettingsHeightPickerController)heightPickerController;
- (FIUIHealthSettingsSexPickerController)sexPickerController;
- (FIUIHealthSettingsWeightPickerController)weightPickerController;
- (id)biologicalSexCell;
- (id)birthDateCell;
- (id)heightCell;
- (id)pregnancyStateCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)weightCell;
- (id)wheelchairUseCell;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configurePregnancyStateCellForModel:(id)a3;
- (void)_updateBiologicalSexCell;
- (void)_updateBirthDateCell;
- (void)_updateCells;
- (void)_updateHeightCell;
- (void)_updatePregnancyStateCellWithModel:(id)a3;
- (void)_updateWeightCell;
- (void)cellDidBecomeFirstResponder:(id)a3;
- (void)endEditingAndDiscardChanges:(BOOL)a3;
- (void)pregnancyModelDidChangeWithProvider:(id)a3 model:(id)a4;
- (void)startEditing;
- (void)wheelchairSwitchDidChange:(id)a3;
@end

@implementation FIUIHealthSettingsDataSource

- (FIUIHealthSettingsDataSource)initWithActivitySettingsController:(id)a3 showWheelchair:(BOOL)a4 pregnancyStateProvider:(id)a5 showPregnancy:(BOOL)a6
{
  v11 = a3;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = FIUIHealthSettingsDataSource;
  v13 = [(FIUIHealthSettingsDataSource *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_settingsController, a3);
    objc_initWeak(&location, v14);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __119__FIUIHealthSettingsDataSource_initWithActivitySettingsController_showWheelchair_pregnancyStateProvider_showPregnancy___block_invoke;
    v19 = &unk_1E878BDC0;
    objc_copyWeak(&v20, &location);
    [(FIActivitySettingsController *)v14->_settingsController setUpdateHandler:&v16];
    v14->_showWheelchair = a4;
    objc_storeStrong(&v14->_pregnancyStateProvider, a5);
    v14->_showPregnancy = a6;
    [(FIUIPregnancyStateProvider *)v14->_pregnancyStateProvider addObserver:v14, v16, v17, v18, v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __119__FIUIHealthSettingsDataSource_initWithActivitySettingsController_showWheelchair_pregnancyStateProvider_showPregnancy___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCells];
}

- (FIUIHealthSettingsDataSource)initWithActivitySettingsController:(id)a3 showWheelchair:(BOOL)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = FIUIHealthSettingsDataSource;
  v8 = [(FIUIHealthSettingsDataSource *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_settingsController, a3);
    objc_initWeak(&location, v9);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__FIUIHealthSettingsDataSource_initWithActivitySettingsController_showWheelchair___block_invoke;
    v11[3] = &unk_1E878BDC0;
    objc_copyWeak(&v12, &location);
    [(FIActivitySettingsController *)v9->_settingsController setUpdateHandler:v11];
    v9->_showWheelchair = a4;
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __82__FIUIHealthSettingsDataSource_initWithActivitySettingsController_showWheelchair___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCells];
}

- (id)birthDateCell
{
  if (!self->_birthDateCell)
  {
    v3 = [[FIUIHealthSettingsTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    birthDateCell = self->_birthDateCell;
    self->_birthDateCell = v3;

    v5 = FIUIBundle();
    v6 = [v5 localizedStringForKey:@"BIRTHDATE" value:&stru_1F5F88F90 table:@"Localizable"];
    v7 = [(FIUIHealthSettingsTableViewCell *)self->_birthDateCell textLabel];
    [v7 setText:v6];

    v8 = [(FIUIHealthSettingsDataSource *)self birthDatePickerController];
    v9 = [v8 datePickerView];
    v10 = [FIUIHostingAreaLayoutView blackBackgroundViewHostingView:v9];

    [(FIUIHealthSettingsTableViewCell *)self->_birthDateCell setInputView:v10];
    v11 = [(FIUIHealthSettingsDataSource *)self birthDatePickerController];
    [(FIUIHealthSettingsTableViewCell *)self->_birthDateCell setForceUpdatable:v11];
  }

  [(FIUIHealthSettingsDataSource *)self _updateBirthDateCell];
  v12 = self->_birthDateCell;

  return v12;
}

- (id)biologicalSexCell
{
  if (!self->_biologicalSexCell)
  {
    v3 = [[FIUIHealthSettingsTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    biologicalSexCell = self->_biologicalSexCell;
    self->_biologicalSexCell = v3;

    v5 = FIUIBundle();
    v6 = [v5 localizedStringForKey:@"BIOLOGICAL_SEX" value:&stru_1F5F88F90 table:@"Localizable"];
    v7 = [(FIUIHealthSettingsTableViewCell *)self->_biologicalSexCell textLabel];
    [v7 setText:v6];

    v8 = [(FIUIHealthSettingsDataSource *)self sexPickerController];
    v9 = [v8 pickerView];
    v10 = [FIUIHostingAreaLayoutView blackBackgroundViewHostingView:v9];

    [(FIUIHealthSettingsTableViewCell *)self->_biologicalSexCell setInputView:v10];
    v11 = [(FIUIHealthSettingsDataSource *)self sexPickerController];
    [(FIUIHealthSettingsTableViewCell *)self->_biologicalSexCell setForceUpdatable:v11];
  }

  [(FIUIHealthSettingsDataSource *)self _updateBiologicalSexCell];
  v12 = self->_biologicalSexCell;

  return v12;
}

- (id)heightCell
{
  if (!self->_heightCell)
  {
    v3 = [[FIUIHealthSettingsTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    heightCell = self->_heightCell;
    self->_heightCell = v3;

    v5 = FIUIBundle();
    v6 = [v5 localizedStringForKey:@"HEIGHT" value:&stru_1F5F88F90 table:@"Localizable"];
    v7 = [(FIUIHealthSettingsTableViewCell *)self->_heightCell textLabel];
    [v7 setText:v6];

    v8 = [(FIUIHealthSettingsDataSource *)self heightPickerController];
    v9 = [v8 pickerView];
    v10 = [FIUIHostingAreaLayoutView blackBackgroundViewHostingView:v9];

    [(FIUIHealthSettingsTableViewCell *)self->_heightCell setInputView:v10];
    v11 = [(FIUIHealthSettingsDataSource *)self heightPickerController];
    [(FIUIHealthSettingsTableViewCell *)self->_heightCell setForceUpdatable:v11];
  }

  [(FIUIHealthSettingsDataSource *)self _updateHeightCell];
  v12 = self->_heightCell;

  return v12;
}

- (id)weightCell
{
  if (!self->_weightCell)
  {
    v3 = [[FIUIHealthSettingsTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    weightCell = self->_weightCell;
    self->_weightCell = v3;

    v5 = FIUIBundle();
    v6 = [v5 localizedStringForKey:@"WEIGHT" value:&stru_1F5F88F90 table:@"Localizable"];
    v7 = [(FIUIHealthSettingsTableViewCell *)self->_weightCell textLabel];
    [v7 setText:v6];

    v8 = [(FIUIHealthSettingsDataSource *)self weightPickerController];
    v9 = [v8 pickerView];
    v10 = [FIUIHostingAreaLayoutView blackBackgroundViewHostingView:v9];

    [(FIUIHealthSettingsTableViewCell *)self->_weightCell setInputView:v10];
    v11 = [(FIUIHealthSettingsDataSource *)self weightPickerController];
    [(FIUIHealthSettingsTableViewCell *)self->_weightCell setForceUpdatable:v11];
  }

  [(FIUIHealthSettingsDataSource *)self _updateWeightCell];
  v12 = self->_weightCell;

  return v12;
}

- (id)wheelchairUseCell
{
  wheelchairUseCell = self->_wheelchairUseCell;
  if (!wheelchairUseCell)
  {
    v4 = [[FIUIHealthSettingsTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    v5 = self->_wheelchairUseCell;
    self->_wheelchairUseCell = v4;

    v6 = FIUIBundle();
    v7 = [v6 localizedStringForKey:@"WHEELCHAIR_USE" value:&stru_1F5F88F90 table:@"Localizable"];
    v8 = [(FIUIHealthSettingsTableViewCell *)self->_wheelchairUseCell textLabel];
    [v8 setText:v7];

    v9 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v9 setOn:{-[FIActivitySettingsController wheelchairUse](self->_settingsController, "wheelchairUse") == 2}];
    [v9 addTarget:self action:sel_wheelchairSwitchDidChange_ forControlEvents:4096];
    [(FIUIHealthSettingsTableViewCell *)self->_wheelchairUseCell setAccessoryView:v9];

    wheelchairUseCell = self->_wheelchairUseCell;
  }

  return wheelchairUseCell;
}

- (id)pregnancyStateCell
{
  pregnancyStateCell = self->_pregnancyStateCell;
  if (!pregnancyStateCell)
  {
    v4 = [[FIUIHealthSettingsTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    v5 = self->_pregnancyStateCell;
    self->_pregnancyStateCell = v4;

    v6 = [(FIUIPregnancyStateProvider *)self->_pregnancyStateProvider currentModel];
    [(FIUIHealthSettingsDataSource *)self _configurePregnancyStateCellForModel:v6];

    pregnancyStateCell = self->_pregnancyStateCell;
  }

  return pregnancyStateCell;
}

- (void)_updateCells
{
  [(FIUIHealthSettingsDataSource *)self _updateHeightCell];
  [(FIUIHealthSettingsDataSource *)self _updateWeightCell];
  [(FIUIHealthSettingsDataSource *)self _updateBirthDateCell];

  [(FIUIHealthSettingsDataSource *)self _updateBiologicalSexCell];
}

- (void)_updateHeightCell
{
  v5 = [(FIActivitySettingsController *)self->_settingsController height];
  v3 = FIUIHeightDisplayString(v5);
  v4 = [(FIUIHealthSettingsTableViewCell *)self->_heightCell detailTextLabel];
  [v4 setText:v3];
}

- (void)_updateWeightCell
{
  v5 = [(FIActivitySettingsController *)self->_settingsController weight];
  v3 = FIUIWeightDisplayString(v5);
  v4 = [(FIUIHealthSettingsTableViewCell *)self->_weightCell detailTextLabel];
  [v4 setText:v3];
}

- (void)_updateBirthDateCell
{
  v5 = [(FIActivitySettingsController *)self->_settingsController dateOfBirth];
  v3 = FIUIDateOfBirthDisplayString(v5);
  v4 = [(FIUIHealthSettingsTableViewCell *)self->_birthDateCell detailTextLabel];
  [v4 setText:v3];
}

- (void)_updateBiologicalSexCell
{
  v4 = FIUIBiologicalSexDisplayString([(FIActivitySettingsController *)self->_settingsController biologicalSex]);
  v3 = [(FIUIHealthSettingsTableViewCell *)self->_biologicalSexCell detailTextLabel];
  [v3 setText:v4];
}

- (void)_updatePregnancyStateCellWithModel:(id)a3
{
  [(FIUIHealthSettingsDataSource *)self _configurePregnancyStateCellForModel:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shouldReloadPregnancySection];
}

- (void)_configurePregnancyStateCellForModel:(id)a3
{
  pregnancyStateCell = self->_pregnancyStateCell;
  v5 = a3;
  v17 = [(FIUIHealthSettingsTableViewCell *)pregnancyStateCell defaultContentConfiguration];
  v6 = [MEMORY[0x1E6989B18] keyColors];
  v7 = [v6 nonGradientTextColor];
  v8 = [v17 textProperties];
  [v8 setColor:v7];

  v9 = [v5 state];
  v10 = FIUIBundle();
  v11 = v10;
  v12 = v9 == 1;
  v13 = v9 == 1;
  if (v12)
  {
    v14 = @"EDIT_PREGNANCY_BUTTON";
  }

  else
  {
    v14 = @"ADD_PREGNANCY_BUTTON";
  }

  if (v12)
  {
    v15 = FIUIEditPregnancyAccessibilityIdentifier;
  }

  else
  {
    v15 = FIUIAddPregnancyAccessibilityIdentifier;
  }

  v16 = [v10 localizedStringForKey:v14 value:&stru_1F5F88F90 table:@"Localizable"];
  [v17 setText:v16];

  [(FIUIHealthSettingsTableViewCell *)self->_pregnancyStateCell setAccessoryType:v13];
  [(FIUIHealthSettingsTableViewCell *)self->_pregnancyStateCell setAccessibilityIdentifier:*v15];
  [(FIUIHealthSettingsTableViewCell *)self->_pregnancyStateCell setContentConfiguration:v17];
}

- (FIUIHealthSettingsHeightPickerController)heightPickerController
{
  heightPickerController = self->_heightPickerController;
  if (!heightPickerController)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(FIUIHealthSettingsHeightPickerController);
    v5 = self->_heightPickerController;
    self->_heightPickerController = v4;

    v6 = self->_heightPickerController;
    v7 = objc_loadWeakRetained(&location);
    v8 = [v7 settingsController];
    v9 = [v8 height];
    [(FIUIHealthSettingsHeightPickerController *)v6 setHeightQuantity:v9];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__FIUIHealthSettingsDataSource_heightPickerController__block_invoke;
    v11[3] = &unk_1E878C880;
    objc_copyWeak(&v12, &location);
    [(FIUIHealthSettingsHeightPickerController *)self->_heightPickerController setHeightUpdateHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    heightPickerController = self->_heightPickerController;
  }

  return heightPickerController;
}

void __54__FIUIHealthSettingsDataSource_heightPickerController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained settingsController];
  [v4 setHeight:v3];
}

- (FIUIHealthSettingsBirthDatePickerController)birthDatePickerController
{
  birthDatePickerController = self->_birthDatePickerController;
  if (!birthDatePickerController)
  {
    v4 = objc_alloc_init(FIUIHealthSettingsBirthDatePickerController);
    v5 = self->_birthDatePickerController;
    self->_birthDatePickerController = v4;

    v6 = self->_birthDatePickerController;
    v7 = [(FIActivitySettingsController *)self->_settingsController dateOfBirth];
    [(FIUIHealthSettingsBirthDatePickerController *)v6 setDateOfBirth:v7];

    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__FIUIHealthSettingsDataSource_birthDatePickerController__block_invoke;
    v9[3] = &unk_1E878BE70;
    objc_copyWeak(&v10, &location);
    [(FIUIHealthSettingsBirthDatePickerController *)self->_birthDatePickerController setDateOfBirthUpdateHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    birthDatePickerController = self->_birthDatePickerController;
  }

  return birthDatePickerController;
}

void __57__FIUIHealthSettingsDataSource_birthDatePickerController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained settingsController];
  [v4 setDateOfBirth:v3];
}

- (FIUIHealthSettingsWeightPickerController)weightPickerController
{
  weightPickerController = self->_weightPickerController;
  if (!weightPickerController)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(FIUIHealthSettingsWeightPickerController);
    v5 = self->_weightPickerController;
    self->_weightPickerController = v4;

    v6 = self->_weightPickerController;
    v7 = objc_loadWeakRetained(&location);
    v8 = [v7 settingsController];
    v9 = [v8 weight];
    [(FIUIHealthSettingsWeightPickerController *)v6 setWeightQuantity:v9];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__FIUIHealthSettingsDataSource_weightPickerController__block_invoke;
    v11[3] = &unk_1E878C880;
    objc_copyWeak(&v12, &location);
    [(FIUIHealthSettingsWeightPickerController *)self->_weightPickerController setWeightUpdateHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    weightPickerController = self->_weightPickerController;
  }

  return weightPickerController;
}

void __54__FIUIHealthSettingsDataSource_weightPickerController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained settingsController];
  [v4 setWeight:v3];
}

- (FIUIHealthSettingsSexPickerController)sexPickerController
{
  sexPickerController = self->_sexPickerController;
  if (!sexPickerController)
  {
    v4 = objc_alloc_init(FIUIHealthSettingsSexPickerController);
    v5 = self->_sexPickerController;
    self->_sexPickerController = v4;

    [(FIUIHealthSettingsSexPickerController *)self->_sexPickerController setBiologicalSex:[(FIActivitySettingsController *)self->_settingsController biologicalSex]];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__FIUIHealthSettingsDataSource_sexPickerController__block_invoke;
    v7[3] = &unk_1E878C8A8;
    objc_copyWeak(&v8, &location);
    [(FIUIHealthSettingsSexPickerController *)self->_sexPickerController setSexUpdateHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    sexPickerController = self->_sexPickerController;
  }

  return sexPickerController;
}

void __51__FIUIHealthSettingsDataSource_sexPickerController__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained settingsController];
  [v3 setBiologicalSex:a2];
}

- (void)wheelchairSwitchDidChange:(id)a3
{
  v4 = [a3 isOn];
  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(FIActivitySettingsController *)self->_settingsController setWheelchairUse:v5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained wheelchairUseSwitchDidChangeTo:v4];
}

- (void)cellDidBecomeFirstResponder:(id)a3
{
  v3 = [a3 forceUpdatable];
  [v3 forceUpdate];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    if (a4 == 2)
    {
      return self->_showPregnancy;
    }

    else
    {
      return a4 == 1 && self->_showWheelchair;
    }
  }

  else
  {
    return 4;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    if ([v5 section] == 1)
    {
      if (![v5 row])
      {
        v6 = [(FIUIHealthSettingsDataSource *)self wheelchairUseCell];
        goto LABEL_18;
      }
    }

    else if ([v5 section] == 2 && !objc_msgSend(v5, "row"))
    {
      v6 = [(FIUIHealthSettingsDataSource *)self pregnancyStateCell];
      goto LABEL_18;
    }

    v8 = 0;
    goto LABEL_19;
  }

  v7 = [v5 row];
  v8 = 0;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v6 = [(FIUIHealthSettingsDataSource *)self heightCell];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_19;
      }

      v6 = [(FIUIHealthSettingsDataSource *)self weightCell];
    }
  }

  else if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_19;
    }

    v6 = [(FIUIHealthSettingsDataSource *)self biologicalSexCell];
  }

  else
  {
    v6 = [(FIUIHealthSettingsDataSource *)self birthDateCell];
  }

LABEL_18:
  v8 = v6;
LABEL_19:

  return v8;
}

- (BOOL)shouldHighlightRowAtIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 section])
  {
    v5 = [v4 section];
    v6 = [(FIUIHealthSettingsDataSource *)self pregnancySectionIndexPath];
    v7 = v5 == [v6 section];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)shouldBypassFirstResponderAction:(id)a3
{
  v4 = [a3 section];
  v5 = [(FIUIHealthSettingsDataSource *)self pregnancySectionIndexPath];
  LOBYTE(v4) = v4 == [v5 section];

  return v4;
}

- (void)startEditing
{
  if (self->_preEditSettingsController)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_ERROR))
    {
      [(FIUIHealthSettingsDataSource *)v3 startEditing];
    }
  }

  v4 = [(FIActivitySettingsController *)self->_settingsController copy];
  preEditSettingsController = self->_preEditSettingsController;
  self->_preEditSettingsController = v4;
}

- (void)endEditingAndDiscardChanges:(BOOL)a3
{
  if (a3)
  {
    objc_storeStrong(&self->_settingsController, self->_preEditSettingsController);
    [(FIUIHealthSettingsDataSource *)self _updateCells];
  }

  preEditSettingsController = self->_preEditSettingsController;
  self->_preEditSettingsController = 0;
}

- (void)pregnancyModelDidChangeWithProvider:(id)a3 model:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__FIUIHealthSettingsDataSource_pregnancyModelDidChangeWithProvider_model___block_invoke;
  v7[3] = &unk_1E878BFB8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (FIUIHealthSettingsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end