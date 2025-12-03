@interface BPSWatchMigrationController
- (BOOL)shouldBeDisplayedGivenMigrationData:(id)data;
- (BPSWatchMigrationController)init;
- (BPSWatchMigrationController)initWithSnapshot:(id)snapshot;
- (BPSWatchMigrationController)initWithSourceDeviceName:(id)name;
- (BPSWatchMigrationControllerDelegate)migrationDelegate;
- (id)alternateButtonTitle;
- (id)imageResourceBundleIdentifier;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_notifyDelegateShouldMigrateWithData:(id)data;
- (void)_saveMigrationPreference:(BOOL)preference;
- (void)loadView;
@end

@implementation BPSWatchMigrationController

- (BPSWatchMigrationController)init
{
  v5.receiver = self;
  v5.super_class = BPSWatchMigrationController;
  v2 = [(BPSWelcomeOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BPSWelcomeOptinViewController *)v2 setStyle:74];
  }

  return v3;
}

- (BPSWatchMigrationController)initWithSourceDeviceName:(id)name
{
  nameCopy = name;
  v6 = [(BPSWatchMigrationController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceDeviceName, name);
  }

  return v7;
}

- (BPSWatchMigrationController)initWithSnapshot:(id)snapshot
{
  deviceName = [snapshot deviceName];
  v5 = [(BPSWatchMigrationController *)self initWithSourceDeviceName:deviceName];

  return v5;
}

- (BOOL)shouldBeDisplayedGivenMigrationData:(id)data
{
  dataCopy = data;
  NSLog(&cfstr_MigrationDataP.isa, dataCopy, [dataCopy length]);
  migratableDevices = self->_migratableDevices;
  self->_migratableDevices = 0;

  if (dataCopy)
  {
    mEMORY[0x277D2BCD8] = [MEMORY[0x277D2BCD8] sharedMigrator];
    [mEMORY[0x277D2BCD8] devicesFromMigrationConsentRequestData:dataCopy];
  }

  else
  {
    self->_iTunes = 1;
    mEMORY[0x277D2BCD8] = [MEMORY[0x277D2BCD8] sharedMigrator];
    [mEMORY[0x277D2BCD8] migratableDevicesRequiringConsent];
  }
  v7 = ;
  v8 = self->_migratableDevices;
  self->_migratableDevices = v7;

  NSLog(&cfstr_FoundLdDevices.isa, [(NSArray *)self->_migratableDevices count]);
  v9 = [(NSArray *)self->_migratableDevices count]!= 0;

  return v9;
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = BPSWatchMigrationController;
  [(OBBaseWelcomeController *)&v15 loadView];
  v3 = [(NSArray *)self->_migratableDevices count];
  firstObject = [(NSArray *)self->_migratableDevices firstObject];
  v5 = [firstObject valueForProperty:*MEMORY[0x277D2BBA8]];

  v6 = self->_sourceDeviceName;
  if (v3 < 1)
  {
    NSLog(&cfstr_ErrorShowingBp.isa);
    [(BPSWatchMigrationController *)self _notifyDelegateShouldMigrateWithData:0];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    v10 = (v3 - 1);
    if (v6)
    {
      v11 = [v8 localizedStringForKey:@"BIXBY_DETAIL_TEXT_FORMAT" value:&stru_285406330 table:@"Localizable"];
      [v7 localizedStringWithFormat:v11, v10, v5, v6];
    }

    else
    {
      v11 = [v8 localizedStringForKey:@"BIXBY_DETAIL_TEXT_FORMAT_GENERIC_PHONE" value:&stru_285406330 table:@"Localizable"];
      [v7 localizedStringWithFormat:v11, v10, v5, v14];
    }
    v12 = ;
    localizedDetailText = self->_localizedDetailText;
    self->_localizedDetailText = v12;
  }
}

- (id)titleString
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"BIXBY_SETUP_TITLE" value:&stru_285406330 table:@"Localizable"];

  return v3;
}

- (id)imageResourceBundleIdentifier
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (id)suggestedButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"BIXBY_CONTINUE_BUTTON" value:&stru_285406330 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"BIXBY_SKIP_BUTTON" value:&stru_285406330 table:@"Localizable"];

  return v3;
}

- (void)_saveMigrationPreference:(BOOL)preference
{
  if (preference)
  {
    v4 = self->_migratableDevices;
    if ([(NSArray *)v4 count])
    {
      v5 = [MEMORY[0x277D2BCD8] migrationDataPreRestoreForConsentedDevices:v4];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [(BPSWatchMigrationController *)self _notifyDelegateShouldMigrateWithData:v5];
    if (v6 && self->_iTunes)
    {
      [MEMORY[0x277D2BCD8] ingestPostRestoreMigrationDataForConsentedDevices:v6];
    }
  }

  else
  {

    [(BPSWatchMigrationController *)self _notifyDelegateShouldMigrateWithData:0];
  }
}

- (void)_notifyDelegateShouldMigrateWithData:(id)data
{
  dataCopy = data;
  migrationDelegate = [(BPSWatchMigrationController *)self migrationDelegate];
  if (migrationDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      if (dataCopy)
      {
        NSLog(&cfstr_Bpswatchmigrat.isa, [dataCopy length]);
        v5 = migrationDelegate;
        v6 = 1;
        v7 = dataCopy;
      }

      else
      {
        NSLog(&cfstr_Bpswatchmigrat_0.isa);
        v5 = migrationDelegate;
        v6 = 0;
        v7 = 0;
      }

      [v5 controllerItemCompletedWithMigration:v6 preRestoreData:v7];
    }

    else
    {
      NSLog(&cfstr_Bpswatchmigrat_1.isa, migrationDelegate);
    }
  }

  else
  {
    NSLog(&cfstr_Bpswatchmigrat_2.isa);
  }
}

- (BPSWatchMigrationControllerDelegate)migrationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_migrationDelegate);

  return WeakRetained;
}

@end