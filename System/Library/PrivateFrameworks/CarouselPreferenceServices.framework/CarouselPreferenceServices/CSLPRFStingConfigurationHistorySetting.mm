@interface CSLPRFStingConfigurationHistorySetting
- (CSLPRFStingConfigurationHistorySetting)init;
- (id)read;
- (void)write:(id)a3;
@end

@implementation CSLPRFStingConfigurationHistorySetting

- (void)write:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  stingHistorySetting = self->_stingHistorySetting;
  v6 = [v4 toExportData];
  [(CSLPRFTwoWaySyncSetting *)stingHistorySetting setValue:v6];

  v7 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543619;
    v10 = self;
    v11 = 2113;
    v12 = v4;
    _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ updated to %{private}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)read
{
  v2 = [(CSLPRFTwoWaySyncSetting *)self->_stingHistorySetting value];
  v3 = [CSLPRFStingConfigurationHistoryData fromExportData:v2];

  return v3;
}

- (CSLPRFStingConfigurationHistorySetting)init
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CSLPRFStingConfigurationHistorySetting;
  v2 = [(CSLPRFStingConfigurationHistorySetting *)&v9 init];
  if (v2)
  {
    v3 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"StingConfigurationHistorySettings" defaultValue:0 notification:0];
    stingHistorySetting = v2->_stingHistorySetting;
    v2->_stingHistorySetting = v3;

    v5 = [(CSLPRFStingConfigurationHistorySetting *)v2 read];
    v6 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v11 = v2;
      v12 = 2113;
      v13 = v5;
      _os_log_impl(&dword_22CE92000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ initialValue %{private}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

@end