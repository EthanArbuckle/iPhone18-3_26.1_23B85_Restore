@interface FCUIActivityPickerEducationCardView
+ (id)_defaultPromimentViewWithBaubleDescriptions:(id)a3;
+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6;
+ (id)defaultEducationCardViewFallbackBaubleDescriptions;
+ (id)defaultEducationCardViewWithProminentViewBaubleDescriptions:(id)a3 dismissAction:(id)a4;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)a3;
- (FCUIActivityPickerEducationCardView)initWithProminentView:(id)a3 headlineText:(id)a4 bodyText:(id)a5 dismissAction:(id)a6;
- (void)_configureBackgroundMaterialViewIfNecessary;
- (void)_configureBodyLabelIfNecessary;
- (void)_configureDismissControlIfNecessaryWithAction:(id)a3;
- (void)_configureHeadlineLabelIfNecessary;
- (void)_handleDefaultTap:(id)a3;
- (void)_layoutSubviewInBounds:(CGRect)a3 measuringOnly:(CGSize *)a4;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForBodyLabel;
- (void)_updateTextAttributesForHeadlineLabel;
- (void)_updateTextAttributesIfNecessary;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setDefaultAction:(id)a3;
@end

@implementation FCUIActivityPickerEducationCardView

+ (id)_defaultPromimentViewWithBaubleDescriptions:(id)a3
{
  v3 = a3;
  v4 = [[FCUIActivityBaubleGroupView alloc] initWithBaubleDescriptions:v3 baubleGroupType:1];

  return v4;
}

+ (id)defaultEducationCardViewFallbackBaubleDescriptions
{
  v16[4] = *MEMORY[0x277D85DE8];
  v2 = [FCUIActivityBaubleDescription alloc];
  v3 = [MEMORY[0x277D75348] systemIndigoColor];
  v4 = [(FCUIActivityBaubleDescription *)v2 initWithSystemImageName:@"moon.fill" tintColor:v3];
  v16[0] = v4;
  v5 = [FCUIActivityBaubleDescription alloc];
  v6 = [MEMORY[0x277D75348] systemOrangeColor];
  v7 = [(FCUIActivityBaubleDescription *)v5 initWithSystemImageName:@"book.closed.fill" tintColor:v6];
  v16[1] = v7;
  v8 = [FCUIActivityBaubleDescription alloc];
  v9 = [MEMORY[0x277D75348] systemGreenColor];
  v10 = [(FCUIActivityBaubleDescription *)v8 initWithSystemImageName:@"figure.run" tintColor:v9];
  v16[2] = v10;
  v11 = [FCUIActivityBaubleDescription alloc];
  v12 = [MEMORY[0x277D75348] systemMintColor];
  v13 = [(FCUIActivityBaubleDescription *)v11 initWithSystemImageName:@"bed.double.fill" tintColor:v12];
  v16[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];

  return v14;
}

+ (id)defaultEducationCardViewWithProminentViewBaubleDescriptions:(id)a3 dismissAction:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v9 = [a1 _defaultPromimentViewWithBaubleDescriptions:v7];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ACTIVITY_ONBOARDING_HEADLINE" value:&stru_285ECE868 table:0];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"ACTIVITY_ONBOARDING_BODY" value:&stru_285ECE868 table:0];
  v14 = [v8 initWithProminentView:v9 headlineText:v11 bodyText:v13 dismissAction:v6];

  return v14;
}

- (FCUIActivityPickerEducationCardView)initWithProminentView:(id)a3 headlineText:(id)a4 bodyText:(id)a5 dismissAction:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = FCUIActivityPickerEducationCardView;
  v15 = [(FCUIActivityPickerEducationCardView *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(FCUIActivityPickerEducationCardView *)v15 setAdjustsFontForContentSizeCategory:1];
    objc_storeStrong(&v16->_prominentView, a3);
    [(FCUIActivityPickerEducationCardView *)v16 addSubview:v16->_prominentView];
    [(FCUIActivityPickerEducationCardView *)v16 _configureHeadlineLabelIfNecessary];
    [(UILabel *)v16->_headlineLabel setText:v12];
    [(FCUIActivityPickerEducationCardView *)v16 _configureBodyLabelIfNecessary];
    [(UILabel *)v16->_bodyLabel setText:v13];
    [(FCUIActivityPickerEducationCardView *)v16 _configureDismissControlIfNecessaryWithAction:v14];
    [(FCUIActivityPickerEducationCardView *)v16 setClipsToBounds:1];
  }

  return v16;
}

- (void)setDefaultAction:(id)a3
{
  v10 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v10 copy];
    defaultAction = self->_defaultAction;
    self->_defaultAction = v4;

    defaultTapGesture = self->_defaultTapGesture;
    if (self->_defaultAction)
    {
      if (!defaultTapGesture)
      {
        v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleDefaultTap_];
        v8 = self->_defaultTapGesture;
        self->_defaultTapGesture = v7;

        [(FCUIActivityPickerEducationCardView *)self addGestureRecognizer:self->_defaultTapGesture];
      }
    }

    else
    {
      [(FCUIActivityPickerEducationCardView *)self removeGestureRecognizer:defaultTapGesture];
      v9 = self->_defaultTapGesture;
      self->_defaultTapGesture = 0;
    }
  }
}

- (void)_layoutSubviewInBounds:(CGRect)a3 measuringOnly:(CGSize *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(FCUIActivityPickerEducationCardView *)self _shouldReverseLayoutDirection];
  [(_FCUIActivityPickerOnboardingDismissControl *)self->_dismissControl sizeThatFits:width, height];
  BSRectWithSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(_FCUIActivityPickerOnboardingDismissControl *)self->_dismissControl contentInsetsWithBounds:?];
  v19 = v18;
  v21 = 24.0 - v20;
  v49 = y;
  v50 = width;
  v48 = x;
  if (v10)
  {
    v22 = 24.0 - v17;
  }

  else
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v23 = v19;
    v52.size.width = width;
    v52.size.height = height;
    MaxX = CGRectGetMaxX(v52);
    v53.origin.x = v12;
    v53.origin.y = v21;
    v53.size.width = v14;
    v53.size.height = v16;
    v22 = v23 + MaxX - CGRectGetWidth(v53) + -24.0;
  }

  v25 = v21;
  v26 = v14;
  v27 = v16;
  if (!a4)
  {
    dismissControl = self->_dismissControl;
    UIRectIntegralWithScale();
    [(_FCUIActivityPickerOnboardingDismissControl *)dismissControl setFrame:?];
  }

  v29 = v22;
  [(UIView *)self->_prominentView sizeThatFits:v50, height, v19];
  BSRectWithSize();
  rect = height;
  UIRectCenteredXInRectScale();
  v30 = v54.origin.x;
  v31 = v54.origin.y;
  v32 = v54.size.width;
  v33 = v54.size.height;
  v65.origin.x = v29;
  v65.origin.y = v25;
  v65.size.width = v26;
  v65.size.height = v27;
  if (CGRectIntersectsRect(v54, v65))
  {
    v55.origin.x = v29;
    v55.origin.y = v25;
    v55.size.width = v26;
    v55.size.height = v27;
    v31 = CGRectGetMaxY(v55) + 8.0;
  }

  if (!a4)
  {
    [(UIView *)self->_prominentView setFrame:v30, v31, v32, v33, 0];
  }

  v56.origin.x = v30;
  v56.origin.y = v31;
  v56.size.width = v32;
  v56.size.height = v33;
  v46 = CGRectGetMaxY(v56) + 14.0;
  v57.origin.x = v48;
  v57.origin.y = v49;
  v57.size.width = v50;
  v57.size.height = rect;
  v34 = CGRectGetWidth(v57) + -48.0;
  v58.origin.x = v48;
  v35 = v34;
  v58.origin.y = v49;
  v58.size.width = v50;
  v58.size.height = rect;
  CGRectGetMaxY(v58);
  v59.origin.x = v30;
  v59.origin.y = v31;
  v59.size.width = v32;
  v59.size.height = v33;
  CGRectGetMaxY(v59);
  v36 = [(UILabel *)self->_headlineLabel fcui_numberOfLinesInFrame:0 maximum:self->_drawingContext drawingContext:24.0, v46, v35, 1.79769313e308];
  [(UILabel *)self->_headlineLabel fcui_measuringHeightWithNumberOfLines:v36];
  v38 = v37;
  if (!a4)
  {
    v60.origin.x = 24.0;
    v60.origin.y = v46;
    v60.size.width = v35;
    v60.size.height = v38;
    CGRectGetWidth(v60);
    [(UILabel *)self->_headlineLabel fcui_drawingHeightWithNumberOfLines:v36];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    [(UILabel *)self->_headlineLabel setFrame:0];
  }

  v61.origin.x = 24.0;
  v61.origin.y = v46;
  v61.size.width = v35;
  v61.size.height = v38;
  v39 = CGRectGetMaxY(v61) + 8.0;
  v40 = [(UILabel *)self->_bodyLabel fcui_numberOfLinesInFrame:0 maximum:self->_drawingContext drawingContext:24.0, v46, v35, 1.79769313e308];
  [(UILabel *)self->_bodyLabel fcui_measuringHeightWithNumberOfLines:v40];
  v42 = v41;
  if (a4)
  {
    v62.origin.x = v48;
    v62.origin.y = v49;
    v62.size.width = v50;
    v62.size.height = rect;
    CGRectGetWidth(v62);
    v63.origin.x = 24.0;
    v63.origin.y = v39;
    v63.size.width = v35;
    v63.size.height = v42;
    CGRectGetMaxY(v63);
    UISizeRoundToScale();
    a4->width = v43;
    a4->height = v44;
  }

  else
  {
    v64.origin.x = 24.0;
    v64.origin.y = v39;
    v64.size.width = v35;
    v64.size.height = v42;
    CGRectGetWidth(v64);
    [(UILabel *)self->_bodyLabel fcui_drawingHeightWithNumberOfLines:v40];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    bodyLabel = self->_bodyLabel;

    [(UILabel *)bodyLabel setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v6 = *MEMORY[0x277CBF3A8];
  BSRectWithSize();
  [(FCUIActivityPickerEducationCardView *)self _layoutSubviewInBounds:&v6 measuringOnly:?];
  v5 = *(&v6 + 1);
  v4 = *&v6;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FCUIActivityPickerEducationCardView;
  [(FCUIActivityPickerEducationCardView *)&v3 layoutSubviews];
  [(FCUIActivityPickerEducationCardView *)self _configureBackgroundMaterialViewIfNecessary];
  [(FCUIActivityPickerEducationCardView *)self _updateTextAttributesIfNecessary];
  [(FCUIActivityPickerEducationCardView *)self bounds];
  [(FCUIActivityPickerEducationCardView *)self _layoutSubviewInBounds:0 measuringOnly:?];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(_FCUIActivityPickerOnboardingDismissControl *)self->_dismissControl setAdjustsFontForContentSizeCategory:?];
    if (objc_opt_respondsToSelector())
    {
      [(UIView *)self->_prominentView setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
    }

    [(FCUIActivityPickerEducationCardView *)self _setNeedsTextAttributesUpdate];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(FCUIActivityPickerEducationCardView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = UIContentSizeCategoryCompareToCategory(v4, self->_preferredContentSizeCategory);
  if (v5)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, v4);
    [(FCUIActivityPickerEducationCardView *)self _setNeedsTextAttributesUpdate];
    [(_FCUIActivityPickerOnboardingDismissControl *)self->_dismissControl adjustForContentSizeCategoryChange];
    if (objc_opt_respondsToSelector())
    {
      [(UIView *)self->_prominentView adjustForContentSizeCategoryChange];
    }
  }

  return v5 != NSOrderedSame;
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

- (void)_updateTextAttributesForHeadlineLabel
{
  headlineLabel = self->_headlineLabel;
  if (headlineLabel)
  {
    v4 = [objc_opt_class() _preferredFont:1 textStyle:*MEMORY[0x277D76A28] weight:0x8000 additionalTraits:*MEMORY[0x277D743F8]];
    [(UILabel *)headlineLabel setFont:v4];

    [(FCUIActivityPickerEducationCardView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForBodyLabel
{
  bodyLabel = self->_bodyLabel;
  if (bodyLabel)
  {
    v4 = [objc_opt_class() _preferredFont:1 textStyle:*MEMORY[0x277D769D0] weight:0x8000 additionalTraits:*MEMORY[0x277D74418]];
    [(UILabel *)bodyLabel setFont:v4];

    [(FCUIActivityPickerEducationCardView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributes
{
  self->_textAttributesValid = 1;
  [(FCUIActivityPickerEducationCardView *)self _updateTextAttributesForHeadlineLabel];

  [(FCUIActivityPickerEducationCardView *)self _updateTextAttributesForBodyLabel];
}

- (void)_updateTextAttributesIfNecessary
{
  if ([(FCUIActivityPickerEducationCardView *)self _needsTextAttributesUpdate])
  {

    [(FCUIActivityPickerEducationCardView *)self _updateTextAttributes];
  }
}

- (void)_configureBackgroundMaterialViewIfNecessary
{
  if (!self->_backgroundMaterialView)
  {
    v3 = [MEMORY[0x277D26718] materialViewWithRecipe:53 options:1];
    backgroundMaterialView = self->_backgroundMaterialView;
    self->_backgroundMaterialView = v3;

    v5 = self->_backgroundMaterialView;
    [(FCUIActivityPickerEducationCardView *)self bounds];
    [(MTMaterialView *)v5 setFrame:?];
    [(FCUIActivityPickerEducationCardView *)self insertSubview:self->_backgroundMaterialView atIndex:0];
    [(MTMaterialView *)self->_backgroundMaterialView setAutoresizingMask:18];
    v6 = self->_backgroundMaterialView;

    [(MTMaterialView *)v6 _setContinuousCornerRadius:37.0];
  }
}

- (void)_configureHeadlineLabelIfNecessary
{
  if (!self->_headlineLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    headlineLabel = self->_headlineLabel;
    self->_headlineLabel = v3;

    [(UILabel *)self->_headlineLabel setNumberOfLines:0];
    [(UILabel *)self->_headlineLabel setTextAlignment:1];
    [(UILabel *)self->_headlineLabel setLineBreakMode:4];
    v5 = self->_headlineLabel;
    v6 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v5 setTextColor:v6];

    [(FCUIActivityPickerEducationCardView *)self addSubview:self->_headlineLabel];

    [(FCUIActivityPickerEducationCardView *)self _updateTextAttributesForHeadlineLabel];
  }
}

- (void)_configureBodyLabelIfNecessary
{
  if (!self->_bodyLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    bodyLabel = self->_bodyLabel;
    self->_bodyLabel = v3;

    [(UILabel *)self->_bodyLabel setNumberOfLines:0];
    [(UILabel *)self->_bodyLabel setTextAlignment:1];
    [(UILabel *)self->_bodyLabel setLineBreakMode:4];
    v5 = self->_bodyLabel;
    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v5 setTextColor:v6];

    [(FCUIActivityPickerEducationCardView *)self addSubview:self->_bodyLabel];

    [(FCUIActivityPickerEducationCardView *)self _updateTextAttributesForBodyLabel];
  }
}

- (void)_configureDismissControlIfNecessaryWithAction:(id)a3
{
  if (!self->_dismissControl)
  {
    v4 = a3;
    v5 = [[_FCUIActivityPickerOnboardingDismissControl alloc] initWithAction:v4];

    dismissControl = self->_dismissControl;
    self->_dismissControl = v5;

    v7 = self->_dismissControl;

    [(FCUIActivityPickerEducationCardView *)self addSubview:v7];
  }
}

- (void)_handleDefaultTap:(id)a3
{
  defaultAction = self->_defaultAction;
  if (defaultAction)
  {
    [(UIAction *)defaultAction performWithSender:self target:0];
  }
}

@end