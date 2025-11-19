@interface HKFeatureAvailabilityInternalSettingsViewController
- (BOOL)_disabledOverriden;
- (BOOL)_featureEnabled;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (HKFeatureAvailabilityInternalSettingsViewController)initWithHealthStore:(id)a3 configuration:(id)a4;
- (id)_buttonCellForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)_offsetSectionForSection:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_disableOverride:(BOOL)a3;
- (void)_enableFeature:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HKFeatureAvailabilityInternalSettingsViewController

- (HKFeatureAvailabilityInternalSettingsViewController)initWithHealthStore:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = HKFeatureAvailabilityInternalSettingsViewController;
  v9 = [(HKFeatureAvailabilityInternalSettingsViewController *)&v18 initWithStyle:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, a3);
    objc_storeStrong(&v10->_configuration, a4);
    if ([v8 showFeatureEnable])
    {
      v11 = objc_alloc(MEMORY[0x1E695E000]);
      v12 = [v8 userDefaultsDomain];
      v13 = [v11 initWithSuiteName:v12];
      userDefaults = v10->_userDefaults;
      v10->_userDefaults = v13;
    }

    if ([v8 syncToWatch])
    {
      v15 = objc_alloc_init(MEMORY[0x1E69B3590]);
      syncManager = v10->_syncManager;
      v10->_syncManager = v15;
    }
  }

  return v10;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HKFeatureAvailabilityInternalSettingsViewController;
  [(HKTableViewController *)&v3 viewDidLoad];
  [(HKFeatureAvailabilityInternalSettingsViewController *)self setTitle:@"Internal Settings"];
}

- (int64_t)_offsetSectionForSection:(int64_t)a3
{
  v4 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  v5 = [v4 showFeatureEnable] ^ 1;

  return v5 + a3;
}

- (BOOL)_featureEnabled
{
  v3 = [(HKFeatureAvailabilityInternalSettingsViewController *)self userDefaults];
  v4 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  v5 = [v4 userDefaultsFeatureEnabledKey];
  v6 = [v3 BOOLForKey:v5];

  return v6;
}

- (void)_enableFeature:(BOOL)a3
{
  v3 = a3;
  v5 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  v6 = [v5 userDefaultsDomain];
  v7 = [v6 hk_copyNonEmptyString];

  if (v7)
  {
    v8 = [(HKFeatureAvailabilityInternalSettingsViewController *)self userDefaults];
    v9 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    v10 = [v9 userDefaultsFeatureEnabledKey];
    [v8 setBool:v3 forKey:v10];

    v17 = [(HKFeatureAvailabilityInternalSettingsViewController *)self syncManager];
    v11 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    v12 = [v11 userDefaultsDomain];
    v13 = MEMORY[0x1E695DFD8];
    v14 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    v15 = [v14 userDefaultsFeatureEnabledKey];
    v16 = [v13 setWithObject:v15];
    [v17 synchronizeUserDefaultsDomain:v12 keys:v16];
  }
}

- (BOOL)_disabledOverriden
{
  v3 = [(HKFeatureAvailabilityInternalSettingsViewController *)self userDefaults];
  v4 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  v5 = [v4 userDefaultsDisabledOverrideKey];
  v6 = [v3 BOOLForKey:v5];

  return v6;
}

- (void)_disableOverride:(BOOL)a3
{
  v3 = a3;
  v19 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  v5 = [v19 userDefaultsDomain];
  v6 = [v5 hk_copyNonEmptyString];
  if (v6)
  {
    v7 = v6;
    v8 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    v9 = [v8 userDefaultsDisabledOverrideKey];
    v10 = [v9 hk_copyNonEmptyString];

    if (!v10)
    {
      return;
    }

    v11 = [(HKFeatureAvailabilityInternalSettingsViewController *)self userDefaults];
    v12 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    v13 = [v12 userDefaultsDisabledOverrideKey];
    [v11 setBool:v3 forKey:v13];

    v19 = [(HKFeatureAvailabilityInternalSettingsViewController *)self syncManager];
    v5 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    v14 = [v5 userDefaultsDomain];
    v15 = MEMORY[0x1E695DFD8];
    v16 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    v17 = [v16 userDefaultsDisabledOverrideKey];
    v18 = [v15 setWithObject:v17];
    [v19 synchronizeUserDefaultsDomain:v14 keys:v18];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  if ([v3 showFeatureEnable])
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)_buttonCellForTableView:(id)a3
{
  v3 = [a3 dequeueReusableCellWithIdentifier:@"ButtonCell"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"ButtonCell"];
    v4 = [MEMORY[0x1E69DC888] hk_appKeyColor];
    v5 = [v3 textLabel];
    [v5 setTextColor:v4];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = -[HKFeatureAvailabilityInternalSettingsViewController _offsetSectionForSection:](self, "_offsetSectionForSection:", [a4 section]);
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_16;
      }

      a4 = [(HKFeatureAvailabilityInternalSettingsViewController *)self _buttonCellForTableView:v6];
      v8 = [a4 textLabel];
      v9 = v8;
      v10 = @"Delete All Samples";
      goto LABEL_15;
    }

    v12 = [(HKFeatureAvailabilityInternalSettingsViewController *)self _featureEnabled];
    a4 = [(HKFeatureAvailabilityInternalSettingsViewController *)self _buttonCellForTableView:v6];
    v9 = [a4 textLabel];
    if (v12)
    {
      v10 = @"Disable Feature";
    }

    else
    {
      v10 = @"Enable Feature";
    }

    goto LABEL_14;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      goto LABEL_16;
    }

    v11 = [(HKFeatureAvailabilityInternalSettingsViewController *)self _disabledOverriden];
    a4 = [(HKFeatureAvailabilityInternalSettingsViewController *)self _buttonCellForTableView:v6];
    v9 = [a4 textLabel];
    if (v11)
    {
      v10 = @"Remove Override For Remote Disabled";
    }

    else
    {
      v10 = @"Override Remote Disabled";
    }

LABEL_14:
    v8 = v9;
    goto LABEL_15;
  }

  a4 = [(HKFeatureAvailabilityInternalSettingsViewController *)self _buttonCellForTableView:v6];
  v8 = [a4 textLabel];
  v9 = v8;
  v10 = @"Reset Onboarding";
LABEL_15:
  [v8 setText:v10];

LABEL_16:

  return a4;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (-[HKFeatureAvailabilityInternalSettingsViewController _offsetSectionForSection:](self, "_offsetSectionForSection:", a4) || (-[HKFeatureAvailabilityInternalSettingsViewController configuration](self, "configuration"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 requireReboot], v5, !v6))
  {
    v10 = 0;
  }

  else
  {
    v7 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    v8 = [v7 syncToWatch];
    v9 = @"Toggling feature status requires you to reboot your device.";
    if (v8)
    {
      v9 = @"Toggling feature status requires you to reboot your iPhone and Apple Watch.";
    }

    v10 = v9;
  }

  return v10;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = -[HKFeatureAvailabilityInternalSettingsViewController _offsetSectionForSection:](self, "_offsetSectionForSection:", [a4 section]);
  if ((v5 - 2) < 2 || v5 == 0)
  {
    return 1;
  }

  if (v5 == 1)
  {
    return ![(HKFeatureAvailabilityInternalSettingsViewController *)self isDeletingSamples];
  }

  return 0;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  if (([a3 isEditing] & 1) == 0)
  {
    v7 = -[HKFeatureAvailabilityInternalSettingsViewController _offsetSectionForSection:](self, "_offsetSectionForSection:", [v6 section]);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v25 = [(HKFeatureAvailabilityInternalSettingsViewController *)self tableView];
        [v25 deselectRowAtIndexPath:v6 animated:1];

        v26 = MEMORY[0x1E69DC650];
        v27 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
        v28 = [v27 featureIdentifier];
        v9 = [v26 alertControllerWithTitle:v28 message:@"Reset onboarding state?" preferredStyle:1];

        v29 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:&__block_literal_global_24];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __89__HKFeatureAvailabilityInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_7;
        v31[3] = &unk_1E81B6048;
        v31[4] = self;
        v30 = [MEMORY[0x1E69DC648] actionWithTitle:@"Reset" style:2 handler:v31];
        [v9 addAction:v30];
        [v9 addAction:v29];
        [(HKFeatureAvailabilityInternalSettingsViewController *)self presentViewController:v9 animated:1 completion:0];

        goto LABEL_16;
      }

      if (v7 == 3)
      {
        [(HKFeatureAvailabilityInternalSettingsViewController *)self _disableOverride:[(HKFeatureAvailabilityInternalSettingsViewController *)self _disabledOverriden]^ 1];
        v15 = [(HKFeatureAvailabilityInternalSettingsViewController *)self tableView];
        v16 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v6, "section")}];
        [v15 reloadSections:v16 withRowAnimation:0];
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        v8 = [(HKFeatureAvailabilityInternalSettingsViewController *)self tableView];
        [v8 deselectRowAtIndexPath:v6 animated:1];

        if (![(HKFeatureAvailabilityInternalSettingsViewController *)self isDeletingSamples])
        {
          [(HKFeatureAvailabilityInternalSettingsViewController *)self setDeletingSamples:1];
          v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:@"Delete All Samples" preferredStyle:0];
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __89__HKFeatureAvailabilityInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
          v33[3] = &unk_1E81B6048;
          v33[4] = self;
          v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"Delete All" style:2 handler:v33];
          [v9 addAction:v10];

          v11 = MEMORY[0x1E69DC648];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __89__HKFeatureAvailabilityInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
          v32[3] = &unk_1E81B6048;
          v32[4] = self;
          v12 = @"Cancel";
          v13 = v32;
          v14 = 1;
LABEL_14:
          v24 = [v11 actionWithTitle:v12 style:v14 handler:v13];
          [v9 addAction:v24];

          [(HKFeatureAvailabilityInternalSettingsViewController *)self presentViewController:v9 animated:1 completion:0];
LABEL_16:
        }
      }
    }

    else
    {
      [(HKFeatureAvailabilityInternalSettingsViewController *)self _enableFeature:[(HKFeatureAvailabilityInternalSettingsViewController *)self _featureEnabled]^ 1];
      v17 = [(HKFeatureAvailabilityInternalSettingsViewController *)self tableView];
      v18 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
      [v17 reloadSections:v18 withRowAnimation:0];

      v19 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
      LODWORD(v18) = [v19 requireReboot];

      if (v18)
      {
        v20 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
        v21 = [v20 syncToWatch];
        v22 = @"You need to reboot your device in order for this change to take effect.";
        if (v21)
        {
          v22 = @"You need to reboot your iPhone and Apple Watch in order for this change to take effect.";
        }

        v23 = v22;

        v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Reboot Required" message:v23 preferredStyle:1];

        v11 = MEMORY[0x1E69DC648];
        v12 = @"Ok";
        v14 = 0;
        v13 = 0;
        goto LABEL_14;
      }
    }
  }
}

void __89__HKFeatureAvailabilityInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) healthStore];
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 samplesTypesToDelete];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89__HKFeatureAvailabilityInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v5[3] = &unk_1E81B59C0;
  v5[4] = *(a1 + 32);
  [v2 deleteAllSamplesWithTypes:v4 sourceBundleIdentifier:0 options:2 completion:v5];
}

void __89__HKFeatureAvailabilityInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__HKFeatureAvailabilityInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
  block[3] = &unk_1E81B55A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89__HKFeatureAvailabilityInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__HKFeatureAvailabilityInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_5;
  block[3] = &unk_1E81B55A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89__HKFeatureAvailabilityInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_7(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696C160]);
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 featureIdentifier];
  v5 = [*(a1 + 32) healthStore];
  v6 = [v2 initWithFeatureIdentifier:v4 healthStore:v5];

  [v6 resetOnboardingWithCompletion:&__block_literal_global_409];
}

@end