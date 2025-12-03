@interface HUQuickControlStepperSegmentView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (HUQuickControlStepperSegmentView)initWithStyle:(unint64_t)style orientation:(unint64_t)orientation controlSize:(unint64_t)size;
- (void)_contentSizeCategoryDidChange;
- (void)_createTitleLabelIfNecessary;
- (void)_updateTitleLabel;
- (void)_updateUIHighlightedOverlayView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setIsSegmentViewHighlighted:(BOOL)highlighted;
- (void)setTintColor:(id)color;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HUQuickControlStepperSegmentView

- (HUQuickControlStepperSegmentView)initWithStyle:(unint64_t)style orientation:(unint64_t)orientation controlSize:(unint64_t)size
{
  v22.receiver = self;
  v22.super_class = HUQuickControlStepperSegmentView;
  v8 = [(HUQuickControlStepperSegmentView *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_style = style;
    v8->_orientation = orientation;
    v8->_controlSize = size;
    [(HUQuickControlStepperSegmentView *)v8 bounds];
    v11 = v10;
    if (orientation)
    {
      v11 = v10 * 1.25;
      [(HUQuickControlStepperSegmentView *)v9 bounds];
      v13 = v12;
    }

    else
    {
      [(HUQuickControlStepperSegmentView *)v9 bounds];
      v13 = v14 * 1.25;
    }

    [(HUQuickControlStepperSegmentView *)v9 bounds];
    v16 = v15;
    [(HUQuickControlStepperSegmentView *)v9 bounds];
    v18 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v16, v17, v11, v13}];
    highlightedOverlayView = v9->_highlightedOverlayView;
    v9->_highlightedOverlayView = v18;

    [(HUQuickControlStepperSegmentView *)v9 insertSubview:v9->_highlightedOverlayView atIndex:0];
    [(UIView *)v9->_highlightedOverlayView setUserInteractionEnabled:0];
    tintColor = [(HUQuickControlStepperSegmentView *)v9 tintColor];
    [(UIView *)v9->_highlightedOverlayView setBackgroundColor:tintColor];
  }

  return v9;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = [titleCopy copy];
  title = self->_title;
  self->_title = v5;

  v7 = [titleCopy length];
  if (v7)
  {
    [(HUQuickControlStepperSegmentView *)self _createTitleLabelIfNecessary];

    [(HUQuickControlStepperSegmentView *)self _updateTitleLabel];
  }
}

- (void)setIsSegmentViewHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HUQuickControlStepperSegmentView_setIsSegmentViewHighlighted___block_invoke;
  v7[3] = &unk_277DB8488;
  v7[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  self->_isSegmentViewHighlighted = highlightedCopy;
  if (highlightedCopy)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  highlightedOverlayView = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
  [highlightedOverlayView setAlpha:v5];

  [(HUQuickControlStepperSegmentView *)self _updateTitleLabel];
}

uint64_t __64__HUQuickControlStepperSegmentView_setIsSegmentViewHighlighted___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) reachabilityState];
  if (result == 2)
  {
    v3 = *(a1 + 32);

    return [v3 _updateUIHighlightedOverlayView];
  }

  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = HUQuickControlStepperSegmentView;
  changeCopy = change;
  [(HUQuickControlStepperSegmentView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(HUQuickControlStepperSegmentView *)self traitCollection:v8.receiver];
  verticalSizeClass = [v5 verticalSizeClass];
  verticalSizeClass2 = [changeCopy verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
    [(HUQuickControlStepperSegmentView *)self _updateTitleLabel];
  }
}

- (void)_createTitleLabelIfNecessary
{
  titleLabelEffectView = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];

  if (!titleLabelEffectView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUQuickControlStepperSegmentView *)self setTitleLabel:v4];

    titleLabel = [(HUQuickControlStepperSegmentView *)self titleLabel];
    [titleLabel setUserInteractionEnabled:0];

    titleLabel2 = [(HUQuickControlStepperSegmentView *)self titleLabel];
    [titleLabel2 setNumberOfLines:0];

    titleLabel3 = [(HUQuickControlStepperSegmentView *)self titleLabel];
    [titleLabel3 setTextAlignment:1];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];

    v9 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    [(HUQuickControlStepperSegmentView *)self setTitleLabelEffectView:v9];

    titleLabelEffectView2 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
    [titleLabelEffectView2 setUserInteractionEnabled:0];

    titleLabelEffectView3 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
    contentView = [titleLabelEffectView3 contentView];
    titleLabel4 = [(HUQuickControlStepperSegmentView *)self titleLabel];
    [contentView addSubview:titleLabel4];

    titleLabelEffectView4 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
    [(HUQuickControlStepperSegmentView *)self addSubview:titleLabelEffectView4];

    [(HUQuickControlStepperSegmentView *)self _updateTitleLabel];
  }
}

- (void)_updateTitleLabel
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setAlignment:1];
  LODWORD(v4) = 1.0;
  [v3 setHyphenationFactor:v4];
  [v3 setLineBreakMode:0];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  v7 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
  if ([(HUQuickControlStepperSegmentView *)self isSegmentViewHighlighted]&& [(HUQuickControlStepperSegmentView *)self reachabilityState]== 2)
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemDarkGrayColor];
  }

  v9 = systemWhiteColor;
  v10 = *MEMORY[0x277D740A8];
  v19[0] = *MEMORY[0x277D740C0];
  v19[1] = v10;
  v20[0] = systemWhiteColor;
  v20[1] = v7;
  v11 = *MEMORY[0x277CC49E8];
  v19[2] = *MEMORY[0x277D74118];
  v19[3] = v11;
  v20[2] = v3;
  v20[3] = firstObject;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v13 = objc_alloc(MEMORY[0x277CCA898]);
  title = [(HUQuickControlStepperSegmentView *)self title];
  v15 = [v13 initWithString:title attributes:v12];
  titleLabel = [(HUQuickControlStepperSegmentView *)self titleLabel];
  [titleLabel setAttributedText:v15];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] && !-[HUQuickControlStepperSegmentView isSegmentViewHighlighted](self, "isSegmentViewHighlighted"))
  {
    controlCenterSecondaryVibrancyEffect = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    titleLabelEffectView = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
    [titleLabelEffectView setEffect:controlCenterSecondaryVibrancyEffect];
  }

  else
  {
    controlCenterSecondaryVibrancyEffect = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
    [controlCenterSecondaryVibrancyEffect setEffect:0];
  }
}

- (void)_updateUIHighlightedOverlayView
{
  if (![(HUQuickControlStepperSegmentView *)self isSegmentViewHighlighted]|| (v3 = 1.0, [(HUQuickControlStepperSegmentView *)self reachabilityState]!= 2))
  {
    v3 = 0.0;
  }

  highlightedOverlayView = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
  [highlightedOverlayView setAlpha:v3];

  highlightedOverlayView2 = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];

  if (highlightedOverlayView2)
  {
    style = [(HUQuickControlStepperSegmentView *)self style];
    if (style)
    {
      v7 = 0.0;
      if (style == 1)
      {
        if ([(HUQuickControlStepperSegmentView *)self segmentLocation]!= 1)
        {
          [(HUQuickControlStepperSegmentView *)self cornerRadius];
          v7 = v8;
        }

        segmentLocation = [(HUQuickControlStepperSegmentView *)self segmentLocation];
        if (segmentLocation > 2)
        {
          v10 = 0;
        }

        else
        {
          v10 = qword_20D5CB1B0[segmentLocation];
        }

        highlightedOverlayView3 = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
        layer = [highlightedOverlayView3 layer];
        [layer setMaskedCorners:v10];

        highlightedOverlayView4 = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
        layer2 = [highlightedOverlayView4 layer];
        [layer2 setShadowOpacity:0.0];
      }
    }

    else
    {
      [(HUQuickControlStepperSegmentView *)self cornerRadius];
      v7 = v11;
    }

    highlightedOverlayView5 = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
    [highlightedOverlayView5 _setContinuousCornerRadius:v7];
  }
}

uint64_t __67__HUQuickControlStepperSegmentView__updateUIHighlightedOverlayView__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) segmentLocation];
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_20D5CB1B0[v1];
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = HUQuickControlStepperSegmentView;
  [(HUQuickControlStepperSegmentView *)&v16 layoutSubviews];
  [(HUQuickControlStepperSegmentView *)self frame];
  v4 = v3 + -16.0;
  [(HUQuickControlStepperSegmentView *)self frame];
  v6 = v5 + -16.0;
  highlightedOverlayView = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
  [highlightedOverlayView setFrame:{8.0, 8.0, v4, v6}];

  titleLabelEffectView = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
  [titleLabelEffectView setFrame:{10.0, 10.0, v4 + -4.0, v6 + -4.0}];

  titleLabelEffectView2 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
  [titleLabelEffectView2 frame];
  v11 = v10;
  titleLabelEffectView3 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
  [titleLabelEffectView3 frame];
  v14 = v13;
  titleLabel = [(HUQuickControlStepperSegmentView *)self titleLabel];
  [titleLabel setFrame:{0.0, 0.0, v11, v14}];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(HUQuickControlStepperSegmentView *)self bounds];
  v11 = CGRectInset(v10, -10.0, -5.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (void)setTintColor:(id)color
{
  v5.receiver = self;
  v5.super_class = HUQuickControlStepperSegmentView;
  [(HUQuickControlStepperSegmentView *)&v5 setTintColor:color];
  tintColor = [(HUQuickControlStepperSegmentView *)self tintColor];
  [(UIView *)self->_highlightedOverlayView setBackgroundColor:tintColor];
}

- (void)_contentSizeCategoryDidChange
{
  [(HUQuickControlStepperSegmentView *)self _updateTitleLabel];

  [(HUQuickControlStepperSegmentView *)self setNeedsLayout];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUQuickControlStepperSegmentView;
  [(HUQuickControlStepperSegmentView *)&v4 dealloc];
}

@end