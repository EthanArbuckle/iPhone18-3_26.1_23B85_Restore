@interface HULayeredVisualEffectView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HULayeredVisualEffectView)initWithContentEffect:(id)a3 backgroundEffect:(id)a4;
- (HULayeredVisualEffectView)initWithFrame:(CGRect)a3;
- (UIView)contentView;
- (void)_applyCornerRadius;
- (void)_updateBackgroundEffects;
- (void)_updateContentEffects;
- (void)_updateSubviewOrder;
- (void)setBackgroundEffect:(id)a3;
- (void)setBackgroundEffectAlpha:(double)a3;
- (void)setContentEffect:(id)a3;
- (void)setContentEffectAlpha:(double)a3;
- (void)setCornerRadius:(double)a3;
@end

@implementation HULayeredVisualEffectView

- (HULayeredVisualEffectView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = HULayeredVisualEffectView;
  v3 = [(HULayeredVisualEffectView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (HULayeredVisualEffectView)initWithContentEffect:(id)a3 backgroundEffect:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HULayeredVisualEffectView;
  v9 = [(HULayeredVisualEffectView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentEffect, a3);
    objc_storeStrong(&v10->_backgroundEffect, a4);
    v10->_contentEffectAlpha = 1.0;
    v10->_backgroundEffectAlpha = 1.0;
    [(HULayeredVisualEffectView *)v10 _updateContentEffects];
    [(HULayeredVisualEffectView *)v10 _updateBackgroundEffects];
  }

  return v10;
}

- (void)setContentEffect:(id)a3
{
  v5 = a3;
  if (self->_contentEffect != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contentEffect, a3);
    [(HULayeredVisualEffectView *)self _updateContentEffects];
    v5 = v6;
  }
}

- (void)setBackgroundEffect:(id)a3
{
  v5 = a3;
  if (self->_backgroundEffect != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backgroundEffect, a3);
    [(HULayeredVisualEffectView *)self _updateBackgroundEffects];
    v5 = v6;
  }
}

- (UIView)contentView
{
  v2 = [(HULayeredVisualEffectView *)self contentEffectView];
  v3 = [v2 contentView];

  return v3;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [(HULayeredVisualEffectView *)self contentView];
  *&v10 = a4;
  *&v11 = a5;
  [v9 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(HULayeredVisualEffectView *)self _applyCornerRadius];
  }
}

- (void)setContentEffectAlpha:(double)a3
{
  if (self->_contentEffectAlpha != a3)
  {
    self->_contentEffectAlpha = a3;
    [(HULayeredVisualEffectView *)self _updateContentEffects];
  }
}

- (void)setBackgroundEffectAlpha:(double)a3
{
  if (self->_backgroundEffectAlpha != a3)
  {
    self->_backgroundEffectAlpha = a3;
    [(HULayeredVisualEffectView *)self _updateBackgroundEffects];
  }
}

- (void)_updateContentEffects
{
  v3 = [(HULayeredVisualEffectView *)self contentEffect];
  v4 = [v3 vibrancyEffect];
  v5 = [(HULayeredVisualEffectView *)self contentEffectView];
  [v5 setEffect:v4];

  v6 = [(HULayeredVisualEffectView *)self contentEffect];
  v7 = [v6 tintColor];
  v8 = [(HULayeredVisualEffectView *)self contentEffectView];
  [v8 setTintColor:v7];

  [(HULayeredVisualEffectView *)self contentEffectAlpha];
  v10 = v9;
  v11 = [(HULayeredVisualEffectView *)self contentEffectView];
  [v11 setAlpha:v10];
}

- (void)_updateBackgroundEffects
{
  v3 = [(HULayeredVisualEffectView *)self backgroundEffect];
  v4 = [v3 blurEffect];
  if (v4)
  {
    v5 = v4;
    v6 = [(HULayeredVisualEffectView *)self backgroundEffectView];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = objc_alloc(MEMORY[0x277D75D68]);
    [(HULayeredVisualEffectView *)self bounds];
    v8 = [v7 initWithFrame:?];
    [(HULayeredVisualEffectView *)self setBackgroundEffectView:v8];

    v9 = [(HULayeredVisualEffectView *)self backgroundEffectView];
    [v9 setAutoresizingMask:18];

    v3 = [(HULayeredVisualEffectView *)self backgroundEffectView];
    [(HULayeredVisualEffectView *)self insertSubview:v3 atIndex:0];
  }

LABEL_5:
  v10 = [(HULayeredVisualEffectView *)self backgroundEffect];
  v11 = [v10 blurEffect];
  v12 = [(HULayeredVisualEffectView *)self backgroundEffectView];
  [v12 setEffect:v11];

  v13 = [(HULayeredVisualEffectView *)self backgroundEffect];
  v14 = [v13 fillColor];
  if (v14)
  {
    v15 = v14;
    v16 = [(HULayeredVisualEffectView *)self backgroundFillView];

    if (v16)
    {
      goto LABEL_9;
    }

    v17 = objc_alloc(MEMORY[0x277D75D18]);
    [(HULayeredVisualEffectView *)self bounds];
    v18 = [v17 initWithFrame:?];
    [(HULayeredVisualEffectView *)self setBackgroundFillView:v18];

    v19 = [(HULayeredVisualEffectView *)self backgroundFillView];
    [v19 setAutoresizingMask:18];

    v13 = [(HULayeredVisualEffectView *)self backgroundFillView];
    [(HULayeredVisualEffectView *)self insertSubview:v13 atIndex:0];
  }

LABEL_9:
  v20 = [(HULayeredVisualEffectView *)self backgroundEffect];
  v21 = [v20 fillColor];
  v22 = [(HULayeredVisualEffectView *)self backgroundFillView];
  [v22 setBackgroundColor:v21];

  v23 = [(HULayeredVisualEffectView *)self backgroundEffect];
  v24 = [v23 fillColor];
  if (v24)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = [(HULayeredVisualEffectView *)self backgroundFillView];
  [v26 setAlpha:v25];

  [(HULayeredVisualEffectView *)self backgroundEffectAlpha];
  v28 = v27;
  v29 = [(HULayeredVisualEffectView *)self backgroundEffectView];
  [v29 setAlpha:v28];

  [(HULayeredVisualEffectView *)self _updateSubviewOrder];

  [(HULayeredVisualEffectView *)self _applyCornerRadius];
}

- (void)_updateSubviewOrder
{
  v3 = [(HULayeredVisualEffectView *)self backgroundFillView];

  if (v3)
  {
    v4 = [(HULayeredVisualEffectView *)self backgroundFillView];
    [(HULayeredVisualEffectView *)self sendSubviewToBack:v4];
  }

  v5 = [(HULayeredVisualEffectView *)self backgroundEffectView];

  if (v5)
  {
    v6 = [(HULayeredVisualEffectView *)self backgroundEffectView];
    [(HULayeredVisualEffectView *)self sendSubviewToBack:v6];
  }
}

- (void)_applyCornerRadius
{
  [(HULayeredVisualEffectView *)self cornerRadius];
  v4 = v3;
  v5 = [(HULayeredVisualEffectView *)self backgroundEffectView];
  [v5 _setCornerRadius:v4];

  [(HULayeredVisualEffectView *)self cornerRadius];
  v7 = v6;
  v8 = [(HULayeredVisualEffectView *)self backgroundFillView];
  [v8 _setCornerRadius:v7];
}

@end