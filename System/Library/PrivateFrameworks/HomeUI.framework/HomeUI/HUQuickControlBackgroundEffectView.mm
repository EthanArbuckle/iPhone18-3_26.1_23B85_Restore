@interface HUQuickControlBackgroundEffectView
- (HUQuickControlBackgroundEffectView)initWithEffectType:(unint64_t)type;
- (void)_configureForCurrentEffectType;
- (void)tintColorDidChange;
@end

@implementation HUQuickControlBackgroundEffectView

- (HUQuickControlBackgroundEffectView)initWithEffectType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = HUQuickControlBackgroundEffectView;
  v4 = [(HUQuickControlBackgroundEffectView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_effectType = type;
    [(HUQuickControlBackgroundEffectView *)v4 _configureForCurrentEffectType];
  }

  return v5;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = HUQuickControlBackgroundEffectView;
  [(HUQuickControlBackgroundEffectView *)&v4 tintColorDidChange];
  tintColor = [(HUQuickControlBackgroundEffectView *)self tintColor];
  [(HUQuickControlBackgroundEffectView *)self setBackgroundColor:tintColor];
}

- (void)_configureForCurrentEffectType
{
  v5 = [HUQuickControlVisualEffect effectWithType:[(HUQuickControlBackgroundEffectView *)self effectType]];
  effectConfig = [v5 effectConfig];
  contentConfig = [effectConfig contentConfig];
  [contentConfig configureLayerView:self];
}

@end