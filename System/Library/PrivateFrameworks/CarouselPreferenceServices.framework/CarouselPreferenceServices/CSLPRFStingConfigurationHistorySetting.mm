@interface CSLPRFStingConfigurationHistorySetting
- (CSLPRFStingConfigurationHistorySetting)init;
- (id)read;
- (void)write:(id)write;
@end

@implementation CSLPRFStingConfigurationHistorySetting

- (void)write:(id)write
{
  v13 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  stingHistorySetting = self->_stingHistorySetting;
  toExportData = [writeCopy toExportData];
  [(CSLPRFTwoWaySyncSetting *)stingHistorySetting setValue:toExportData];

  v7 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543619;
    selfCopy = self;
    v11 = 2113;
    v12 = writeCopy;
    _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ updated to %{private}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)read
{
  value = [(CSLPRFTwoWaySyncSetting *)self->_stingHistorySetting value];
  v3 = [CSLPRFStingConfigurationHistoryData fromExportData:value];

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

    read = [(CSLPRFStingConfigurationHistorySetting *)v2 read];
    v6 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v11 = v2;
      v12 = 2113;
      v13 = read;
      _os_log_impl(&dword_22CE92000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ initialValue %{private}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

@end