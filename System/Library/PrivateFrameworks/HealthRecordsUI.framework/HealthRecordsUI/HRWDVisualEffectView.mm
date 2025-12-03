@interface HRWDVisualEffectView
+ (id)tintViewWithBlurEffectStyle:(int64_t)style color:(id)color;
+ (id)ultraLightTintView;
- (HRWDVisualEffectView)initWithEffect:(id)effect;
- (void)layoutSubviews;
@end

@implementation HRWDVisualEffectView

+ (id)ultraLightTintView
{
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.82];
  v3 = [HRWDVisualEffectView tintViewWithBlurEffectStyle:1 color:v2];

  return v3;
}

+ (id)tintViewWithBlurEffectStyle:(int64_t)style color:(id)color
{
  colorCopy = color;
  v7 = [self alloc];
  v8 = [MEMORY[0x1E69DC730] effectWithStyle:style];
  v9 = [v7 initWithEffect:v8];

  tintView = [v9 tintView];
  [tintView setBackgroundColor:colorCopy];

  return v9;
}

- (HRWDVisualEffectView)initWithEffect:(id)effect
{
  v8.receiver = self;
  v8.super_class = HRWDVisualEffectView;
  v3 = [(HRWDVisualEffectView *)&v8 initWithEffect:effect];
  if (v3)
  {
    v4 = objc_opt_new();
    [(HRWDVisualEffectView *)v3 setTintView:v4];

    contentView = [(HRWDVisualEffectView *)v3 contentView];
    tintView = [(HRWDVisualEffectView *)v3 tintView];
    [contentView addSubview:tintView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = HRWDVisualEffectView;
  [(HRWDVisualEffectView *)&v12 layoutSubviews];
  if (self->_tintView)
  {
    [(HRWDVisualEffectView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    tintView = [(HRWDVisualEffectView *)self tintView];
    [tintView setFrame:{v4, v6, v8, v10}];
  }
}

@end