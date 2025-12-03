@interface _CLFSettingsObserver
- (CLFBaseSettings)settings;
- (SEL)settingsSelector;
- (_CLFSettingsObserver)initWithSettings:(id)settings settingsSelector:(SEL)selector;
- (void)invalidate;
- (void)setSettingsSelector:(SEL)selector;
@end

@implementation _CLFSettingsObserver

- (_CLFSettingsObserver)initWithSettings:(id)settings settingsSelector:(SEL)selector
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = _CLFSettingsObserver;
  v7 = [(_CLFSettingsObserver *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_settings, settingsCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v8->_settingsSelector = selectorCopy;
  }

  return v8;
}

- (void)invalidate
{
  settings = [(_CLFSettingsObserver *)self settings];
  settingsSelector = [(_CLFSettingsObserver *)self settingsSelector];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self];
  [settings unregisterUpdateBlockForRetrieveSelector:settingsSelector withListenerID:v4];
}

- (CLFBaseSettings)settings
{
  WeakRetained = objc_loadWeakRetained(&self->_settings);

  return WeakRetained;
}

- (SEL)settingsSelector
{
  if (self->_settingsSelector)
  {
    return self->_settingsSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setSettingsSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_settingsSelector = selectorCopy;
}

@end