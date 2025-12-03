@interface FCUIActivityBaubleView
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)fits;
- (FCUIActivityBaubleView)initWithBaubleDescription:(id)description shadowAttributes:(id *)attributes;
- (double)_scaledValueForValue:(double)value;
- (double)scaledValueForValue:(double)value;
- (void)_setNeedsTextAttributesUpdate;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesIfNecessary;
- (void)layoutSubviews;
- (void)performWithoutAdditionalScaling:(id)scaling;
- (void)setAdditionalScaleFactor:(double)factor;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
@end

@implementation FCUIActivityBaubleView

- (FCUIActivityBaubleView)initWithBaubleDescription:(id)description shadowAttributes:(id *)attributes
{
  descriptionCopy = description;
  v23.receiver = self;
  v23.super_class = FCUIActivityBaubleView;
  v7 = [(FCUIActivityBaubleView *)&v23 init];
  v8 = v7;
  if (v7)
  {
    v7->_additionalScaleFactor = 1.0;
    v7->_adjustsFontForContentSizeCategory = 1;
    [descriptionCopy referencePointSize];
    v8->_referencePointSize = v9;
    [descriptionCopy maximumPointSize];
    v8->_maximumPointSize = v10;
    [descriptionCopy referenceDimension];
    v8->_referenceDimension = v11;
    v12 = objc_alloc(MEMORY[0x277D755E8]);
    v13 = MEMORY[0x277D755B8];
    systemImageName = [descriptionCopy systemImageName];
    v15 = [v13 _systemImageNamed:systemImageName];
    v16 = [v12 initWithImage:v15];
    glyphImageView = v8->_glyphImageView;
    v8->_glyphImageView = v16;

    [(UIImageView *)v8->_glyphImageView setContentMode:4];
    [(FCUIActivityBaubleView *)v8 addSubview:v8->_glyphImageView];
    tintColor = [descriptionCopy tintColor];
    [(FCUIActivityBaubleView *)v8 setTintColor:tintColor];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(FCUIActivityBaubleView *)v8 setBackgroundColor:whiteColor];

    layer = [(FCUIActivityBaubleView *)v8 layer];
    [layer setShadowPathIsBounds:1];
    *&v21 = attributes->var0;
    [layer setShadowOpacity:v21];
    [layer setShadowOffset:{attributes->var1.width, attributes->var1.height}];
    [layer setShadowRadius:attributes->var2];
  }

  return v8;
}

- (void)setAdditionalScaleFactor:(double)factor
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_additionalScaleFactor = factor;

    [(FCUIActivityBaubleView *)self _setNeedsTextAttributesUpdate];
  }
}

- (void)performWithoutAdditionalScaling:(id)scaling
{
  additionalScaleFactor = self->_additionalScaleFactor;
  self->_additionalScaleFactor = 1.0;
  (*(scaling + 2))(scaling, a2);
  self->_additionalScaleFactor = additionalScaleFactor;
}

- (double)scaledValueForValue:(double)value
{
  [(FCUIActivityBaubleView *)self _updateTextAttributesIfNecessary];
  [(FCUIActivityBaubleView *)self _scaledValueForValue:self->_referencePointSize];
  if (maximumPointSize > self->_maximumPointSize)
  {
    maximumPointSize = self->_maximumPointSize;
  }

  return maximumPointSize / self->_referencePointSize * value;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(FCUIActivityBaubleView *)self _updateTextAttributesIfNecessary:fits.width];
  [(FCUIActivityBaubleView *)self scaledValueForValue:self->_referenceDimension];

  UISizeRoundToScale();
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = FCUIActivityBaubleView;
  [(FCUIActivityBaubleView *)&v5 layoutSubviews];
  [(FCUIActivityBaubleView *)self _updateTextAttributesIfNecessary];
  [(FCUIActivityBaubleView *)self bounds];
  [(FCUIActivityBaubleView *)self _setCornerRadius:CGRectGetHeight(v6) * 0.5];
  glyphImageView = self->_glyphImageView;
  image = [(UIImageView *)glyphImageView image];
  [image size];
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  [(UIImageView *)glyphImageView setFrame:0];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    [(FCUIActivityBaubleView *)self _setNeedsTextAttributesUpdate];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  adjustsFontForContentSizeCategory = [(FCUIActivityBaubleView *)self adjustsFontForContentSizeCategory];
  if (adjustsFontForContentSizeCategory)
  {
    [(FCUIActivityBaubleView *)self _setNeedsTextAttributesUpdate];
  }

  return adjustsFontForContentSizeCategory;
}

- (double)_scaledValueForValue:(double)value
{
  if (![(FCUIActivityBaubleView *)self adjustsFontForContentSizeCategory])
  {
    return self->_additionalScaleFactor * value;
  }

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
  return v11 * self->_additionalScaleFactor;
}

- (void)_setNeedsTextAttributesUpdate
{
  referenceFont = self->_referenceFont;
  self->_referenceFont = 0;

  [(FCUIActivityBaubleView *)self setNeedsLayout];
}

- (void)_updateTextAttributes
{
  traitCollection = [(FCUIActivityBaubleView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = preferredContentSizeCategory;

  glyphImageView = self->_glyphImageView;
  v7 = MEMORY[0x277D755D0];
  [(FCUIActivityBaubleView *)self _scaledValueForValue:self->_referencePointSize];
  if (maximumPointSize > self->_maximumPointSize)
  {
    maximumPointSize = self->_maximumPointSize;
  }

  v9 = [v7 configurationWithPointSize:maximumPointSize];
  [(UIImageView *)glyphImageView setPreferredSymbolConfiguration:v9];
}

- (void)_updateTextAttributesIfNecessary
{
  if ([(FCUIActivityBaubleView *)self _needsTextAttributesUpdate])
  {

    [(FCUIActivityBaubleView *)self _updateTextAttributes];
  }
}

@end