@interface MPUTransportButton
+ (id)_stringForDisplayedSkipInterval:(double)interval;
+ (id)defaultDisabledColor;
+ (id)skipIntervalImageForInterval:(double)interval baseImage:(id)image font:(id)font scale:(double)scale;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isEnabled;
- (BOOL)shouldTrack;
- (MPUTransportButton)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)transportButtonImageViewContentMode;
- (void)_updateDisabledTransportButtonImage;
- (void)_updateHighlightedTransportButtonImage;
- (void)_updateRegularTransportButtonImage;
- (void)_updateSelectedTransportButtonImage;
- (void)applyTransportButtonLayoutAttributes:(id *)attributes;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setDisabledColor:(id)color;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlightedColor:(id)color;
- (void)setRegularColor:(id)color;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedColor:(id)color;
- (void)setShouldInferColorsFromTintColor:(BOOL)color;
- (void)setTransportButtonImage:(id)image;
- (void)setTransportButtonImageViewContentMode:(int64_t)mode;
@end

@implementation MPUTransportButton

+ (id)defaultDisabledColor
{
  defaultRegularColor = [self defaultRegularColor];
  v3 = [defaultRegularColor colorWithAlphaComponent:0.4];

  return v3;
}

- (MPUTransportButton)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = MPUTransportButton;
  v3 = [(MPUTransportButton *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MPUTransportButtonEventHandler);
    transportButtonEventHandler = v3->_transportButtonEventHandler;
    v3->_transportButtonEventHandler = v4;

    [(MPUTransportButtonEventHandler *)v3->_transportButtonEventHandler setButton:v3];
    defaultHighlightedColor = [objc_opt_class() defaultHighlightedColor];
    highlightedColor = v3->_highlightedColor;
    v3->_highlightedColor = defaultHighlightedColor;

    defaultDisabledColor = [objc_opt_class() defaultDisabledColor];
    disabledColor = v3->_disabledColor;
    v3->_disabledColor = defaultDisabledColor;

    defaultRegularColor = [objc_opt_class() defaultRegularColor];
    regularColor = v3->_regularColor;
    v3->_regularColor = defaultRegularColor;

    defaultSelectedColor = [objc_opt_class() defaultSelectedColor];
    selectedColor = v3->_selectedColor;
    v3->_selectedColor = defaultSelectedColor;
  }

  return v3;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  transportButtonEventHandler = self->_transportButtonEventHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__MPUTransportButton_hitTest_withEvent___block_invoke;
  v12[3] = &unk_27984C450;
  v15 = x;
  v16 = y;
  v13 = eventCopy;
  selfCopy = self;
  v9 = eventCopy;
  v10 = [(MPUTransportButtonEventHandler *)transportButtonEventHandler performHitTestingBlock:v12];

  return v10;
}

id __40__MPUTransportButton_hitTest_withEvent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = MPUTransportButton;
  v2 = objc_msgSendSuper2(&v4, sel_hitTest_withEvent_, v1, *(a1 + 48), *(a1 + 56));

  return v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MPUTransportButton;
  [(MPUTransportButton *)&v3 layoutSubviews];
  if (self->_selectionIndicatorLayer)
  {
    [(MPUTransportButton *)self bounds];
    [(MPUTransportButton *)self imageRectForContentRect:?];
    v5 = CGRectInset(v4, -4.0, -4.0);
    [(CALayer *)self->_selectionIndicatorLayer setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
  }
}

- (BOOL)isEnabled
{
  v4.receiver = self;
  v4.super_class = MPUTransportButton;
  return [(MPUTransportButton *)&v4 isEnabled]|| [(MPUTransportButtonEventHandler *)self->_transportButtonEventHandler shouldFakeEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = MPUTransportButton;
  [(MPUTransportButton *)&v6 setEnabled:?];
  if ([(MPUTransportButton *)self isSelected]&& [(MPUTransportButton *)self shouldShowBackgroundForSelectedState])
  {
    LODWORD(v5) = 1053609165;
    if (enabledCopy)
    {
      *&v5 = 1.0;
    }

    [(CALayer *)self->_selectionIndicatorLayer setOpacity:v5];
  }
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  selfCopy = self;
  transportButtonEventHandler = self->_transportButtonEventHandler;
  eventCopy = event;
  touchCopy = touch;
  [(MPUTransportButtonEventHandler *)transportButtonEventHandler beginTrackingWithTouch:touchCopy withEvent:eventCopy];
  v10.receiver = selfCopy;
  v10.super_class = MPUTransportButton;
  LOBYTE(selfCopy) = [(MPUTransportButton *)&v10 beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return selfCopy;
}

- (void)cancelTrackingWithEvent:(id)event
{
  transportButtonEventHandler = self->_transportButtonEventHandler;
  eventCopy = event;
  [(MPUTransportButtonEventHandler *)transportButtonEventHandler cancelTrackingWithEvent:eventCopy];
  v6.receiver = self;
  v6.super_class = MPUTransportButton;
  [(MPUTransportButton *)&v6 cancelTrackingWithEvent:eventCopy];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  transportButtonEventHandler = self->_transportButtonEventHandler;
  eventCopy = event;
  touchCopy = touch;
  [(MPUTransportButtonEventHandler *)transportButtonEventHandler endTrackingWithTouch:touchCopy withEvent:eventCopy];
  v9.receiver = self;
  v9.super_class = MPUTransportButton;
  [(MPUTransportButton *)&v9 endTrackingWithTouch:touchCopy withEvent:eventCopy];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v12.receiver = self;
  v12.super_class = MPUTransportButton;
  [(MPUTransportButton *)&v12 setSelected:?];
  if ([(MPUTransportButton *)self shouldShowBackgroundForSelectedState])
  {
    selectionIndicatorLayer = self->_selectionIndicatorLayer;
    if (selectedCopy)
    {
      if (!selectionIndicatorLayer)
      {
        layer = [MEMORY[0x277CD9ED0] layer];
        v7 = self->_selectionIndicatorLayer;
        self->_selectionIndicatorLayer = layer;

        v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.12];
        -[CALayer setBackgroundColor:](self->_selectionIndicatorLayer, "setBackgroundColor:", [v8 CGColor]);

        [(CALayer *)self->_selectionIndicatorLayer setCornerRadius:3.0];
        [(CALayer *)self->_selectionIndicatorLayer setOpacity:0.0];
        layer2 = [(MPUTransportButton *)self layer];
        [layer2 insertSublayer:self->_selectionIndicatorLayer atIndex:0];
      }

      [(MPUTransportButton *)self setNeedsLayout];
      isEnabled = [(MPUTransportButton *)self isEnabled];
      selectionIndicatorLayer = self->_selectionIndicatorLayer;
      if (isEnabled)
      {
        LODWORD(v11) = 1.0;
      }

      else
      {
        LODWORD(v11) = 1053609165;
      }
    }

    else
    {
      v11 = 0.0;
    }

    [(CALayer *)selectionIndicatorLayer setOpacity:v11];
  }
}

- (BOOL)shouldTrack
{
  v4.receiver = self;
  v4.super_class = MPUTransportButton;
  return [(MPUTransportButton *)&v4 shouldTrack]|| [(MPUTransportButtonEventHandler *)self->_transportButtonEventHandler shouldForceTrackingEnabled];
}

- (void)applyTransportButtonLayoutAttributes:(id *)attributes
{
  x = attributes->var1.origin.x;
  y = attributes->var1.origin.y;
  width = attributes->var1.size.width;
  height = attributes->var1.size.height;
  [(MPUTransportButton *)self setImageEdgeInsets:MPUEdgeInsetsRectInsets(x, y, width, height, attributes->var0.origin.x, attributes->var0.origin.y, attributes->var0.size.width, attributes->var0.size.height)];

  [(MPUTransportButton *)self setFrame:x, y, width, height];
}

- (int64_t)transportButtonImageViewContentMode
{
  imageView = [(MPUTransportButton *)self imageView];
  contentMode = [imageView contentMode];

  return contentMode;
}

- (void)setTransportButtonImageViewContentMode:(int64_t)mode
{
  imageView = [(MPUTransportButton *)self imageView];
  [imageView setContentMode:mode];
}

- (void)setDisabledColor:(id)color
{
  colorCopy = color;
  if (self->_disabledColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_disabledColor, color);
    colorCopy = v6;
    if (!self->_shouldInferColorsFromTintColor)
    {
      [(MPUTransportButton *)self _updateDisabledTransportButtonImage];
      colorCopy = v6;
    }
  }
}

- (void)setHighlightedColor:(id)color
{
  colorCopy = color;
  if (self->_highlightedColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_highlightedColor, color);
    colorCopy = v6;
    if (!self->_shouldInferColorsFromTintColor)
    {
      [(MPUTransportButton *)self _updateHighlightedTransportButtonImage];
      colorCopy = v6;
    }
  }
}

- (void)setRegularColor:(id)color
{
  colorCopy = color;
  if (self->_regularColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_regularColor, color);
    colorCopy = v6;
    if (!self->_shouldInferColorsFromTintColor)
    {
      [(MPUTransportButton *)self _updateRegularTransportButtonImage];
      colorCopy = v6;
    }
  }
}

- (void)setSelectedColor:(id)color
{
  colorCopy = color;
  if (self->_selectedColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_selectedColor, color);
    colorCopy = v6;
    if (!self->_shouldInferColorsFromTintColor)
    {
      [(MPUTransportButton *)self _updateSelectedTransportButtonImage];
      colorCopy = v6;
    }
  }
}

- (void)setShouldInferColorsFromTintColor:(BOOL)color
{
  if (self->_shouldInferColorsFromTintColor != color)
  {
    self->_shouldInferColorsFromTintColor = color;
    if (color)
    {
      [(MPUTransportButton *)self setImage:0 forState:1];
      [(MPUTransportButton *)self setImage:0 forState:4];
      v4 = [(UIImage *)self->_transportButtonImage imageWithRenderingMode:2];
      [(MPUTransportButton *)self setImage:v4 forState:0];
    }

    else
    {
      [(MPUTransportButton *)self _updateRegularTransportButtonImage];
      [(MPUTransportButton *)self _updateDisabledTransportButtonImage];
      [(MPUTransportButton *)self _updateHighlightedTransportButtonImage];

      [(MPUTransportButton *)self _updateSelectedTransportButtonImage];
    }
  }
}

- (void)setTransportButtonImage:(id)image
{
  imageCopy = image;
  transportButtonImage = self->_transportButtonImage;
  if (transportButtonImage != imageCopy && ([(UIImage *)transportButtonImage isEqual:imageCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_transportButtonImage, image);
    if (self->_shouldInferColorsFromTintColor)
    {
      v7 = [(UIImage *)self->_transportButtonImage imageWithRenderingMode:2];
      [(MPUTransportButton *)self setImage:v7 forState:0];
    }

    else
    {
      [(MPUTransportButton *)self _updateHighlightedTransportButtonImage];
      [(MPUTransportButton *)self _updateRegularTransportButtonImage];
      [(MPUTransportButton *)self _updateSelectedTransportButtonImage];
      [(MPUTransportButton *)self _updateDisabledTransportButtonImage];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_updateDisabledTransportButtonImage
{
  v3 = [(UIImage *)self->_transportButtonImage _flatImageWithColor:self->_disabledColor];
  [(MPUTransportButton *)self setImage:v3 forState:2];
}

- (void)_updateHighlightedTransportButtonImage
{
  v3 = [(UIImage *)self->_transportButtonImage _flatImageWithColor:self->_highlightedColor];
  [(MPUTransportButton *)self setImage:v3 forState:1];
}

- (void)_updateRegularTransportButtonImage
{
  v3 = [(UIImage *)self->_transportButtonImage _flatImageWithColor:self->_regularColor];
  [(MPUTransportButton *)self setImage:v3 forState:0];
}

- (void)_updateSelectedTransportButtonImage
{
  v3 = [(UIImage *)self->_transportButtonImage _flatImageWithColor:self->_selectedColor];
  [(MPUTransportButton *)self setImage:v3 forState:4];
}

+ (id)skipIntervalImageForInterval:(double)interval baseImage:(id)image font:(id)font scale:(double)scale
{
  v28[2] = *MEMORY[0x277D85DE8];
  fontCopy = font;
  imageCopy = image;
  [imageCopy size];
  UIGraphicsBeginImageContextWithOptions(v30, 0, scale);
  [imageCopy drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  v12 = [self _stringForDisplayedSkipInterval:fabs(interval)];
  v13 = *MEMORY[0x277D740C0];
  v27[0] = *MEMORY[0x277D740A8];
  v27[1] = v13;
  v28[0] = fontCopy;
  blackColor = [MEMORY[0x277D75348] blackColor];
  v28[1] = blackColor;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  [v12 sizeWithAttributes:v15];
  v17 = v16;
  v19 = v18;
  UIRectGetCenter();
  v21 = v20;
  v23 = MPUFloatRoundForScale(v22 - v17 * 0.5, scale);
  [v12 drawAtPoint:v15 withAttributes:{v23, MPUFloatRoundForScale(v21 - v19 * 0.5, scale)}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  _imageThatSuppressesAccessibilityHairlineThickening = [v24 _imageThatSuppressesAccessibilityHairlineThickening];

  return _imageThatSuppressesAccessibilityHairlineThickening;
}

+ (id)_stringForDisplayedSkipInterval:(double)interval
{
  v3 = llround(interval);
  v4 = MEMORY[0x277CCACA8];
  if (v3 > 99)
  {
    v6 = MPULocalizedString(@"SKIP_INTERVAL_OVER_99_SECONDS");
    v5 = [v4 localizedStringWithFormat:v6, 99];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld", v3];
  }

  return v5;
}

@end