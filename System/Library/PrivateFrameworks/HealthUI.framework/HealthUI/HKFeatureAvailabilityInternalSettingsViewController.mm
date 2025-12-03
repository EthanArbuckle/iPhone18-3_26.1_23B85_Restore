@interface HKFeatureAvailabilityInternalSettingsViewController
- (BOOL)_disabledOverriden;
- (BOOL)_featureEnabled;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (HKFeatureAvailabilityInternalSettingsViewController)initWithHealthStore:(id)store configuration:(id)configuration;
- (id)_buttonCellForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)_offsetSectionForSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)_disableOverride:(BOOL)override;
- (void)_enableFeature:(BOOL)feature;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HKFeatureAvailabilityInternalSettingsViewController

- (HKFeatureAvailabilityInternalSettingsViewController)initWithHealthStore:(id)store configuration:(id)configuration
{
  storeCopy = store;
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = HKFeatureAvailabilityInternalSettingsViewController;
  v9 = [(HKFeatureAvailabilityInternalSettingsViewController *)&v18 initWithStyle:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, store);
    objc_storeStrong(&v10->_configuration, configuration);
    if ([configurationCopy showFeatureEnable])
    {
      v11 = objc_alloc(MEMORY[0x1E695E000]);
      userDefaultsDomain = [configurationCopy userDefaultsDomain];
      v13 = [v11 initWithSuiteName:userDefaultsDomain];
      userDefaults = v10->_userDefaults;
      v10->_userDefaults = v13;
    }

    if ([configurationCopy syncToWatch])
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

- (int64_t)_offsetSectionForSection:(int64_t)section
{
  configuration = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  v5 = [configuration showFeatureEnable] ^ 1;

  return v5 + section;
}

- (BOOL)_featureEnabled
{
  userDefaults = [(HKFeatureAvailabilityInternalSettingsViewController *)self userDefaults];
  configuration = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  userDefaultsFeatureEnabledKey = [configuration userDefaultsFeatureEnabledKey];
  v6 = [userDefaults BOOLForKey:userDefaultsFeatureEnabledKey];

  return v6;
}

- (void)_enableFeature:(BOOL)feature
{
  featureCopy = feature;
  configuration = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  userDefaultsDomain = [configuration userDefaultsDomain];
  hk_copyNonEmptyString = [userDefaultsDomain hk_copyNonEmptyString];

  if (hk_copyNonEmptyString)
  {
    userDefaults = [(HKFeatureAvailabilityInternalSettingsViewController *)self userDefaults];
    configuration2 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    userDefaultsFeatureEnabledKey = [configuration2 userDefaultsFeatureEnabledKey];
    [userDefaults setBool:featureCopy forKey:userDefaultsFeatureEnabledKey];

    syncManager = [(HKFeatureAvailabilityInternalSettingsViewController *)self syncManager];
    configuration3 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    userDefaultsDomain2 = [configuration3 userDefaultsDomain];
    v13 = MEMORY[0x1E695DFD8];
    configuration4 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    userDefaultsFeatureEnabledKey2 = [configuration4 userDefaultsFeatureEnabledKey];
    v16 = [v13 setWithObject:userDefaultsFeatureEnabledKey2];
    [syncManager synchronizeUserDefaultsDomain:userDefaultsDomain2 keys:v16];
  }
}

- (BOOL)_disabledOverriden
{
  userDefaults = [(HKFeatureAvailabilityInternalSettingsViewController *)self userDefaults];
  configuration = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  userDefaultsDisabledOverrideKey = [configuration userDefaultsDisabledOverrideKey];
  v6 = [userDefaults BOOLForKey:userDefaultsDisabledOverrideKey];

  return v6;
}

- (void)_disableOverride:(BOOL)override
{
  overrideCopy = override;
  configuration = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  userDefaultsDomain = [configuration userDefaultsDomain];
  hk_copyNonEmptyString = [userDefaultsDomain hk_copyNonEmptyString];
  if (hk_copyNonEmptyString)
  {
    v7 = hk_copyNonEmptyString;
    configuration2 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    userDefaultsDisabledOverrideKey = [configuration2 userDefaultsDisabledOverrideKey];
    hk_copyNonEmptyString2 = [userDefaultsDisabledOverrideKey hk_copyNonEmptyString];

    if (!hk_copyNonEmptyString2)
    {
      return;
    }

    userDefaults = [(HKFeatureAvailabilityInternalSettingsViewController *)self userDefaults];
    configuration3 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    userDefaultsDisabledOverrideKey2 = [configuration3 userDefaultsDisabledOverrideKey];
    [userDefaults setBool:overrideCopy forKey:userDefaultsDisabledOverrideKey2];

    configuration = [(HKFeatureAvailabilityInternalSettingsViewController *)self syncManager];
    userDefaultsDomain = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    v5UserDefaultsDomain = [userDefaultsDomain userDefaultsDomain];
    v15 = MEMORY[0x1E695DFD8];
    configuration4 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    userDefaultsDisabledOverrideKey3 = [configuration4 userDefaultsDisabledOverrideKey];
    v18 = [v15 setWithObject:userDefaultsDisabledOverrideKey3];
    [configuration synchronizeUserDefaultsDomain:v5UserDefaultsDomain keys:v18];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  configuration = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
  if ([configuration showFeatureEnable])
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)_buttonCellForTableView:(id)view
{
  v3 = [view dequeueReusableCellWithIdentifier:@"ButtonCell"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"ButtonCell"];
    hk_appKeyColor = [MEMORY[0x1E69DC888] hk_appKeyColor];
    textLabel = [v3 textLabel];
    [textLabel setTextColor:hk_appKeyColor];
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = -[HKFeatureAvailabilityInternalSettingsViewController _offsetSectionForSection:](self, "_offsetSectionForSection:", [path section]);
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_16;
      }

      path = [(HKFeatureAvailabilityInternalSettingsViewController *)self _buttonCellForTableView:viewCopy];
      textLabel = [path textLabel];
      textLabel2 = textLabel;
      v10 = @"Delete All Samples";
      goto LABEL_15;
    }

    _featureEnabled = [(HKFeatureAvailabilityInternalSettingsViewController *)self _featureEnabled];
    path = [(HKFeatureAvailabilityInternalSettingsViewController *)self _buttonCellForTableView:viewCopy];
    textLabel2 = [path textLabel];
    if (_featureEnabled)
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

    _disabledOverriden = [(HKFeatureAvailabilityInternalSettingsViewController *)self _disabledOverriden];
    path = [(HKFeatureAvailabilityInternalSettingsViewController *)self _buttonCellForTableView:viewCopy];
    textLabel2 = [path textLabel];
    if (_disabledOverriden)
    {
      v10 = @"Remove Override For Remote Disabled";
    }

    else
    {
      v10 = @"Override Remote Disabled";
    }

LABEL_14:
    textLabel = textLabel2;
    goto LABEL_15;
  }

  path = [(HKFeatureAvailabilityInternalSettingsViewController *)self _buttonCellForTableView:viewCopy];
  textLabel = [path textLabel];
  textLabel2 = textLabel;
  v10 = @"Reset Onboarding";
LABEL_15:
  [textLabel setText:v10];

LABEL_16:

  return path;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (-[HKFeatureAvailabilityInternalSettingsViewController _offsetSectionForSection:](self, "_offsetSectionForSection:", section) || (-[HKFeatureAvailabilityInternalSettingsViewController configuration](self, "configuration"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 requireReboot], v5, !v6))
  {
    v10 = 0;
  }

  else
  {
    configuration = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
    syncToWatch = [configuration syncToWatch];
    v9 = @"Toggling feature status requires you to reboot your device.";
    if (syncToWatch)
    {
      v9 = @"Toggling feature status requires you to reboot your iPhone and Apple Watch.";
    }

    v10 = v9;
  }

  return v10;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v5 = -[HKFeatureAvailabilityInternalSettingsViewController _offsetSectionForSection:](self, "_offsetSectionForSection:", [path section]);
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (([view isEditing] & 1) == 0)
  {
    v7 = -[HKFeatureAvailabilityInternalSettingsViewController _offsetSectionForSection:](self, "_offsetSectionForSection:", [pathCopy section]);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        tableView = [(HKFeatureAvailabilityInternalSettingsViewController *)self tableView];
        [tableView deselectRowAtIndexPath:pathCopy animated:1];

        v26 = MEMORY[0x1E69DC650];
        configuration = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
        featureIdentifier = [configuration featureIdentifier];
        v9 = [v26 alertControllerWithTitle:featureIdentifier message:@"Reset onboarding state?" preferredStyle:1];

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
        tableView2 = [(HKFeatureAvailabilityInternalSettingsViewController *)self tableView];
        v16 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(pathCopy, "section")}];
        [tableView2 reloadSections:v16 withRowAnimation:0];
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        tableView3 = [(HKFeatureAvailabilityInternalSettingsViewController *)self tableView];
        [tableView3 deselectRowAtIndexPath:pathCopy animated:1];

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
      tableView4 = [(HKFeatureAvailabilityInternalSettingsViewController *)self tableView];
      v18 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
      [tableView4 reloadSections:v18 withRowAnimation:0];

      configuration2 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
      LODWORD(v18) = [configuration2 requireReboot];

      if (v18)
      {
        configuration3 = [(HKFeatureAvailabilityInternalSettingsViewController *)self configuration];
        syncToWatch = [configuration3 syncToWatch];
        v22 = @"You need to reboot your device in order for this change to take effect.";
        if (syncToWatch)
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