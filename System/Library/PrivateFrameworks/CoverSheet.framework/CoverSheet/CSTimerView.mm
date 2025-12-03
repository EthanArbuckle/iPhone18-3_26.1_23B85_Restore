@interface CSTimerView
- (CSTimerView)init;
- (NSString)timerText;
- (id)_newTimerDialForSettings:(id)settings withFont:(id)font;
- (id)_timerFont;
- (id)accessoryView;
- (void)_updateLegibilityStrength;
- (void)dealloc;
- (void)setFont:(id)font;
- (void)setLegibilitySettings:(id)settings;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)updateTimerLabel;
@end

@implementation CSTimerView

- (CSTimerView)init
{
  v10.receiver = self;
  v10.super_class = CSTimerView;
  v2 = [(SBFLockScreenDateSubtitleView *)&v10 init];
  v3 = v2;
  if (v2)
  {
    _timerFont = [(CSTimerView *)v2 _timerFont];
    [(CSTimerView *)v3 setFont:_timerFont];

    legibilitySettings = [(SBFLockScreenDateSubtitleView *)v3 legibilitySettings];
    font = [(SBFLockScreenDateSubtitleView *)v3 font];
    v7 = [(CSTimerView *)v3 _newTimerDialForSettings:legibilitySettings withFont:font];
    [(SBFLockScreenDateSubtitleView *)v3 setAccessoryView:v7];

    rootSettings = [MEMORY[0x277D65E90] rootSettings];
    [rootSettings addKeyObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  rootSettings = [MEMORY[0x277D65E90] rootSettings];
  [rootSettings removeKeyObserver:self];

  v4.receiver = self;
  v4.super_class = CSTimerView;
  [(SBFLockScreenDateSubtitleView *)&v4 dealloc];
}

- (id)accessoryView
{
  v7.receiver = self;
  v7.super_class = CSTimerView;
  accessoryView = [(SBFLockScreenDateSubtitleView *)&v7 accessoryView];
  v3 = objc_opt_class();
  v4 = accessoryView;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)setFont:(id)font
{
  v6.receiver = self;
  v6.super_class = CSTimerView;
  fontCopy = font;
  [(SBFLockScreenDateSubtitleView *)&v6 setFont:fontCopy];
  v5 = [(CSTimerView *)self accessoryView:v6.receiver];
  [v5 setFont:fontCopy];

  [v5 sizeToFit];
}

- (void)setLegibilitySettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = CSTimerView;
  settingsCopy = settings;
  [(SBFLockScreenDateSubtitleView *)&v7 setLegibilitySettings:settingsCopy];
  [(CSTimerView *)self _updateLegibilityStrength:v7.receiver];
  font = [(SBFLockScreenDateSubtitleView *)self font];
  v6 = [(CSTimerView *)self _newTimerDialForSettings:settingsCopy withFont:font];

  [(SBFLockScreenDateSubtitleView *)self setAccessoryView:v6];
}

- (NSString)timerText
{
  [(NSDate *)self->_endDate timeIntervalSinceNow];
  v3 = v2;
  mEMORY[0x277CF0BF0] = [MEMORY[0x277CF0BF0] sharedInstance];
  v5 = [mEMORY[0x277CF0BF0] formatAbbreviatedTimerDuration:v3];

  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v6 = @"\u200F%@%@";
  }

  else
  {
    v6 = @"%@%@";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:v6, @" ", v5];

  return v7;
}

- (void)updateTimerLabel
{
  timerText = [(CSTimerView *)self timerText];
  [(SBFLockScreenDateSubtitleView *)self setString:timerText];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v5 = MEMORY[0x277D65E90];
  settingsCopy = settings;
  rootSettings = [v5 rootSettings];

  if (rootSettings == settingsCopy)
  {

    [(CSTimerView *)self _updateLegibilityStrength];
  }
}

- (void)_updateLegibilityStrength
{
  legibilitySettings = [(SBFLockScreenDateSubtitleView *)self legibilitySettings];
  style = [legibilitySettings style];

  rootSettings = [MEMORY[0x277D65E90] rootSettings];
  [rootSettings timerTextStrengthForStyle:style];
  [(SBFLockScreenDateSubtitleView *)self setStrength:?];
}

- (id)_newTimerDialForSettings:(id)settings withFont:(id)font
{
  v5 = MEMORY[0x277D67960];
  fontCopy = font;
  settingsCopy = settings;
  v8 = [[v5 alloc] initWithSymbolFont:fontCopy];

  rootSettings = [MEMORY[0x277D65E90] rootSettings];
  [rootSettings timerDialStrengthForStyle:{objc_msgSend(settingsCopy, "style")}];
  [v8 setStrength:?];

  [v8 setLegibilitySettings:settingsCopy];
  [v8 sizeToFit];
  return v8;
}

- (id)_timerFont
{
  v2 = MEMORY[0x277D74300];
  font = [(SBFLockScreenDateSubtitleView *)self font];
  [font pointSize];
  v4 = [v2 monospacedDigitSystemFontOfSize:? weight:?];

  return v4;
}

@end