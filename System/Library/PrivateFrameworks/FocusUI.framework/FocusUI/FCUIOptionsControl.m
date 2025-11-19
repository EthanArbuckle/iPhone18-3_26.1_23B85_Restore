@interface FCUIOptionsControl
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (FCUIOptionsControl)initWithReferencePointSize:(double)a3 maximumPointSize:(double)a4;
- (double)_scaledValueForValue:(double)a3;
- (id)_glyphImageNameForCurrentStateWithControlType:(int64_t)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (int64_t)_glyphViewVisualStyleForCurrentState;
- (void)_configureBackgroundViewIfNecessary;
- (void)_configureGlyphViewIfNecessary;
- (void)_setNeedsTextAttributesUpdate;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesIfNecessary;
- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6;
- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setControlType:(int64_t)a3;
- (void)setGlyphVisualStylingProvider:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setParentControlHighlighted:(BOOL)a3;
- (void)setParentControlSelected:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTintColor:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation FCUIOptionsControl

- (FCUIOptionsControl)initWithReferencePointSize:(double)a3 maximumPointSize:(double)a4
{
  v12.receiver = self;
  v12.super_class = FCUIOptionsControl;
  v6 = [(FCUIOptionsControl *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_referencePointSize = a3;
    v6->_maxPointSize = a4;
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      [(FCUIOptionsControl *)v7 setHitTestInsets:-8.0, -8.0, -8.0, -8.0];
      v10 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v7];
      [(FCUIOptionsControl *)v7 addInteraction:v10];
    }
  }

  return v7;
}

- (void)setControlType:(int64_t)a3
{
  if (self->_controlType != a3)
  {
    self->_controlType = a3;
    [(UIImageView *)self->_glyphView removeFromSuperview];
    glyphView = self->_glyphView;
    self->_glyphView = 0;

    [(FCUIOptionsControl *)self setNeedsLayout];
  }
}

- (void)setGlyphVisualStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_glyphVisualStylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_glyphVisualStylingProvider, a3);
    [(FCUIOptionsControl *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setParentControlHighlighted:(BOOL)a3
{
  if (self->_parentControlHighlighted != a3)
  {
    self->_parentControlHighlighted = a3;
    [(FCUIOptionsControl *)self setNeedsLayout];
  }
}

- (void)setParentControlSelected:(BOOL)a3
{
  if (self->_parentControlSelected != a3)
  {
    self->_parentControlSelected = a3;
    [(UIImageView *)self->_glyphView removeFromSuperview];
    glyphView = self->_glyphView;
    self->_glyphView = 0;

    if (self->_controlType == 2)
    {
      v6 = [MEMORY[0x277D75348] systemBlueColor];
      [(FCUIOptionsControl *)self setTintColor:v6];
    }

    [(FCUIOptionsControl *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(FCUIOptionsControl *)self _configureGlyphViewIfNecessary:a3.width];
  [(FCUIOptionsControl *)self _updateTextAttributesIfNecessary];
  [(FCUIOptionsControl *)self _scaledValueForValue:self->_referencePointSize];

  UISizeRoundToScale();
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = FCUIOptionsControl;
  [(FCUIOptionsControl *)&v12 layoutSubviews];
  [(FCUIOptionsControl *)self _configureBackgroundViewIfNecessary];
  [(FCUIOptionsControl *)self _configureGlyphViewIfNecessary];
  [(FCUIOptionsControl *)self _updateTextAttributesIfNecessary];
  [(FCUIOptionsControl *)self bounds];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__FCUIOptionsControl_layoutSubviews__block_invoke;
  v11[3] = &unk_27901A790;
  v11[4] = self;
  v11[5] = v3;
  v11[6] = v4;
  v11[7] = v5;
  v11[8] = v6;
  [MEMORY[0x277D75D18] performWithoutAnimation:v11];
  backgroundView = self->_backgroundView;
  v8 = [(FCUIOptionsControl *)self isHighlighted];
  v9 = 1.0;
  if ((v8 & 1) == 0)
  {
    v10 = [(FCUIOptionsControl *)self isSelected];
    v9 = 0.0;
    if (v10)
    {
      v9 = 1.0;
    }
  }

  [(UIView *)backgroundView setAlpha:v9];
  [(FCUIOptionsControl *)self _updateVisualStylingOfView:self->_glyphView style:[(FCUIOptionsControl *)self _glyphViewVisualStyleForCurrentState] visualStylingProvider:self->_glyphVisualStylingProvider outgoingProvider:0];
}

uint64_t __36__FCUIOptionsControl_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 456) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 456) _setCornerRadius:CGRectGetHeight(*(a1 + 40)) * 0.5];
  v2 = *(*(a1 + 32) + 464);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = v5 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 numberOfTouchesRequired] != 1 || objc_msgSend(v4, "numberOfTapsRequired") != 1;

  return v6;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(FCUIOptionsControl *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = FCUIOptionsControl;
  [(FCUIOptionsControl *)&v6 setHighlighted:v3];
  if (v5 != [(FCUIOptionsControl *)self isHighlighted])
  {
    [(FCUIOptionsControl *)self setNeedsLayout];
    [(FCUIOptionsControl *)self layoutIfNeeded];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(FCUIOptionsControl *)self isSelected];
  v6.receiver = self;
  v6.super_class = FCUIOptionsControl;
  [(FCUIOptionsControl *)&v6 setSelected:v3];
  if (v5 != [(FCUIOptionsControl *)self isSelected])
  {
    [(FCUIOptionsControl *)self setNeedsLayout];
    [(FCUIOptionsControl *)self layoutIfNeeded];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(FCUIOptionsControl *)self _setNeedsTextAttributesUpdate];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(FCUIOptionsControl *)self adjustsFontForContentSizeCategory];
  if (v3)
  {
    [(FCUIOptionsControl *)self _setNeedsTextAttributesUpdate];
  }

  return v3;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v13 = a3;
  v6 = [(FCUIOptionsControl *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  if ([(MTVisualStylingProvider *)v6 containsObject:v7])
  {
    glyphVisualStylingProvider = self->_glyphVisualStylingProvider;

    v9 = v13;
    if (glyphVisualStylingProvider == v13)
    {
      goto LABEL_6;
    }

    v10 = self->_glyphVisualStylingProvider;
    v11 = v13;
    v12 = self->_glyphVisualStylingProvider;
    self->_glyphVisualStylingProvider = v11;
    v6 = v10;

    [(FCUIOptionsControl *)self _visualStylingProviderDidChange:self->_glyphVisualStylingProvider forCategory:a4 outgoingProvider:v6];
  }

  else
  {
  }

  v9 = v13;
LABEL_6:
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  if (self->_controlType)
  {
    v6 = 0;
  }

  else
  {
    v8 = MEMORY[0x277D75880];
    [a5 rect];
    UIRectInset();
    v6 = [v8 regionWithRect:0 identifier:?];
  }

  return v6;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x277D758D8]);
  v6 = MEMORY[0x277D75208];
  [(UIView *)self->_backgroundView bounds];
  v7 = [v6 bezierPathWithOvalInRect:?];
  [v5 setVisiblePath:v7];

  v8 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self parameters:v5];
  v9 = MEMORY[0x277D75890];
  v10 = [MEMORY[0x277D75878] effectWithPreview:v8];
  v11 = [v9 styleWithEffect:v10 shape:0];

  return v11;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__FCUIOptionsControl_pointerInteraction_willEnterRegion_animator___block_invoke;
  v5[3] = &unk_27901A470;
  v5[4] = self;
  [a5 addAnimations:{v5, a4}];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__FCUIOptionsControl_pointerInteraction_willExitRegion_animator___block_invoke;
  v5[3] = &unk_27901A470;
  v5[4] = self;
  [a5 addAnimations:{v5, a4}];
}

- (double)_scaledValueForValue:(double)a3
{
  referenceFont = self->_referenceFont;
  if (!referenceFont)
  {
    v6 = MEMORY[0x277D74300];
    v7 = *MEMORY[0x277D76918];
    v8 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:self->_preferredContentSizeCategory];
    v9 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v8];
    v10 = self->_referenceFont;
    self->_referenceFont = v9;

    referenceFont = self->_referenceFont;
  }

  [(UIFont *)referenceFont _scaledValueForValue:a3];
  return result;
}

- (void)_setNeedsTextAttributesUpdate
{
  referenceFont = self->_referenceFont;
  self->_referenceFont = 0;

  [(FCUIOptionsControl *)self setNeedsLayout];
}

- (void)_updateTextAttributes
{
  v3 = [(FCUIOptionsControl *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = v4;

  glyphView = self->_glyphView;
  v7 = MEMORY[0x277D755D0];
  [(FCUIOptionsControl *)self _scaledValueForValue:self->_referencePointSize];
  if (maxPointSize > self->_maxPointSize)
  {
    maxPointSize = self->_maxPointSize;
  }

  v9 = [v7 configurationWithPointSize:maxPointSize];
  [(UIImageView *)glyphView setPreferredSymbolConfiguration:v9];
}

- (void)_updateTextAttributesIfNecessary
{
  if ([(FCUIOptionsControl *)self _needsTextAttributesUpdate])
  {

    [(FCUIOptionsControl *)self _updateTextAttributes];
  }
}

- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6
{
  if (a3)
  {
    v9 = a5;
    v10 = a3;
    [a6 stopAutomaticallyUpdatingView:v10];
    [v9 automaticallyUpdateView:v10 withStyle:a4];
  }
}

- (id)_glyphImageNameForCurrentStateWithControlType:(int64_t)a3
{
  if (a3 == 2)
  {
    if (self->_parentControlSelected)
    {
      v7 = @"checkmark";
    }

    else
    {
      v7 = 0;
    }

    v5 = v7;
  }

  else
  {
    v4 = @"ellipsis";
    if (a3)
    {
      v4 = 0;
    }

    if (a3 == 1)
    {
      v5 = @"chevron.forward";
    }

    else
    {
      v5 = v4;
    }
  }

  return v5;
}

- (int64_t)_glyphViewVisualStyleForCurrentState
{
  if (self->_parentControlHighlighted)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  if (a4 == 1)
  {
    glyphView = self->_glyphView;
    v9 = a5;
    v10 = a3;
    [(FCUIOptionsControl *)self _updateVisualStylingOfView:glyphView style:[(FCUIOptionsControl *)self _glyphViewVisualStyleForCurrentState] visualStylingProvider:v10 outgoingProvider:v9];
  }
}

- (void)_configureBackgroundViewIfNecessary
{
  if (!self->_backgroundView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundView = self->_backgroundView;
    self->_backgroundView = v3;

    [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
    [(UIView *)self->_backgroundView setAlpha:0.0];
    v5 = self->_backgroundView;
    v6 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.25];
    [(UIView *)v5 setBackgroundColor:v6];

    [(FCUIOptionsControl *)self insertSubview:self->_backgroundView atIndex:0];
    v7 = self->_backgroundView;

    [(UIView *)v7 setAlpha:0.0];
  }
}

- (void)_configureGlyphViewIfNecessary
{
  if (!self->_glyphView)
  {
    v3 = objc_alloc(MEMORY[0x277D755E8]);
    v4 = MEMORY[0x277D755B8];
    v5 = [(FCUIOptionsControl *)self _glyphImageNameForCurrentStateWithControlType:self->_controlType];
    v6 = [(FCUIOptionsControl *)self traitCollection];
    v7 = [v4 systemImageNamed:v5 compatibleWithTraitCollection:v6];
    v8 = [v3 initWithImage:v7];
    glyphView = self->_glyphView;
    self->_glyphView = v8;

    [(UIImageView *)self->_glyphView setContentMode:4];
    v10 = self->_glyphView;
    v11 = [(FCUIOptionsControl *)self tintColor];
    [(UIImageView *)v10 setTintColor:v11];

    [(FCUIOptionsControl *)self addSubview:self->_glyphView];
    v12 = self->_glyphView;
    v13 = [(FCUIOptionsControl *)self _glyphViewVisualStyleForCurrentState];
    glyphVisualStylingProvider = self->_glyphVisualStylingProvider;

    [(FCUIOptionsControl *)self _updateVisualStylingOfView:v12 style:v13 visualStylingProvider:glyphVisualStylingProvider outgoingProvider:0];
  }
}

- (void)setTintColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = FCUIOptionsControl;
  v4 = a3;
  [(FCUIOptionsControl *)&v5 setTintColor:v4];
  [(UIImageView *)self->_glyphView setTintColor:v4, v5.receiver, v5.super_class];
}

@end