@interface CSLPRFLauncherViewModeSetting
- (CSLPRFLauncherViewModeSetting)init;
- (CSLPRFLauncherViewModeSettingDelegate)delegate;
- (int64_t)launcherViewMode;
- (unint64_t)launcherViewModeReason;
- (void)setLauncherViewMode:(int64_t)a3 reason:(unint64_t)a4;
@end

@implementation CSLPRFLauncherViewModeSetting

- (CSLPRFLauncherViewModeSettingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __60__CSLPRFLauncherViewModeSetting_twoWaySyncSettingDidUpdate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 launcherViewModeSettingChanged];
}

- (void)setLauncherViewMode:(int64_t)a3 reason:(unint64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = cslprf_dock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(CSLPRFTwoWaySyncSetting *)self->_reasonSetting value];
    v21 = 138412802;
    v22 = @"LauncherViewModeReason";
    v23 = 1024;
    v24 = a4;
    v25 = 1024;
    v26 = [v8 integerValue];
    _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_INFO, "setting %@ to %d was %d", &v21, 0x18u);
  }

  v9 = [(CSLPRFTwoWaySyncSetting *)self->_reasonSetting value];
  v10 = [v9 integerValue];

  if (v10 != a4)
  {
    v11 = cslprf_dock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v21 = 138412546;
      v22 = @"LauncherViewModeReason";
      v23 = 1024;
      v24 = a4;
      _os_log_impl(&dword_22CE92000, v11, OS_LOG_TYPE_INFO, "setting %@ to %d", &v21, 0x12u);
    }

    reasonSetting = self->_reasonSetting;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(CSLPRFTwoWaySyncSetting *)reasonSetting setValue:v13];
  }

  v14 = [(CSLPRFTwoWaySyncSetting *)self->_modeSetting value];
  v15 = [v14 integerValue];

  if (v15 != a3)
  {
    v16 = cslprf_dock_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v21 = 67109120;
      LODWORD(v22) = a3;
      _os_log_impl(&dword_22CE92000, v16, OS_LOG_TYPE_INFO, "setting launcherViewMode to %d", &v21, 8u);
    }

    modeSetting = self->_modeSetting;
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(CSLPRFTwoWaySyncSetting *)modeSetting setValue:v18];

    v19 = [(CSLPRFLauncherViewModeSetting *)self delegate];
    [v19 launcherViewModeSettingChanged];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)launcherViewModeReason
{
  v2 = [(CSLPRFTwoWaySyncSetting *)self->_reasonSetting value];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)launcherViewMode
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(CSLPRFTwoWaySyncSetting *)self->_modeSetting value];
  v3 = [v2 integerValue];
  v4 = cslprf_dock_log();
  v5 = v4;
  if ((v3 - 1) > 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412802;
      v9 = @"LauncherViewMode";
      v10 = 1024;
      v11 = v3;
      v12 = 1024;
      v13 = 1;
      _os_log_error_impl(&dword_22CE92000, v5, OS_LOG_TYPE_ERROR, "value for %@ (%d) is out of range, substituting %d", &v8, 0x18u);
    }

    v3 = 1;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 67109120;
    LODWORD(v9) = v3;
    _os_log_debug_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEBUG, "launcherViewMode is %d", &v8, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (CSLPRFLauncherViewModeSetting)init
{
  v8.receiver = self;
  v8.super_class = CSLPRFLauncherViewModeSetting;
  v2 = [(CSLPRFLauncherViewModeSetting *)&v8 init];
  if (v2)
  {
    v3 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"LauncherViewMode" defaultValue:&unk_2840252C0 notification:"CSLLauncherSettingsChangedNotification"];
    modeSetting = v2->_modeSetting;
    v2->_modeSetting = v3;

    [(CSLPRFTwoWaySyncSetting *)v2->_modeSetting setDelegate:v2];
    v5 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"LauncherViewModeReason" defaultValue:&unk_2840252D8 notification:0];
    reasonSetting = v2->_reasonSetting;
    v2->_reasonSetting = v5;
  }

  return v2;
}

@end