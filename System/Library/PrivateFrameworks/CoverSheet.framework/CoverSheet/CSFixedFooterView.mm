@interface CSFixedFooterView
- (CGPoint)statusTextViewOffset;
- (CSFixedFooterView)initWithFrame:(CGRect)frame;
- (SBFPagedScrollView)trackingScrollViewForPageControl;
- (id)presentationRegions;
- (void)_addPageControl;
- (void)_addShakeView;
- (void)_layoutCallToActionView;
- (void)_layoutPageControl;
- (void)_layoutStatusTextView;
- (void)_updateViewsForLegibilitySettings;
- (void)layoutSubviews;
- (void)setCallToActionLabel:(id)label;
- (void)setStatusTextView:(id)view;
- (void)setStatusTextViewOffset:(CGPoint)offset;
- (void)setStatusTextViewOffset:(CGPoint)offset scale:(double)scale;
- (void)setStatusTextViewScale:(double)scale;
- (void)setTrackingScrollViewForPageControl:(id)control;
- (void)updateForLegibilitySettings:(id)settings;
- (void)updatePageControl;
@end

@implementation CSFixedFooterView

- (CSFixedFooterView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = CSFixedFooterView;
  v3 = [(CSFixedFooterView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (SBFEffectiveHomeButtonType() != 2)
    {
      [(CSFixedFooterView *)v3 _addShakeView];
      [(CSFixedFooterView *)v3 _addPageControl];
    }

    v3->_statusTextViewScale = 1.0;
  }

  return v3;
}

- (id)presentationRegions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [CSRegion regionForCoordinateSpace:self->_callToActionShakeView];
  v5 = [v4 role:1];

  [array addObject:v5];
  if (self->_statusTextView)
  {
    v6 = [CSRegion regionForCoordinateSpace:?];
    v7 = [v6 role:1];
    [array addObject:v7];
  }

  return array;
}

- (void)setStatusTextView:(id)view
{
  viewCopy = view;
  statusTextView = self->_statusTextView;
  if (statusTextView != viewCopy)
  {
    v8 = viewCopy;
    [(SBUILegibility *)statusTextView removeFromSuperview];
    objc_storeStrong(&self->_statusTextView, view);
    v7 = self->_statusTextView;
    if (v7)
    {
      [(SBUILegibility *)v7 bs_setHitTestingDisabled:1];
      [(CSFixedFooterView *)self addSubview:self->_statusTextView];
      [(CSFixedFooterView *)self _updateViewsForLegibilitySettings];
    }

    statusTextView = [(CSFixedFooterView *)self setNeedsLayout];
    viewCopy = v8;
  }

  MEMORY[0x2821F96F8](statusTextView, viewCopy);
}

- (void)setStatusTextViewOffset:(CGPoint)offset
{
  if (self->_statusTextViewOffset.x != offset.x || self->_statusTextViewOffset.y != offset.y)
  {
    self->_statusTextViewOffset = offset;
    [(CSFixedFooterView *)self _layoutStatusTextView];
  }
}

- (void)setStatusTextViewScale:(double)scale
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_statusTextViewScale = scale;

    [(CSFixedFooterView *)self _layoutStatusTextView];
  }
}

- (void)setStatusTextViewOffset:(CGPoint)offset scale:(double)scale
{
  if (self->_statusTextViewOffset.x == offset.x && self->_statusTextViewOffset.y == offset.y)
  {
    p_statusTextViewScale = &self->_statusTextViewScale;
    if (BSFloatEqualToFloat())
    {
      return;
    }
  }

  else
  {
    self->_statusTextViewOffset = offset;
    p_statusTextViewScale = &self->_statusTextViewScale;
    if (BSFloatEqualToFloat())
    {
      goto LABEL_9;
    }
  }

  *p_statusTextViewScale = scale;
LABEL_9:

  [(CSFixedFooterView *)self _layoutStatusTextView];
}

- (void)setCallToActionLabel:(id)label
{
  labelCopy = label;
  callToActionLabel = self->_callToActionLabel;
  if (callToActionLabel != labelCopy)
  {
    v9 = labelCopy;
    [(SBUICallToActionLabel *)callToActionLabel removeFromSuperview];
    objc_storeStrong(&self->_callToActionLabel, label);
    v7 = self->_callToActionLabel;
    if (v7)
    {
      [(SBUICallToActionLabel *)v7 bs_setHitTestingDisabled:1];
      containerView = [(CSShakableView *)self->_callToActionShakeView containerView];
      [containerView addSubview:self->_callToActionLabel];

      [(CSFixedFooterView *)self _updateViewsForLegibilitySettings];
    }

    callToActionLabel = [(CSFixedFooterView *)self setNeedsLayout];
    labelCopy = v9;
  }

  MEMORY[0x2821F96F8](callToActionLabel, labelCopy);
}

- (void)setTrackingScrollViewForPageControl:(id)control
{
  obj = control;
  WeakRetained = objc_loadWeakRetained(&self->_trackingScrollViewForPageControl);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_trackingScrollViewForPageControl, obj);
    [(CSFixedFooterView *)self updatePageControl];
    v5 = obj;
  }
}

- (void)updateForLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(CSFixedFooterView *)self _updateViewsForLegibilitySettings];
  }
}

- (void)_addShakeView
{
  v3 = objc_alloc_init(CSShakableView);
  callToActionShakeView = self->_callToActionShakeView;
  self->_callToActionShakeView = v3;

  [(CSShakableView *)self->_callToActionShakeView setAutoresizingMask:2];
  v5 = self->_callToActionShakeView;

  [(CSFixedFooterView *)self addSubview:v5];
}

- (void)_addPageControl
{
  v3 = [CSPageControl alloc];
  v4 = [(CSPageControl *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  pageControl = self->_pageControl;
  self->_pageControl = v4;

  [(UIPageControl *)self->_pageControl setHidesForSinglePage:1];
  v6 = self->_pageControl;

  [(CSFixedFooterView *)self addSubview:v6];
}

- (void)_layoutCallToActionView
{
  [(CSFixedFooterView *)self bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v7 = MEMORY[0x277D65E38];
  callToActionLabel = self->_callToActionLabel;
  MaxY = CGRectGetMaxY(v15);
  [(SBUILegibility *)self->_statusTextView frame];
  v11 = MaxY - v10;
  [(SBUICallToActionLabel *)self->_callToActionLabel baselineOffset];
  [v7 suggestedFrameForCallToActionLabel:callToActionLabel yOffset:v12 + v11 inBounds:{x, y, width, height}];
  [(CSShakableView *)self->_callToActionShakeView setFrame:?];
  v13 = self->_callToActionLabel;
  [(CSShakableView *)self->_callToActionShakeView bounds];

  [(SBUICallToActionLabel *)v13 setFrame:?];
}

- (void)_layoutStatusTextView
{
  [(CSFixedFooterView *)self bounds];
  v4 = v3;
  [CSPageControl suggestedFrameForPageBounds:?];
  [MEMORY[0x277D65E38] suggestedFrameForStatusView:self->_statusTextView inView:self withInsets:{0.0, 0.0, v4 - v5, 0.0}];
  statusTextView = self->_statusTextView;
  BSRectWithSize();
  [(SBUILegibility *)statusTextView setBounds:?];
  BSRectGetCenter();
  [(SBUILegibility *)self->_statusTextView setCenter:?];
  [(CSFixedFooterView *)self statusTextViewOffset];
  v8 = v7;
  v10 = v9;
  [(CSFixedFooterView *)self statusTextViewScale];
  memset(&v19, 0, sizeof(v19));
  if (BSFloatIsOne() && (v8 == *MEMORY[0x277CBF348] ? (v11 = v10 == *(MEMORY[0x277CBF348] + 8)) : (v11 = 0), v11))
  {
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    *&v19.a = *MEMORY[0x277CBF2C0];
    *&v19.c = v13;
    v12 = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    BSRectGetCenter();
    SBFTransformForScalingAboutPointInSuperview();
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeTranslation(&v18, v8, v10);
    t1 = v19;
    t2 = v18;
    CGAffineTransformConcat(&v17, &t1, &t2);
    *&v19.a = *&v17.a;
    *&v19.c = *&v17.c;
    v12 = *&v17.tx;
  }

  *&v19.tx = v12;
  v14 = self->_statusTextView;
  *&v18.a = *&v19.a;
  *&v18.c = *&v19.c;
  *&v18.tx = v12;
  [(SBUILegibility *)v14 setTransform:&v18];
}

- (void)_layoutPageControl
{
  [(CSPageControl *)self->_pageControl sizeForNumberOfPages:[(UIPageControl *)self->_pageControl numberOfPages]];
  [(CSFixedFooterView *)self bounds];
  [CSPageControl suggestedFrameForPageBounds:"suggestedFrameForPageBounds:desiredSize:" desiredSize:?];
  pageControl = self->_pageControl;

  [(CSPageControl *)pageControl setFrame:?];
}

- (void)updatePageControl
{
  trackingScrollViewForPageControl = [(CSFixedFooterView *)self trackingScrollViewForPageControl];
  if (trackingScrollViewForPageControl)
  {
    v8 = trackingScrollViewForPageControl;
    visiblePageRange = [trackingScrollViewForPageControl visiblePageRange];
    trackingScrollViewForPageControl = v8;
    if (v5 == 1)
    {
      pageControl = self->_pageControl;
      pageViews = [v8 pageViews];
      -[UIPageControl setNumberOfPages:](pageControl, "setNumberOfPages:", [pageViews count]);

      [(UIPageControl *)self->_pageControl setCurrentPage:visiblePageRange];
      trackingScrollViewForPageControl = v8;
    }
  }
}

- (void)_updateViewsForLegibilitySettings
{
  [(SBUILegibility *)self->_statusTextView setLegibilitySettings:self->_legibilitySettings];
  [(SBUICallToActionLabel *)self->_callToActionLabel setLegibilitySettings:self->_legibilitySettings];
  pageControl = self->_pageControl;
  legibilitySettings = self->_legibilitySettings;

  [(CSPageControl *)pageControl setLegibilitySettings:legibilitySettings];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSFixedFooterView;
  [(CSFixedFooterView *)&v3 layoutSubviews];
  [(CSFixedFooterView *)self _layoutStatusTextView];
  [(CSFixedFooterView *)self _layoutCallToActionView];
  [(CSFixedFooterView *)self _layoutPageControl];
}

- (CGPoint)statusTextViewOffset
{
  x = self->_statusTextViewOffset.x;
  y = self->_statusTextViewOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (SBFPagedScrollView)trackingScrollViewForPageControl
{
  WeakRetained = objc_loadWeakRetained(&self->_trackingScrollViewForPageControl);

  return WeakRetained;
}

@end