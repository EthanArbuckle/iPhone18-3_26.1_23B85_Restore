@interface SUUISettingsGroupController
- (SUUISettingsGroupControllerDelegate)delegate;
- (id)_viewForSettingDescription:(id)description;
- (void)_reloadSettingDescription:(id)description;
- (void)attachSettingDescription:(id)description;
@end

@implementation SUUISettingsGroupController

- (void)attachSettingDescription:(id)description
{
  descriptionCopy = description;
  settingDescriptions = self->_settingDescriptions;
  v8 = descriptionCopy;
  if (!settingDescriptions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_settingDescriptions;
    self->_settingDescriptions = v6;

    descriptionCopy = v8;
    settingDescriptions = self->_settingDescriptions;
  }

  [(NSMutableArray *)settingDescriptions addObject:descriptionCopy];
  if ([v8 conformsToProtocol:&unk_286C5B108])
  {
    [v8 setController:self];
  }
}

- (void)_reloadSettingDescription:(id)description
{
  descriptionCopy = description;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 settingsGroupController:self reloadSettingDescription:descriptionCopy];
  }
}

- (id)_viewForSettingDescription:(id)description
{
  descriptionCopy = description;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 settingsGroupController:self viewForSettingDescription:descriptionCopy];
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