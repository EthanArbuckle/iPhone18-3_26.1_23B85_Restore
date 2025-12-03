@interface CSFocusActivityIndicator
+ (CGSize)activityIndicatorExpandedSize;
+ (CGSize)activityIndicatorSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CSFocusActivityIndicator)init;
- (int64_t)_userInterfaceStyleForCurrentActivity;
- (void)_setSelected:(BOOL)selected;
- (void)_updateForActivity;
- (void)_updateStyle;
- (void)setActivity:(id)activity;
- (void)setEnabled:(BOOL)enabled;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation CSFocusActivityIndicator

- (CSFocusActivityIndicator)init
{
  v5.receiver = self;
  v5.super_class = CSFocusActivityIndicator;
  v2 = [(CSFocusActivityIndicator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSFocusActivityIndicator *)v2 _setSelected:1];
    [(UICoverSheetButton *)v3 setPronounced:1];
    [(UICoverSheetButton *)v3 setShouldUseContinuousCorners:1];
    [(UICoverSheetButton *)v3 setImageContentMode:1];
    [(UICoverSheetButton *)v3 setStatisticsIdentifier:@"focusActivityIndicator"];
    [(CSFocusActivityIndicator *)v3 setAccessibilityIdentifier:@"focus-activity-orb-button"];
  }

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = CSFocusActivityIndicator;
  [(CSFocusActivityIndicator *)&v4 setEnabled:enabled];
  [(CSFocusActivityIndicator *)self _updateStyle];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = objc_opt_class();

  [v3 activityIndicatorSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([settingsCopy sb_isEqualToLegibilitySettings:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(CSFocusActivityIndicator *)self _updateStyle];
  }
}

- (void)setActivity:(id)activity
{
  activityCopy = activity;
  if (self->_activity != activityCopy)
  {
    v7 = activityCopy;
    objc_storeStrong(&self->_activity, activity);
    activity = self->_activity;
    if (activity)
    {
      objc_storeStrong(&self->_previousActivity, activity);
    }

    [(CSFocusActivityIndicator *)self _updateForActivity];
    [(CSFocusActivityIndicator *)self setOverrideUserInterfaceStyle:[(CSFocusActivityIndicator *)self _userInterfaceStyleForCurrentActivity]];
    activityCopy = v7;
  }
}

+ (CGSize)activityIndicatorSize
{
  v2 = 60.0;
  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)activityIndicatorExpandedSize
{
  [self activityIndicatorSize];
  v3 = v2 + 29.0;
  v5 = v4 + 20.0;
  result.height = v3;
  result.width = v5;
  return result;
}

- (void)_setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = CSFocusActivityIndicator;
  if ([(CSFocusActivityIndicator *)&v7 respondsToSelector:sel_setSelected_animated_])
  {
    v6.receiver = self;
    v6.super_class = CSFocusActivityIndicator;
    [(CSFocusActivityIndicator *)&v6 setSelected:selectedCopy animated:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSFocusActivityIndicator;
    [(UICoverSheetButton *)&v5 setSelected:selectedCopy];
  }
}

- (void)_updateStyle
{
  primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  if (([(CSFocusActivityIndicator *)self isEnabled]& 1) != 0)
  {
    v3 = primaryColor;
  }

  else
  {
    v4 = [primaryColor colorWithAlphaComponent:0.25];

    v3 = v4;
  }

  v6 = v3;
  [(CSFocusActivityIndicator *)self setTintColor:v3];
}

- (void)_updateForActivity
{
  activity = self->_activity;
  if (!activity)
  {
    activity = self->_previousActivity;
  }

  v4 = activity;
  activitySymbolImageName = [(FCActivityDescribing *)v4 activitySymbolImageName];
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:activitySymbolImageName];
  v6 = [v5 imageWithRenderingMode:2];

  [(UICoverSheetButton *)self setSelectedImage:v6];
  [(UICoverSheetButton *)self setImage:v6];
  v7 = [MEMORY[0x277D75348] fcui_colorForActivity:self->_activity];
  [(UICoverSheetButton *)self setSelectedTintColor:v7];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(CSFocusActivityIndicator *)self setTintColor:whiteColor];

  activityDisplayName = [(FCActivityDescribing *)self->_activity activityDisplayName];

  [(UICoverSheetButton *)self setLocalizedAccessoryTitle:activityDisplayName];
  [(CSFocusActivityIndicator *)self _setSelected:self->_activity != 0];
  [(CSFocusActivityIndicator *)self setNeedsLayout];
}

- (int64_t)_userInterfaceStyleForCurrentActivity
{
  if (self->_activity)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end