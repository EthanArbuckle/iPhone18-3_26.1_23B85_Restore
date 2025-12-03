@interface HUQuickControlSliderValueOverlayView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CAShapeLayer)secondaryGrabberShadowLayer;
- (HUQuickControlSliderValueOverlayView)initWithFrame:(CGRect)frame;
- (id)_createGrabberShadowLayer;
- (void)_updateBlendMode;
- (void)_updateShape;
- (void)layoutSubviews;
- (void)setControlSize:(unint64_t)size;
- (void)setHasSecondGrabber:(BOOL)grabber;
- (void)setLayerColor:(id)color;
- (void)setOff:(BOOL)off;
- (void)setPrimaryGrabberLocation:(unint64_t)location;
- (void)setShowGrabbers:(BOOL)grabbers;
@end

@implementation HUQuickControlSliderValueOverlayView

- (void)setLayerColor:(id)color
{
  objc_storeStrong(&self->_layerColor, color);
  colorCopy = color;
  [(HUQuickControlSliderValueOverlayView *)self _updateBlendMode];
  traitCollection = [(HUQuickControlSliderValueOverlayView *)self traitCollection];
  [traitCollection userInterfaceStyle];
  isOff = [(HUQuickControlSliderValueOverlayView *)self isOff];
  v8 = borderColorSurroundingColor(colorCopy, v7, isOff);

  topBorder = [(HUQuickControlSliderValueOverlayView *)self topBorder];
  [topBorder setBackgroundColor:v8];
}

- (HUQuickControlSliderValueOverlayView)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  v12.receiver = self;
  v12.super_class = HUQuickControlSliderValueOverlayView;
  v4 = [(HUQuickControlSliderValueOverlayView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_showGrabbers = 1;
    v6 = *MEMORY[0x277CDA248];
    layer = [(HUQuickControlSliderValueOverlayView *)v4 layer];
    [layer setFillRule:v6];

    layer2 = [(HUQuickControlSliderValueOverlayView *)v5 layer];
    [layer2 setMasksToBounds:1];

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

- (void)setOff:(BOOL)off
{
  if (self->_off != off)
  {
    self->_off = off;
    [(HUQuickControlSliderValueOverlayView *)self _updateBlendMode];
  }

  layerColor = [(HUQuickControlSliderValueOverlayView *)self layerColor];
  traitCollection = [(HUQuickControlSliderValueOverlayView *)self traitCollection];
  [traitCollection userInterfaceStyle];
  isOff = [(HUQuickControlSliderValueOverlayView *)self isOff];
  v7 = borderColorSurroundingColor(layerColor, v6, isOff);
  topBorder = [(HUQuickControlSliderValueOverlayView *)self topBorder];
  [topBorder setBackgroundColor:v7];
}

- (void)setShowGrabbers:(BOOL)grabbers
{
  if (self->_showGrabbers != grabbers)
  {
    self->_showGrabbers = grabbers;
    [(HUQuickControlSliderValueOverlayView *)self setNeedsLayout];
  }
}

- (void)setHasSecondGrabber:(BOOL)grabber
{
  if (self->_hasSecondGrabber != grabber)
  {
    self->_hasSecondGrabber = grabber;
    [(HUQuickControlSliderValueOverlayView *)self setNeedsLayout];
  }
}

- (void)setPrimaryGrabberLocation:(unint64_t)location
{
  if (self->_primaryGrabberLocation != location)
  {
    self->_primaryGrabberLocation = location;
    [(HUQuickControlSliderValueOverlayView *)self setNeedsLayout];
  }
}

- (void)setControlSize:(unint64_t)size
{
  if (self->_controlSize != size)
  {
    self->_controlSize = size;
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
    controlSize = [(HUQuickControlSliderValueOverlayView *)self controlSize];
    [(HUQuickControlSliderValueOverlayView *)self bounds];
    v7 = 0.65;
    if (controlSize != 2)
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
      primaryGrabberShadowLayer = [(HUQuickControlSliderValueOverlayView *)self primaryGrabberShadowLayer];

      if (!primaryGrabberShadowLayer)
      {
        _createGrabberShadowLayer = [(HUQuickControlSliderValueOverlayView *)self _createGrabberShadowLayer];
        [(HUQuickControlSliderValueOverlayView *)self setPrimaryGrabberShadowLayer:_createGrabberShadowLayer];
        layer = [(HUQuickControlSliderValueOverlayView *)self layer];
        [layer insertSublayer:_createGrabberShadowLayer atIndex:0];
      }
    }

    cGPath = [v13 CGPath];
    primaryGrabberShadowLayer2 = [(HUQuickControlSliderValueOverlayView *)self primaryGrabberShadowLayer];
    [primaryGrabberShadowLayer2 setPath:cGPath];

    if ([(HUQuickControlSliderValueOverlayView *)self hasSecondGrabber])
    {
      [(HUQuickControlSliderValueOverlayView *)self bounds];
      v20 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v9 cornerRadius:{CGRectGetMaxY(v32) + -28.0, v8, 10.0, 5.0}];
      [v4 appendPath:v20];
      [(HUQuickControlSliderValueOverlayView *)self bounds];
      if (v21 > 0.0)
      {
        secondaryGrabberShadowLayer = [(HUQuickControlSliderValueOverlayView *)self secondaryGrabberShadowLayer];

        if (!secondaryGrabberShadowLayer)
        {
          _createGrabberShadowLayer2 = [(HUQuickControlSliderValueOverlayView *)self _createGrabberShadowLayer];
          [(HUQuickControlSliderValueOverlayView *)self setSecondaryGrabberShadowLayer:_createGrabberShadowLayer2];
          layer2 = [(HUQuickControlSliderValueOverlayView *)self layer];
          [layer2 insertSublayer:_createGrabberShadowLayer2 atIndex:0];
        }
      }

      cGPath2 = [v20 CGPath];
      secondaryGrabberShadowLayer2 = [(HUQuickControlSliderValueOverlayView *)self secondaryGrabberShadowLayer];
      [secondaryGrabberShadowLayer2 setPath:cGPath2];
    }

    cGPath3 = [v4 CGPath];
    layer3 = [(HUQuickControlSliderValueOverlayView *)self layer];
    [layer3 setPath:cGPath3];
  }

  else
  {
    cGPath4 = [v4 CGPath];
    layer4 = [(HUQuickControlSliderValueOverlayView *)self layer];
    [layer4 setPath:cGPath4];
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
  layer = [MEMORY[0x277CD9F90] layer];
  [layer setShadowRadius:10.0];
  LODWORD(v3) = *"333?";
  [layer setShadowOpacity:v3];
  darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
  [layer setShadowColor:{objc_msgSend(darkGrayColor, "CGColor")}];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [layer setFillColor:{objc_msgSend(systemWhiteColor, "CGColor")}];

  [layer setShadowOffset:{0.0, 5.0}];

  return layer;
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
  cGColor = [v6 CGColor];
  layer = [(HUQuickControlSliderValueOverlayView *)self layer];
  [layer setFillColor:cGColor];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = HUQuickControlSliderValueOverlayView;
  [(HUQuickControlSliderValueOverlayView *)&v11 layoutSubviews];
  [(HUQuickControlSliderValueOverlayView *)self _updateShape];
  topBorder = [(HUQuickControlSliderValueOverlayView *)self topBorder];
  [topBorder frame];
  v5 = v4;
  [(HUQuickControlSliderValueOverlayView *)self bounds];
  v7 = v6;

  if (v5 < v7)
  {
    [(HUQuickControlSliderValueOverlayView *)self bounds];
    v9 = v8;
    topBorder2 = [(HUQuickControlSliderValueOverlayView *)self topBorder];
    [topBorder2 setFrame:{0.0, 0.0, v9, 1.0}];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy hasPrefix:@"fillColor"] & 1) != 0 || (objc_msgSend(keyCopy, "hasPrefix:", @"compositingFilter"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUQuickControlSliderValueOverlayView;
    v5 = [(HUQuickControlSliderValueOverlayView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (CAShapeLayer)secondaryGrabberShadowLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_secondaryGrabberShadowLayer);

  return WeakRetained;
}

@end