@interface HKEmergencyCardContactsTableItem
- (BOOL)hasPresentableData;
- (BOOL)refreshFromData:(BOOL)data;
- (HKEmergencyCardContactUpdateDelegate)delegate;
- (id)_dequeueAndConfigureContactEditCellForIndex:(int64_t)index inTableView:(id)view;
- (id)_dequeueAndConfigureContactViewCellForIndex:(int64_t)index inTableView:(id)view;
- (id)_footerAttributedText;
- (id)_footerAttributedTextForPrimaryProfile;
- (id)_footerAttributedTextForSecondaryProfile;
- (id)_footerTextForSecondaryProfile;
- (id)_footerTextWithGivenName:(id)name;
- (id)initInEditMode:(BOOL)mode;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
- (id)title;
- (id)titleForFooter;
- (id)titleForHeader;
- (int64_t)commitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index;
- (int64_t)editingStyleForRowAtIndex:(int64_t)index;
- (int64_t)itemTypeForRowIndex:(int64_t)index;
- (int64_t)numberOfRows;
- (void)_addEmergencyContactToData:(id)data;
- (void)_setupContactPickingFlow;
- (void)callEmergencyContact:(id)contact;
- (void)emergencyContactFlow:(id)flow didSelectContact:(id)contact;
- (void)emergencyContactRelationshipPicker:(id)picker didChooseRelationshipNamed:(id)named;
- (void)emergencyContactRelationshipPickerDidCancel:(id)cancel;
- (void)medicalIDEditorCellDidTapLabel:(id)label;
- (void)tableView:(id)view didSelectRowAtIndex:(int64_t)index;
@end

@implementation HKEmergencyCardContactsTableItem

- (id)initInEditMode:(BOOL)mode
{
  v4.receiver = self;
  v4.super_class = HKEmergencyCardContactsTableItem;
  return [(HKEmergencyCardTableItem *)&v4 initInEditMode:mode];
}

- (BOOL)hasPresentableData
{
  data = [(HKEmergencyCardTableItem *)self data];
  emergencyContacts = [data emergencyContacts];
  if ([emergencyContacts count])
  {
    shouldShowHints = 1;
  }

  else
  {
    shouldShowHints = [(HKEmergencyCardTableItem *)self shouldShowHints];
  }

  return shouldShowHints;
}

- (int64_t)itemTypeForRowIndex:(int64_t)index
{
  isInEditMode = [(HKEmergencyCardTableItem *)self isInEditMode];
  data = [(HKEmergencyCardTableItem *)self data];
  emergencyContacts = [data emergencyContacts];
  v8 = [emergencyContacts count];
  v9 = v8;
  if (isInEditMode)
  {

    v10 = v9 == index;
    v11 = 3;
    goto LABEL_10;
  }

  if (v8)
  {

LABEL_9:
    data2 = [(HKEmergencyCardTableItem *)self data];
    emergencyContacts2 = [data2 emergencyContacts];
    v16 = [emergencyContacts2 count];

    v10 = v16 == index;
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

  shouldShowHints = [(HKEmergencyCardTableItem *)self shouldShowHints];

  if (!shouldShowHints)
  {
    goto LABEL_9;
  }

  if (index)
  {
    return 2;
  }

  else
  {
    return 5;
  }
}

- (void)callEmergencyContact:(id)contact
{
  phoneNumber = [contact phoneNumber];
  [HKMedicalIDTelephoneUtilities callEmergencyContact:phoneNumber];
}

- (int64_t)numberOfRows
{
  data = [(HKEmergencyCardTableItem *)self data];
  emergencyContacts = [data emergencyContacts];
  v5 = [emergencyContacts count];

  v6 = v5 + [(HKEmergencyCardTableItem *)self isInEditMode];
  if (![(HKEmergencyCardTableItem *)self isInEditMode]&& [(HKEmergencyCardTableItem *)self shouldShowHints]&& v6 == 0)
  {
    v6 = 1;
  }

  if (![(HKEmergencyCardTableItem *)self isInEditMode])
  {
    shouldShowHints = [(HKEmergencyCardTableItem *)self shouldShowHints];
    v8 = v6 > 0 || shouldShowHints;
    v6 += v8;
  }

  return v6;
}

- (BOOL)refreshFromData:(BOOL)data
{
  dataCopy = data;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v5 = [(HKEmergencyCardTableItem *)self isSecondaryProfile]& dataCopy;
  }

  else
  {
    v5 = 0;
  }

  data = [(HKEmergencyCardTableItem *)self data];
  v7 = [data updateEmergencyContactsAutopopulateForSecondaryProfileIfEmpty:v5];

  return v7;
}

- (id)_dequeueAndConfigureContactViewCellForIndex:(int64_t)index inTableView:(id)view
{
  viewCopy = view;
  v7 = [(HKEmergencyCardContactsTableItem *)self itemTypeForRowIndex:index];
  if (v7 == 5)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:0x1F430FD00];
  }

  else if (v7 == 2)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:0x1F430F660];
    _footerAttributedText = [(HKEmergencyCardContactsTableItem *)self _footerAttributedText];
    [v8 setFooterAttributedText:_footerAttributedText];
  }

  else
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:0x1F431A620];
    data = [(HKEmergencyCardTableItem *)self data];
    emergencyContacts = [data emergencyContacts];
    v12 = [emergencyContacts objectAtIndexedSubscript:{-[HKEmergencyCardContactsTableItem contactIndexForRowIndex:](self, "contactIndexForRowIndex:", index)}];
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
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v31[0] = secondaryLabelColor;
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
  _footerTextForSecondaryProfile = [(HKEmergencyCardContactsTableItem *)self _footerTextForSecondaryProfile];
  v3 = objc_alloc(MEMORY[0x1E696AAB0]);
  v9[0] = *MEMORY[0x1E69DB650];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v10[0] = secondaryLabelColor;
  v9[1] = *MEMORY[0x1E69DB648];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v3 initWithString:_footerTextForSecondaryProfile attributes:v6];

  return v7;
}

- (id)_footerTextForSecondaryProfile
{
  profileFirstName = [(HKEmergencyCardTableItem *)self profileFirstName];
  v4 = [(HKEmergencyCardContactsTableItem *)self _footerTextWithGivenName:profileFirstName];

  return v4;
}

- (id)_footerTextWithGivenName:(id)name
{
  v3 = MEMORY[0x1E696AAE8];
  nameCopy = name;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"EMERGENCY_CONTACT_HINT_WITH_NAME_%@_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];

  nameCopy = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, nameCopy, nameCopy];

  return nameCopy;
}

- (id)_dequeueAndConfigureContactEditCellForIndex:(int64_t)index inTableView:(id)view
{
  v6 = [view dequeueReusableCellWithIdentifier:@"contactsTableItemEditCell"];
  if (!v6)
  {
    v6 = [[HKMedicalIDEditorEmergencyContactCell alloc] initWithStyle:1 reuseIdentifier:@"contactsTableItemEditCell"];
    [(HKMedicalIDEditorCell *)v6 setEditDelegate:self];
    [(HKMedicalIDEditorCell *)v6 setMinimumLabelWidth:87.0];
  }

  data = [(HKEmergencyCardTableItem *)self data];
  emergencyContacts = [data emergencyContacts];
  v9 = [emergencyContacts objectAtIndexedSubscript:index];
  [(HKMedicalIDEditorEmergencyContactCell *)v6 setContact:v9];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    data = [(HKEmergencyCardTableItem *)self data];
    emergencyContacts = [data emergencyContacts];
    v9 = [emergencyContacts count];

    if (v9 == index)
    {
      data2 = [(HKEmergencyCardTableItem *)self data];
      emergencyContacts2 = [data2 emergencyContacts];
      v12 = [emergencyContacts2 count] > 9;

      v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v14 = [v13 localizedStringForKey:@"add_emergency_contact" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v15 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:viewCopy withTitle:v14 disabled:v12];

      objc_storeStrong(&self->_lastDequeuedAddContactCell, v15);
      [(HKEmergencyCardContactsTableItem *)self _setupContactPickingFlow];
      goto LABEL_7;
    }

    v16 = [(HKEmergencyCardContactsTableItem *)self _dequeueAndConfigureContactEditCellForIndex:index inTableView:viewCopy];
  }

  else
  {
    v16 = [(HKEmergencyCardContactsTableItem *)self _dequeueAndConfigureContactViewCellForIndex:index inTableView:viewCopy];
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
  owningViewController = [(HKEmergencyCardTableItem *)self owningViewController];
  data = [(HKEmergencyCardTableItem *)self data];
  v6 = [(HKMedicalIDEmergencyContactFlow *)v3 initWithPresentingViewController:owningViewController forMedicalIDData:data];
  contactPicker = self->_contactPicker;
  self->_contactPicker = v6;

  [(HKMedicalIDEmergencyContactFlow *)self->_contactPicker setIsSecondaryProfile:[(HKEmergencyCardTableItem *)self isSecondaryProfile]];
  [(HKMedicalIDEmergencyContactFlow *)self->_contactPicker setDelegate:self];
  v8 = self->_contactPicker;

  [(HKMedicalIDEmergencyContactFlow *)v8 fetchFamilyContactsForSuggestion];
}

- (void)tableView:(id)view didSelectRowAtIndex:(int64_t)index
{
  viewCopy = view;
  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
  [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

  v8 = [(HKEmergencyCardContactsTableItem *)self itemTypeForRowIndex:index];
  if (v8 == 4)
  {

    [(HKEmergencyCardContactsTableItem *)self _presentEmergencyContactPickerIfPossible];
  }

  else if (v8 == 1)
  {
    data = [(HKEmergencyCardTableItem *)self data];
    emergencyContacts = [data emergencyContacts];
    v11 = [emergencyContacts objectAtIndexedSubscript:{-[HKEmergencyCardContactsTableItem contactIndexForRowIndex:](self, "contactIndexForRowIndex:", index)}];

    [(HKEmergencyCardContactsTableItem *)self callEmergencyContact:v11];
  }
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)index
{
  data = [(HKEmergencyCardTableItem *)self data];
  emergencyContacts = [data emergencyContacts];
  v6 = [emergencyContacts count];

  if (v6 == index)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)commitEditingStyle:(int64_t)style forRowAtIndex:(int64_t)index
{
  if (style == 1)
  {
    data = [(HKEmergencyCardTableItem *)self data];
    emergencyContacts = [data emergencyContacts];
    v8 = [emergencyContacts mutableCopy];

    [v8 removeObjectAtIndex:{-[HKEmergencyCardContactsTableItem contactIndexForRowIndex:](self, "contactIndexForRowIndex:", index)}];
    data2 = [(HKEmergencyCardTableItem *)self data];
    [data2 setEmergencyContacts:v8];

    return 1;
  }

  else
  {
    [(HKEmergencyCardContactsTableItem *)self _presentEmergencyContactPickerIfPossible:style];
    return 0;
  }
}

- (void)medicalIDEditorCellDidTapLabel:(id)label
{
  contact = [label contact];
  selectedContact = self->_selectedContact;
  self->_selectedContact = contact;

  v8 = objc_alloc_init(HKEmergencyContactRelationshipPicker);
  [(HKEmergencyContactRelationshipPicker *)v8 setDelegate:self];
  v6 = [[HKNavigationController alloc] initWithRootViewController:v8];
  owningViewController = [(HKEmergencyCardTableItem *)self owningViewController];
  [owningViewController presentViewController:v6 animated:1 completion:0];
}

- (void)emergencyContactRelationshipPicker:(id)picker didChooseRelationshipNamed:(id)named
{
  [(_HKEmergencyContact *)self->_selectedContact setRelationship:named];
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;

  owningViewController = [(HKEmergencyCardTableItem *)self owningViewController];
  [owningViewController dismissViewControllerAnimated:1 completion:0];

  delegate = [(HKEmergencyCardContactsTableItem *)self delegate];
  [delegate updateEmergencyContactTableItem];
}

- (void)emergencyContactRelationshipPickerDidCancel:(id)cancel
{
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;

  owningViewController = [(HKEmergencyCardTableItem *)self owningViewController];
  [owningViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_addEmergencyContactToData:(id)data
{
  v10[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  data = [(HKEmergencyCardTableItem *)self data];
  emergencyContacts = [data emergencyContacts];

  if (emergencyContacts)
  {
    v7 = [emergencyContacts arrayByAddingObject:dataCopy];
  }

  else
  {
    v10[0] = dataCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  if (getSOSUtilitiesClass_0() && ([getSOSUtilitiesClass_0() isAllowedToMessageSOSContacts] & 1) == 0)
  {
    [getSOSUtilitiesClass_0() setAllowedToMessageSOSContacts:1];
  }

  data2 = [(HKEmergencyCardTableItem *)self data];
  [data2 setEmergencyContacts:v7];

  delegate = [(HKEmergencyCardContactsTableItem *)self delegate];
  [delegate updateEmergencyContactTableItem];
}

- (void)emergencyContactFlow:(id)flow didSelectContact:(id)contact
{
  [(HKEmergencyCardContactsTableItem *)self _addEmergencyContactToData:contact];
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
    _footerTextForSecondaryProfile = [(HKEmergencyCardContactsTableItem *)self _footerTextForSecondaryProfile];
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
    _footerTextForSecondaryProfile = [v6 localizedStringForKey:@"EMERGENCY_CONTACT_FOOTNOTE_LONG" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  else
  {
LABEL_9:
    _footerTextForSecondaryProfile = &stru_1F42FFBE0;
  }

LABEL_10:

  return _footerTextForSecondaryProfile;
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