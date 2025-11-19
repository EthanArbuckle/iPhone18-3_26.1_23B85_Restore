@interface FCUIActivityControlMenuItemView
+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6;
- (BOOL)_isCheckmarkEnabled;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGRect)_accessoryImageFrameForBounds:(CGRect)a3;
- (CGRect)_textFrameForBounds:(CGRect)a3 accessoryImageFrame:(CGRect)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (FCUIActivityControlMenuItemView)initWithFrame:(CGRect)a3;
- (double)_separatorHeight;
- (id)_checkmarkImage;
- (id)_newLabel;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_addViewRequiringUpdate:(id)a3;
- (void)_configureAccessoryImageViewIfNecessary;
- (void)_configureActivationDescriptionLabelIfNecessary;
- (void)_configureActivationDetailsLabelIfNecessary;
- (void)_configureAlternativeDescriptionLabelIfNecessary;
- (void)_configureBackgroundViewIfNecessary;
- (void)_configureCheckmarkImageViewIfNecessary;
- (void)_configureHighlightViewIfNecessary;
- (void)_configureSeparatorViewIfNecessary;
- (void)_setAccessoryImage:(id)a3;
- (void)_setActivationDescription:(id)a3;
- (void)_setActivationDetails:(id)a3;
- (void)_setNeedsTextAttributesUpdate;
- (void)_tearDownAccessoryImageViewIfNecessary;
- (void)_tearDownCheckmarkImageViewIfNecessary;
- (void)_tearDownSeparatorViewIfNecessary;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForActivationDescriptionLabel;
- (void)_updateTextAttributesForActivationDetailsLabel;
- (void)_updateTextAttributesForAlternativeDescriptionLabel;
- (void)_updateTextAttributesIfNecessary;
- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6;
- (void)_visualStylingProvider:(id)a3 didChangeForCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setAlternativeDescription:(id)a3;
- (void)setDefaultAction:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSeparatorVisible:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation FCUIActivityControlMenuItemView

- (void)setDefaultAction:(id)a3
{
  v10 = a3;
  if (([v10 fcui_isEqualToAction:self->_defaultAction] & 1) == 0)
  {
    v4 = [v10 copy];
    defaultAction = self->_defaultAction;
    self->_defaultAction = v4;

    v6 = [(UIAction *)self->_defaultAction title];
    [(FCUIActivityControlMenuItemView *)self _setActivationDescription:v6];

    v7 = [(UIAction *)self->_defaultAction discoverabilityTitle];
    [(FCUIActivityControlMenuItemView *)self _setActivationDetails:v7];

    v8 = [(UIAction *)self->_defaultAction image];
    [(FCUIActivityControlMenuItemView *)self _setAccessoryImage:v8];

    [(UILabel *)self->_alternativeDescriptionLabel removeFromSuperview];
    alternativeDescriptionLabel = self->_alternativeDescriptionLabel;
    self->_alternativeDescriptionLabel = 0;
  }
}

- (void)setAlternativeDescription:(id)a3
{
  v8 = a3;
  v4 = [(FCUIActivityControlMenuItemView *)self alternativeDescription];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(FCUIActivityControlMenuItemView *)self _configureAlternativeDescriptionLabelIfNecessary];
    [(FCUIActivityControlMenuItemView *)self _addViewRequiringUpdate:self->_alternativeDescriptionLabel];
    [(UILabel *)self->_alternativeDescriptionLabel setText:v8];
    [(UILabel *)self->_activationDescriptionLabel removeFromSuperview];
    activationDescriptionLabel = self->_activationDescriptionLabel;
    self->_activationDescriptionLabel = 0;

    [(UILabel *)self->_activationDetailsLabel removeFromSuperview];
    activationDetailsLabel = self->_activationDetailsLabel;
    self->_activationDetailsLabel = 0;

    [(FCUIActivityControlMenuItemView *)self setNeedsLayout];
  }
}

- (void)setSeparatorVisible:(BOOL)a3
{
  if (self->_separatorVisible != a3)
  {
    self->_separatorVisible = a3;
    if (a3)
    {
      [(FCUIActivityControlMenuItemView *)self _configureSeparatorViewIfNecessary];
    }

    else
    {
      [(FCUIActivityControlMenuItemView *)self _tearDownSeparatorViewIfNecessary];
    }
  }
}

- (FCUIActivityControlMenuItemView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = FCUIActivityControlMenuItemView;
  v3 = [(FCUIActivityControlMenuItemView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      v6 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v3];
      [(FCUIActivityControlMenuItemView *)v3 addInteraction:v6];
    }
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (a3.width <= 0.0)
  {
    v33 = *MEMORY[0x277CBF3A8];
    v35 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    v4 = [(FCUIActivityControlMenuItemView *)self _activationDescription];
    v5 = [v4 length];

    [(FCUIActivityControlMenuItemView *)self _updateTextAttributesIfNecessary];
    BSRectWithSize();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if (v5)
    {
      v14 = [(UILabel *)self->_activationDescriptionLabel font];
      v15 = [(UILabel *)self->_activationDescriptionLabel text];
      v16 = [v14 fcui_hasExuberatedLineHeightForText:v15];

      if (v16)
      {
        [MEMORY[0x277D74300] fcui_exuberatedValueForValue:12.0];
        [MEMORY[0x277D74300] fcui_exuberatedValueForValue:12.0];
      }

      [(FCUIActivityControlMenuItemView *)self _accessoryImageFrameForBounds:v7, v9, v11, v13];
      [(FCUIActivityControlMenuItemView *)self _textFrameForBounds:v7 accessoryImageFrame:v9, v11, v13, v17, v18, v19, v20];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = [(UILabel *)self->_activationDescriptionLabel fcui_numberOfLinesInFrame:0 maximum:self->_drawingContext drawingContext:?];
      v28 = [(UILabel *)self->_activationDetailsLabel fcui_numberOfLinesInFrame:0 maximum:self->_drawingContext drawingContext:v22, v24, v26, 1.79769313e308];
      [(UILabel *)self->_activationDescriptionLabel fcui_measuringHeightWithNumberOfLines:v27];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
      v30 = v28 - 1;
      if (!v28)
      {
        v30 = 0;
      }

      if (IsAccessibilityCategory)
      {
        v31 = v28;
      }

      else
      {
        v31 = v30;
      }

      [(UILabel *)self->_activationDetailsLabel fcui_measuringHeightWithNumberOfLines:v31];
      UISizeRoundToScale();
      v33 = v32;
      v35 = v34;
    }

    else
    {
      v36 = [(UILabel *)self->_alternativeDescriptionLabel font];
      v37 = [(UILabel *)self->_alternativeDescriptionLabel text];
      v38 = [v36 fcui_hasExuberatedLineHeightForText:v37];

      if (v38)
      {
        [MEMORY[0x277D74300] fcui_exuberatedValueForValue:22.0];
      }

      v44.origin.x = v7;
      v44.origin.y = v9;
      v44.size.width = v11;
      v44.size.height = v13;
      v45 = CGRectInset(v44, 24.0, 0.0);
      [(UILabel *)self->_alternativeDescriptionLabel fcui_measuringHeightWithNumberOfLines:[(UILabel *)self->_alternativeDescriptionLabel fcui_numberOfLinesInFrame:0 maximum:self->_drawingContext drawingContext:v45.origin.x, v45.origin.y, v45.size.width, 1.79769313e308]];
      UISizeRoundToScale();
      v33 = v39;
      v35 = v40;
    }
  }

  v41 = v33;
  v42 = v35;
  result.height = v42;
  result.width = v41;
  return result;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = FCUIActivityControlMenuItemView;
  [(FCUIActivityControlMenuItemView *)&v36 layoutSubviews];
  [(FCUIActivityControlMenuItemView *)self _configureBackgroundViewIfNecessary];
  [(FCUIActivityControlMenuItemView *)self _updateTextAttributesIfNecessary];
  [(FCUIActivityControlMenuItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v28 = v9;
  [(FCUIActivityControlMenuItemView *)self _accessoryImageFrameForBounds:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __49__FCUIActivityControlMenuItemView_layoutSubviews__block_invoke;
  v35[3] = &unk_27901A790;
  v35[4] = self;
  *&v35[5] = v10;
  *&v35[6] = v12;
  *&v35[7] = v14;
  *&v35[8] = v16;
  [MEMORY[0x277D75D18] performWithoutAnimation:v35];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__FCUIActivityControlMenuItemView_layoutSubviews__block_invoke_2;
  aBlock[3] = &unk_27901AA08;
  aBlock[4] = self;
  v18 = _Block_copy(aBlock);
  v19 = [(FCUIActivityControlMenuItemView *)self _activationDescription];
  v20 = [v19 length];

  if (v20)
  {
    v21 = v28;
    [(FCUIActivityControlMenuItemView *)self _textFrameForBounds:v4 accessoryImageFrame:v6, v8, v28, v11, v13, v15, v17];
    v22 = *(MEMORY[0x277CBF3A0] + 16);
    v32 = *MEMORY[0x277CBF3A0];
    v33 = v22;
    v30 = v32;
    v31 = v22;
    [MEMORY[0x277D756B8] fcui_layoutPrimaryLabel:self->_activationDescriptionLabel secondaryLabel:self->_activationDetailsLabel inTextFrame:&v32 primaryLabelFrame:&v30 secondaryLabelFrame:self->_drawingContext drawingContext:?];
    v18[2](v18, self->_activationDescriptionLabel, *&v32, *(&v32 + 1), *&v33, *(&v33 + 1));
    v18[2](v18, self->_activationDetailsLabel, *&v30, *(&v30 + 1), *&v31, *(&v31 + 1));
  }

  else
  {
    v37.origin.x = v4;
    v37.origin.y = v6;
    v37.size.width = v8;
    v21 = v28;
    v37.size.height = v28;
    CGRectInset(v37, 24.0, 0.0);
    [(UILabel *)self->_alternativeDescriptionLabel fcui_drawingHeightWithNumberOfLines:[(UILabel *)self->_alternativeDescriptionLabel fcui_numberOfLinesInFrame:0 maximum:self->_drawingContext drawingContext:?]];
    v27 = 0;
    UIRectCenteredIntegralRectScale();
    (v18[2])(v18, self->_alternativeDescriptionLabel);
  }

  [(FCUIActivityControlMenuItemView *)self _didPerformUpdate];
  if (self->_separatorView)
  {
    [(FCUIActivityControlMenuItemView *)self _separatorHeight];
    v24 = v23;
    v38.origin.x = v4;
    v38.origin.y = v6;
    v38.size.width = v8;
    v38.size.height = v21;
    v25 = CGRectGetMaxY(v38) - v24;
    v39.origin.x = v4;
    v39.origin.y = v6;
    v39.size.width = v8;
    v39.size.height = v21;
    Width = CGRectGetWidth(v39);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __49__FCUIActivityControlMenuItemView_layoutSubviews__block_invoke_4;
    v29[3] = &unk_27901A790;
    v29[4] = self;
    v29[5] = 0;
    *&v29[6] = v25;
    *&v29[7] = Width;
    *&v29[8] = v24;
    [MEMORY[0x277D75D18] performWithoutAnimation:v29];
  }
}

void __49__FCUIActivityControlMenuItemView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  if ([*(*(a1 + 32) + 440) containsObject:v11])
  {
    v12 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__FCUIActivityControlMenuItemView_layoutSubviews__block_invoke_3;
    v14[3] = &unk_27901A790;
    v13 = v11;
    v15 = v13;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = a6;
    [v12 performWithoutAnimation:v14];
    [v13 setAlpha:1.0];
  }

  else
  {
    [v11 setFrame:{a3, a4, a5, a6}];
  }
}

uint64_t __49__FCUIActivityControlMenuItemView_layoutSubviews__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_defaultAction)
  {
    v3 = a3;
    if ([(FCUIActivityControlMenuItemView *)self isHighlighted]!= a3)
    {
      [(FCUIActivityControlMenuItemView *)self _configureHighlightViewIfNecessary];
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

- (void)setSelected:(BOOL)a3
{
  if (self->_defaultAction)
  {
    v3 = a3;
    if ([(FCUIActivityControlMenuItemView *)self isSelected]!= a3)
    {
      [(UIAction *)self->_defaultAction setState:v3];
      if ([(FCUIActivityControlMenuItemView *)self isSelected])
      {

        [(FCUIActivityControlMenuItemView *)self _configureCheckmarkImageViewIfNecessary];
      }

      else
      {

        [(FCUIActivityControlMenuItemView *)self _tearDownCheckmarkImageViewIfNecessary];
      }
    }
  }
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v16 = a3;
  v6 = [(FCUIActivityControlMenuItemView *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v11 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v10];

    if (!self->_categoriesToVisualStylingProviders)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = self->_categoriesToVisualStylingProviders;
      self->_categoriesToVisualStylingProviders = v12;
    }

    v14 = self->_categoriesToVisualStylingProviders;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    if (v16)
    {
      [(NSMutableDictionary *)v14 setObject:v16 forKey:v15];
    }

    else
    {
      [(NSMutableDictionary *)v14 removeObjectForKey:v15];
    }

    [(FCUIActivityControlMenuItemView *)self _visualStylingProvider:v16 didChangeForCategory:a4 outgoingProvider:v11];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(FCUIActivityControlMenuItemView *)self _setNeedsTextAttributesUpdate];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(FCUIActivityControlMenuItemView *)self adjustsFontForContentSizeCategory];
  if (v3)
  {
    [(FCUIActivityControlMenuItemView *)self _setNeedsTextAttributesUpdate];
  }

  return v3;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = MEMORY[0x277D75890];
  v5 = MEMORY[0x277D75858];
  v6 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self];
  v7 = [v5 effectWithPreview:v6];
  v8 = [v4 styleWithEffect:v7 shape:0];

  return v8;
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

- (void)_setActivationDescription:(id)a3
{
  v6 = a3;
  v4 = [(FCUIActivityControlMenuItemView *)self _activationDescription];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(FCUIActivityControlMenuItemView *)self _configureActivationDescriptionLabelIfNecessary];
    [(FCUIActivityControlMenuItemView *)self _addViewRequiringUpdate:self->_activationDescriptionLabel];
    [(UILabel *)self->_activationDescriptionLabel setText:v6];
    [(FCUIActivityControlMenuItemView *)self setNeedsLayout];
  }
}

- (void)_setActivationDetails:(id)a3
{
  v6 = a3;
  v4 = [(FCUIActivityControlMenuItemView *)self _activationDetails];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(FCUIActivityControlMenuItemView *)self _configureActivationDetailsLabelIfNecessary];
    [(FCUIActivityControlMenuItemView *)self _addViewRequiringUpdate:self->_activationDetailsLabel];
    [(UILabel *)self->_activationDetailsLabel setText:v6];
    [(FCUIActivityControlMenuItemView *)self setNeedsLayout];
  }
}

- (void)_setAccessoryImage:(id)a3
{
  v6 = a3;
  v4 = [(FCUIActivityControlMenuItemView *)self _accessoryImage];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (v6)
    {
      [(FCUIActivityControlMenuItemView *)self _configureAccessoryImageViewIfNecessary];
      [(UIImageView *)self->_accessoryImageView setImage:v6];
    }

    [(FCUIActivityControlMenuItemView *)self setNeedsLayout];
  }
}

- (double)_separatorHeight
{
  v3 = [(FCUIActivityControlMenuItemView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = 1.0;
  if (!UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v6 = [(FCUIActivityControlMenuItemView *)self traitCollection];
    [v6 displayScale];
    v5 = v7;
  }

  return 1.0 / v5;
}

- (void)_setNeedsTextAttributesUpdate
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = 0;

  [(FCUIActivityControlMenuItemView *)self setNeedsLayout];
}

- (void)_updateTextAttributes
{
  v3 = [(FCUIActivityControlMenuItemView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = v4;

  [(FCUIActivityControlMenuItemView *)self _updateTextAttributesForActivationDescriptionLabel];
  [(FCUIActivityControlMenuItemView *)self _updateTextAttributesForActivationDetailsLabel];

  [(FCUIActivityControlMenuItemView *)self _updateTextAttributesForAlternativeDescriptionLabel];
}

- (void)_updateTextAttributesIfNecessary
{
  if ([(FCUIActivityControlMenuItemView *)self _needsTextAttributesUpdate])
  {

    [(FCUIActivityControlMenuItemView *)self _updateTextAttributes];
  }
}

- (void)_updateTextAttributesForActivationDescriptionLabel
{
  activationDescriptionLabel = self->_activationDescriptionLabel;
  if (activationDescriptionLabel)
  {
    v3 = [objc_opt_class() _preferredFont:1 textStyle:*MEMORY[0x277D76918] weight:0x8000 additionalTraits:*MEMORY[0x277D74418]];
    [(UILabel *)activationDescriptionLabel setFont:v3];
  }
}

- (void)_updateTextAttributesForActivationDetailsLabel
{
  activationDetailsLabel = self->_activationDetailsLabel;
  if (activationDetailsLabel)
  {
    v3 = [objc_opt_class() _preferredFont:1 textStyle:*MEMORY[0x277D769D0] weight:0x8000 additionalTraits:*MEMORY[0x277D74420]];
    [(UILabel *)activationDetailsLabel setFont:v3];
  }
}

- (void)_updateTextAttributesForAlternativeDescriptionLabel
{
  alternativeDescriptionLabel = self->_alternativeDescriptionLabel;
  if (alternativeDescriptionLabel)
  {
    v3 = [objc_opt_class() _preferredFont:1 textStyle:*MEMORY[0x277D76968] weight:0x8000 additionalTraits:*MEMORY[0x277D74418]];
    [(UILabel *)alternativeDescriptionLabel setFont:v3];
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

- (void)_visualStylingProvider:(id)a3 didChangeForCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  v13 = a3;
  v8 = a5;
  if (a4 == 2)
  {
    backgroundView = self->_backgroundView;
    v12 = [v13 _visualStylingForStyleNamed:@"moduleListTint"];
    [(UIView *)backgroundView mt_replaceVisualStyling:v12];

    v10 = &OBJC_IVAR___FCUIActivityControlMenuItemView__highlightView;
    v9 = 1;
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:self->_activationDescriptionLabel style:0 visualStylingProvider:v13 outgoingProvider:v8];
    [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:self->_activationDetailsLabel style:1 visualStylingProvider:v13 outgoingProvider:v8];
    [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:self->_alternativeDescriptionLabel style:1 visualStylingProvider:v13 outgoingProvider:v8];
    v9 = 0;
    v10 = &OBJC_IVAR___FCUIActivityControlMenuItemView__accessoryImageView;
  }

  [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:*(&self->super.super.super.isa + *v10) style:v9 visualStylingProvider:v13 outgoingProvider:v8];
LABEL_6:
}

- (void)_configureBackgroundViewIfNecessary
{
  if (!self->_backgroundView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(FCUIActivityControlMenuItemView *)self bounds];
    v4 = [v3 initWithFrame:?];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v4;

    [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
    [(UIView *)self->_backgroundView setAutoresizingMask:18];
    [(FCUIActivityControlMenuItemView *)self insertSubview:self->_backgroundView atIndex:0];
    v6 = self->_backgroundView;
    v8 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED93E8];
    v7 = [v8 _visualStylingForStyleNamed:@"moduleListTint"];
    [(UIView *)v6 mt_replaceVisualStyling:v7];
  }
}

- (id)_newLabel
{
  v2 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v2 _setTextAlignmentFollowsWritingDirection:1];
  [v2 setNumberOfLines:0];
  return v2;
}

- (void)_addViewRequiringUpdate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    viewsRequiringUpdate = self->_viewsRequiringUpdate;
    v8 = v4;
    if (!viewsRequiringUpdate)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_viewsRequiringUpdate;
      self->_viewsRequiringUpdate = v6;

      viewsRequiringUpdate = self->_viewsRequiringUpdate;
    }

    [(NSHashTable *)viewsRequiringUpdate addObject:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_configureActivationDescriptionLabelIfNecessary
{
  if (!self->_activationDescriptionLabel)
  {
    v3 = [(FCUIActivityControlMenuItemView *)self _newLabel];
    activationDescriptionLabel = self->_activationDescriptionLabel;
    self->_activationDescriptionLabel = v3;

    [(FCUIActivityControlMenuItemView *)self addSubview:self->_activationDescriptionLabel];
    [(FCUIActivityControlMenuItemView *)self _updateTextAttributesForActivationDescriptionLabel];
    v5 = self->_activationDescriptionLabel;
    v6 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED93D0];
    [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:v5 style:0 visualStylingProvider:v6 outgoingProvider:0];
  }
}

- (void)_configureActivationDetailsLabelIfNecessary
{
  if (!self->_activationDetailsLabel)
  {
    v3 = [(FCUIActivityControlMenuItemView *)self _newLabel];
    activationDetailsLabel = self->_activationDetailsLabel;
    self->_activationDetailsLabel = v3;

    [(FCUIActivityControlMenuItemView *)self addSubview:self->_activationDetailsLabel];
    [(FCUIActivityControlMenuItemView *)self _updateTextAttributesForActivationDetailsLabel];
    v5 = self->_activationDetailsLabel;
    v6 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED93D0];
    [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:v5 style:1 visualStylingProvider:v6 outgoingProvider:0];
  }
}

- (void)_configureAlternativeDescriptionLabelIfNecessary
{
  if (!self->_alternativeDescriptionLabel)
  {
    v3 = [(FCUIActivityControlMenuItemView *)self _newLabel];
    alternativeDescriptionLabel = self->_alternativeDescriptionLabel;
    self->_alternativeDescriptionLabel = v3;

    [(UILabel *)self->_alternativeDescriptionLabel setTextAlignment:1];
    [(FCUIActivityControlMenuItemView *)self addSubview:self->_alternativeDescriptionLabel];
    [(FCUIActivityControlMenuItemView *)self _updateTextAttributesForAlternativeDescriptionLabel];
    v5 = self->_alternativeDescriptionLabel;
    v6 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED93D0];
    [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:v5 style:1 visualStylingProvider:v6 outgoingProvider:0];
  }
}

- (void)_configureAccessoryImageViewIfNecessary
{
  if (!self->_accessoryImageView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D755E8]);
    accessoryImageView = self->_accessoryImageView;
    self->_accessoryImageView = v3;

    [(FCUIActivityControlMenuItemView *)self addSubview:self->_accessoryImageView];
    v5 = self->_accessoryImageView;
    v6 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED93D0];
    [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:v5 style:0 visualStylingProvider:v6 outgoingProvider:0];
  }
}

- (BOOL)_isCheckmarkEnabled
{
  v2 = [(UIAction *)self->_defaultAction image];
  v3 = v2 == 0;

  return v3;
}

- (id)_checkmarkImage
{
  if ([(FCUIActivityControlMenuItemView *)self _isCheckmarkEnabled]&& ([(FCUIActivityControlMenuItemView *)self _accessoryImage], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [(FCUIActivityControlMenuItemView *)self _accessoryImage];
  }

  else
  {
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  }

  return v5;
}

- (void)_configureCheckmarkImageViewIfNecessary
{
  if ([(FCUIActivityControlMenuItemView *)self _isCheckmarkEnabled])
  {
    [(FCUIActivityControlMenuItemView *)self _configureAccessoryImageViewIfNecessary];
    accessoryImageView = self->_accessoryImageView;
    v4 = [(FCUIActivityControlMenuItemView *)self _checkmarkImage];
    [(UIImageView *)accessoryImageView setImage:v4];
  }
}

- (void)_tearDownAccessoryImageViewIfNecessary
{
  accessoryImageView = self->_accessoryImageView;
  if (accessoryImageView)
  {
    v4 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED93D0];
    [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:accessoryImageView style:0 visualStylingProvider:0 outgoingProvider:v4];

    [(UIImageView *)self->_accessoryImageView removeFromSuperview];
    v5 = self->_accessoryImageView;
    self->_accessoryImageView = 0;
  }
}

- (void)_tearDownCheckmarkImageViewIfNecessary
{
  if ([(FCUIActivityControlMenuItemView *)self _isCheckmarkEnabled])
  {

    [(FCUIActivityControlMenuItemView *)self _tearDownAccessoryImageViewIfNecessary];
  }
}

- (void)_configureSeparatorViewIfNecessary
{
  if (!self->_separatorView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = self->_separatorView;
    self->_separatorView = v3;

    [(FCUIActivityControlMenuItemView *)self addSubview:self->_separatorView];
    v5 = self->_separatorView;
    v6 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED93D0];
    [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:v5 style:5 visualStylingProvider:v6 outgoingProvider:0];
  }
}

- (void)_tearDownSeparatorViewIfNecessary
{
  separatorView = self->_separatorView;
  if (separatorView)
  {
    v4 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED93D0];
    [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:separatorView style:5 visualStylingProvider:0 outgoingProvider:v4];

    [(UIView *)self->_separatorView removeFromSuperview];
    v5 = self->_separatorView;
    self->_separatorView = 0;
  }
}

- (void)_configureHighlightViewIfNecessary
{
  if (!self->_highlightView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    highlightView = self->_highlightView;
    self->_highlightView = v3;

    [(UIView *)self->_highlightView setUserInteractionEnabled:0];
    v5 = self->_highlightView;
    [(FCUIActivityControlMenuItemView *)self bounds];
    [(UIView *)v5 setFrame:?];
    [(UIView *)self->_highlightView setAutoresizingMask:18];
    [(FCUIActivityControlMenuItemView *)self _configureBackgroundViewIfNecessary];
    [(FCUIActivityControlMenuItemView *)self insertSubview:self->_highlightView aboveSubview:self->_backgroundView];
    v6 = self->_highlightView;
    v7 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_285ED93E8];
    [(FCUIActivityControlMenuItemView *)self _updateVisualStylingOfView:v6 style:1 visualStylingProvider:v7 outgoingProvider:0];
  }
}

- (CGRect)_accessoryImageFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  BSRectWithSize();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (([(FCUIActivityControlMenuItemView *)self _shouldReverseLayoutDirection]& 1) == 0)
  {
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    CGRectGetWidth(v32);
    v33.origin.x = v9;
    v33.origin.y = v11;
    v33.size.width = v13;
    v33.size.height = v15;
    CGRectGetWidth(v33);
  }

  UIRectCenteredYInRect();
  v16 = [(FCUIActivityControlMenuItemView *)self _accessoryImage];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [(FCUIActivityControlMenuItemView *)self _checkmarkImage];
  }

  v19 = v18;

  [v19 size];
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)_textFrameForBounds:(CGRect)a3 accessoryImageFrame:(CGRect)a4
{
  rect = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  height = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  v11 = [(FCUIActivityControlMenuItemView *)self _shouldReverseLayoutDirection];
  v26.origin.x = v10;
  v26.origin.y = v9;
  v26.size.width = v8;
  v26.size.height = height;
  CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = rect;
  CGRectGetWidth(v27);
  v28.origin.x = v10;
  v28.origin.y = v9;
  v28.size.width = v8;
  v28.size.height = height;
  CGRectGetHeight(v28);
  BSRectWithSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = 25.0;
  if (v11)
  {
    v29.origin.x = v10;
    v29.origin.y = v9;
    v29.size.width = v8;
    v29.size.height = height;
    v21 = CGRectGetWidth(v29) + -25.0;
    v30.origin.x = v13;
    v30.origin.y = v15;
    v30.size.width = v17;
    v30.size.height = v19;
    v20 = v21 - CGRectGetWidth(v30);
  }

  v22 = v15;
  v23 = v17;
  v24 = v19;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v20;
  return result;
}

@end