@interface HKEmergencyCardContactsTableItem
- (BOOL)hasPresentableData;
- (BOOL)refreshFromData:(BOOL)a3;
- (HKEmergencyCardContactUpdateDelegate)delegate;
- (id)_dequeueAndConfigureContactEditCellForIndex:(int64_t)a3 inTableView:(id)a4;
- (id)_dequeueAndConfigureContactViewCellForIndex:(int64_t)a3 inTableView:(id)a4;
- (id)_footerAttributedText;
- (id)_footerAttributedTextForPrimaryProfile;
- (id)_footerAttributedTextForSecondaryProfile;
- (id)_footerTextForSecondaryProfile;
- (id)_footerTextWithGivenName:(id)a3;
- (id)initInEditMode:(BOOL)a3;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
- (id)title;
- (id)titleForFooter;
- (id)titleForHeader;
- (int64_t)commitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4;
- (int64_t)editingStyleForRowAtIndex:(int64_t)a3;
- (int64_t)itemTypeForRowIndex:(int64_t)a3;
- (int64_t)numberOfRows;
- (void)_addEmergencyContactToData:(id)a3;
- (void)_setupContactPickingFlow;
- (void)callEmergencyContact:(id)a3;
- (void)emergencyContactFlow:(id)a3 didSelectContact:(id)a4;
- (void)emergencyContactRelationshipPicker:(id)a3 didChooseRelationshipNamed:(id)a4;
- (void)emergencyContactRelationshipPickerDidCancel:(id)a3;
- (void)medicalIDEditorCellDidTapLabel:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndex:(int64_t)a4;
@end

@implementation HKEmergencyCardContactsTableItem

- (id)initInEditMode:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKEmergencyCardContactsTableItem;
  return [(HKEmergencyCardTableItem *)&v4 initInEditMode:a3];
}

- (BOOL)hasPresentableData
{
  v3 = [(HKEmergencyCardTableItem *)self data];
  v4 = [v3 emergencyContacts];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(HKEmergencyCardTableItem *)self shouldShowHints];
  }

  return v5;
}

- (int64_t)itemTypeForRowIndex:(int64_t)a3
{
  v5 = [(HKEmergencyCardTableItem *)self isInEditMode];
  v6 = [(HKEmergencyCardTableItem *)self data];
  v7 = [v6 emergencyContacts];
  v8 = [v7 count];
  v9 = v8;
  if (v5)
  {

    v10 = v9 == a3;
    v11 = 3;
    goto LABEL_10;
  }

  if (v8)
  {

LABEL_9:
    v14 = [(HKEmergencyCardTableItem *)self data];
    v15 = [v14 emergencyContacts];
    v16 = [v15 count];

    v10 = v16 == a3;
    v11 = 1;
LABEL_10:
    if (v10)
    {
      return v11 + 1;
    }

    else
    {
      return v11;
    }
  }

  v12 = [(HKEmergencyCardTableItem *)self shouldShowHints];

  if (!v12)
  {
    goto LABEL_9;
  }

  if (a3)
  {
    return 2;
  }

  else
  {
    return 5;
  }
}

- (void)callEmergencyContact:(id)a3
{
  v3 = [a3 phoneNumber];
  [HKMedicalIDTelephoneUtilities callEmergencyContact:v3];
}

- (int64_t)numberOfRows
{
  v3 = [(HKEmergencyCardTableItem *)self data];
  v4 = [v3 emergencyContacts];
  v5 = [v4 count];

  v6 = v5 + [(HKEmergencyCardTableItem *)self isInEditMode];
  if (![(HKEmergencyCardTableItem *)self isInEditMode]&& [(HKEmergencyCardTableItem *)self shouldShowHints]&& v6 == 0)
  {
    v6 = 1;
  }

  if (![(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v7 = [(HKEmergencyCardTableItem *)self shouldShowHints];
    v8 = v6 > 0 || v7;
    v6 += v8;
  }

  return v6;
}

- (BOOL)refreshFromData:(BOOL)a3
{
  v3 = a3;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v5 = [(HKEmergencyCardTableItem *)self isSecondaryProfile]& v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HKEmergencyCardTableItem *)self data];
  v7 = [v6 updateEmergencyContactsAutopopulateForSecondaryProfileIfEmpty:v5];

  return v7;
}

- (id)_dequeueAndConfigureContactViewCellForIndex:(int64_t)a3 inTableView:(id)a4
{
  v6 = a4;
  v7 = [(HKEmergencyCardContactsTableItem *)self itemTypeForRowIndex:a3];
  if (v7 == 5)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:0x1F430FD00];
  }

  else if (v7 == 2)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:0x1F430F660];
    v9 = [(HKEmergencyCardContactsTableItem *)self _footerAttributedText];
    [v8 setFooterAttributedText:v9];
  }

  else
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:0x1F431A620];
    v10 = [(HKEmergencyCardTableItem *)self data];
    v11 = [v10 emergencyContacts];
    v12 = [v11 objectAtIndexedSubscript:{-[HKEmergencyCardContactsTableItem contactIndexForRowIndex:](self, "contactIndexForRowIndex:", a3)}];
    [v8 setContact:v12];
  }

  return v8;
}

- (id)_footerAttributedText
{
  if ([(HKEmergencyCardTableItem *)self isSecondaryProfile])
  {
    [(HKEmergencyCardContactsTableItem *)self _footerAttributedTextForSecondaryProfile];
  }

  else
  {
    [(HKEmergencyCardContactsTableItem *)self _footerAttributedTextForPrimaryProfile];
  }
  v3 = ;

  return v3;
}

- (id)_footerAttributedTextForPrimaryProfile
{
  v31[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"EMERGENCY_CONTACT_HINT_CONCATENATION_RULE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"EMERGENCY_CONTACT_HINT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"EMERGENCY_CONTACT_HINT_PROMPT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v9 = [v2 stringWithFormat:v4, v6, v8];

  v10 = objc_alloc(MEMORY[0x1E696AD40]);
  v11 = *MEMORY[0x1E69DB650];
  v30[0] = *MEMORY[0x1E69DB650];
  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v31[0] = v12;
  v13 = *MEMORY[0x1E69DB648];
  v30[1] = *MEMORY[0x1E69DB648];
  v14 = *MEMORY[0x1E69DDD28];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v31[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v17 = [v10 initWithString:v9 attributes:v16];

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v19 = [v18 localizedStringForKey:@"EMERGENCY_CONTACT_HINT_PROMPT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v20 = [v9 rangeOfString:v19];
  v22 = v21;

  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28[0] = v11;
    v23 = HKHealthKeyColor();
    v29[0] = v23;
    v28[1] = *MEMORY[0x1E69DB670];
    v24 = [MEMORY[0x1E695DFF8] URLWithString:@"settings-navigation://com.apple.Settings.SOS#-64"];
    v29[1] = v24;
    v28[2] = v13;
    v25 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v14];
    v29[2] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
    [v17 setAttributes:v26 range:{v20, v22}];
  }

  return v17;
}

- (id)_footerAttributedTextForSecondaryProfile
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [(HKEmergencyCardContactsTableItem *)self _footerTextForSecondaryProfile];
  v3 = objc_alloc(MEMORY[0x1E696AAB0]);
  v9[0] = *MEMORY[0x1E69DB650];
  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v10[0] = v4;
  v9[1] = *MEMORY[0x1E69DB648];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v3 initWithString:v2 attributes:v6];

  return v7;
}

- (id)_footerTextForSecondaryProfile
{
  v3 = [(HKEmergencyCardTableItem *)self profileFirstName];
  v4 = [(HKEmergencyCardContactsTableItem *)self _footerTextWithGivenName:v3];

  return v4;
}

- (id)_footerTextWithGivenName:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"EMERGENCY_CONTACT_HINT_WITH_NAME_%@_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];

  v7 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, v4, v4];

  return v7;
}

- (id)_dequeueAndConfigureContactEditCellForIndex:(int64_t)a3 inTableView:(id)a4
{
  v6 = [a4 dequeueReusableCellWithIdentifier:@"contactsTableItemEditCell"];
  if (!v6)
  {
    v6 = [[HKMedicalIDEditorEmergencyContactCell alloc] initWithStyle:1 reuseIdentifier:@"contactsTableItemEditCell"];
    [(HKMedicalIDEditorCell *)v6 setEditDelegate:self];
    [(HKMedicalIDEditorCell *)v6 setMinimumLabelWidth:87.0];
  }

  v7 = [(HKEmergencyCardTableItem *)self data];
  v8 = [v7 emergencyContacts];
  v9 = [v8 objectAtIndexedSubscript:a3];
  [(HKMedicalIDEditorEmergencyContactCell *)v6 setContact:v9];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  v6 = a3;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v7 = [(HKEmergencyCardTableItem *)self data];
    v8 = [v7 emergencyContacts];
    v9 = [v8 count];

    if (v9 == a4)
    {
      v10 = [(HKEmergencyCardTableItem *)self data];
      v11 = [v10 emergencyContacts];
      v12 = [v11 count] > 9;

      v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v14 = [v13 localizedStringForKey:@"add_emergency_contact" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v15 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:v6 withTitle:v14 disabled:v12];

      objc_storeStrong(&self->_lastDequeuedAddContactCell, v15);
      [(HKEmergencyCardContactsTableItem *)self _setupContactPickingFlow];
      goto LABEL_7;
    }

    v16 = [(HKEmergencyCardContactsTableItem *)self _dequeueAndConfigureContactEditCellForIndex:a4 inTableView:v6];
  }

  else
  {
    v16 = [(HKEmergencyCardContactsTableItem *)self _dequeueAndConfigureContactViewCellForIndex:a4 inTableView:v6];
  }

  v15 = v16;
LABEL_7:

  return v15;
}

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"contacts" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (void)_setupContactPickingFlow
{
  v3 = [HKMedicalIDEmergencyContactFlow alloc];
  v4 = [(HKEmergencyCardTableItem *)self owningViewController];
  v5 = [(HKEmergencyCardTableItem *)self data];
  v6 = [(HKMedicalIDEmergencyContactFlow *)v3 initWithPresentingViewController:v4 forMedicalIDData:v5];
  contactPicker = self->_contactPicker;
  self->_contactPicker = v6;

  [(HKMedicalIDEmergencyContactFlow *)self->_contactPicker setIsSecondaryProfile:[(HKEmergencyCardTableItem *)self isSecondaryProfile]];
  [(HKMedicalIDEmergencyContactFlow *)self->_contactPicker setDelegate:self];
  v8 = self->_contactPicker;

  [(HKMedicalIDEmergencyContactFlow *)v8 fetchFamilyContactsForSuggestion];
}

- (void)tableView:(id)a3 didSelectRowAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 indexPathForSelectedRow];
  [v6 deselectRowAtIndexPath:v7 animated:1];

  v8 = [(HKEmergencyCardContactsTableItem *)self itemTypeForRowIndex:a4];
  if (v8 == 4)
  {

    [(HKEmergencyCardContactsTableItem *)self _presentEmergencyContactPickerIfPossible];
  }

  else if (v8 == 1)
  {
    v9 = [(HKEmergencyCardTableItem *)self data];
    v10 = [v9 emergencyContacts];
    v11 = [v10 objectAtIndexedSubscript:{-[HKEmergencyCardContactsTableItem contactIndexForRowIndex:](self, "contactIndexForRowIndex:", a4)}];

    [(HKEmergencyCardContactsTableItem *)self callEmergencyContact:v11];
  }
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)a3
{
  v4 = [(HKEmergencyCardTableItem *)self data];
  v5 = [v4 emergencyContacts];
  v6 = [v5 count];

  if (v6 == a3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)commitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4
{
  if (a3 == 1)
  {
    v6 = [(HKEmergencyCardTableItem *)self data];
    v7 = [v6 emergencyContacts];
    v8 = [v7 mutableCopy];

    [v8 removeObjectAtIndex:{-[HKEmergencyCardContactsTableItem contactIndexForRowIndex:](self, "contactIndexForRowIndex:", a4)}];
    v9 = [(HKEmergencyCardTableItem *)self data];
    [v9 setEmergencyContacts:v8];

    return 1;
  }

  else
  {
    [(HKEmergencyCardContactsTableItem *)self _presentEmergencyContactPickerIfPossible:a3];
    return 0;
  }
}

- (void)medicalIDEditorCellDidTapLabel:(id)a3
{
  v4 = [a3 contact];
  selectedContact = self->_selectedContact;
  self->_selectedContact = v4;

  v8 = objc_alloc_init(HKEmergencyContactRelationshipPicker);
  [(HKEmergencyContactRelationshipPicker *)v8 setDelegate:self];
  v6 = [[HKNavigationController alloc] initWithRootViewController:v8];
  v7 = [(HKEmergencyCardTableItem *)self owningViewController];
  [v7 presentViewController:v6 animated:1 completion:0];
}

- (void)emergencyContactRelationshipPicker:(id)a3 didChooseRelationshipNamed:(id)a4
{
  [(_HKEmergencyContact *)self->_selectedContact setRelationship:a4];
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;

  v6 = [(HKEmergencyCardTableItem *)self owningViewController];
  [v6 dismissViewControllerAnimated:1 completion:0];

  v7 = [(HKEmergencyCardContactsTableItem *)self delegate];
  [v7 updateEmergencyContactTableItem];
}

- (void)emergencyContactRelationshipPickerDidCancel:(id)a3
{
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;

  v5 = [(HKEmergencyCardTableItem *)self owningViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)_addEmergencyContactToData:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKEmergencyCardTableItem *)self data];
  v6 = [v5 emergencyContacts];

  if (v6)
  {
    v7 = [v6 arrayByAddingObject:v4];
  }

  else
  {
    v10[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  if (getSOSUtilitiesClass_0() && ([getSOSUtilitiesClass_0() isAllowedToMessageSOSContacts] & 1) == 0)
  {
    [getSOSUtilitiesClass_0() setAllowedToMessageSOSContacts:1];
  }

  v8 = [(HKEmergencyCardTableItem *)self data];
  [v8 setEmergencyContacts:v7];

  v9 = [(HKEmergencyCardContactsTableItem *)self delegate];
  [v9 updateEmergencyContactTableItem];
}

- (void)emergencyContactFlow:(id)a3 didSelectContact:(id)a4
{
  [(HKEmergencyCardContactsTableItem *)self _addEmergencyContactToData:a4];
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;
}

- (id)titleForFooter
{
  if (![(HKEmergencyCardTableItem *)self isInEditMode])
  {
    goto LABEL_9;
  }

  if ([(HKEmergencyCardTableItem *)self isSecondaryProfile])
  {
    v3 = [(HKEmergencyCardContactsTableItem *)self _footerTextForSecondaryProfile];
    goto LABEL_10;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getSOSManagerClass_softClass;
  v12 = getSOSManagerClass_softClass;
  if (!getSOSManagerClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getSOSManagerClass_block_invoke;
    v8[3] = &unk_1E81B5C18;
    v8[4] = &v9;
    __getSOSManagerClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  if (([v4 deviceSupportsSOS] & 1) != 0 || objc_msgSend(MEMORY[0x1E696C608], "hasPairedWatch"))
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v3 = [v6 localizedStringForKey:@"EMERGENCY_CONTACT_FOOTNOTE_LONG" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  else
  {
LABEL_9:
    v3 = &stru_1F42FFBE0;
  }

LABEL_10:

  return v3;
}

- (id)titleForHeader
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"EMERGENCY_CONTACT_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (HKEmergencyCardContactUpdateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end