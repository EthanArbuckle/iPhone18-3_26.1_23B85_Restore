@interface NTKOlympusTimeView
- (BOOL)_maskingPathStartsFromHourHandForDate:(id)date;
- (CGSize)maskingSize;
- (NTKOlympusTimeView)initWithDevice:(id)device dial:(unint64_t)dial style:(unint64_t)style colorPalette:(id)palette date:(id)date useSmallFont:(BOOL)font circularLogoImage:(id)image;
- (NTKOlympusViewDelegate)delegate;
- (double)_calculateDeviationBetweenHourAngle:(double)angle minuteAngle:(double)minuteAngle;
- (double)shortestPathBetweenStartAngle:(double)angle targetAngle:(double)targetAngle;
- (void)_createContentViewIfNeeded;
- (void)_createOverlayViewIfNeeded;
- (void)applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette animateElements:(BOOL)elements;
- (void)applyTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)applyWindrunnerMaskStartAngle:(double)angle endAngle:(double)endAngle;
- (void)applyWindrunnerMaskWithDate:(id)date force:(BOOL)force;
- (void)applyWindrunnerMaskWithHourAngle:(double)angle minuteAngle:(double)minuteAngle;
- (void)cleanupAfterEditing;
- (void)configureViewsForEditing;
- (void)createAndRemoveViewsForCurrentStateIfNeeded;
- (void)layoutSubviews;
- (void)olympusContentView:(id)view didHandleLogoTouchUpInsideFromRect:(CGRect)rect;
- (void)olympusContentViewDidHandleLogoHighlighted:(id)highlighted;
- (void)olympusContentViewDidHandleLogoResetHighlight:(id)highlight;
- (void)openVictoryAppFromRect:(CGRect)rect;
- (void)prepareForEditing;
- (void)setCurrentColorPalette:(id)palette;
- (void)setCurrentDial:(unint64_t)dial;
- (void)setCurrentStyle:(unint64_t)style;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
- (void)setupViewsForCurrentState:(BOOL)state;
- (void)updateMaskingPathStartPointWithNewHourAngle:(double)angle newMinuteAngle:(double)minuteAngle;
@end

@implementation NTKOlympusTimeView

- (NTKOlympusTimeView)initWithDevice:(id)device dial:(unint64_t)dial style:(unint64_t)style colorPalette:(id)palette date:(id)date useSmallFont:(BOOL)font circularLogoImage:(id)image
{
  deviceCopy = device;
  paletteCopy = palette;
  dateCopy = date;
  imageCopy = image;
  v23.receiver = self;
  v23.super_class = NTKOlympusTimeView;
  v19 = [(NTKOlympusTimeView *)&v23 init];
  v20 = v19;
  if (v19)
  {
    v19->_maskingPathStartsFromHourHand = [(NTKOlympusTimeView *)v19 _maskingPathStartsFromHourHandForDate:dateCopy];
    objc_storeStrong(&v20->_device, device);
    v20->_currentStyle = style;
    v20->_currentDial = dial;
    v20->_currentColorPalette = paletteCopy;
    objc_storeStrong(&v20->_date, date);
    v20->_useSmallFont = font;
    objc_storeStrong(&v20->_circularLogoImage, image);
    [(NTKOlympusTimeView *)v20 createAndRemoveViewsForCurrentStateIfNeeded];
  }

  return v20;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKOlympusTimeView;
  [(NTKOlympusTimeView *)&v8 layoutSubviews];
  contentView = self->_contentView;
  [(NTKOlympusTimeView *)self bounds];
  [(UIView *)contentView ntk_setBoundsAndPositionFromFrame:?];
  device = [(NTKOlympusTimeView *)self device];
  [device screenScale];
  v6 = -1.0 / v5;

  overlayContentView = self->_overlayContentView;
  [(NTKOlympusTimeView *)self bounds];
  v10 = CGRectInset(v9, v6, v6);
  [(UIView *)overlayContentView ntk_setBoundsAndPositionFromFrame:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
  [(NTKOlympusTimeView *)self applyWindrunnerMaskWithDate:self->_date];
}

- (void)createAndRemoveViewsForCurrentStateIfNeeded
{
  currentStyle = self->_currentStyle;
  if (currentStyle - 1 >= 2)
  {
    if (!currentStyle)
    {
      [(NTKOlympusTimeView *)self _createContentViewIfNeeded];
      [(NTKOlympusTimeContentView *)self->_overlayContentView removeFromSuperview];
      overlayContentView = self->_overlayContentView;
      self->_overlayContentView = 0;
    }
  }

  else
  {
    [(NTKOlympusTimeView *)self _createContentViewIfNeeded];

    [(NTKOlympusTimeView *)self _createOverlayViewIfNeeded];
  }
}

- (void)setCurrentDial:(unint64_t)dial
{
  self->_currentDial = dial;
  contentView = [(NTKOlympusTimeView *)self contentView];
  [contentView setDial:dial];

  overlayContentView = [(NTKOlympusTimeView *)self overlayContentView];
  [overlayContentView setDial:dial];
}

- (void)setCurrentColorPalette:(id)palette
{
  self->_currentColorPalette = palette;
  paletteCopy = palette;
  contentView = [(NTKOlympusTimeView *)self contentView];
  [contentView setColorPalette:paletteCopy];

  overlayContentView = [(NTKOlympusTimeView *)self overlayContentView];
  [overlayContentView setColorPalette:paletteCopy];
}

- (void)setCurrentStyle:(unint64_t)style
{
  self->_currentStyle = style;
  contentView = [(NTKOlympusTimeView *)self contentView];
  [contentView setStyle:style];

  overlayContentView = [(NTKOlympusTimeView *)self overlayContentView];
  [overlayContentView setStyle:style];
}

- (void)configureViewsForEditing
{
  [(NTKOlympusTimeView *)self _createOverlayViewIfNeeded];

  [(NTKOlympusTimeView *)self _createContentViewIfNeeded];
}

- (void)_createContentViewIfNeeded
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = [NTKOlympusTimeContentView alloc];
    device = [(NTKOlympusTimeView *)self device];
    v6 = [(NTKOlympusTimeContentView *)v4 initWithDevice:device dial:self->_currentDial style:self->_currentStyle colorPalette:self->_currentColorPalette useSmallFont:self->_useSmallFont circularLogoImage:self->_circularLogoImage];
    v7 = self->_contentView;
    self->_contentView = v6;

    [(NTKOlympusTimeView *)self bounds];
    [(NTKOlympusTimeContentView *)self->_contentView setFrame:?];
    [(NTKOlympusTimeContentView *)self->_contentView clipsToBounds];
    [(NTKOlympusTimeContentView *)self->_contentView setDelegate:self];
    [(NTKOlympusTimeContentView *)self->_contentView setOverrideDate:self->_date duration:0.0];
    contentView = self->_contentView;
  }

  superview = [(NTKOlympusTimeContentView *)contentView superview];

  if (superview != self)
  {
    v9 = self->_contentView;
    if (self->_overlayContentView)
    {

      [(NTKOlympusTimeView *)self insertSubview:v9 belowSubview:?];
    }

    else
    {

      [(NTKOlympusTimeView *)self addSubview:v9];
    }
  }
}

- (void)_createOverlayViewIfNeeded
{
  overlayContentView = self->_overlayContentView;
  if (!overlayContentView)
  {
    v4 = [NTKOlympusTimeContentView alloc];
    device = [(NTKOlympusTimeView *)self device];
    v6 = [(NTKOlympusTimeContentView *)v4 initWithDevice:device dial:self->_currentDial style:self->_currentStyle colorPalette:self->_currentColorPalette useSmallFont:self->_useSmallFont circularLogoImage:self->_circularLogoImage];
    v7 = self->_overlayContentView;
    self->_overlayContentView = v6;

    [(NTKOlympusTimeView *)self bounds];
    [(NTKOlympusTimeContentView *)self->_overlayContentView setFrame:?];
    [(NTKOlympusTimeContentView *)self->_overlayContentView setInvertedColors:1];
    layer = [(NTKOlympusTimeContentView *)self->_overlayContentView layer];
    [layer setMasksToBounds:1];

    [(NTKOlympusTimeContentView *)self->_overlayContentView clipsToBounds];
    [(NTKOlympusTimeContentView *)self->_overlayContentView setOverrideDate:self->_date duration:0.0];
    [(NTKOlympusTimeContentView *)self->_overlayContentView setDelegate:self];
    [(NTKOlympusTimeView *)self applyWindrunnerMaskWithDate:self->_date];
    overlayContentView = self->_overlayContentView;
  }

  superview = [(NTKOlympusTimeContentView *)overlayContentView superview];

  if (superview != self)
  {
    v10 = self->_overlayContentView;
    if (self->_contentView)
    {

      [(NTKOlympusTimeView *)self insertSubview:v10 aboveSubview:?];
    }

    else
    {

      [(NTKOlympusTimeView *)self addSubview:v10];
    }
  }
}

- (void)prepareForEditing
{
  [(NTKOlympusTimeContentView *)self->_contentView prepareForEditing];
  overlayContentView = self->_overlayContentView;

  [(NTKOlympusTimeContentView *)overlayContentView prepareForEditing];
}

- (void)cleanupAfterEditing
{
  [(NTKOlympusTimeContentView *)self->_contentView cleanupAfterEditing];
  overlayContentView = self->_overlayContentView;

  [(NTKOlympusTimeContentView *)overlayContentView cleanupAfterEditing];
}

- (void)setupViewsForCurrentState:(BOOL)state
{
  if (!state)
  {
    [(NTKOlympusTimeView *)self createAndRemoveViewsForCurrentStateIfNeeded];
  }

  contentView = self->_contentView;
  if (contentView)
  {
    [(NTKOlympusTimeContentView *)contentView setDial:self->_currentDial];
    [(NTKOlympusTimeContentView *)self->_contentView setColorPalette:self->_currentColorPalette];
    [(NTKOlympusTimeContentView *)self->_contentView setStyle:self->_currentStyle];
    if (!state)
    {
      [(NTKOlympusTimeContentView *)self->_contentView cleanupAfterEditing];
    }
  }

  overlayContentView = self->_overlayContentView;
  if (overlayContentView)
  {
    [(NTKOlympusTimeContentView *)overlayContentView setDial:self->_currentDial];
    [(NTKOlympusTimeContentView *)self->_overlayContentView setColorPalette:self->_currentColorPalette];
    [(NTKOlympusTimeContentView *)self->_overlayContentView setStyle:self->_currentStyle];
    if (!state)
    {
      [(NTKOlympusTimeContentView *)self->_overlayContentView cleanupAfterEditing];
    }
  }

  if (![(NTKOlympusTimeView *)self _hasWindrunnerWedge])
  {
    layer = [(NTKOlympusTimeContentView *)self->_overlayContentView layer];
    [layer setMask:0];
  }
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  layer = [(NTKOlympusTimeContentView *)self->_overlayContentView layer];
  mask = [layer mask];
  if (mask)
  {
  }

  else
  {

    if (style - 1 < 2 || toStyle - 1 <= 1)
    {
      [(NTKOlympusTimeView *)self applyWindrunnerMaskWithDate:self->_date force:1];
    }
  }

  [(NTKOlympusTimeContentView *)self->_overlayContentView applyTransitionFraction:style fromStyle:toStyle toStyle:fraction];
  [(NTKOlympusTimeContentView *)self->_contentView applyTransitionFraction:style fromStyle:toStyle toStyle:fraction];
  v11 = 0.0;
  if (style)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = 1.0 - fraction;
  if (toStyle)
  {
    v13 = v12;
  }

  if (toStyle | style)
  {
    v11 = v13;
  }

  overlayContentView = self->_overlayContentView;

  [(NTKOlympusTimeContentView *)overlayContentView setAlpha:v11];
}

- (void)applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette animateElements:(BOOL)elements
{
  elementsCopy = elements;
  contentView = self->_contentView;
  colorPaletteCopy = colorPalette;
  paletteCopy = palette;
  [(NTKOlympusTimeContentView *)contentView applyTransitionFraction:paletteCopy fromColorPalette:colorPaletteCopy toColorPalette:elementsCopy animateElements:fraction];
  [(NTKOlympusTimeContentView *)self->_overlayContentView applyTransitionFraction:paletteCopy fromColorPalette:colorPaletteCopy toColorPalette:elementsCopy animateElements:fraction];
}

- (void)applyTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial
{
  [NTKOlympusTimeContentView applyTransitionFraction:"applyTransitionFraction:fromDial:toDial:" fromDial:? toDial:?];
  overlayContentView = self->_overlayContentView;

  [(NTKOlympusTimeContentView *)overlayContentView applyTransitionFraction:dial fromDial:toDial toDial:fraction];
}

- (double)shortestPathBetweenStartAngle:(double)angle targetAngle:(double)targetAngle
{
  result = targetAngle - angle;
  v5 = -result;
  if (result >= 0.0)
  {
    v5 = result;
  }

  if (v5 > 180.0)
  {
    v6 = 180.0 - (v5 + -180.0);
    if (result < 0.0)
    {
      return v6;
    }

    else
    {
      return -v6;
    }
  }

  return result;
}

- (void)applyWindrunnerMaskWithDate:(id)date force:(BOOL)force
{
  forceCopy = force;
  dateCopy = date;
  if ([(NTKOlympusTimeView *)self canUpdateWindrunnerMask]|| forceCopy)
  {
    v6 = NTKDateHourIn12HourTime(dateCopy);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [currentCalendar component:64 fromDate:dateCopy];

    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [currentCalendar2 component:128 fromDate:dateCopy];

    self->_maskingPathStartsFromHourHand = [(NTKOlympusTimeView *)self _maskingPathStartsFromHourHandForDate:dateCopy];
    [NTKOlympusMask angleForHour:v6 minutes:v8];
    v12 = v11;
    [NTKOlympusMask angleForMinute:v8 seconds:v10];
    [(NTKOlympusTimeView *)self applyWindrunnerMaskWithHourAngle:v12 minuteAngle:v13];
  }
}

- (void)updateMaskingPathStartPointWithNewHourAngle:(double)angle newMinuteAngle:(double)minuteAngle
{
  [(NTKOlympusTimeView *)self _calculateDeviationBetweenHourAngle:self->_hourHandAngle minuteAngle:self->_minuteHandAngle];
  v8 = v7 < 180.0;
  [(NTKOlympusTimeView *)self _calculateDeviationBetweenHourAngle:angle minuteAngle:minuteAngle];
  if (((v8 ^ (v9 >= 180.0)) & 1) == 0 && (v9 < 100.0 || v9 > 260.0))
  {
    self->_maskingPathStartsFromHourHand ^= 1u;
  }
}

- (void)applyWindrunnerMaskWithHourAngle:(double)angle minuteAngle:(double)minuteAngle
{
  overlayContentView = [(NTKOlympusTimeView *)self overlayContentView];
  [overlayContentView bounds];
  v9 = v8;
  v11 = v10;

  if (self->_hourHandAngle != angle || self->_minuteHandAngle != minuteAngle || (v9 == self->_maskingSize.width ? (v12 = v11 == self->_maskingSize.height) : (v12 = 0), !v12 || (-[NTKOlympusTimeView overlayContentView](self, "overlayContentView"), v13 = objc_claimAutoreleasedReturnValue(), [v13 layer], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "mask"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, !v15)))
  {
    self->_hourHandAngle = angle;
    self->_minuteHandAngle = minuteAngle;
    self->_maskingSize.width = v9;
    self->_maskingSize.height = v11;
    hourHandAngle = self->_hourHandAngle;
    if (self->_maskingPathStartsFromHourHand)
    {
      minuteHandAngle = self->_hourHandAngle;
    }

    else
    {
      minuteHandAngle = self->_minuteHandAngle;
    }

    if (self->_maskingPathStartsFromHourHand)
    {
      hourHandAngle = self->_minuteHandAngle;
    }

    [(NTKOlympusTimeView *)self applyWindrunnerMaskStartAngle:minuteHandAngle endAngle:hourHandAngle];
  }
}

- (void)applyWindrunnerMaskStartAngle:(double)angle endAngle:(double)endAngle
{
  overlayContentView = [(NTKOlympusTimeView *)self overlayContentView];
  [overlayContentView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.width = v11;
  v20.size.height = v13;
  CGRectGetWidth(v20);
  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  CGRectGetHeight(v21);
  MEMORY[0x2318D8E70](v7, v9, v11, v13);
  v18 = [NTKOlympusMask clippingPathFromCenterPoint:"clippingPathFromCenterPoint:startAngle:endAngle:radius:" startAngle:? endAngle:? radius:?];
  layer = [MEMORY[0x277CD9F90] layer];
  v15 = v18;
  [layer setPath:{objc_msgSend(v18, "CGPath")}];
  overlayContentView2 = [(NTKOlympusTimeView *)self overlayContentView];
  layer2 = [overlayContentView2 layer];
  [layer2 setMask:layer];
}

- (double)_calculateDeviationBetweenHourAngle:(double)angle minuteAngle:(double)minuteAngle
{
  [NTKOlympusMask normalizeAngle:angle];
  v6 = v5;
  [NTKOlympusMask normalizeAngle:minuteAngle];
  v8 = v7 - v6;
  if (v8 < 0.0)
  {
    v8 = v8 + 360.0;
  }

  v9 = v8;
  return floorf(v9);
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  objc_storeStrong(&self->_date, date);
  dateCopy = date;
  contentView = [(NTKOlympusTimeView *)self contentView];
  [contentView setOverrideDate:dateCopy duration:duration];

  overlayContentView = [(NTKOlympusTimeView *)self overlayContentView];
  [overlayContentView setOverrideDate:dateCopy duration:duration];
}

- (void)setTimeOffset:(double)offset
{
  contentView = [(NTKOlympusTimeView *)self contentView];
  [contentView setTimeOffset:offset];

  overlayContentView = [(NTKOlympusTimeView *)self overlayContentView];
  [overlayContentView setTimeOffset:offset];
}

- (void)olympusContentViewDidHandleLogoHighlighted:(id)highlighted
{
  overlayContentView = self->_overlayContentView;
  if (overlayContentView == highlighted)
  {
    overlayContentView = self->_contentView;
  }

  [(NTKOlympusTimeContentView *)overlayContentView setLogoButtonHighlighted:1];
}

- (void)olympusContentViewDidHandleLogoResetHighlight:(id)highlight
{
  overlayContentView = self->_overlayContentView;
  if (overlayContentView == highlight)
  {
    overlayContentView = self->_contentView;
  }

  [(NTKOlympusTimeContentView *)overlayContentView setLogoButtonHighlighted:0];
}

- (void)olympusContentView:(id)view didHandleLogoTouchUpInsideFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  overlayContentView = self->_overlayContentView;
  if (overlayContentView == view)
  {
    overlayContentView = self->_contentView;
  }

  [(NTKOlympusTimeContentView *)overlayContentView setLogoButtonHighlighted:0];

  [(NTKOlympusTimeView *)self openVictoryAppFromRect:x, y, width, height];
}

- (void)openVictoryAppFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegate = [(NTKOlympusTimeView *)self delegate];
  [delegate olympusView:self didTapAppLogoFromRect:{x, y, width, height}];
}

- (BOOL)_maskingPathStartsFromHourHandForDate:(id)date
{
  dateCopy = date;
  v4 = NTKStartOfDayForDate(dateCopy);
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  [dateCopy timeIntervalSinceReferenceDate];
  v8 = -1;
  do
  {
    v6 = v6 + 3927.27273;
    ++v8;
  }

  while (v6 < v7);

  return v8 & 1;
}

- (NTKOlympusViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)maskingSize
{
  width = self->_maskingSize.width;
  height = self->_maskingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end