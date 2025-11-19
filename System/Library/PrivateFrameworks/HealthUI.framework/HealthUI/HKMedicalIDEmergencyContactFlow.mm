@interface HKMedicalIDEmergencyContactFlow
- (HKCoreTelephonyUtilities)coreTelephonyUtilities;
- (HKMedicalIDEmergencyContactFlow)initWithPresentingViewController:(id)a3 forMedicalIDData:(id)a4;
- (HKMedicalIDEmergencyContactFlowDelegate)delegate;
- (void)_didSelectContact:(id)a3 property:(id)a4;
- (void)emergencyContactRelationshipPicker:(id)a3 didChooseRelationshipNamed:(id)a4;
- (void)emergencyContactRelationshipPickerDidCancel:(id)a3;
- (void)fetchFamilyContactsForSuggestion;
- (void)presentEmergencyContactFlow;
- (void)setSuggestedContacts:(id)a3;
@end

@implementation HKMedicalIDEmergencyContactFlow

- (HKMedicalIDEmergencyContactFlow)initWithPresentingViewController:(id)a3 forMedicalIDData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HKMedicalIDEmergencyContactFlow;
  v9 = [(HKMedicalIDEmergencyContactFlow *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_medicalIDData, a4);
    objc_storeStrong(&v10->_owningViewController, a3);
    v11 = [[HKEmergencyContactPicker alloc] initWithOwningViewController:v10->_owningViewController];
    contactPicker = v10->_contactPicker;
    v10->_contactPicker = v11;
  }

  return v10;
}

- (void)fetchFamilyContactsForSuggestion
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(2, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__HKMedicalIDEmergencyContactFlow_fetchFamilyContactsForSuggestion__block_invoke;
  v3[3] = &unk_1E81B5738;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __67__HKMedicalIDEmergencyContactFlow_fetchFamilyContactsForSuggestion__block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __67__HKMedicalIDEmergencyContactFlow_fetchFamilyContactsForSuggestion__block_invoke_2;
  v1[3] = &unk_1E81B69C0;
  objc_copyWeak(&v2, (a1 + 32));
  [HKFamilyCircleUtilities fetchFamilyContacts:v1];
  objc_destroyWeak(&v2);
}

void __67__HKMedicalIDEmergencyContactFlow_fetchFamilyContactsForSuggestion__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSuggestedContacts:v3];
}

- (void)setSuggestedContacts:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__HKMedicalIDEmergencyContactFlow_setSuggestedContacts___block_invoke;
  v6[3] = &unk_1E81B5AD0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)presentEmergencyContactFlow
{
  [(HKEmergencyContactPicker *)self->_contactPicker setDelegate:self];
  [(HKEmergencyContactPicker *)self->_contactPicker setIsSecondaryProfile:[(HKMedicalIDEmergencyContactFlow *)self isSecondaryProfile]];
  if (self->_shouldShowSuggestedContacts && ![(HKMedicalIDEmergencyContactFlow *)self isSecondaryProfile])
  {
    [(HKEmergencyContactPicker *)self->_contactPicker setSuggestedContacts:self->_suggestedContacts];
  }

  contactPicker = self->_contactPicker;
  medicalIDData = self->_medicalIDData;

  [(HKEmergencyContactPicker *)contactPicker presentEmergencyContactPickerForMedicalIDDataIfPossible:medicalIDData];
}

- (HKCoreTelephonyUtilities)coreTelephonyUtilities
{
  coreTelephonyUtilities = self->_coreTelephonyUtilities;
  if (!coreTelephonyUtilities)
  {
    v4 = objc_alloc_init(HKCoreTelephonyUtilities);
    v5 = self->_coreTelephonyUtilities;
    self->_coreTelephonyUtilities = v4;

    coreTelephonyUtilities = self->_coreTelephonyUtilities;
  }

  return coreTelephonyUtilities;
}

- (void)_didSelectContact:(id)a3 property:(id)a4
{
  v5 = [MEMORY[0x1E696C628] emergencyContactWithContact:a3 property:a4];
  v6 = [(HKMedicalIDEmergencyContactFlow *)self coreTelephonyUtilities];
  v7 = [v5 phoneNumber];
  v8 = [v6 isEmergencyServicePhoneNumber:v7];

  if (v8)
  {
    v9 = MEMORY[0x1E69DC650];
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:@"EMERGENCY_CONTACT_NO_EMERGENCY_SERVICE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"EMERGENCY_CONTACT_NO_EMERGENCY_SERVICE_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v14 = [v9 alertControllerWithTitle:v11 message:v13 preferredStyle:1];

    v15 = MEMORY[0x1E69DC648];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [(HKEmergencyContactRelationshipPicker *)v16 localizedStringForKey:@"EMERGENCY_CONTACT_NO_EMERGENCY_SERVICE_BUTTON" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v18 = [v15 actionWithTitle:v17 style:0 handler:0];
    [(HKNavigationController *)v14 addAction:v18];
  }

  else
  {
    v16 = objc_alloc_init(HKEmergencyContactRelationshipPicker);
    [(HKEmergencyContactRelationshipPicker *)v16 setDelegate:self];
    objc_storeStrong(&self->_selectedContact, v5);
    v14 = [[HKNavigationController alloc] initWithRootViewController:v16];
  }

  [(HKMedicalIDEmergencyContactFlow *)self setCoreTelephonyUtilities:0];
  owningViewController = self->_owningViewController;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__HKMedicalIDEmergencyContactFlow__didSelectContact_property___block_invoke;
  v21[3] = &unk_1E81B5AD0;
  v21[4] = self;
  v22 = v14;
  v20 = v14;
  [(UIViewController *)owningViewController dismissViewControllerAnimated:1 completion:v21];
}

- (void)emergencyContactRelationshipPicker:(id)a3 didChooseRelationshipNamed:(id)a4
{
  v5 = a4;
  if (!self)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      [HKMedicalIDEmergencyContactFlow emergencyContactRelationshipPicker:v6 didChooseRelationshipNamed:?];
    }
  }

  [(_HKEmergencyContact *)self->_selectedContact setRelationship:v5];
  v7 = [(HKMedicalIDEmergencyContactFlow *)self delegate];
  [v7 emergencyContactFlow:self didSelectContact:self->_selectedContact];

  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;

  [(UIViewController *)self->_owningViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)emergencyContactRelationshipPickerDidCancel:(id)a3
{
  if (!self)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      [HKMedicalIDEmergencyContactFlow emergencyContactRelationshipPicker:v4 didChooseRelationshipNamed:?];
    }
  }

  v5 = [(HKMedicalIDEmergencyContactFlow *)self delegate];
  [v5 emergencyContactFlowDidCancel:self];

  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;

  [(UIViewController *)self->_owningViewController dismissViewControllerAnimated:1 completion:0];
}

- (HKMedicalIDEmergencyContactFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end