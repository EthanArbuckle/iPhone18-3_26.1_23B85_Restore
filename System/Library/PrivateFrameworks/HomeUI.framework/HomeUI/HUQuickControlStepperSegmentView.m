@interface HUQuickControlStepperSegmentView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (HUQuickControlStepperSegmentView)initWithStyle:(unint64_t)a3 orientation:(unint64_t)a4 controlSize:(unint64_t)a5;
- (void)_contentSizeCategoryDidChange;
- (void)_createTitleLabelIfNecessary;
- (void)_updateTitleLabel;
- (void)_updateUIHighlightedOverlayView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setIsSegmentViewHighlighted:(BOOL)a3;
- (void)setTintColor:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HUQuickControlStepperSegmentView

- (HUQuickControlStepperSegmentView)initWithStyle:(unint64_t)a3 orientation:(unint64_t)a4 controlSize:(unint64_t)a5
{
  v22.receiver = self;
  v22.super_class = HUQuickControlStepperSegmentView;
  v8 = [(HUQuickControlStepperSegmentView *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_style = a3;
    v8->_orientation = a4;
    v8->_controlSize = a5;
    [(HUQuickControlStepperSegmentView *)v8 bounds];
    v11 = v10;
    if (a4)
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
    v20 = [(HUQuickControlStepperSegmentView *)v9 tintColor];
    [(UIView *)v9->_highlightedOverlayView setBackgroundColor:v20];
  }

  return v9;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  title = self->_title;
  self->_title = v5;

  v7 = [v4 length];
  if (v7)
  {
    [(HUQuickControlStepperSegmentView *)self _createTitleLabelIfNecessary];

    [(HUQuickControlStepperSegmentView *)self _updateTitleLabel];
  }
}

- (void)setIsSegmentViewHighlighted:(BOOL)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HUQuickControlStepperSegmentView_setIsSegmentViewHighlighted___block_invoke;
  v7[3] = &unk_277DB8488;
  v7[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  self->_isSegmentViewHighlighted = v3;
  if (v3)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
  [v6 setAlpha:v5];

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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUQuickControlStepperSegmentView;
  v4 = a3;
  [(HUQuickControlStepperSegmentView *)&v8 traitCollectionDidChange:v4];
  v5 = [(HUQuickControlStepperSegmentView *)self traitCollection:v8.receiver];
  v6 = [v5 verticalSizeClass];
  v7 = [v4 verticalSizeClass];

  if (v6 != v7)
  {
    [(HUQuickControlStepperSegmentView *)self _updateTitleLabel];
  }
}

- (void)_createTitleLabelIfNecessary
{
  v3 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUQuickControlStepperSegmentView *)self setTitleLabel:v4];

    v5 = [(HUQuickControlStepperSegmentView *)self titleLabel];
    [v5 setUserInteractionEnabled:0];

    v6 = [(HUQuickControlStepperSegmentView *)self titleLabel];
    [v6 setNumberOfLines:0];

    v7 = [(HUQuickControlStepperSegmentView *)self titleLabel];
    [v7 setTextAlignment:1];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];

    v9 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    [(HUQuickControlStepperSegmentView *)self setTitleLabelEffectView:v9];

    v10 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
    [v10 setUserInteractionEnabled:0];

    v11 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
    v12 = [v11 contentView];
    v13 = [(HUQuickControlStepperSegmentView *)self titleLabel];
    [v12 addSubview:v13];

    v14 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
    [(HUQuickControlStepperSegmentView *)self addSubview:v14];

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
  v5 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v6 = [v5 firstObject];

  v7 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
  if ([(HUQuickControlStepperSegmentView *)self isSegmentViewHighlighted]&& [(HUQuickControlStepperSegmentView *)self reachabilityState]== 2)
  {
    v8 = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] systemDarkGrayColor];
  }

  v9 = v8;
  v10 = *MEMORY[0x277D740A8];
  v19[0] = *MEMORY[0x277D740C0];
  v19[1] = v10;
  v20[0] = v8;
  v20[1] = v7;
  v11 = *MEMORY[0x277CC49E8];
  v19[2] = *MEMORY[0x277D74118];
  v19[3] = v11;
  v20[2] = v3;
  v20[3] = v6;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v13 = objc_alloc(MEMORY[0x277CCA898]);
  v14 = [(HUQuickControlStepperSegmentView *)self title];
  v15 = [v13 initWithString:v14 attributes:v12];
  v16 = [(HUQuickControlStepperSegmentView *)self titleLabel];
  [v16 setAttributedText:v15];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] && !-[HUQuickControlStepperSegmentView isSegmentViewHighlighted](self, "isSegmentViewHighlighted"))
  {
    v17 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v18 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
    [v18 setEffect:v17];
  }

  else
  {
    v17 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
    [v17 setEffect:0];
  }
}

- (void)_updateUIHighlightedOverlayView
{
  if (![(HUQuickControlStepperSegmentView *)self isSegmentViewHighlighted]|| (v3 = 1.0, [(HUQuickControlStepperSegmentView *)self reachabilityState]!= 2))
  {
    v3 = 0.0;
  }

  v4 = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
  [v4 setAlpha:v3];

  v5 = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];

  if (v5)
  {
    v6 = [(HUQuickControlStepperSegmentView *)self style];
    if (v6)
    {
      v7 = 0.0;
      if (v6 == 1)
      {
        if ([(HUQuickControlStepperSegmentView *)self segmentLocation]!= 1)
        {
          [(HUQuickControlStepperSegmentView *)self cornerRadius];
          v7 = v8;
        }

        v9 = [(HUQuickControlStepperSegmentView *)self segmentLocation];
        if (v9 > 2)
        {
          v10 = 0;
        }

        else
        {
          v10 = qword_20D5CB1B0[v9];
        }

        v12 = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
        v13 = [v12 layer];
        [v13 setMaskedCorners:v10];

        v14 = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
        v15 = [v14 layer];
        [v15 setShadowOpacity:0.0];
      }
    }

    else
    {
      [(HUQuickControlStepperSegmentView *)self cornerRadius];
      v7 = v11;
    }

    v16 = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
    [v16 _setContinuousCornerRadius:v7];
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
  v7 = [(HUQuickControlStepperSegmentView *)self highlightedOverlayView];
  [v7 setFrame:{8.0, 8.0, v4, v6}];

  v8 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
  [v8 setFrame:{10.0, 10.0, v4 + -4.0, v6 + -4.0}];

  v9 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
  [v9 frame];
  v11 = v10;
  v12 = [(HUQuickControlStepperSegmentView *)self titleLabelEffectView];
  [v12 frame];
  v14 = v13;
  v15 = [(HUQuickControlStepperSegmentView *)self titleLabel];
  [v15 setFrame:{0.0, 0.0, v11, v14}];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(HUQuickControlStepperSegmentView *)self bounds];
  v11 = CGRectInset(v10, -10.0, -5.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (void)setTintColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = HUQuickControlStepperSegmentView;
  [(HUQuickControlStepperSegmentView *)&v5 setTintColor:a3];
  v4 = [(HUQuickControlStepperSegmentView *)self tintColor];
  [(UIView *)self->_highlightedOverlayView setBackgroundColor:v4];
}

- (void)_contentSizeCategoryDidChange
{
  [(HUQuickControlStepperSegmentView *)self _updateTitleLabel];

  [(HUQuickControlStepperSegmentView *)self setNeedsLayout];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUQuickControlStepperSegmentView;
  [(HUQuickControlStepperSegmentView *)&v4 dealloc];
}

@end