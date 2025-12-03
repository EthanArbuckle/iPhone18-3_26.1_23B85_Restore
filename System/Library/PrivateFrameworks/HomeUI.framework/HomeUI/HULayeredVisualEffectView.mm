@interface HULayeredVisualEffectView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HULayeredVisualEffectView)initWithContentEffect:(id)effect backgroundEffect:(id)backgroundEffect;
- (HULayeredVisualEffectView)initWithFrame:(CGRect)frame;
- (UIView)contentView;
- (void)_applyCornerRadius;
- (void)_updateBackgroundEffects;
- (void)_updateContentEffects;
- (void)_updateSubviewOrder;
- (void)setBackgroundEffect:(id)effect;
- (void)setBackgroundEffectAlpha:(double)alpha;
- (void)setContentEffect:(id)effect;
- (void)setContentEffectAlpha:(double)alpha;
- (void)setCornerRadius:(double)radius;
@end

@implementation HULayeredVisualEffectView

- (HULayeredVisualEffectView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = HULayeredVisualEffectView;
  v3 = [(HULayeredVisualEffectView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D68]);
    [(HULayeredVisualEffectView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    contentEffectView = v3->_contentEffectView;
    v3->_contentEffectView = v5;

    [(UIVisualEffectView *)v3->_contentEffectView setAutoresizingMask:18];
    [(HULayeredVisualEffectView *)v3 addSubview:v3->_contentEffectView];
    v3->_contentEffectAlpha = 1.0;
    v3->_backgroundEffectAlpha = 1.0;
    [(HULayeredVisualEffectView *)v3 _updateContentEffects];
    [(HULayeredVisualEffectView *)v3 _updateBackgroundEffects];
  }

  return v3;
}

- (HULayeredVisualEffectView)initWithContentEffect:(id)effect backgroundEffect:(id)backgroundEffect
{
  effectCopy = effect;
  backgroundEffectCopy = backgroundEffect;
  v12.receiver = self;
  v12.super_class = HULayeredVisualEffectView;
  v9 = [(HULayeredVisualEffectView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentEffect, effect);
    objc_storeStrong(&v10->_backgroundEffect, backgroundEffect);
    v10->_contentEffectAlpha = 1.0;
    v10->_backgroundEffectAlpha = 1.0;
    [(HULayeredVisualEffectView *)v10 _updateContentEffects];
    [(HULayeredVisualEffectView *)v10 _updateBackgroundEffects];
  }

  return v10;
}

- (void)setContentEffect:(id)effect
{
  effectCopy = effect;
  if (self->_contentEffect != effectCopy)
  {
    v6 = effectCopy;
    objc_storeStrong(&self->_contentEffect, effect);
    [(HULayeredVisualEffectView *)self _updateContentEffects];
    effectCopy = v6;
  }
}

- (void)setBackgroundEffect:(id)effect
{
  effectCopy = effect;
  if (self->_backgroundEffect != effectCopy)
  {
    v6 = effectCopy;
    objc_storeStrong(&self->_backgroundEffect, effect);
    [(HULayeredVisualEffectView *)self _updateBackgroundEffects];
    effectCopy = v6;
  }
}

- (UIView)contentView
{
  contentEffectView = [(HULayeredVisualEffectView *)self contentEffectView];
  contentView = [contentEffectView contentView];

  return contentView;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  contentView = [(HULayeredVisualEffectView *)self contentView];
  *&v10 = priority;
  *&v11 = fittingPriority;
  [contentView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(HULayeredVisualEffectView *)self _applyCornerRadius];
  }
}

- (void)setContentEffectAlpha:(double)alpha
{
  if (self->_contentEffectAlpha != alpha)
  {
    self->_contentEffectAlpha = alpha;
    [(HULayeredVisualEffectView *)self _updateContentEffects];
  }
}

- (void)setBackgroundEffectAlpha:(double)alpha
{
  if (self->_backgroundEffectAlpha != alpha)
  {
    self->_backgroundEffectAlpha = alpha;
    [(HULayeredVisualEffectView *)self _updateBackgroundEffects];
  }
}

- (void)_updateContentEffects
{
  contentEffect = [(HULayeredVisualEffectView *)self contentEffect];
  vibrancyEffect = [contentEffect vibrancyEffect];
  contentEffectView = [(HULayeredVisualEffectView *)self contentEffectView];
  [contentEffectView setEffect:vibrancyEffect];

  contentEffect2 = [(HULayeredVisualEffectView *)self contentEffect];
  tintColor = [contentEffect2 tintColor];
  contentEffectView2 = [(HULayeredVisualEffectView *)self contentEffectView];
  [contentEffectView2 setTintColor:tintColor];

  [(HULayeredVisualEffectView *)self contentEffectAlpha];
  v10 = v9;
  contentEffectView3 = [(HULayeredVisualEffectView *)self contentEffectView];
  [contentEffectView3 setAlpha:v10];
}

- (void)_updateBackgroundEffects
{
  backgroundEffect = [(HULayeredVisualEffectView *)self backgroundEffect];
  blurEffect = [backgroundEffect blurEffect];
  if (blurEffect)
  {
    v5 = blurEffect;
    backgroundEffectView = [(HULayeredVisualEffectView *)self backgroundEffectView];

    if (backgroundEffectView)
    {
      goto LABEL_5;
    }

    v7 = objc_alloc(MEMORY[0x277D75D68]);
    [(HULayeredVisualEffectView *)self bounds];
    v8 = [v7 initWithFrame:?];
    [(HULayeredVisualEffectView *)self setBackgroundEffectView:v8];

    backgroundEffectView2 = [(HULayeredVisualEffectView *)self backgroundEffectView];
    [backgroundEffectView2 setAutoresizingMask:18];

    backgroundEffect = [(HULayeredVisualEffectView *)self backgroundEffectView];
    [(HULayeredVisualEffectView *)self insertSubview:backgroundEffect atIndex:0];
  }

LABEL_5:
  backgroundEffect2 = [(HULayeredVisualEffectView *)self backgroundEffect];
  blurEffect2 = [backgroundEffect2 blurEffect];
  backgroundEffectView3 = [(HULayeredVisualEffectView *)self backgroundEffectView];
  [backgroundEffectView3 setEffect:blurEffect2];

  backgroundEffect3 = [(HULayeredVisualEffectView *)self backgroundEffect];
  fillColor = [backgroundEffect3 fillColor];
  if (fillColor)
  {
    v15 = fillColor;
    backgroundFillView = [(HULayeredVisualEffectView *)self backgroundFillView];

    if (backgroundFillView)
    {
      goto LABEL_9;
    }

    v17 = objc_alloc(MEMORY[0x277D75D18]);
    [(HULayeredVisualEffectView *)self bounds];
    v18 = [v17 initWithFrame:?];
    [(HULayeredVisualEffectView *)self setBackgroundFillView:v18];

    backgroundFillView2 = [(HULayeredVisualEffectView *)self backgroundFillView];
    [backgroundFillView2 setAutoresizingMask:18];

    backgroundEffect3 = [(HULayeredVisualEffectView *)self backgroundFillView];
    [(HULayeredVisualEffectView *)self insertSubview:backgroundEffect3 atIndex:0];
  }

LABEL_9:
  backgroundEffect4 = [(HULayeredVisualEffectView *)self backgroundEffect];
  fillColor2 = [backgroundEffect4 fillColor];
  backgroundFillView3 = [(HULayeredVisualEffectView *)self backgroundFillView];
  [backgroundFillView3 setBackgroundColor:fillColor2];

  backgroundEffect5 = [(HULayeredVisualEffectView *)self backgroundEffect];
  fillColor3 = [backgroundEffect5 fillColor];
  if (fillColor3)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  backgroundFillView4 = [(HULayeredVisualEffectView *)self backgroundFillView];
  [backgroundFillView4 setAlpha:v25];

  [(HULayeredVisualEffectView *)self backgroundEffectAlpha];
  v28 = v27;
  backgroundEffectView4 = [(HULayeredVisualEffectView *)self backgroundEffectView];
  [backgroundEffectView4 setAlpha:v28];

  [(HULayeredVisualEffectView *)self _updateSubviewOrder];

  [(HULayeredVisualEffectView *)self _applyCornerRadius];
}

- (void)_updateSubviewOrder
{
  backgroundFillView = [(HULayeredVisualEffectView *)self backgroundFillView];

  if (backgroundFillView)
  {
    backgroundFillView2 = [(HULayeredVisualEffectView *)self backgroundFillView];
    [(HULayeredVisualEffectView *)self sendSubviewToBack:backgroundFillView2];
  }

  backgroundEffectView = [(HULayeredVisualEffectView *)self backgroundEffectView];

  if (backgroundEffectView)
  {
    backgroundEffectView2 = [(HULayeredVisualEffectView *)self backgroundEffectView];
    [(HULayeredVisualEffectView *)self sendSubviewToBack:backgroundEffectView2];
  }
}

- (void)_applyCornerRadius
{
  [(HULayeredVisualEffectView *)self cornerRadius];
  v4 = v3;
  backgroundEffectView = [(HULayeredVisualEffectView *)self backgroundEffectView];
  [backgroundEffectView _setCornerRadius:v4];

  [(HULayeredVisualEffectView *)self cornerRadius];
  v7 = v6;
  backgroundFillView = [(HULayeredVisualEffectView *)self backgroundFillView];
  [backgroundFillView _setCornerRadius:v7];
}

@end