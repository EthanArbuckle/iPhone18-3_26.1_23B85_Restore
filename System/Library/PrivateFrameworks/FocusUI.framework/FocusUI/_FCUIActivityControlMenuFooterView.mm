@interface _FCUIActivityControlMenuFooterView
+ (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight additionalTraits:(unsigned int)traits;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_configureFooterLabelIfNecessary;
- (void)_configureHightlightViewIfNecessary;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setNeedsTextAttributesUpdate;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForFooterLabel;
- (void)_updateTextAttributesIfNecessary;
- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider observerBlock:(id)block;
- (void)_visualStylingProvider:(id)provider didChangeForCategory:(int64_t)category outgoingProvider:(id)outgoingProvider;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setFooterAction:(id)action;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation _FCUIActivityControlMenuFooterView

- (void)setFooterAction:(id)action
{
  actionCopy = action;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_footerAction, action);
    [(_FCUIActivityControlMenuFooterView *)self _configureFooterLabelIfNecessary];
    footerLabel = self->_footerLabel;
    title = [(UIAction *)self->_footerAction title];
    [(UILabel *)footerLabel setText:title];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_FCUIActivityControlMenuFooterView *)self _updateTextAttributesIfNecessary];
  font = [(UILabel *)self->_footerLabel font];
  [font lineHeight];
  UISizeRoundToScale();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  [(_FCUIActivityControlMenuFooterView *)self _updateTextAttributesIfNecessary];
  [(_FCUIActivityControlMenuFooterView *)self bounds];
  CGRectGetWidth(v14);
  font = [(UILabel *)self->_footerLabel font];
  [font lineHeight];
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  footerLabel = self->_footerLabel;

  [(UILabel *)footerLabel setFrame:v5, v7, v9, v11];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  [(_FCUIActivityControlMenuFooterView *)self _configureHightlightViewIfNecessary];
  [(UIView *)self->_highlightView frame];
  v6 = v5;
  v8 = v7;
  [(_FCUIActivityControlMenuFooterView *)self bounds];
  [(UIView *)self->_highlightView setFrame:v6, v9 - radius * 3.0, v8, radius * 3.0];
  [(UIView *)self->_highlightView _setContinuousCornerRadius:radius];
  layer = [(UIView *)self->_highlightView layer];
  [layer setMaskedCorners:12];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_footerAction)
  {
    highlightedCopy = highlighted;
    if ([(_FCUIActivityControlMenuFooterView *)self isHighlighted]!= highlighted)
    {
      [(_FCUIActivityControlMenuFooterView *)self _configureHightlightViewIfNecessary];
      highlightView = self->_highlightView;
      v6 = 0.0;
      if (highlightedCopy)
      {
        v6 = 1.0;
      }

      [(UIView *)highlightView setAlpha:v6];
    }
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    [(_FCUIActivityControlMenuFooterView *)self _setNeedsTextAttributesUpdate];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  adjustsFontForContentSizeCategory = [(_FCUIActivityControlMenuFooterView *)self adjustsFontForContentSizeCategory];
  if (adjustsFontForContentSizeCategory)
  {
    [(_FCUIActivityControlMenuFooterView *)self _setNeedsTextAttributesUpdate];
  }

  return adjustsFontForContentSizeCategory;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(_FCUIActivityControlMenuFooterView *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v8 = [requiredVisualStyleCategories containsObject:v7];

  if (v8)
  {
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:category];
    v11 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v10];

    v12 = self->_categoriesToVisualStylingProviders;
    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = self->_categoriesToVisualStylingProviders;
      self->_categoriesToVisualStylingProviders = v13;

      v12 = self->_categoriesToVisualStylingProviders;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:category];
    [(NSMutableDictionary *)v12 setObject:providerCopy forKeyedSubscript:v15];

    v16 = self->_categoriesToVisualStylingProviders;
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:category];
    if (providerCopy)
    {
      [(NSMutableDictionary *)v16 setObject:providerCopy forKey:v17];
    }

    else
    {
      [(NSMutableDictionary *)v16 removeObjectForKey:v17];
    }

    [(_FCUIActivityControlMenuFooterView *)self _visualStylingProvider:providerCopy didChangeForCategory:category outgoingProvider:v11];
  }
}

+ (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight additionalTraits:(unsigned int)traits
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (font)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  }
  v7 = ;
  v16 = *MEMORY[0x277D74380];
  v14 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:weight];
  v15 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];

  return v12;
}

- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider observerBlock:(id)block
{
  if (view)
  {
    blockCopy = block;
    providerCopy = provider;
    viewCopy = view;
    [outgoingProvider stopAutomaticallyUpdatingView:viewCopy];
    [providerCopy automaticallyUpdateView:viewCopy withStyle:style andObserverBlock:blockCopy];
  }
}

- (void)_visualStylingProvider:(id)provider didChangeForCategory:(int64_t)category outgoingProvider:(id)outgoingProvider
{
  providerCopy = provider;
  outgoingProviderCopy = outgoingProvider;
  if (category == 2)
  {
    highlightView = self->_highlightView;
    v14 = &__block_literal_global_0;
    selfCopy2 = self;
    v11 = 1;
    v12 = providerCopy;
    v13 = outgoingProviderCopy;
  }

  else
  {
    if (category != 1)
    {
      goto LABEL_6;
    }

    highlightView = self->_footerLabel;
    selfCopy2 = self;
    v11 = 0;
    v12 = providerCopy;
    v13 = outgoingProviderCopy;
    v14 = 0;
  }

  [(_FCUIActivityControlMenuFooterView *)selfCopy2 _updateVisualStylingOfView:highlightView style:v11 visualStylingProvider:v12 outgoingProvider:v13 observerBlock:v14];
LABEL_6:
}

- (void)_setNeedsTextAttributesUpdate
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = 0;

  [(_FCUIActivityControlMenuFooterView *)self setNeedsLayout];
}

- (void)_updateTextAttributes
{
  traitCollection = [(_FCUIActivityControlMenuFooterView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = preferredContentSizeCategory;

  [(_FCUIActivityControlMenuFooterView *)self _updateTextAttributesForFooterLabel];
}

- (void)_updateTextAttributesIfNecessary
{
  if ([(_FCUIActivityControlMenuFooterView *)self _needsTextAttributesUpdate])
  {

    [(_FCUIActivityControlMenuFooterView *)self _updateTextAttributes];
  }
}

- (void)_updateTextAttributesForFooterLabel
{
  footerLabel = self->_footerLabel;
  if (footerLabel)
  {
    v3 = [objc_opt_class() _preferredFont:1 textStyle:*MEMORY[0x277D769D0] weight:0 additionalTraits:*MEMORY[0x277D74418]];
    [(UILabel *)footerLabel setFont:v3];
  }
}

- (void)_configureFooterLabelIfNecessary
{
  if (!self->_footerLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    footerLabel = self->_footerLabel;
    self->_footerLabel = v3;

    [(UILabel *)self->_footerLabel setTextAlignment:1];
    [(UILabel *)self->_footerLabel setLineBreakMode:4];
    [(_FCUIActivityControlMenuFooterView *)self addSubview:self->_footerLabel];
    [(_FCUIActivityControlMenuFooterView *)self _updateTextAttributesForFooterLabel];
    v5 = self->_footerLabel;
    v6 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED9400];
    [(_FCUIActivityControlMenuFooterView *)self _updateVisualStylingOfView:v5 style:0 visualStylingProvider:v6 outgoingProvider:0 observerBlock:0];

    [(_FCUIActivityControlMenuFooterView *)self setNeedsLayout];
  }
}

- (void)_configureHightlightViewIfNecessary
{
  if (!self->_highlightView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    highlightView = self->_highlightView;
    self->_highlightView = v3;

    [(UIView *)self->_highlightView setUserInteractionEnabled:0];
    v5 = self->_highlightView;
    [(_FCUIActivityControlMenuFooterView *)self bounds];
    [(UIView *)v5 setFrame:?];
    [(UIView *)self->_highlightView setAutoresizingMask:18];
    [(UIView *)self->_highlightView setAlpha:0.0];
    [(_FCUIActivityControlMenuFooterView *)self insertSubview:self->_highlightView atIndex:0];
    [(_FCUIActivityControlMenuFooterView *)self setClipsToBounds:0];
    layer = [(_FCUIActivityControlMenuFooterView *)self layer];
    [layer setMasksToBounds:1];

    v7 = self->_highlightView;
    v8 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED9418];
    [(_FCUIActivityControlMenuFooterView *)self _updateVisualStylingOfView:v7 style:1 visualStylingProvider:v8 outgoingProvider:0 observerBlock:&__block_literal_global_159];
  }
}

@end