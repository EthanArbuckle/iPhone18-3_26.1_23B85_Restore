@interface FCUIActivityBaubleView
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)a3;
- (FCUIActivityBaubleView)initWithBaubleDescription:(id)a3 shadowAttributes:(id *)a4;
- (double)_scaledValueForValue:(double)a3;
- (double)scaledValueForValue:(double)a3;
- (void)_setNeedsTextAttributesUpdate;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesIfNecessary;
- (void)layoutSubviews;
- (void)performWithoutAdditionalScaling:(id)a3;
- (void)setAdditionalScaleFactor:(double)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
@end

@implementation FCUIActivityBaubleView

- (FCUIActivityBaubleView)initWithBaubleDescription:(id)a3 shadowAttributes:(id *)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = FCUIActivityBaubleView;
  v7 = [(FCUIActivityBaubleView *)&v23 init];
  v8 = v7;
  if (v7)
  {
    v7->_additionalScaleFactor = 1.0;
    v7->_adjustsFontForContentSizeCategory = 1;
    [v6 referencePointSize];
    v8->_referencePointSize = v9;
    [v6 maximumPointSize];
    v8->_maximumPointSize = v10;
    [v6 referenceDimension];
    v8->_referenceDimension = v11;
    v12 = objc_alloc(MEMORY[0x277D755E8]);
    v13 = MEMORY[0x277D755B8];
    v14 = [v6 systemImageName];
    v15 = [v13 _systemImageNamed:v14];
    v16 = [v12 initWithImage:v15];
    glyphImageView = v8->_glyphImageView;
    v8->_glyphImageView = v16;

    [(UIImageView *)v8->_glyphImageView setContentMode:4];
    [(FCUIActivityBaubleView *)v8 addSubview:v8->_glyphImageView];
    v18 = [v6 tintColor];
    [(FCUIActivityBaubleView *)v8 setTintColor:v18];

    v19 = [MEMORY[0x277D75348] whiteColor];
    [(FCUIActivityBaubleView *)v8 setBackgroundColor:v19];

    v20 = [(FCUIActivityBaubleView *)v8 layer];
    [v20 setShadowPathIsBounds:1];
    *&v21 = a4->var0;
    [v20 setShadowOpacity:v21];
    [v20 setShadowOffset:{a4->var1.width, a4->var1.height}];
    [v20 setShadowRadius:a4->var2];
  }

  return v8;
}

- (void)setAdditionalScaleFactor:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_additionalScaleFactor = a3;

    [(FCUIActivityBaubleView *)self _setNeedsTextAttributesUpdate];
  }
}

- (void)performWithoutAdditionalScaling:(id)a3
{
  additionalScaleFactor = self->_additionalScaleFactor;
  self->_additionalScaleFactor = 1.0;
  (*(a3 + 2))(a3, a2);
  self->_additionalScaleFactor = additionalScaleFactor;
}

- (double)scaledValueForValue:(double)a3
{
  [(FCUIActivityBaubleView *)self _updateTextAttributesIfNecessary];
  [(FCUIActivityBaubleView *)self _scaledValueForValue:self->_referencePointSize];
  if (maximumPointSize > self->_maximumPointSize)
  {
    maximumPointSize = self->_maximumPointSize;
  }

  return maximumPointSize / self->_referencePointSize * a3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(FCUIActivityBaubleView *)self _updateTextAttributesIfNecessary:a3.width];
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
  v4 = [(UIImageView *)glyphImageView image];
  [v4 size];
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  [(UIImageView *)glyphImageView setFrame:0];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(FCUIActivityBaubleView *)self _setNeedsTextAttributesUpdate];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(FCUIActivityBaubleView *)self adjustsFontForContentSizeCategory];
  if (v3)
  {
    [(FCUIActivityBaubleView *)self _setNeedsTextAttributesUpdate];
  }

  return v3;
}

- (double)_scaledValueForValue:(double)a3
{
  if (![(FCUIActivityBaubleView *)self adjustsFontForContentSizeCategory])
  {
    return self->_additionalScaleFactor * a3;
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

  [(UIFont *)referenceFont _scaledValueForValue:a3];
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
  v3 = [(FCUIActivityBaubleView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = v4;

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