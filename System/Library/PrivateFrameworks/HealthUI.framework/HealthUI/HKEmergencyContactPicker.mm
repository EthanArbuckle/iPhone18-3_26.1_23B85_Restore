@interface HKEmergencyContactPicker
- (HKEmergencyContactPicker)initWithOwningViewController:(id)a3;
- (HKEmergencyContactPickerDelegate)delegate;
- (id)_meContactIdentifier;
- (void)_meContactIdentifier;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)presentEmergencyContactPickerForMedicalIDDataIfPossible:(id)a3;
- (void)presentMaximumEmergencyContactAlert;
@end

@implementation HKEmergencyContactPicker

- (HKEmergencyContactPicker)initWithOwningViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKEmergencyContactPicker;
  v6 = [(HKEmergencyContactPicker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_owningViewController, a3);
  }

  return v7;
}

- (void)presentEmergencyContactPickerForMedicalIDDataIfPossible:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 emergencyContacts];
  v6 = [v5 count];

  if (v6 >= 10)
  {
    [(HKEmergencyContactPicker *)self presentMaximumEmergencyContactAlert];
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v7 = getCNContactPickerViewControllerClass_softClass;
    v29 = getCNContactPickerViewControllerClass_softClass;
    if (!getCNContactPickerViewControllerClass_softClass)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __getCNContactPickerViewControllerClass_block_invoke;
      v25[3] = &unk_1E81B5C18;
      v25[4] = &v26;
      __getCNContactPickerViewControllerClass_block_invoke(v25);
      v7 = v27[3];
    }

    v8 = v7;
    _Block_object_dispose(&v26, 8);
    v9 = objc_alloc_init(v7);
    if (v9)
    {
      v30[0] = *MEMORY[0x1E695C330];
      v10 = v30[0];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      [v9 setDisplayedPropertyKeys:v11];

      [v9 setDelegate:self];
      [v9 setMode:1];
      [v9 setOnlyRealContacts:1];
      v12 = [(HKEmergencyContactPicker *)self _meContactIdentifier];
      v13 = NSStringFromSelector(sel_nameContactIdentifier);
      v14 = [v4 emergencyContacts];
      v15 = [v14 valueForKeyPath:v13];

      v16 = MEMORY[0x1E695DF70];
      v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.@count > 0", v10];
      v18 = [v16 arrayWithObject:v17];

      if (v12 && ![(HKEmergencyContactPicker *)self isSecondaryProfile])
      {
        v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %@", *MEMORY[0x1E695C258], v12];
        [v18 addObject:v19];
      }

      if ([v15 count])
      {
        v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"!(%K IN %@)", *MEMORY[0x1E695C258], v15];
        [v18 addObject:v20];
      }

      v21 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v18];
      [v9 setPredicateForEnablingContact:v21];

      if ([(NSArray *)self->_suggestedContacts count])
      {
        [v9 setShouldDisplaySuggestionsController:1];
        [v9 setContactSuggestions:self->_suggestedContacts];
      }

      v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"phoneNumbers.@count = 1"];
      [v9 setPredicateForSelectionOfContact:v22];

      v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"property == 'phoneNumbers'"];
      [v9 setPredicateForSelectionOfProperty:v23];

      v24 = [(HKEmergencyContactPicker *)self owningViewController];
      [v24 presentViewController:v9 animated:1 completion:0];
    }
  }
}

- (void)presentMaximumEmergencyContactAlert
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v3 localizedStringForKey:@"EMERGENCY_CONTACT_MAX_NUMBER_REACHED_ALERT_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"EMERGENCY_CONTACT_MAX_NUMBER_REACHED_ALERT_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v5 preferredStyle:1];
  v7 = MEMORY[0x1E69DC648];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"EMERGENCY_CONTACT_MAX_NUMBER_REACHED_ALERT_OK_ACTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10 = [v7 actionWithTitle:v9 style:1 handler:0];

  [v6 addAction:v10];
  v11 = [(HKEmergencyContactPicker *)self owningViewController];
  [v11 presentViewController:v6 animated:1 completion:0];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained emergencyContactPicker:self didSelectContact:v5];
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained emergencyContactPicker:self didSelectContactProperty:v5];
}

- (id)_meContactIdentifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
  {
    v2 = [MEMORY[0x1E695CE18] storeWithOptions:1];
    v10[0] = *MEMORY[0x1E695C258];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v9 = 0;
    v4 = [v2 _ios_meContactWithKeysToFetch:v3 error:&v9];
    v5 = v9;

    if (v5)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x1E696B940];
      if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
      {
        [(HKEmergencyContactPicker *)v5 _meContactIdentifier];
      }
    }

    v7 = [v4 identifier];
  }

  else
  {
    v7 = &stru_1F42FFBE0;
  }

  return v7;
}

- (HKEmergencyContactPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_meContactIdentifier
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Error fetching me contact: %@", &v2, 0xCu);
}

@end