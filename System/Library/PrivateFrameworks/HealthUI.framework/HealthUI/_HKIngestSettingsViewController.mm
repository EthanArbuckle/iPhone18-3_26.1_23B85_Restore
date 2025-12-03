@interface _HKIngestSettingsViewController
- (id)_initWithHealthStore:(id)store displayTypeController:(id)controller useInsetStyling:(BOOL)styling;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_displayGuestModeAlertWithCompletion:(id)completion;
- (void)fetchEnabledStatusForPeripheral;
- (void)reloadData:(id)data;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)viewDidLoad;
@end

@implementation _HKIngestSettingsViewController

- (id)_initWithHealthStore:(id)store displayTypeController:(id)controller useInsetStyling:(BOOL)styling
{
  stylingCopy = styling;
  storeCopy = store;
  controllerCopy = controller;
  v11 = [(HKTableViewController *)self initWithUsingInsetStyling:stylingCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_healthStore, store);
    v13 = [objc_alloc(MEMORY[0x1E696C1B8]) initWithHealthStore:storeCopy];
    healthServicesManager = v12->_healthServicesManager;
    v12->_healthServicesManager = v13;

    objc_storeStrong(&v12->_displayTypeController, controller);
    array = [MEMORY[0x1E695DF70] array];
    dataTypeNames = v12->_dataTypeNames;
    v12->_dataTypeNames = array;

    v12->_deviceFound = 1;
  }

  return v12;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _HKIngestSettingsViewController;
  [(HKTableViewController *)&v4 viewDidLoad];
  tableView = [(_HKIngestSettingsViewController *)self tableView];
  [tableView setEstimatedRowHeight:52.0];

  [(_HKIngestSettingsViewController *)self fetchEnabledStatusForPeripheral];
}

- (void)fetchEnabledStatusForPeripheral
{
  healthServicesManager = self->_healthServicesManager;
  deviceIdentifier = self->_deviceIdentifier;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66___HKIngestSettingsViewController_fetchEnabledStatusForPeripheral__block_invoke;
  v4[3] = &unk_1E81B59C0;
  v4[4] = self;
  [(HKHealthServicesManager *)healthServicesManager getEnabledStatusForPeripheral:deviceIdentifier withCompletion:v4];
}

- (void)reloadData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (self->_deviceIdentifier)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [dataCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(HKDisplayTypeController *)self->_displayTypeController displayTypeForObjectTypeUnifyingBloodPressureTypes:*(*(&v14 + 1) + 8 * i)];
          localization = [v10 localization];
          displayName = [localization displayName];

          if (([(NSMutableArray *)self->_dataTypeNames containsObject:displayName]& 1) == 0)
          {
            [(NSMutableArray *)self->_dataTypeNames addObject:displayName];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46___HKIngestSettingsViewController_reloadData___block_invoke;
    block[3] = &unk_1E81B55A8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)switchCellValueChanged:(id)changed value:(BOOL)value
{
  changedCopy = changed;
  isOn = [changedCopy isOn];
  objc_initWeak(&location, self);
  healthServicesManager = self->_healthServicesManager;
  deviceIdentifier = self->_deviceIdentifier;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64___HKIngestSettingsViewController_switchCellValueChanged_value___block_invoke;
  v9[3] = &unk_1E81B8418;
  objc_copyWeak(&v10, &location);
  v11 = isOn;
  [(HKHealthServicesManager *)healthServicesManager setEnabledStatus:isOn forPeripheral:deviceIdentifier withCompletion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_displayGuestModeAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = MEMORY[0x1E69DC650];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"SHARE_ALERT_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72___HKIngestSettingsViewController__displayGuestModeAlertWithCompletion___block_invoke;
  v16[3] = &unk_1E81B8440;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = [v10 actionWithTitle:v12 style:0 handler:v16];

  [v9 addAction:v14];
  [(_HKIngestSettingsViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section == 1)
  {
    return [(NSMutableArray *)self->_dataTypeNames count];
  }

  else
  {
    return section == 0;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  tableView = [(_HKIngestSettingsViewController *)self tableView];
  v8 = tableView;
  if (section)
  {
    v9 = [tableView dequeueReusableCellWithIdentifier:@"DeviceSourceDatatype"];

    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"DeviceSourceDatatype"];
      [(HKSwitchTableViewCell *)v9 setSelectionStyle:0];
    }

    v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_dataTypeNames, "objectAtIndexedSubscript:", [pathCopy row]);
    textLabel = [(HKSwitchTableViewCell *)v9 textLabel];
    [textLabel setText:v10];
  }

  else
  {
    v9 = [tableView dequeueReusableCellWithIdentifier:@"DeviceSourceKillSwitch"];

    if (!v9)
    {
      v9 = [[HKSwitchTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"DeviceSourceKillSwitch"];
    }

    [(HKSwitchTableViewCell *)v9 setDelegate:self];
    [(HKSwitchTableViewCell *)v9 setOn:self->_deviceEnabled];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"UPDATE_HEALTH_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(HKSwitchTableViewCell *)v9 setDisplayText:v13];

    [(HKSwitchTableViewCell *)v9 setEnabled:self->_deviceFound];
  }

  return v9;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([MEMORY[0x1E696C608] isAppleInternalInstall] && objc_msgSend(viewCopy, "numberOfSections") - 1 == section)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INTERNAL ONLY: %@, Legacy Bluetooth device with identifier:%@", self, self->_deviceIdentifier];
  }

  else if (section)
  {
    v7 = 0;
  }

  else
  {
    if (self->_deviceFound)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v10 = [v9 localizedStringForKey:@"ALLOW_DEVICE_DATA_UPDATES" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      title = [(_HKIngestSettingsViewController *)self title];
      v7 = [v8 stringWithFormat:v10, title];
    }

    else
    {
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v7 = [v9 localizedStringForKey:@"DEVICE_NOT_PAIRED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    }
  }

  return v7;
}

@end