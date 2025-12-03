@interface CSLPRFStingQuickSwitchSettings
+ (id)fetchQuickSwitchSettings;
- (BOOL)isQuickSwitchEnabled;
- (CSLPRFStingQuickSwitchSettings)initWithKey:(id)key defaultValue:(id)value notification:(const char *)notification;
- (NSDictionary)quickSwitchActionAvailability;
- (id)_toSettingValue;
- (void)didUpdate;
- (void)fromSetting:(id)setting;
- (void)setQuickSwitchActionAvailability:(id)availability;
- (void)setQuickSwitchEnabled:(BOOL)enabled;
- (void)setValue:(id)value;
@end

@implementation CSLPRFStingQuickSwitchSettings

- (void)setQuickSwitchActionAvailability:(id)availability
{
  v15 = *MEMORY[0x277D85DE8];
  availabilityCopy = availability;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [availabilityCopy copy];
  quickSwitchActionAvailability = selfCopy->_quickSwitchActionAvailability;
  selfCopy->_quickSwitchActionAvailability = v6;

  _toSettingValue = [(CSLPRFStingQuickSwitchSettings *)selfCopy _toSettingValue];
  v9 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 136446466;
    v12 = "[CSLPRFStingQuickSwitchSettings setQuickSwitchActionAvailability:]";
    v13 = 2112;
    v14 = _toSettingValue;
    _os_log_impl(&dword_22CE92000, v9, OS_LOG_TYPE_INFO, "%{public}s %@", &v11, 0x16u);
  }

  [(CSLPRFStingQuickSwitchSettings *)selfCopy setValue:_toSettingValue];
  objc_sync_exit(selfCopy);

  v10 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)quickSwitchActionAvailability
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_quickSwitchActionAvailability;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setQuickSwitchEnabled:(BOOL)enabled
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_quickSwitchEnabled = enabled;
  _toSettingValue = [(CSLPRFStingQuickSwitchSettings *)selfCopy _toSettingValue];
  v6 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136446466;
    v9 = "[CSLPRFStingQuickSwitchSettings setQuickSwitchEnabled:]";
    v10 = 2112;
    v11 = _toSettingValue;
    _os_log_impl(&dword_22CE92000, v6, OS_LOG_TYPE_INFO, "%{public}s %@", &v8, 0x16u);
  }

  [(CSLPRFStingQuickSwitchSettings *)selfCopy setValue:_toSettingValue];
  objc_sync_exit(selfCopy);

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isQuickSwitchEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  quickSwitchEnabled = selfCopy->_quickSwitchEnabled;
  objc_sync_exit(selfCopy);

  return quickSwitchEnabled;
}

- (id)_toSettingValue
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"isEnabled";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_quickSwitchEnabled];
  v4 = v3;
  v9[1] = @"actionAvailability";
  quickSwitchActionAvailability = self->_quickSwitchActionAvailability;
  if (!quickSwitchActionAvailability)
  {
    quickSwitchActionAvailability = MEMORY[0x277CBEC10];
  }

  v10[0] = v3;
  v10[1] = quickSwitchActionAvailability;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)fromSetting:(id)setting
{
  v14 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  v5 = [(CSLPRFTwoWaySyncSetting *)self safeValueOfType:objc_opt_class()];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"isEnabled"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      selfCopy->_quickSwitchEnabled = [v7 BOOLValue];
    }

    else
    {
      selfCopy->_quickSwitchEnabled = 1;
    }

    v8 = [v5 objectForKeyedSubscript:@"actionAvailability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_quickSwitchActionAvailability, v8);
    }
  }

  else
  {
    v9 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 136446210;
      v13 = "[CSLPRFStingQuickSwitchSettings fromSetting:]";
      _os_log_impl(&dword_22CE92000, v9, OS_LOG_TYPE_INFO, "%{public}s no value for setting, restoring default values", &v12, 0xCu);
    }

    selfCopy->_quickSwitchEnabled = 1;
    quickSwitchActionAvailability = selfCopy->_quickSwitchActionAvailability;
    selfCopy->_quickSwitchActionAvailability = 0;
  }

  objc_sync_exit(selfCopy);

  if (settingCopy)
  {
    settingCopy[2](settingCopy);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didUpdate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v7 = "[CSLPRFStingQuickSwitchSettings didUpdate]";
    _os_log_impl(&dword_22CE92000, v3, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__CSLPRFStingQuickSwitchSettings_didUpdate__block_invoke;
  v5[3] = &unk_278745368;
  v5[4] = self;
  [(CSLPRFStingQuickSwitchSettings *)self fromSetting:v5];
  v4 = *MEMORY[0x277D85DE8];
}

id __43__CSLPRFStingQuickSwitchSettings_didUpdate__block_invoke_2(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = CSLPRFStingQuickSwitchSettings;
  return objc_msgSendSuper2(&v2, sel_didUpdate);
}

- (void)setValue:(id)value
{
  valueCopy = value;
  updateQueue = self->_updateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__CSLPRFStingQuickSwitchSettings_setValue___block_invoke;
  v7[3] = &unk_2787455E0;
  v8 = valueCopy;
  selfCopy = self;
  v6 = valueCopy;
  dispatch_async(updateQueue, v7);
}

id __43__CSLPRFStingQuickSwitchSettings_setValue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CSLPRFStingQuickSwitchSettings;
  return objc_msgSendSuper2(&v3, sel_setValue_, v1);
}

- (CSLPRFStingQuickSwitchSettings)initWithKey:(id)key defaultValue:(id)value notification:(const char *)notification
{
  v10.receiver = self;
  v10.super_class = CSLPRFStingQuickSwitchSettings;
  v5 = [(CSLPRFTwoWaySyncSetting *)&v10 initWithKey:key defaultValue:value notification:notification];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.CarouselPreferenceServices.CSLPRFStingQuickSwitchSettings", 0);
    updateQueue = v5->_updateQueue;
    v5->_updateQueue = v6;

    v5->_quickSwitchEnabled = 1;
    quickSwitchActionAvailability = v5->_quickSwitchActionAvailability;
    v5->_quickSwitchActionAvailability = 0;

    [(CSLPRFStingQuickSwitchSettings *)v5 fromSetting:0];
  }

  return v5;
}

+ (id)fetchQuickSwitchSettings
{
  v2 = [[self alloc] initWithKey:@"StingQuickSwitchSettings" defaultValue:0 notification:"CSLPRFStingQuickSwitchSettingsChangedNotification"];

  return v2;
}

@end