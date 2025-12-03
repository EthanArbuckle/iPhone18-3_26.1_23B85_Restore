@interface _FCUIFocusSelectionHeaderFooterView
+ (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight additionalTraits:(unsigned int)traits;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_FCUIFocusSelectionHeaderFooterView)initWithText:(id)text;
- (id)_labelFont;
- (void)_configureLabel:(id)label;
- (void)_configureLabelIfNecessary;
- (void)_setNeedsTextAttributesUpdate;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForLabel:(id)label;
- (void)_updateTextAttributesIfNecessary;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
@end

@implementation _FCUIFocusSelectionHeaderFooterView

- (_FCUIFocusSelectionHeaderFooterView)initWithText:(id)text
{
  textCopy = text;
  v10.receiver = self;
  v10.super_class = _FCUIFocusSelectionHeaderFooterView;
  v5 = [(_FCUIFocusSelectionHeaderFooterView *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(_FCUIFocusSelectionHeaderFooterView *)v5 setAdjustsFontForContentSizeCategory:1];
    [(_FCUIFocusSelectionHeaderFooterView *)v6 _configureLabelIfNecessary];
    v7 = [(_FCUIFocusSelectionHeaderFooterView *)v6 _attributedTextForText:textCopy];
    label = v6->_label;
    if (v7)
    {
      [(UILabel *)label setAttributedText:v7];
    }

    else
    {
      [(UILabel *)label setText:textCopy];
    }
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v6 = *MEMORY[0x277CBF3A8];
  BSRectWithSize();
  [(_FCUIFocusSelectionHeaderFooterView *)self _layoutSubviewsInBounds:&v6 measuringOnly:?];
  v5 = *(&v6 + 1);
  v4 = *&v6;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _FCUIFocusSelectionHeaderFooterView;
  [(_FCUIFocusSelectionHeaderFooterView *)&v3 layoutSubviews];
  [(_FCUIFocusSelectionHeaderFooterView *)self _updateTextAttributesIfNecessary];
  [(_FCUIFocusSelectionHeaderFooterView *)self bounds];
  [(_FCUIFocusSelectionHeaderFooterView *)self _layoutSubviewsInBounds:0 measuringOnly:?];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    [(_FCUIFocusSelectionHeaderFooterView *)self _setNeedsTextAttributesUpdate];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  traitCollection = [(_FCUIFocusSelectionHeaderFooterView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, self->_preferredContentSizeCategory);

  if (v5)
  {
    [(_FCUIFocusSelectionHeaderFooterView *)self _setNeedsTextAttributesUpdate];
  }

  return v5 != NSOrderedSame;
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

- (id)_labelFont
{
  v2 = objc_opt_class();
  v3 = *MEMORY[0x277D769D0];
  v4 = *MEMORY[0x277D74418];

  return [v2 _preferredFont:1 textStyle:v3 weight:0 additionalTraits:v4];
}

- (void)_updateTextAttributesForLabel:(id)label
{
  if (label)
  {
    labelCopy = label;
    _labelFont = [(_FCUIFocusSelectionHeaderFooterView *)self _labelFont];
    [labelCopy setFont:_labelFont];

    [(_FCUIFocusSelectionHeaderFooterView *)self setNeedsLayout];
  }
}

- (void)_setNeedsTextAttributesUpdate
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = 0;

  [(_FCUIFocusSelectionHeaderFooterView *)self setNeedsLayout];
}

- (void)_updateTextAttributes
{
  traitCollection = [(_FCUIFocusSelectionHeaderFooterView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = preferredContentSizeCategory;

  label = self->_label;

  [(_FCUIFocusSelectionHeaderFooterView *)self _updateTextAttributesForLabel:label];
}

- (void)_updateTextAttributesIfNecessary
{
  if ([(_FCUIFocusSelectionHeaderFooterView *)self _needsTextAttributesUpdate])
  {

    [(_FCUIFocusSelectionHeaderFooterView *)self _updateTextAttributes];
  }
}

- (void)_configureLabel:(id)label
{
  if (label)
  {
    [(UILabel *)self->_label setNumberOfLines:0];
    [(UILabel *)self->_label setTextAlignment:1];
    label = self->_label;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)label setTextColor:secondaryLabelColor];
  }
}

- (void)_configureLabelIfNecessary
{
  if (!self->_label)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = self->_label;
    self->_label = v3;

    [(_FCUIFocusSelectionHeaderFooterView *)self _configureLabel:self->_label];
    [(_FCUIFocusSelectionHeaderFooterView *)self addSubview:self->_label];
    v5 = self->_label;

    [(_FCUIFocusSelectionHeaderFooterView *)self _updateTextAttributesForLabel:v5];
  }
}

@end