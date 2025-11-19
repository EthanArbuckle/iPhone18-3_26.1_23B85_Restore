@interface SUUISettingsGroupController
- (SUUISettingsGroupControllerDelegate)delegate;
- (id)_viewForSettingDescription:(id)a3;
- (void)_reloadSettingDescription:(id)a3;
- (void)attachSettingDescription:(id)a3;
@end

@implementation SUUISettingsGroupController

- (void)attachSettingDescription:(id)a3
{
  v4 = a3;
  settingDescriptions = self->_settingDescriptions;
  v8 = v4;
  if (!settingDescriptions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_settingDescriptions;
    self->_settingDescriptions = v6;

    v4 = v8;
    settingDescriptions = self->_settingDescriptions;
  }

  [(NSMutableArray *)settingDescriptions addObject:v4];
  if ([v8 conformsToProtocol:&unk_286C5B108])
  {
    [v8 setController:self];
  }
}

- (void)_reloadSettingDescription:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 settingsGroupController:self reloadSettingDescription:v7];
  }
}

- (id)_viewForSettingDescription:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 settingsGroupController:self viewForSettingDescription:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SUUISettingsGroupControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end