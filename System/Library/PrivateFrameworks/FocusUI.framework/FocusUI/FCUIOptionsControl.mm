@interface FCUIOptionsControl
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)sizeThatFits:(CGSize)fits;
- (FCUIOptionsControl)initWithReferencePointSize:(double)size maximumPointSize:(double)pointSize;
- (double)_scaledValueForValue:(double)value;
- (id)_glyphImageNameForCurrentStateWithControlType:(int64_t)type;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (int64_t)_glyphViewVisualStyleForCurrentState;
- (void)_configureBackgroundViewIfNecessary;
- (void)_configureGlyphViewIfNecessary;
- (void)_setNeedsTextAttributesUpdate;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesIfNecessary;
- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider;
- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setControlType:(int64_t)type;
- (void)setGlyphVisualStylingProvider:(id)provider;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setParentControlHighlighted:(BOOL)highlighted;
- (void)setParentControlSelected:(BOOL)selected;
- (void)setSelected:(BOOL)selected;
- (void)setTintColor:(id)color;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation FCUIOptionsControl

- (FCUIOptionsControl)initWithReferencePointSize:(double)size maximumPointSize:(double)pointSize
{
  v12.receiver = self;
  v12.super_class = FCUIOptionsControl;
  v6 = [(FCUIOptionsControl *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_referencePointSize = size;
    v6->_maxPointSize = pointSize;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(FCUIOptionsControl *)v7 setHitTestInsets:-8.0, -8.0, -8.0, -8.0];
      v10 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v7];
      [(FCUIOptionsControl *)v7 addInteraction:v10];
    }
  }

  return v7;
}

- (void)setControlType:(int64_t)type
{
  if (self->_controlType != type)
  {
    self->_controlType = type;
    [(UIImageView *)self->_glyphView removeFromSuperview];
    glyphView = self->_glyphView;
    self->_glyphView = 0;

    [(FCUIOptionsControl *)self setNeedsLayout];
  }
}

- (void)setGlyphVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_glyphVisualStylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_glyphVisualStylingProvider, provider);
    [(FCUIOptionsControl *)self setNeedsLayout];
    providerCopy = v6;
  }
}

- (void)setParentControlHighlighted:(BOOL)highlighted
{
  if (self->_parentControlHighlighted != highlighted)
  {
    self->_parentControlHighlighted = highlighted;
    [(FCUIOptionsControl *)self setNeedsLayout];
  }
}

- (void)setParentControlSelected:(BOOL)selected
{
  if (self->_parentControlSelected != selected)
  {
    self->_parentControlSelected = selected;
    [(UIImageView *)self->_glyphView removeFromSuperview];
    glyphView = self->_glyphView;
    self->_glyphView = 0;

    if (self->_controlType == 2)
    {
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      [(FCUIOptionsControl *)self setTintColor:systemBlueColor];
    }

    [(FCUIOptionsControl *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(FCUIOptionsControl *)self _configureGlyphViewIfNecessary:fits.width];
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
  isHighlighted = [(FCUIOptionsControl *)self isHighlighted];
  v9 = 1.0;
  if ((isHighlighted & 1) == 0)
  {
    isSelected = [(FCUIOptionsControl *)self isSelected];
    v9 = 0.0;
    if (isSelected)
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  v6 = view == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [beginCopy numberOfTouchesRequired] != 1 || objc_msgSend(beginCopy, "numberOfTapsRequired") != 1;

  return v6;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(FCUIOptionsControl *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = FCUIOptionsControl;
  [(FCUIOptionsControl *)&v6 setHighlighted:highlightedCopy];
  if (isHighlighted != [(FCUIOptionsControl *)self isHighlighted])
  {
    [(FCUIOptionsControl *)self setNeedsLayout];
    [(FCUIOptionsControl *)self layoutIfNeeded];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  isSelected = [(FCUIOptionsControl *)self isSelected];
  v6.receiver = self;
  v6.super_class = FCUIOptionsControl;
  [(FCUIOptionsControl *)&v6 setSelected:selectedCopy];
  if (isSelected != [(FCUIOptionsControl *)self isSelected])
  {
    [(FCUIOptionsControl *)self setNeedsLayout];
    [(FCUIOptionsControl *)self layoutIfNeeded];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    [(FCUIOptionsControl *)self _setNeedsTextAttributesUpdate];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  adjustsFontForContentSizeCategory = [(FCUIOptionsControl *)self adjustsFontForContentSizeCategory];
  if (adjustsFontForContentSizeCategory)
  {
    [(FCUIOptionsControl *)self _setNeedsTextAttributesUpdate];
  }

  return adjustsFontForContentSizeCategory;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(FCUIOptionsControl *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  if ([(MTVisualStylingProvider *)requiredVisualStyleCategories containsObject:v7])
  {
    glyphVisualStylingProvider = self->_glyphVisualStylingProvider;

    v9 = providerCopy;
    if (glyphVisualStylingProvider == providerCopy)
    {
      goto LABEL_6;
    }

    v10 = self->_glyphVisualStylingProvider;
    v11 = providerCopy;
    v12 = self->_glyphVisualStylingProvider;
    self->_glyphVisualStylingProvider = v11;
    requiredVisualStyleCategories = v10;

    [(FCUIOptionsControl *)self _visualStylingProviderDidChange:self->_glyphVisualStylingProvider forCategory:category outgoingProvider:requiredVisualStyleCategories];
  }

  else
  {
  }

  v9 = providerCopy;
LABEL_6:
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  if (self->_controlType)
  {
    v6 = 0;
  }

  else
  {
    v8 = MEMORY[0x277D75880];
    [region rect];
    UIRectInset();
    v6 = [v8 regionWithRect:0 identifier:?];
  }

  return v6;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
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

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__FCUIOptionsControl_pointerInteraction_willEnterRegion_animator___block_invoke;
  v5[3] = &unk_27901A470;
  v5[4] = self;
  [animator addAnimations:{v5, region}];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__FCUIOptionsControl_pointerInteraction_willExitRegion_animator___block_invoke;
  v5[3] = &unk_27901A470;
  v5[4] = self;
  [animator addAnimations:{v5, region}];
}

- (double)_scaledValueForValue:(double)value
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

  [(UIFont *)referenceFont _scaledValueForValue:value];
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
  traitCollection = [(FCUIOptionsControl *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = preferredContentSizeCategory;

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

- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider
{
  if (view)
  {
    providerCopy = provider;
    viewCopy = view;
    [outgoingProvider stopAutomaticallyUpdatingView:viewCopy];
    [providerCopy automaticallyUpdateView:viewCopy withStyle:style];
  }
}

- (id)_glyphImageNameForCurrentStateWithControlType:(int64_t)type
{
  if (type == 2)
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
    if (type)
    {
      v4 = 0;
    }

    if (type == 1)
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

- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider
{
  if (category == 1)
  {
    glyphView = self->_glyphView;
    providerCopy = provider;
    changeCopy = change;
    [(FCUIOptionsControl *)self _updateVisualStylingOfView:glyphView style:[(FCUIOptionsControl *)self _glyphViewVisualStyleForCurrentState] visualStylingProvider:changeCopy outgoingProvider:providerCopy];
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
    traitCollection = [(FCUIOptionsControl *)self traitCollection];
    v7 = [v4 systemImageNamed:v5 compatibleWithTraitCollection:traitCollection];
    v8 = [v3 initWithImage:v7];
    glyphView = self->_glyphView;
    self->_glyphView = v8;

    [(UIImageView *)self->_glyphView setContentMode:4];
    v10 = self->_glyphView;
    tintColor = [(FCUIOptionsControl *)self tintColor];
    [(UIImageView *)v10 setTintColor:tintColor];

    [(FCUIOptionsControl *)self addSubview:self->_glyphView];
    v12 = self->_glyphView;
    _glyphViewVisualStyleForCurrentState = [(FCUIOptionsControl *)self _glyphViewVisualStyleForCurrentState];
    glyphVisualStylingProvider = self->_glyphVisualStylingProvider;

    [(FCUIOptionsControl *)self _updateVisualStylingOfView:v12 style:_glyphViewVisualStyleForCurrentState visualStylingProvider:glyphVisualStylingProvider outgoingProvider:0];
  }
}

- (void)setTintColor:(id)color
{
  v5.receiver = self;
  v5.super_class = FCUIOptionsControl;
  colorCopy = color;
  [(FCUIOptionsControl *)&v5 setTintColor:colorCopy];
  [(UIImageView *)self->_glyphView setTintColor:colorCopy, v5.receiver, v5.super_class];
}

@end