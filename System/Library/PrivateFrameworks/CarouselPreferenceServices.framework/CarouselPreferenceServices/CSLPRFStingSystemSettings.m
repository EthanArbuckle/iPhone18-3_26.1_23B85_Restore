@interface CSLPRFStingSystemSettings
- (CSLPRFStingSystemSettings)init;
- (CSLPRFTwoWaySyncSettingDelegate)delegate;
- (id)read;
- (void)twoWaySyncSettingDidUpdate:(id)a3;
- (void)write:(id)a3;
@end

@implementation CSLPRFStingSystemSettings

- (CSLPRFTwoWaySyncSettingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)twoWaySyncSettingDidUpdate:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"StingSystemSettings";
    _os_log_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEFAULT, "supported sting action settings changed (%@)", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained twoWaySyncSettingDidUpdate:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)write:(id)a3
{
  stingSystemSettings = self->_stingSystemSettings;
  v4 = [a3 toExportData];
  [(CSLPRFTwoWaySyncSetting *)stingSystemSettings setValue:v4];
}

- (id)read
{
  v2 = [(CSLPRFTwoWaySyncSetting *)self->_stingSystemSettings value];
  v3 = [CSLPRFStingSettingsModelData fromExportData:v2];

  return v3;
}

- (CSLPRFStingSystemSettings)init
{
  v6.receiver = self;
  v6.super_class = CSLPRFStingSystemSettings;
  v2 = [(CSLPRFStingSystemSettings *)&v6 init];
  if (v2)
  {
    v3 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"StingSystemSettings" defaultValue:0 notification:"CSLPRFStingConfigurationChangedNotification"];
    stingSystemSettings = v2->_stingSystemSettings;
    v2->_stingSystemSettings = v3;

    [(CSLPRFTwoWaySyncSetting *)v2->_stingSystemSettings setDelegate:v2];
  }

  return v2;
}

@end