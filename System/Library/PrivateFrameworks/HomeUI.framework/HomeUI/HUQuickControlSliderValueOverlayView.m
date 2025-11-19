@interface HUQuickControlSliderValueOverlayView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CAShapeLayer)secondaryGrabberShadowLayer;
- (HUQuickControlSliderValueOverlayView)initWithFrame:(CGRect)a3;
- (id)_createGrabberShadowLayer;
- (void)_updateBlendMode;
- (void)_updateShape;
- (void)layoutSubviews;
- (void)setControlSize:(unint64_t)a3;
- (void)setHasSecondGrabber:(BOOL)a3;
- (void)setLayerColor:(id)a3;
- (void)setOff:(BOOL)a3;
- (void)setPrimaryGrabberLocation:(unint64_t)a3;
- (void)setShowGrabbers:(BOOL)a3;
@end

@implementation HUQuickControlSliderValueOverlayView

- (void)setLayerColor:(id)a3
{
  objc_storeStrong(&self->_layerColor, a3);
  v5 = a3;
  [(HUQuickControlSliderValueOverlayView *)self _updateBlendMode];
  v10 = [(HUQuickControlSliderValueOverlayView *)self traitCollection];
  [v10 userInterfaceStyle];
  v6 = [(HUQuickControlSliderValueOverlayView *)self isOff];
  v8 = borderColorSurroundingColor(v5, v7, v6);

  v9 = [(HUQuickControlSliderValueOverlayView *)self topBorder];
  [v9 setBackgroundColor:v8];
}

- (HUQuickControlSliderValueOverlayView)initWithFrame:(CGRect)a3
{
  width = a3.size.width;
  v12.receiver = self;
  v12.super_class = HUQuickControlSliderValueOverlayView;
  v4 = [(HUQuickControlSliderValueOverlayView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_showGrabbers = 1;
    v6 = *MEMORY[0x277CDA248];
    v7 = [(HUQuickControlSliderValueOverlayView *)v4 layer];
    [v7 setFillRule:v6];

    v8 = [(HUQuickControlSliderValueOverlayView *)v5 layer];
    [v8 setMasksToBounds:1];

    [(HUQuickControlSliderValueOverlayView *)v5 setPrimaryGrabberLocation:0];
    v9 = objc_opt_new();
    topBorder = v5->_topBorder;
    v5->_topBorder = v9;

    [(UIView *)v5->_topBorder setFrame:0.0, 0.0, width, 5.0];
    [(HUQuickControlSliderValueOverlayView *)v5 addSubview:v5->_topBorder];
    [(HUQuickControlSliderValueOverlayView *)v5 _updateShape];
    [(HUQuickControlSliderValueOverlayView *)v5 _updateBlendMode];
  }

  return v5;
}

- (void)setOff:(BOOL)a3
{
  if (self->_off != a3)
  {
    self->_off = a3;
    [(HUQuickControlSliderValueOverlayView *)self _updateBlendMode];
  }

  v9 = [(HUQuickControlSliderValueOverlayView *)self layerColor];
  v4 = [(HUQuickControlSliderValueOverlayView *)self traitCollection];
  [v4 userInterfaceStyle];
  v5 = [(HUQuickControlSliderValueOverlayView *)self isOff];
  v7 = borderColorSurroundingColor(v9, v6, v5);
  v8 = [(HUQuickControlSliderValueOverlayView *)self topBorder];
  [v8 setBackgroundColor:v7];
}

- (void)setShowGrabbers:(BOOL)a3
{
  if (self->_showGrabbers != a3)
  {
    self->_showGrabbers = a3;
    [(HUQuickControlSliderValueOverlayView *)self setNeedsLayout];
  }
}

- (void)setHasSecondGrabber:(BOOL)a3
{
  if (self->_hasSecondGrabber != a3)
  {
    self->_hasSecondGrabber = a3;
    [(HUQuickControlSliderValueOverlayView *)self setNeedsLayout];
  }
}

- (void)setPrimaryGrabberLocation:(unint64_t)a3
{
  if (self->_primaryGrabberLocation != a3)
  {
    self->_primaryGrabberLocation = a3;
    [(HUQuickControlSliderValueOverlayView *)self setNeedsLayout];
  }
}

- (void)setControlSize:(unint64_t)a3
{
  if (self->_controlSize != a3)
  {
    self->_controlSize = a3;
    [(HUQuickControlSliderValueOverlayView *)self setNeedsLayout];
  }
}

- (void)_updateShape
{
  v3 = MEMORY[0x277D75208];
  [(HUQuickControlSliderValueOverlayView *)self bounds];
  v4 = [v3 bezierPathWithRect:?];
  if ([(HUQuickControlSliderValueOverlayView *)self showGrabbers])
  {
    v5 = [(HUQuickControlSliderValueOverlayView *)self controlSize];
    [(HUQuickControlSliderValueOverlayView *)self bounds];
    v7 = 0.65;
    if (v5 != 2)
    {
      v7 = 0.75;
    }

    v8 = v7 * v6;
    [(HUQuickControlSliderValueOverlayView *)self bounds];
    v9 = CGRectGetMidX(v31) + v8 * -0.5;
    v10 = [(HUQuickControlSliderValueOverlayView *)self primaryGrabberLocation:MEMORY[0x277D85DD0]];
    v11 = 18.0;
    if (v10 == 1)
    {
      [(HUQuickControlSliderValueOverlayView *)self bounds];
      v11 = v12 - 10.0 + -18.0;
    }

    v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v9 cornerRadius:{v11, v8, 10.0, 5.0}];
    [v4 appendPath:v13];
    [(HUQuickControlSliderValueOverlayView *)self bounds];
    if (v14 > 0.0)
    {
      v15 = [(HUQuickControlSliderValueOverlayView *)self primaryGrabberShadowLayer];

      if (!v15)
      {
        v16 = [(HUQuickControlSliderValueOverlayView *)self _createGrabberShadowLayer];
        [(HUQuickControlSliderValueOverlayView *)self setPrimaryGrabberShadowLayer:v16];
        v17 = [(HUQuickControlSliderValueOverlayView *)self layer];
        [v17 insertSublayer:v16 atIndex:0];
      }
    }

    v18 = [v13 CGPath];
    v19 = [(HUQuickControlSliderValueOverlayView *)self primaryGrabberShadowLayer];
    [v19 setPath:v18];

    if ([(HUQuickControlSliderValueOverlayView *)self hasSecondGrabber])
    {
      [(HUQuickControlSliderValueOverlayView *)self bounds];
      v20 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v9 cornerRadius:{CGRectGetMaxY(v32) + -28.0, v8, 10.0, 5.0}];
      [v4 appendPath:v20];
      [(HUQuickControlSliderValueOverlayView *)self bounds];
      if (v21 > 0.0)
      {
        v22 = [(HUQuickControlSliderValueOverlayView *)self secondaryGrabberShadowLayer];

        if (!v22)
        {
          v23 = [(HUQuickControlSliderValueOverlayView *)self _createGrabberShadowLayer];
          [(HUQuickControlSliderValueOverlayView *)self setSecondaryGrabberShadowLayer:v23];
          v24 = [(HUQuickControlSliderValueOverlayView *)self layer];
          [v24 insertSublayer:v23 atIndex:0];
        }
      }

      v25 = [v20 CGPath];
      v26 = [(HUQuickControlSliderValueOverlayView *)self secondaryGrabberShadowLayer];
      [v26 setPath:v25];
    }

    v27 = [v4 CGPath];
    v28 = [(HUQuickControlSliderValueOverlayView *)self layer];
    [v28 setPath:v27];
  }

  else
  {
    v29 = [v4 CGPath];
    v30 = [(HUQuickControlSliderValueOverlayView *)self layer];
    [v30 setPath:v29];
  }
}

double __52__HUQuickControlSliderValueOverlayView__updateShape__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) primaryGrabberLocation];
  result = 18.0;
  if (v2 == 1)
  {
    [*(a1 + 32) bounds];
    return v4 - *(a1 + 40) + -18.0;
  }

  return result;
}

- (id)_createGrabberShadowLayer
{
  v2 = [MEMORY[0x277CD9F90] layer];
  [v2 setShadowRadius:10.0];
  LODWORD(v3) = *"333?";
  [v2 setShadowOpacity:v3];
  v4 = [MEMORY[0x277D75348] darkGrayColor];
  [v2 setShadowColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [MEMORY[0x277D75348] systemWhiteColor];
  [v2 setFillColor:{objc_msgSend(v5, "CGColor")}];

  [v2 setShadowOffset:{0.0, 5.0}];

  return v2;
}

- (void)_updateBlendMode
{
  if ([(HUQuickControlSliderValueOverlayView *)self isOff])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [(HUQuickControlSliderValueOverlayView *)self layerColor];
  }
  v6 = ;
  v3 = v6;
  v4 = [v6 CGColor];
  v5 = [(HUQuickControlSliderValueOverlayView *)self layer];
  [v5 setFillColor:v4];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = HUQuickControlSliderValueOverlayView;
  [(HUQuickControlSliderValueOverlayView *)&v11 layoutSubviews];
  [(HUQuickControlSliderValueOverlayView *)self _updateShape];
  v3 = [(HUQuickControlSliderValueOverlayView *)self topBorder];
  [v3 frame];
  v5 = v4;
  [(HUQuickControlSliderValueOverlayView *)self bounds];
  v7 = v6;

  if (v5 < v7)
  {
    [(HUQuickControlSliderValueOverlayView *)self bounds];
    v9 = v8;
    v10 = [(HUQuickControlSliderValueOverlayView *)self topBorder];
    [v10 setFrame:{0.0, 0.0, v9, 1.0}];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"fillColor"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"compositingFilter"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUQuickControlSliderValueOverlayView;
    v5 = [(HUQuickControlSliderValueOverlayView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (CAShapeLayer)secondaryGrabberShadowLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_secondaryGrabberShadowLayer);

  return WeakRetained;
}

@end