@interface CSLAppSwitcherModeSetting
- (CSLAppSwitcherModeSetting)init;
- (CSLAppSwitcherModeSettingDelegate)delegate;
- (int64_t)mode;
- (void)_withLock:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setMode:(int64_t)a3;
- (void)twoWaySyncSettingDidUpdate:(id)a3;
@end

@implementation CSLAppSwitcherModeSetting

- (CSLAppSwitcherModeSettingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  [v4 appSwitcherModeDidUpdate:self->_mode];
}

- (void)setMode:(int64_t)a3
{
  setting = self->_setting;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(CSLPRFTwoWaySyncSetting *)setting setValue:v4];
}

- (int64_t)mode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__CSLAppSwitcherModeSetting_mode__block_invoke;
  v4[3] = &unk_278745590;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLAppSwitcherModeSetting *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __33__CSLAppSwitcherModeSetting_mode__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) value];
  *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue];

  v3 = *(*(a1 + 40) + 8);
  if (*(v3 + 24) >= 2uLL)
  {
    *(v3 + 24) = 1;
  }
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)twoWaySyncSettingDidUpdate:(id)a3
{
  v4 = [(CSLAppSwitcherModeSetting *)self delegate];
  [v4 appSwitcherModeDidUpdate:{-[CSLAppSwitcherModeSetting mode](self, "mode")}];
}

- (CSLAppSwitcherModeSetting)init
{
  v9.receiver = self;
  v9.super_class = CSLAppSwitcherModeSetting;
  v2 = [(CSLAppSwitcherModeSetting *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [CSLPRFTwoWaySyncSetting alloc];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v6 = [(CSLPRFTwoWaySyncSetting *)v4 initWithKey:@"AppSwitcherMode" defaultValue:v5 notification:"CSLAppSwitcherModeChangedNotification"];
    setting = v3->_setting;
    v3->_setting = v6;

    [(CSLPRFTwoWaySyncSetting *)v3->_setting setDelegate:v3];
    [(CSLPRFTwoWaySyncSetting *)v3->_setting migrate:@"MRUBasedDockLayout" withMapping:&__block_literal_global_4693];
  }

  return v3;
}

void *__33__CSLAppSwitcherModeSetting_init__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    return &unk_284025308;
  }

  else
  {
    return &unk_284025320;
  }
}

@end