@interface CSFocusActivityIndicator
+ (CGSize)activityIndicatorExpandedSize;
+ (CGSize)activityIndicatorSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CSFocusActivityIndicator)init;
- (int64_t)_userInterfaceStyleForCurrentActivity;
- (void)_setSelected:(BOOL)a3;
- (void)_updateForActivity;
- (void)_updateStyle;
- (void)setActivity:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
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

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSFocusActivityIndicator;
  [(CSFocusActivityIndicator *)&v4 setEnabled:a3];
  [(CSFocusActivityIndicator *)self _updateStyle];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = objc_opt_class();

  [v3 activityIndicatorSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([v5 sb_isEqualToLegibilitySettings:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(CSFocusActivityIndicator *)self _updateStyle];
  }
}

- (void)setActivity:(id)a3
{
  v5 = a3;
  if (self->_activity != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_activity, a3);
    activity = self->_activity;
    if (activity)
    {
      objc_storeStrong(&self->_previousActivity, activity);
    }

    [(CSFocusActivityIndicator *)self _updateForActivity];
    [(CSFocusActivityIndicator *)self setOverrideUserInterfaceStyle:[(CSFocusActivityIndicator *)self _userInterfaceStyleForCurrentActivity]];
    v5 = v7;
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
  [a1 activityIndicatorSize];
  v3 = v2 + 29.0;
  v5 = v4 + 20.0;
  result.height = v3;
  result.width = v5;
  return result;
}

- (void)_setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = CSFocusActivityIndicator;
  if ([(CSFocusActivityIndicator *)&v7 respondsToSelector:sel_setSelected_animated_])
  {
    v6.receiver = self;
    v6.super_class = CSFocusActivityIndicator;
    [(CSFocusActivityIndicator *)&v6 setSelected:v3 animated:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSFocusActivityIndicator;
    [(UICoverSheetButton *)&v5 setSelected:v3];
  }
}

- (void)_updateStyle
{
  v5 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  if (([(CSFocusActivityIndicator *)self isEnabled]& 1) != 0)
  {
    v3 = v5;
  }

  else
  {
    v4 = [v5 colorWithAlphaComponent:0.25];

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
  v10 = [(FCActivityDescribing *)v4 activitySymbolImageName];
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:v10];
  v6 = [v5 imageWithRenderingMode:2];

  [(UICoverSheetButton *)self setSelectedImage:v6];
  [(UICoverSheetButton *)self setImage:v6];
  v7 = [MEMORY[0x277D75348] fcui_colorForActivity:self->_activity];
  [(UICoverSheetButton *)self setSelectedTintColor:v7];
  v8 = [MEMORY[0x277D75348] whiteColor];
  [(CSFocusActivityIndicator *)self setTintColor:v8];

  v9 = [(FCActivityDescribing *)self->_activity activityDisplayName];

  [(UICoverSheetButton *)self setLocalizedAccessoryTitle:v9];
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