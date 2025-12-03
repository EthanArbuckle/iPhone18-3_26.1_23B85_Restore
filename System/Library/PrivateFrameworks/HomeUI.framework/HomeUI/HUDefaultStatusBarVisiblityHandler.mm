@interface HUDefaultStatusBarVisiblityHandler
- (BOOL)isStatusBarHidden;
- (id)_statusBarAnimationParametersForAnimationSettings:(id)settings;
- (void)setStatusBarHidden:(BOOL)hidden withAnimationSettings:(id)settings;
@end

@implementation HUDefaultStatusBarVisiblityHandler

- (BOOL)isStatusBarHidden
{
  statusBar = [*MEMORY[0x277D76620] statusBar];
  isHidden = [statusBar isHidden];

  return isHidden;
}

- (void)setStatusBarHidden:(BOOL)hidden withAnimationSettings:(id)settings
{
  hiddenCopy = hidden;
  settingsCopy = settings;
  statusBar = [*MEMORY[0x277D76620] statusBar];
  v7 = statusBar;
  if (settingsCopy)
  {
    v8 = [(HUDefaultStatusBarVisiblityHandler *)self _statusBarAnimationParametersForAnimationSettings:settingsCopy];
    [v7 setHidden:hiddenCopy animationParameters:v8];
  }

  else
  {
    [statusBar setHidden:hiddenCopy];
  }
}

- (id)_statusBarAnimationParametersForAnimationSettings:(id)settings
{
  if (settings)
  {
    v3 = MEMORY[0x277D75A88];
    settingsCopy = settings;
    initWithDefaultParameters = [[v3 alloc] initWithDefaultParameters];
    [settingsCopy duration];
    [initWithDefaultParameters setDuration:?];
    [initWithDefaultParameters setAnimationFactory:settingsCopy];
  }

  else
  {
    initWithDefaultParameters = 0;
  }

  return initWithDefaultParameters;
}

@end