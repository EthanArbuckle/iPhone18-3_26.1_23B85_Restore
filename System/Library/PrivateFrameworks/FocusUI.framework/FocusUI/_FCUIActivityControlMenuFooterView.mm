@interface _FCUIActivityControlMenuFooterView
+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_configureFooterLabelIfNecessary;
- (void)_configureHightlightViewIfNecessary;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setNeedsTextAttributesUpdate;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForFooterLabel;
- (void)_updateTextAttributesIfNecessary;
- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6 observerBlock:(id)a7;
- (void)_visualStylingProvider:(id)a3 didChangeForCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setFooterAction:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation _FCUIActivityControlMenuFooterView

- (void)setFooterAction:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_footerAction, a3);
    [(_FCUIActivityControlMenuFooterView *)self _configureFooterLabelIfNecessary];
    footerLabel = self->_footerLabel;
    v6 = [(UIAction *)self->_footerAction title];
    [(UILabel *)footerLabel setText:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_FCUIActivityControlMenuFooterView *)self _updateTextAttributesIfNecessary];
  v4 = [(UILabel *)self->_footerLabel font];
  [v4 lineHeight];
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
  v3 = [(UILabel *)self->_footerLabel font];
  [v3 lineHeight];
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  footerLabel = self->_footerLabel;

  [(UILabel *)footerLabel setFrame:v5, v7, v9, v11];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  [(_FCUIActivityControlMenuFooterView *)self _configureHightlightViewIfNecessary];
  [(UIView *)self->_highlightView frame];
  v6 = v5;
  v8 = v7;
  [(_FCUIActivityControlMenuFooterView *)self bounds];
  [(UIView *)self->_highlightView setFrame:v6, v9 - a3 * 3.0, v8, a3 * 3.0];
  [(UIView *)self->_highlightView _setContinuousCornerRadius:a3];
  v10 = [(UIView *)self->_highlightView layer];
  [v10 setMaskedCorners:12];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_footerAction)
  {
    v3 = a3;
    if ([(_FCUIActivityControlMenuFooterView *)self isHighlighted]!= a3)
    {
      [(_FCUIActivityControlMenuFooterView *)self _configureHightlightViewIfNecessary];
      highlightView = self->_highlightView;
      v6 = 0.0;
      if (v3)
      {
        v6 = 1.0;
      }

      [(UIView *)highlightView setAlpha:v6];
    }
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(_FCUIActivityControlMenuFooterView *)self _setNeedsTextAttributesUpdate];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(_FCUIActivityControlMenuFooterView *)self adjustsFontForContentSizeCategory];
  if (v3)
  {
    [(_FCUIActivityControlMenuFooterView *)self _setNeedsTextAttributesUpdate];
  }

  return v3;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v18 = a3;
  v6 = [(_FCUIActivityControlMenuFooterView *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v11 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v10];

    v12 = self->_categoriesToVisualStylingProviders;
    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = self->_categoriesToVisualStylingProviders;
      self->_categoriesToVisualStylingProviders = v13;

      v12 = self->_categoriesToVisualStylingProviders;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMutableDictionary *)v12 setObject:v18 forKeyedSubscript:v15];

    v16 = self->_categoriesToVisualStylingProviders;
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    if (v18)
    {
      [(NSMutableDictionary *)v16 setObject:v18 forKey:v17];
    }

    else
    {
      [(NSMutableDictionary *)v16 removeObjectForKey:v17];
    }

    [(_FCUIActivityControlMenuFooterView *)self _visualStylingProvider:v18 didChangeForCategory:a4 outgoingProvider:v11];
  }
}

+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:a4 addingSymbolicTraits:*&a6 options:0];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:a4 addingSymbolicTraits:*&a6 options:0];
  }
  v7 = ;
  v16 = *MEMORY[0x277D74380];
  v14 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v15 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];

  return v12;
}

- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6 observerBlock:(id)a7
{
  if (a3)
  {
    v11 = a7;
    v12 = a5;
    v13 = a3;
    [a6 stopAutomaticallyUpdatingView:v13];
    [v12 automaticallyUpdateView:v13 withStyle:a4 andObserverBlock:v11];
  }
}

- (void)_visualStylingProvider:(id)a3 didChangeForCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  v15 = a3;
  v8 = a5;
  if (a4 == 2)
  {
    highlightView = self->_highlightView;
    v14 = &__block_literal_global_0;
    v10 = self;
    v11 = 1;
    v12 = v15;
    v13 = v8;
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    highlightView = self->_footerLabel;
    v10 = self;
    v11 = 0;
    v12 = v15;
    v13 = v8;
    v14 = 0;
  }

  [(_FCUIActivityControlMenuFooterView *)v10 _updateVisualStylingOfView:highlightView style:v11 visualStylingProvider:v12 outgoingProvider:v13 observerBlock:v14];
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
  v3 = [(_FCUIActivityControlMenuFooterView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = v4;

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
    v6 = [(_FCUIActivityControlMenuFooterView *)self layer];
    [v6 setMasksToBounds:1];

    v7 = self->_highlightView;
    v8 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED9418];
    [(_FCUIActivityControlMenuFooterView *)self _updateVisualStylingOfView:v7 style:1 visualStylingProvider:v8 outgoingProvider:0 observerBlock:&__block_literal_global_159];
  }
}

@end