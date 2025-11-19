@interface HUQuickControlBackgroundEffectView
- (HUQuickControlBackgroundEffectView)initWithEffectType:(unint64_t)a3;
- (void)_configureForCurrentEffectType;
- (void)tintColorDidChange;
@end

@implementation HUQuickControlBackgroundEffectView

- (HUQuickControlBackgroundEffectView)initWithEffectType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = HUQuickControlBackgroundEffectView;
  v4 = [(HUQuickControlBackgroundEffectView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_effectType = a3;
    [(HUQuickControlBackgroundEffectView *)v4 _configureForCurrentEffectType];
  }

  return v5;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = HUQuickControlBackgroundEffectView;
  [(HUQuickControlBackgroundEffectView *)&v4 tintColorDidChange];
  v3 = [(HUQuickControlBackgroundEffectView *)self tintColor];
  [(HUQuickControlBackgroundEffectView *)self setBackgroundColor:v3];
}

- (void)_configureForCurrentEffectType
{
  v5 = [HUQuickControlVisualEffect effectWithType:[(HUQuickControlBackgroundEffectView *)self effectType]];
  v3 = [v5 effectConfig];
  v4 = [v3 contentConfig];
  [v4 configureLayerView:self];
}

@end