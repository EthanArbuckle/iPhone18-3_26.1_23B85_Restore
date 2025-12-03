@interface HKEmergencyCardOrganDonorTableItem
- (BOOL)shouldHighlightRowAtIndex:(int64_t)index;
- (double)tableView:(id)view heightForRowAtIndex:(int64_t)index;
- (id)_createEditableCell;
- (id)possibleValues;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
- (id)title;
- (int64_t)commitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index;
- (int64_t)editingStyleForRowAtIndex:(int64_t)index;
- (void)didCommitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index;
- (void)medicalIDEditorCellDidChangeValue:(id)value;
- (void)promptOrganDonationRegistrationIfPossibleWithCompletion:(id)completion;
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
  title = [(HKEmergencyCardOrganDonorTableItem *)self title];
  [(HKMedicalIDEditorCell *)v3 setLabel:title];

  [(HKMedicalIDEditorCell *)v3 setMinimumLabelWidth:87.0];
  [(HKMedicalIDEditorCell *)v3 setEditDelegate:self];
  possibleValues = [(HKEmergencyCardOrganDonorTableItem *)self possibleValues];
  [(HKMedicalIDEditorPickerCell *)v3 setPossibleValues:possibleValues];

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    if (self->_isEditing || (-[HKEmergencyCardTableItem data](self, "data"), v6 = objc_claimAutoreleasedReturnValue(), [v6 isOrganDonor], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      _createEditableCell = [viewCopy dequeueReusableCellWithIdentifier:@"kOrganDonorTableItemCellIdentifier"];
      if (!_createEditableCell)
      {
        _createEditableCell = [(HKEmergencyCardOrganDonorTableItem *)self _createEditableCell];
      }

      data = [(HKEmergencyCardTableItem *)self data];
      isOrganDonor = [data isOrganDonor];
      [_createEditableCell setChosenValueIndex:{+[HKMedicalIDOrganDonorPickerDataProvider emergencyCardOrganDonorStatus:](HKMedicalIDOrganDonorPickerDataProvider, "emergencyCardOrganDonorStatus:", isOrganDonor)}];

      v11 = _createEditableCell;
      editableCell = self->_editableCell;
      self->_editableCell = v11;
    }

    else
    {
      editableCell = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v21 = [editableCell localizedStringForKey:@"add_organ_donor" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v11 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:viewCopy withTitle:v21];
    }
  }

  else
  {
    v13 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
    v11 = [viewCopy dequeueReusableCellWithIdentifier:v13];

    title = [(HKEmergencyCardOrganDonorTableItem *)self title];
    titleLabel = [(HKMedicalIDEditorPickerCell *)v11 titleLabel];
    [titleLabel setText:title];

    data2 = [(HKEmergencyCardTableItem *)self data];
    isOrganDonor2 = [data2 isOrganDonor];
    v18 = [HKMedicalIDOrganDonorPickerDataProvider emergencyCardOrganDonorStatus:isOrganDonor2];

    editableCell = [HKMedicalIDOrganDonorPickerDataProvider displayValueForOrganDonorStatus:v18];
    detailLabel = [(HKMedicalIDEditorPickerCell *)v11 detailLabel];
    [detailLabel setText:editableCell];
  }

  return v11;
}

- (double)tableView:(id)view heightForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v10.receiver = self;
    v10.super_class = HKEmergencyCardOrganDonorTableItem;
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
  if ([(HKMedicalIDEditorPickerCell *)self->_editableCell chosenValueIndex]== 3)
  {

    [(HKEmergencyCardOrganDonorTableItem *)self promptOrganDonationRegistrationIfPossibleWithCompletion:0];
  }

  else
  {
    v5 = [HKMedicalIDOrganDonorPickerDataProvider medicalIDOrganDonorStatus:[(HKMedicalIDEditorPickerCell *)self->_editableCell chosenValueIndex]];
    data = [(HKEmergencyCardTableItem *)self data];
    [data setIsOrganDonor:v5];
  }
}

- (void)promptOrganDonationRegistrationIfPossibleWithCompletion:(id)completion
{
  completionCopy = completion;
  if (+[HKOrganDonationConnectionManager isOrganDonationRegistrationAvailable](HKOrganDonationConnectionManager, "isOrganDonationRegistrationAvailable") && !+[HKOrganDonationConnectionManager hasStoredRegistrant])
  {
    objc_initWeak(&location, self);
    v9 = [HKOrganDonationIntroductionViewController alloc];
    data = [(HKEmergencyCardTableItem *)self data];
    v11 = [(HKOrganDonationBaseViewController *)v9 initWithMedicalIDData:data];

    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"OD_DONE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(HKOrganDonationBaseViewController *)v11 setCompletionButtonTitle:v13];

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __94__HKEmergencyCardOrganDonorTableItem_promptOrganDonationRegistrationIfPossibleWithCompletion___block_invoke;
    v19 = &unk_1E81B8DD0;
    objc_copyWeak(&v22, &location);
    selfCopy = self;
    v21 = completionCopy;
    [(HKOrganDonationBaseViewController *)v11 setRegistrationCompletionHandler:&v16];
    [(HKMedicalIDEditorCell *)self->_editableCell dismissInputView:v16];
    v14 = [[HKNavigationController alloc] initWithRootViewController:v11];
    owningViewController = [(HKEmergencyCardTableItem *)self owningViewController];
    [owningViewController presentViewController:v14 animated:1 completion:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    if (+[HKOrganDonationConnectionManager isOrganDonationRegistrationAvailable](HKOrganDonationConnectionManager, "isOrganDonationRegistrationAvailable") && +[HKOrganDonationConnectionManager hasStoredRegistrant])
    {
      v5 = [HKMedicalIDOrganDonorPickerDataProvider medicalIDOrganDonorStatus:3];
      data2 = [(HKEmergencyCardTableItem *)self data];
      [data2 setIsOrganDonor:v5];

      data3 = [(HKEmergencyCardTableItem *)self data];
      isOrganDonor = [data3 isOrganDonor];
      [(HKMedicalIDEditorPickerCell *)self->_editableCell setChosenValueIndex:[HKMedicalIDOrganDonorPickerDataProvider emergencyCardOrganDonorStatus:isOrganDonor]];

      [(HKMedicalIDEditorCell *)self->_editableCell updateValueLabel];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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

- (int64_t)editingStyleForRowAtIndex:(int64_t)index
{
  if (self->_isEditing)
  {
    return 1;
  }

  data = [(HKEmergencyCardTableItem *)self data];
  isOrganDonor = [data isOrganDonor];

  if (isOrganDonor)
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

- (void)didCommitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index
{
  if (style == 2)
  {
    [(HKMedicalIDEditorPickerCell *)self->_editableCell beginEditing:2];
  }
}

@end