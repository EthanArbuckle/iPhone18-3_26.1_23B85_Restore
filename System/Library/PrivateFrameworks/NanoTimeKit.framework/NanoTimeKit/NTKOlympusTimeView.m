@interface NTKOlympusTimeView
- (BOOL)_maskingPathStartsFromHourHandForDate:(id)a3;
- (CGSize)maskingSize;
- (NTKOlympusTimeView)initWithDevice:(id)a3 dial:(unint64_t)a4 style:(unint64_t)a5 colorPalette:(id)a6 date:(id)a7 useSmallFont:(BOOL)a8 circularLogoImage:(id)a9;
- (NTKOlympusViewDelegate)delegate;
- (double)_calculateDeviationBetweenHourAngle:(double)a3 minuteAngle:(double)a4;
- (double)shortestPathBetweenStartAngle:(double)a3 targetAngle:(double)a4;
- (void)_createContentViewIfNeeded;
- (void)_createOverlayViewIfNeeded;
- (void)applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5 animateElements:(BOOL)a6;
- (void)applyTransitionFraction:(double)a3 fromDial:(unint64_t)a4 toDial:(unint64_t)a5;
- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)applyWindrunnerMaskStartAngle:(double)a3 endAngle:(double)a4;
- (void)applyWindrunnerMaskWithDate:(id)a3 force:(BOOL)a4;
- (void)applyWindrunnerMaskWithHourAngle:(double)a3 minuteAngle:(double)a4;
- (void)cleanupAfterEditing;
- (void)configureViewsForEditing;
- (void)createAndRemoveViewsForCurrentStateIfNeeded;
- (void)layoutSubviews;
- (void)olympusContentView:(id)a3 didHandleLogoTouchUpInsideFromRect:(CGRect)a4;
- (void)olympusContentViewDidHandleLogoHighlighted:(id)a3;
- (void)olympusContentViewDidHandleLogoResetHighlight:(id)a3;
- (void)openVictoryAppFromRect:(CGRect)a3;
- (void)prepareForEditing;
- (void)setCurrentColorPalette:(id)a3;
- (void)setCurrentDial:(unint64_t)a3;
- (void)setCurrentStyle:(unint64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setTimeOffset:(double)a3;
- (void)setupViewsForCurrentState:(BOOL)a3;
- (void)updateMaskingPathStartPointWithNewHourAngle:(double)a3 newMinuteAngle:(double)a4;
@end

@implementation NTKOlympusTimeView

- (NTKOlympusTimeView)initWithDevice:(id)a3 dial:(unint64_t)a4 style:(unint64_t)a5 colorPalette:(id)a6 date:(id)a7 useSmallFont:(BOOL)a8 circularLogoImage:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v23.receiver = self;
  v23.super_class = NTKOlympusTimeView;
  v19 = [(NTKOlympusTimeView *)&v23 init];
  v20 = v19;
  if (v19)
  {
    v19->_maskingPathStartsFromHourHand = [(NTKOlympusTimeView *)v19 _maskingPathStartsFromHourHandForDate:v17];
    objc_storeStrong(&v20->_device, a3);
    v20->_currentStyle = a5;
    v20->_currentDial = a4;
    v20->_currentColorPalette = v16;
    objc_storeStrong(&v20->_date, a7);
    v20->_useSmallFont = a8;
    objc_storeStrong(&v20->_circularLogoImage, a9);
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
  v4 = [(NTKOlympusTimeView *)self device];
  [v4 screenScale];
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

- (void)setCurrentDial:(unint64_t)a3
{
  self->_currentDial = a3;
  v5 = [(NTKOlympusTimeView *)self contentView];
  [v5 setDial:a3];

  v6 = [(NTKOlympusTimeView *)self overlayContentView];
  [v6 setDial:a3];
}

- (void)setCurrentColorPalette:(id)a3
{
  self->_currentColorPalette = a3;
  v4 = a3;
  v5 = [(NTKOlympusTimeView *)self contentView];
  [v5 setColorPalette:v4];

  v6 = [(NTKOlympusTimeView *)self overlayContentView];
  [v6 setColorPalette:v4];
}

- (void)setCurrentStyle:(unint64_t)a3
{
  self->_currentStyle = a3;
  v5 = [(NTKOlympusTimeView *)self contentView];
  [v5 setStyle:a3];

  v6 = [(NTKOlympusTimeView *)self overlayContentView];
  [v6 setStyle:a3];
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
    v5 = [(NTKOlympusTimeView *)self device];
    v6 = [(NTKOlympusTimeContentView *)v4 initWithDevice:v5 dial:self->_currentDial style:self->_currentStyle colorPalette:self->_currentColorPalette useSmallFont:self->_useSmallFont circularLogoImage:self->_circularLogoImage];
    v7 = self->_contentView;
    self->_contentView = v6;

    [(NTKOlympusTimeView *)self bounds];
    [(NTKOlympusTimeContentView *)self->_contentView setFrame:?];
    [(NTKOlympusTimeContentView *)self->_contentView clipsToBounds];
    [(NTKOlympusTimeContentView *)self->_contentView setDelegate:self];
    [(NTKOlympusTimeContentView *)self->_contentView setOverrideDate:self->_date duration:0.0];
    contentView = self->_contentView;
  }

  v8 = [(NTKOlympusTimeContentView *)contentView superview];

  if (v8 != self)
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
    v5 = [(NTKOlympusTimeView *)self device];
    v6 = [(NTKOlympusTimeContentView *)v4 initWithDevice:v5 dial:self->_currentDial style:self->_currentStyle colorPalette:self->_currentColorPalette useSmallFont:self->_useSmallFont circularLogoImage:self->_circularLogoImage];
    v7 = self->_overlayContentView;
    self->_overlayContentView = v6;

    [(NTKOlympusTimeView *)self bounds];
    [(NTKOlympusTimeContentView *)self->_overlayContentView setFrame:?];
    [(NTKOlympusTimeContentView *)self->_overlayContentView setInvertedColors:1];
    v8 = [(NTKOlympusTimeContentView *)self->_overlayContentView layer];
    [v8 setMasksToBounds:1];

    [(NTKOlympusTimeContentView *)self->_overlayContentView clipsToBounds];
    [(NTKOlympusTimeContentView *)self->_overlayContentView setOverrideDate:self->_date duration:0.0];
    [(NTKOlympusTimeContentView *)self->_overlayContentView setDelegate:self];
    [(NTKOlympusTimeView *)self applyWindrunnerMaskWithDate:self->_date];
    overlayContentView = self->_overlayContentView;
  }

  v9 = [(NTKOlympusTimeContentView *)overlayContentView superview];

  if (v9 != self)
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

- (void)setupViewsForCurrentState:(BOOL)a3
{
  if (!a3)
  {
    [(NTKOlympusTimeView *)self createAndRemoveViewsForCurrentStateIfNeeded];
  }

  contentView = self->_contentView;
  if (contentView)
  {
    [(NTKOlympusTimeContentView *)contentView setDial:self->_currentDial];
    [(NTKOlympusTimeContentView *)self->_contentView setColorPalette:self->_currentColorPalette];
    [(NTKOlympusTimeContentView *)self->_contentView setStyle:self->_currentStyle];
    if (!a3)
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
    if (!a3)
    {
      [(NTKOlympusTimeContentView *)self->_overlayContentView cleanupAfterEditing];
    }
  }

  if (![(NTKOlympusTimeView *)self _hasWindrunnerWedge])
  {
    v7 = [(NTKOlympusTimeContentView *)self->_overlayContentView layer];
    [v7 setMask:0];
  }
}

- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  v9 = [(NTKOlympusTimeContentView *)self->_overlayContentView layer];
  v10 = [v9 mask];
  if (v10)
  {
  }

  else
  {

    if (a4 - 1 < 2 || a5 - 1 <= 1)
    {
      [(NTKOlympusTimeView *)self applyWindrunnerMaskWithDate:self->_date force:1];
    }
  }

  [(NTKOlympusTimeContentView *)self->_overlayContentView applyTransitionFraction:a4 fromStyle:a5 toStyle:a3];
  [(NTKOlympusTimeContentView *)self->_contentView applyTransitionFraction:a4 fromStyle:a5 toStyle:a3];
  v11 = 0.0;
  if (a4)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = 1.0 - a3;
  if (a5)
  {
    v13 = v12;
  }

  if (a5 | a4)
  {
    v11 = v13;
  }

  overlayContentView = self->_overlayContentView;

  [(NTKOlympusTimeContentView *)overlayContentView setAlpha:v11];
}

- (void)applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5 animateElements:(BOOL)a6
{
  v6 = a6;
  contentView = self->_contentView;
  v11 = a5;
  v12 = a4;
  [(NTKOlympusTimeContentView *)contentView applyTransitionFraction:v12 fromColorPalette:v11 toColorPalette:v6 animateElements:a3];
  [(NTKOlympusTimeContentView *)self->_overlayContentView applyTransitionFraction:v12 fromColorPalette:v11 toColorPalette:v6 animateElements:a3];
}

- (void)applyTransitionFraction:(double)a3 fromDial:(unint64_t)a4 toDial:(unint64_t)a5
{
  [NTKOlympusTimeContentView applyTransitionFraction:"applyTransitionFraction:fromDial:toDial:" fromDial:? toDial:?];
  overlayContentView = self->_overlayContentView;

  [(NTKOlympusTimeContentView *)overlayContentView applyTransitionFraction:a4 fromDial:a5 toDial:a3];
}

- (double)shortestPathBetweenStartAngle:(double)a3 targetAngle:(double)a4
{
  result = a4 - a3;
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

- (void)applyWindrunnerMaskWithDate:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  if ([(NTKOlympusTimeView *)self canUpdateWindrunnerMask]|| v4)
  {
    v6 = NTKDateHourIn12HourTime(v14);
    v7 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [v7 component:64 fromDate:v14];

    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [v9 component:128 fromDate:v14];

    self->_maskingPathStartsFromHourHand = [(NTKOlympusTimeView *)self _maskingPathStartsFromHourHandForDate:v14];
    [NTKOlympusMask angleForHour:v6 minutes:v8];
    v12 = v11;
    [NTKOlympusMask angleForMinute:v8 seconds:v10];
    [(NTKOlympusTimeView *)self applyWindrunnerMaskWithHourAngle:v12 minuteAngle:v13];
  }
}

- (void)updateMaskingPathStartPointWithNewHourAngle:(double)a3 newMinuteAngle:(double)a4
{
  [(NTKOlympusTimeView *)self _calculateDeviationBetweenHourAngle:self->_hourHandAngle minuteAngle:self->_minuteHandAngle];
  v8 = v7 < 180.0;
  [(NTKOlympusTimeView *)self _calculateDeviationBetweenHourAngle:a3 minuteAngle:a4];
  if (((v8 ^ (v9 >= 180.0)) & 1) == 0 && (v9 < 100.0 || v9 > 260.0))
  {
    self->_maskingPathStartsFromHourHand ^= 1u;
  }
}

- (void)applyWindrunnerMaskWithHourAngle:(double)a3 minuteAngle:(double)a4
{
  v7 = [(NTKOlympusTimeView *)self overlayContentView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  if (self->_hourHandAngle != a3 || self->_minuteHandAngle != a4 || (v9 == self->_maskingSize.width ? (v12 = v11 == self->_maskingSize.height) : (v12 = 0), !v12 || (-[NTKOlympusTimeView overlayContentView](self, "overlayContentView"), v13 = objc_claimAutoreleasedReturnValue(), [v13 layer], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "mask"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, !v15)))
  {
    self->_hourHandAngle = a3;
    self->_minuteHandAngle = a4;
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

- (void)applyWindrunnerMaskStartAngle:(double)a3 endAngle:(double)a4
{
  v5 = [(NTKOlympusTimeView *)self overlayContentView];
  [v5 bounds];
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
  v14 = [MEMORY[0x277CD9F90] layer];
  v15 = v18;
  [v14 setPath:{objc_msgSend(v18, "CGPath")}];
  v16 = [(NTKOlympusTimeView *)self overlayContentView];
  v17 = [v16 layer];
  [v17 setMask:v14];
}

- (double)_calculateDeviationBetweenHourAngle:(double)a3 minuteAngle:(double)a4
{
  [NTKOlympusMask normalizeAngle:a3];
  v6 = v5;
  [NTKOlympusMask normalizeAngle:a4];
  v8 = v7 - v6;
  if (v8 < 0.0)
  {
    v8 = v8 + 360.0;
  }

  v9 = v8;
  return floorf(v9);
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  objc_storeStrong(&self->_date, a3);
  v7 = a3;
  v8 = [(NTKOlympusTimeView *)self contentView];
  [v8 setOverrideDate:v7 duration:a4];

  v9 = [(NTKOlympusTimeView *)self overlayContentView];
  [v9 setOverrideDate:v7 duration:a4];
}

- (void)setTimeOffset:(double)a3
{
  v5 = [(NTKOlympusTimeView *)self contentView];
  [v5 setTimeOffset:a3];

  v6 = [(NTKOlympusTimeView *)self overlayContentView];
  [v6 setTimeOffset:a3];
}

- (void)olympusContentViewDidHandleLogoHighlighted:(id)a3
{
  overlayContentView = self->_overlayContentView;
  if (overlayContentView == a3)
  {
    overlayContentView = self->_contentView;
  }

  [(NTKOlympusTimeContentView *)overlayContentView setLogoButtonHighlighted:1];
}

- (void)olympusContentViewDidHandleLogoResetHighlight:(id)a3
{
  overlayContentView = self->_overlayContentView;
  if (overlayContentView == a3)
  {
    overlayContentView = self->_contentView;
  }

  [(NTKOlympusTimeContentView *)overlayContentView setLogoButtonHighlighted:0];
}

- (void)olympusContentView:(id)a3 didHandleLogoTouchUpInsideFromRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  overlayContentView = self->_overlayContentView;
  if (overlayContentView == a3)
  {
    overlayContentView = self->_contentView;
  }

  [(NTKOlympusTimeContentView *)overlayContentView setLogoButtonHighlighted:0];

  [(NTKOlympusTimeView *)self openVictoryAppFromRect:x, y, width, height];
}

- (void)openVictoryAppFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(NTKOlympusTimeView *)self delegate];
  [v8 olympusView:self didTapAppLogoFromRect:{x, y, width, height}];
}

- (BOOL)_maskingPathStartsFromHourHandForDate:(id)a3
{
  v3 = a3;
  v4 = NTKStartOfDayForDate(v3);
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  [v3 timeIntervalSinceReferenceDate];
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