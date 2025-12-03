@interface FCUIAddActivityFooterView
+ (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)fits;
- (FCUIAddActivityFooterView)initWithAction:(id)action;
- (void)_configureActivityTitleLabelIfNecessaryWithTitle:(id)title;
- (void)_configureAddActivityControlIfNecessaryWithAction:(id)action;
- (void)_layoutSubviewsInBounds:(CGRect)bounds measuringOnly:(CGSize *)only;
- (void)_setNeedsTextAttributesUpdate;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForTitleLabel;
- (void)_updateTextAttributesIfNecessary;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
@end

@implementation FCUIAddActivityFooterView

- (FCUIAddActivityFooterView)initWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = FCUIAddActivityFooterView;
  v5 = [(FCUIAddActivityFooterView *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_adjustsFontForContentSizeCategory = 1;
    [(FCUIAddActivityFooterView *)v5 _configureAddActivityControlIfNecessaryWithAction:actionCopy];
    title = [actionCopy title];
    [(FCUIAddActivityFooterView *)v6 _configureActivityTitleLabelIfNecessaryWithTitle:title];
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(FCUIAddActivityFooterView *)self _updateTextAttributesIfNecessary];
  v6 = *MEMORY[0x277CBF3A8];
  BSRectWithSize();
  [(FCUIAddActivityFooterView *)self _layoutSubviewsInBounds:&v6 measuringOnly:?];
  v5 = *(&v6 + 1);
  v4 = *&v6;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FCUIAddActivityFooterView;
  [(FCUIAddActivityFooterView *)&v3 layoutSubviews];
  [(FCUIAddActivityFooterView *)self _updateTextAttributesIfNecessary];
  [(FCUIAddActivityFooterView *)self bounds];
  [(FCUIAddActivityFooterView *)self _layoutSubviewsInBounds:0 measuringOnly:?];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    [(FCUIAddActivityFooterView *)self _setNeedsTextAttributesUpdate];
    addActivityControl = self->_addActivityControl;
    adjustsFontForContentSizeCategory = self->_adjustsFontForContentSizeCategory;

    [(_FCUIAddActivityControl *)addActivityControl setAdjustsFontForContentSizeCategory:adjustsFontForContentSizeCategory];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  adjustsFontForContentSizeCategory = [(FCUIAddActivityFooterView *)self adjustsFontForContentSizeCategory];
  if (adjustsFontForContentSizeCategory)
  {
    [(FCUIAddActivityFooterView *)self _setNeedsTextAttributesUpdate];
    [(_FCUIAddActivityControl *)self->_addActivityControl adjustForContentSizeCategoryChange];
  }

  return adjustsFontForContentSizeCategory;
}

- (void)_layoutSubviewsInBounds:(CGRect)bounds measuringOnly:(CGSize *)only
{
  height = bounds.size.height;
  width = bounds.size.width;
  [(_FCUIAddActivityControl *)self->_addActivityControl sizeThatFits:bounds.size.width, bounds.size.height];
  BSRectWithSize();
  v25 = 0;
  UIRectCenteredXInRectScale();
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  if (!only)
  {
    [(_FCUIAddActivityControl *)self->_addActivityControl setFrame:v8, v9, v10, v11, 0];
  }

  [(UILabel *)self->_titleLabel sizeThatFits:width, height, v25];
  v27.origin.x = v12;
  v27.origin.y = v13;
  v27.size.width = v14;
  v27.size.height = v15;
  CGRectGetMaxY(v27);
  UIRectCenteredXInRectScale();
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  if (only)
  {
    v28.origin.x = v12;
    v28.origin.y = v13;
    v28.size.width = v14;
    v28.size.height = v15;
    v29 = CGRectUnion(v28, *&v20);
    only->width = v29.size.width;
    only->height = v29.size.height;
  }

  else
  {
    titleLabel = self->_titleLabel;

    [(UILabel *)titleLabel setFrame:v16, v17, v18, v19, v16, v17, v18, v19];
  }
}

- (void)_configureAddActivityControlIfNecessaryWithAction:(id)action
{
  if (!self->_addActivityControl)
  {
    actionCopy = action;
    v5 = [[_FCUIAddActivityControl alloc] initWithAction:actionCopy];

    addActivityControl = self->_addActivityControl;
    self->_addActivityControl = v5;

    v7 = self->_addActivityControl;

    [(FCUIAddActivityFooterView *)self addSubview:v7];
  }
}

+ (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (font)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:style];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:style];
  }
  v6 = ;
  v15 = *MEMORY[0x277D74380];
  v13 = *MEMORY[0x277D74430];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:weight];
  v14 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v6 fontDescriptorByAddingAttributes:v9];

  v11 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];

  return v11;
}

- (void)_updateTextAttributesForTitleLabel
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    v4 = [objc_opt_class() _preferredFont:1 textStyle:*MEMORY[0x277D76938] weight:*MEMORY[0x277D74418]];
    [(UILabel *)titleLabel setFont:v4];

    [(FCUIAddActivityFooterView *)self setNeedsLayout];
  }
}

- (void)_setNeedsTextAttributesUpdate
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = 0;

  [(FCUIAddActivityFooterView *)self setNeedsLayout];
}

- (void)_updateTextAttributes
{
  traitCollection = [(FCUIAddActivityFooterView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = preferredContentSizeCategory;

  [(FCUIAddActivityFooterView *)self _updateTextAttributesForTitleLabel];
}

- (void)_updateTextAttributesIfNecessary
{
  if ([(FCUIAddActivityFooterView *)self _needsTextAttributesUpdate])
  {

    [(FCUIAddActivityFooterView *)self _updateTextAttributes];
  }
}

- (void)_configureActivityTitleLabelIfNecessaryWithTitle:(id)title
{
  if (!self->_titleLabel)
  {
    v4 = MEMORY[0x277D756B8];
    titleCopy = title;
    v6 = objc_alloc_init(v4);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v6;

    [(UILabel *)self->_titleLabel setText:titleCopy];
    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setLineBreakMode:4];
    layer = [(UILabel *)self->_titleLabel layer];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    LODWORD(v9) = 1045220557;
    [layer setShadowOpacity:v9];
    [layer setShadowRadius:20.0];
    [layer setShadowOffset:{0.0, 2.0}];
    [layer setShadowPathIsBounds:1];
    [(FCUIAddActivityFooterView *)self addSubview:self->_titleLabel];
    [(FCUIAddActivityFooterView *)self _updateTextAttributesForTitleLabel];
    v10 = [(_FCUIAddActivityControl *)self->_addActivityControl visualStylingProviderForCategory:1];
    [v10 automaticallyUpdateView:self->_titleLabel withStyle:0];
  }
}

@end