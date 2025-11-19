@interface FCUIAddActivityFooterView
+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)a3;
- (FCUIAddActivityFooterView)initWithAction:(id)a3;
- (void)_configureActivityTitleLabelIfNecessaryWithTitle:(id)a3;
- (void)_configureAddActivityControlIfNecessaryWithAction:(id)a3;
- (void)_layoutSubviewsInBounds:(CGRect)a3 measuringOnly:(CGSize *)a4;
- (void)_setNeedsTextAttributesUpdate;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForTitleLabel;
- (void)_updateTextAttributesIfNecessary;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
@end

@implementation FCUIAddActivityFooterView

- (FCUIAddActivityFooterView)initWithAction:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCUIAddActivityFooterView;
  v5 = [(FCUIAddActivityFooterView *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_adjustsFontForContentSizeCategory = 1;
    [(FCUIAddActivityFooterView *)v5 _configureAddActivityControlIfNecessaryWithAction:v4];
    v7 = [v4 title];
    [(FCUIAddActivityFooterView *)v6 _configureActivityTitleLabelIfNecessaryWithTitle:v7];
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
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

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(FCUIAddActivityFooterView *)self _setNeedsTextAttributesUpdate];
    addActivityControl = self->_addActivityControl;
    adjustsFontForContentSizeCategory = self->_adjustsFontForContentSizeCategory;

    [(_FCUIAddActivityControl *)addActivityControl setAdjustsFontForContentSizeCategory:adjustsFontForContentSizeCategory];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(FCUIAddActivityFooterView *)self adjustsFontForContentSizeCategory];
  if (v3)
  {
    [(FCUIAddActivityFooterView *)self _setNeedsTextAttributesUpdate];
    [(_FCUIAddActivityControl *)self->_addActivityControl adjustForContentSizeCategoryChange];
  }

  return v3;
}

- (void)_layoutSubviewsInBounds:(CGRect)a3 measuringOnly:(CGSize *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  [(_FCUIAddActivityControl *)self->_addActivityControl sizeThatFits:a3.size.width, a3.size.height];
  BSRectWithSize();
  v25 = 0;
  UIRectCenteredXInRectScale();
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  if (!a4)
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
  if (a4)
  {
    v28.origin.x = v12;
    v28.origin.y = v13;
    v28.size.width = v14;
    v28.size.height = v15;
    v29 = CGRectUnion(v28, *&v20);
    a4->width = v29.size.width;
    a4->height = v29.size.height;
  }

  else
  {
    titleLabel = self->_titleLabel;

    [(UILabel *)titleLabel setFrame:v16, v17, v18, v19, v16, v17, v18, v19];
  }
}

- (void)_configureAddActivityControlIfNecessaryWithAction:(id)a3
{
  if (!self->_addActivityControl)
  {
    v4 = a3;
    v5 = [[_FCUIAddActivityControl alloc] initWithAction:v4];

    addActivityControl = self->_addActivityControl;
    self->_addActivityControl = v5;

    v7 = self->_addActivityControl;

    [(FCUIAddActivityFooterView *)self addSubview:v7];
  }
}

+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:a4];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:a4];
  }
  v6 = ;
  v15 = *MEMORY[0x277D74380];
  v13 = *MEMORY[0x277D74430];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
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
  v3 = [(FCUIAddActivityFooterView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = v4;

  [(FCUIAddActivityFooterView *)self _updateTextAttributesForTitleLabel];
}

- (void)_updateTextAttributesIfNecessary
{
  if ([(FCUIAddActivityFooterView *)self _needsTextAttributesUpdate])
  {

    [(FCUIAddActivityFooterView *)self _updateTextAttributes];
  }
}

- (void)_configureActivityTitleLabelIfNecessaryWithTitle:(id)a3
{
  if (!self->_titleLabel)
  {
    v4 = MEMORY[0x277D756B8];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v6;

    [(UILabel *)self->_titleLabel setText:v5];
    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setLineBreakMode:4];
    v11 = [(UILabel *)self->_titleLabel layer];
    v8 = [MEMORY[0x277D75348] blackColor];
    [v11 setShadowColor:{objc_msgSend(v8, "CGColor")}];

    LODWORD(v9) = 1045220557;
    [v11 setShadowOpacity:v9];
    [v11 setShadowRadius:20.0];
    [v11 setShadowOffset:{0.0, 2.0}];
    [v11 setShadowPathIsBounds:1];
    [(FCUIAddActivityFooterView *)self addSubview:self->_titleLabel];
    [(FCUIAddActivityFooterView *)self _updateTextAttributesForTitleLabel];
    v10 = [(_FCUIAddActivityControl *)self->_addActivityControl visualStylingProviderForCategory:1];
    [v10 automaticallyUpdateView:self->_titleLabel withStyle:0];
  }
}

@end