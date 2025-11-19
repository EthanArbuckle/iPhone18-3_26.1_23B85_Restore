@interface HKEmergencyCardOrganDonorTableItem
- (BOOL)shouldHighlightRowAtIndex:(int64_t)a3;
- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4;
- (id)_createEditableCell;
- (id)possibleValues;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
- (id)title;
- (int64_t)commitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4;
- (int64_t)editingStyleForRowAtIndex:(int64_t)a3;
- (void)didCommitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4;
- (void)medicalIDEditorCellDidChangeValue:(id)a3;
- (void)promptOrganDonationRegistrationIfPossibleWithCompletion:(id)a3;
@end

@implementation HKEmergencyCardOrganDonorTableItem

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"organ_donor" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)possibleValues
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (+[HKOrganDonationConnectionManager hasStoredRegistrant])
  {
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v3 = [v2 localizedStringForKey:@"organ_donor_not_set" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v18[0] = v3;
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"organ_donor_yes" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v18[1] = v5;
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"organ_donor_no" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v18[2] = v7;
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"organ_donor_registered" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v18[3] = v9;
    v10 = MEMORY[0x1E695DEC8];
    v11 = v18;
LABEL_5:
    v14 = [v10 arrayWithObjects:v11 count:4];

    goto LABEL_7;
  }

  v12 = +[HKOrganDonationConnectionManager isOrganDonationRegistrationAvailable];
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v2 localizedStringForKey:@"organ_donor_not_set" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v3 = v13;
  if (v12)
  {
    v17[0] = v13;
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"organ_donor_yes" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v17[1] = v5;
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"organ_donor_no" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v17[2] = v7;
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"organ_donor_register" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v17[3] = v9;
    v10 = MEMORY[0x1E695DEC8];
    v11 = v17;
    goto LABEL_5;
  }

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", v13}];
  v5 = [v4 localizedStringForKey:@"organ_donor_yes" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16[1] = v5;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"organ_donor_no" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16[2] = v7;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
LABEL_7:

  return v14;
}

- (id)_createEditableCell
{
  v3 = [(HKMedicalIDEditorCell *)[HKMedicalIDEditorPickerCell alloc] initWithStyle:0 reuseIdentifier:@"kOrganDonorTableItemCellIdentifier"];
  v4 = [(HKEmergencyCardOrganDonorTableItem *)self title];
  [(HKMedicalIDEditorCell *)v3 setLabel:v4];

  [(HKMedicalIDEditorCell *)v3 setMinimumLabelWidth:87.0];
  [(HKMedicalIDEditorCell *)v3 setEditDelegate:self];
  v5 = [(HKEmergencyCardOrganDonorTableItem *)self possibleValues];
  [(HKMedicalIDEditorPickerCell *)v3 setPossibleValues:v5];

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  v5 = a3;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    if (self->_isEditing || (-[HKEmergencyCardTableItem data](self, "data"), v6 = objc_claimAutoreleasedReturnValue(), [v6 isOrganDonor], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = [v5 dequeueReusableCellWithIdentifier:@"kOrganDonorTableItemCellIdentifier"];
      if (!v8)
      {
        v8 = [(HKEmergencyCardOrganDonorTableItem *)self _createEditableCell];
      }

      v9 = [(HKEmergencyCardTableItem *)self data];
      v10 = [v9 isOrganDonor];
      [v8 setChosenValueIndex:{+[HKMedicalIDOrganDonorPickerDataProvider emergencyCardOrganDonorStatus:](HKMedicalIDOrganDonorPickerDataProvider, "emergencyCardOrganDonorStatus:", v10)}];

      v11 = v8;
      editableCell = self->_editableCell;
      self->_editableCell = v11;
    }

    else
    {
      editableCell = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v21 = [editableCell localizedStringForKey:@"add_organ_donor" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v11 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:v5 withTitle:v21];
    }
  }

  else
  {
    v13 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
    v11 = [v5 dequeueReusableCellWithIdentifier:v13];

    v14 = [(HKEmergencyCardOrganDonorTableItem *)self title];
    v15 = [(HKMedicalIDEditorPickerCell *)v11 titleLabel];
    [v15 setText:v14];

    v16 = [(HKEmergencyCardTableItem *)self data];
    v17 = [v16 isOrganDonor];
    v18 = [HKMedicalIDOrganDonorPickerDataProvider emergencyCardOrganDonorStatus:v17];

    editableCell = [HKMedicalIDOrganDonorPickerDataProvider displayValueForOrganDonorStatus:v18];
    v19 = [(HKMedicalIDEditorPickerCell *)v11 detailLabel];
    [v19 setText:editableCell];
  }

  return v11;
}

- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4
{
  v6 = a3;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v10.receiver = self;
    v10.super_class = HKEmergencyCardOrganDonorTableItem;
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
    [(HKMedicalIDEditorPickerCell *)self->_editableCell beginEditing];
  }

  return 0;
}

- (void)medicalIDEditorCellDidChangeValue:(id)a3
{
  if ([(HKMedicalIDEditorPickerCell *)self->_editableCell chosenValueIndex]== 3)
  {

    [(HKEmergencyCardOrganDonorTableItem *)self promptOrganDonationRegistrationIfPossibleWithCompletion:0];
  }

  else
  {
    v5 = [HKMedicalIDOrganDonorPickerDataProvider medicalIDOrganDonorStatus:[(HKMedicalIDEditorPickerCell *)self->_editableCell chosenValueIndex]];
    v4 = [(HKEmergencyCardTableItem *)self data];
    [v4 setIsOrganDonor:v5];
  }
}

- (void)promptOrganDonationRegistrationIfPossibleWithCompletion:(id)a3
{
  v4 = a3;
  if (+[HKOrganDonationConnectionManager isOrganDonationRegistrationAvailable](HKOrganDonationConnectionManager, "isOrganDonationRegistrationAvailable") && !+[HKOrganDonationConnectionManager hasStoredRegistrant])
  {
    objc_initWeak(&location, self);
    v9 = [HKOrganDonationIntroductionViewController alloc];
    v10 = [(HKEmergencyCardTableItem *)self data];
    v11 = [(HKOrganDonationBaseViewController *)v9 initWithMedicalIDData:v10];

    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"OD_DONE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(HKOrganDonationBaseViewController *)v11 setCompletionButtonTitle:v13];

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __94__HKEmergencyCardOrganDonorTableItem_promptOrganDonationRegistrationIfPossibleWithCompletion___block_invoke;
    v19 = &unk_1E81B8DD0;
    objc_copyWeak(&v22, &location);
    v20 = self;
    v21 = v4;
    [(HKOrganDonationBaseViewController *)v11 setRegistrationCompletionHandler:&v16];
    [(HKMedicalIDEditorCell *)self->_editableCell dismissInputView:v16];
    v14 = [[HKNavigationController alloc] initWithRootViewController:v11];
    v15 = [(HKEmergencyCardTableItem *)self owningViewController];
    [v15 presentViewController:v14 animated:1 completion:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    if (+[HKOrganDonationConnectionManager isOrganDonationRegistrationAvailable](HKOrganDonationConnectionManager, "isOrganDonationRegistrationAvailable") && +[HKOrganDonationConnectionManager hasStoredRegistrant])
    {
      v5 = [HKMedicalIDOrganDonorPickerDataProvider medicalIDOrganDonorStatus:3];
      v6 = [(HKEmergencyCardTableItem *)self data];
      [v6 setIsOrganDonor:v5];

      v7 = [(HKEmergencyCardTableItem *)self data];
      v8 = [v7 isOrganDonor];
      [(HKMedicalIDEditorPickerCell *)self->_editableCell setChosenValueIndex:[HKMedicalIDOrganDonorPickerDataProvider emergencyCardOrganDonorStatus:v8]];

      [(HKMedicalIDEditorCell *)self->_editableCell updateValueLabel];
    }

    if (v4)
    {
      v4[2](v4);
    }
  }
}

uint64_t __94__HKEmergencyCardOrganDonorTableItem_promptOrganDonationRegistrationIfPossibleWithCompletion___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v6 = [WeakRetained owningViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];

    if (a2)
    {
      v7 = [HKMedicalIDOrganDonorPickerDataProvider medicalIDOrganDonorStatus:3];
      v8 = [*(a1 + 32) data];
      [v8 setIsOrganDonor:v7];
    }

    v9 = [*(a1 + 32) data];
    v10 = [v9 isOrganDonor];
    [*(*(a1 + 32) + 40) setChosenValueIndex:{+[HKMedicalIDOrganDonorPickerDataProvider emergencyCardOrganDonorStatus:](HKMedicalIDOrganDonorPickerDataProvider, "emergencyCardOrganDonorStatus:", v10)}];

    [*(*(a1 + 32) + 40) updateValueLabel];
    WeakRetained = *(a1 + 40);
    v5 = v12;
    if (WeakRetained)
    {
      WeakRetained = (*(WeakRetained + 2))(WeakRetained, v12);
      v5 = v12;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v5);
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)a3
{
  if (self->_isEditing)
  {
    return 1;
  }

  v3 = [(HKEmergencyCardTableItem *)self data];
  v4 = [v3 isOrganDonor];

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
    [v5 setIsOrganDonor:0];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  self->_isEditing = v6;
  return 2;
}

- (void)didCommitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4
{
  if (a3 == 2)
  {
    [(HKMedicalIDEditorPickerCell *)self->_editableCell beginEditing:2];
  }
}

@end