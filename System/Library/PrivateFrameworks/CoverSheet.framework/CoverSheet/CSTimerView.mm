@interface CSTimerView
- (CSTimerView)init;
- (NSString)timerText;
- (id)_newTimerDialForSettings:(id)a3 withFont:(id)a4;
- (id)_timerFont;
- (id)accessoryView;
- (void)_updateLegibilityStrength;
- (void)dealloc;
- (void)setFont:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
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
    v4 = [(CSTimerView *)v2 _timerFont];
    [(CSTimerView *)v3 setFont:v4];

    v5 = [(SBFLockScreenDateSubtitleView *)v3 legibilitySettings];
    v6 = [(SBFLockScreenDateSubtitleView *)v3 font];
    v7 = [(CSTimerView *)v3 _newTimerDialForSettings:v5 withFont:v6];
    [(SBFLockScreenDateSubtitleView *)v3 setAccessoryView:v7];

    v8 = [MEMORY[0x277D65E90] rootSettings];
    [v8 addKeyObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D65E90] rootSettings];
  [v3 removeKeyObserver:self];

  v4.receiver = self;
  v4.super_class = CSTimerView;
  [(SBFLockScreenDateSubtitleView *)&v4 dealloc];
}

- (id)accessoryView
{
  v7.receiver = self;
  v7.super_class = CSTimerView;
  v2 = [(SBFLockScreenDateSubtitleView *)&v7 accessoryView];
  v3 = objc_opt_class();
  v4 = v2;
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

- (void)setFont:(id)a3
{
  v6.receiver = self;
  v6.super_class = CSTimerView;
  v4 = a3;
  [(SBFLockScreenDateSubtitleView *)&v6 setFont:v4];
  v5 = [(CSTimerView *)self accessoryView:v6.receiver];
  [v5 setFont:v4];

  [v5 sizeToFit];
}

- (void)setLegibilitySettings:(id)a3
{
  v7.receiver = self;
  v7.super_class = CSTimerView;
  v4 = a3;
  [(SBFLockScreenDateSubtitleView *)&v7 setLegibilitySettings:v4];
  [(CSTimerView *)self _updateLegibilityStrength:v7.receiver];
  v5 = [(SBFLockScreenDateSubtitleView *)self font];
  v6 = [(CSTimerView *)self _newTimerDialForSettings:v4 withFont:v5];

  [(SBFLockScreenDateSubtitleView *)self setAccessoryView:v6];
}

- (NSString)timerText
{
  [(NSDate *)self->_endDate timeIntervalSinceNow];
  v3 = v2;
  v4 = [MEMORY[0x277CF0BF0] sharedInstance];
  v5 = [v4 formatAbbreviatedTimerDuration:v3];

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
  v3 = [(CSTimerView *)self timerText];
  [(SBFLockScreenDateSubtitleView *)self setString:v3];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = MEMORY[0x277D65E90];
  v6 = a3;
  v7 = [v5 rootSettings];

  if (v7 == v6)
  {

    [(CSTimerView *)self _updateLegibilityStrength];
  }
}

- (void)_updateLegibilityStrength
{
  v3 = [(SBFLockScreenDateSubtitleView *)self legibilitySettings];
  v4 = [v3 style];

  v5 = [MEMORY[0x277D65E90] rootSettings];
  [v5 timerTextStrengthForStyle:v4];
  [(SBFLockScreenDateSubtitleView *)self setStrength:?];
}

- (id)_newTimerDialForSettings:(id)a3 withFont:(id)a4
{
  v5 = MEMORY[0x277D67960];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithSymbolFont:v6];

  v9 = [MEMORY[0x277D65E90] rootSettings];
  [v9 timerDialStrengthForStyle:{objc_msgSend(v7, "style")}];
  [v8 setStrength:?];

  [v8 setLegibilitySettings:v7];
  [v8 sizeToFit];
  return v8;
}

- (id)_timerFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(SBFLockScreenDateSubtitleView *)self font];
  [v3 pointSize];
  v4 = [v2 monospacedDigitSystemFontOfSize:? weight:?];

  return v4;
}

@end