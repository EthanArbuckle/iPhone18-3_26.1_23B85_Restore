@interface HKEmergencyContactRelationshipPicker
- (HKEmergencyContactRelationshipPicker)init;
- (HKEmergencyContactRelationshipPickerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_cancelTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HKEmergencyContactRelationshipPicker

- (HKEmergencyContactRelationshipPicker)init
{
  v49 = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = HKEmergencyContactRelationshipPicker;
  v2 = [(HKTableViewController *)&v42 init];
  if (v2)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2050000000;
    v3 = getCNLabeledValueClass_softClass;
    v47 = getCNLabeledValueClass_softClass;
    if (!getCNLabeledValueClass_softClass)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __getCNLabeledValueClass_block_invoke;
      v43[3] = &unk_1E81B5C18;
      v43[4] = &v44;
      __getCNLabeledValueClass_block_invoke(v43);
      v3 = v45[3];
    }

    v4 = v3;
    _Block_object_dispose(&v44, 8);
    v5 = [v3 builtinLabelsForProperty:*MEMORY[0x1E695C3A8]];
    v6 = [v5 mutableCopy];

    v7 = [v6 indexOfObject:*MEMORY[0x1E695C970]];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || v7 == [v6 count] - 1)
    {
      [v6 addObject:*MEMORY[0x1E695C958]];
    }

    else
    {
      [v6 insertObject:*MEMORY[0x1E695C958] atIndex:v7 + 1];
    }

    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"relationship_roommate" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v6 addObject:v9];

    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:@"relationship_doctor" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v6 addObject:v11];

    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"relationship_emergency" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v6 addObject:v13];

    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:@"relationship_family_member" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    [v6 addObject:v15];

    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"relationship_teacher" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    [v6 addObject:v17];

    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"relationship_caretaker" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    [v6 addObject:v19];

    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v21 = [v20 localizedStringForKey:@"relationship_guardian" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    [v6 addObject:v21];

    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = [v22 localizedStringForKey:@"relationship_social_worker" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    [v6 addObject:v23];

    v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v25 = [v24 localizedStringForKey:@"relationship_school" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    [v6 addObject:v25];

    v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v27 = [v26 localizedStringForKey:@"relationship_daycare" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    [v6 addObject:v27];

    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = v6;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v30)
    {
      v31 = *v39;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = [v3 localizedStringForLabel:{*(*(&v38 + 1) + 8 * i), v38}];
          [(NSArray *)v28 addObject:v33];
        }

        v30 = [(NSArray *)v29 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v30);
    }

    tokens = v2->_tokens;
    v2->_tokens = v29;
    v35 = v29;

    labels = v2->_labels;
    v2->_labels = v28;
  }

  return v2;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HKEmergencyContactRelationshipPicker;
  [(HKTableViewController *)&v8 viewDidLoad];
  v3 = [(HKEmergencyContactRelationshipPicker *)self tableView];
  [v3 setEstimatedRowHeight:52.0];

  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelTapped_];
  v5 = [(HKEmergencyContactRelationshipPicker *)self navigationItem];
  [v5 setLeftBarButtonItem:v4];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"emergency_contact_relationship" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKEmergencyContactRelationshipPicker *)self setTitle:v7];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"reuseIdentifier"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_labels, "objectAtIndexedSubscript:", [v6 row]);
  v9 = [v7 textLabel];
  [v9 setText:v8];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  tokens = self->_tokens;
  v7 = [v5 row];

  v8 = [(NSArray *)tokens objectAtIndexedSubscript:v7];
  [WeakRetained emergencyContactRelationshipPicker:self didChooseRelationshipNamed:v8];
}

- (void)_cancelTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained emergencyContactRelationshipPickerDidCancel:self];
}

- (HKEmergencyContactRelationshipPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end