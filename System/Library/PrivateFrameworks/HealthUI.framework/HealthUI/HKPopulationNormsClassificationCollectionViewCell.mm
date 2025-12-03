@interface HKPopulationNormsClassificationCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (HKPopulationNormsClassificationCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_setupFonts;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSoftHighlightState:(BOOL)state;
- (void)setTitle:(id)title classificationIdentifier:(id)identifier highlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKPopulationNormsClassificationCollectionViewCell

- (HKPopulationNormsClassificationCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = HKPopulationNormsClassificationCollectionViewCell;
  v3 = [(HKPopulationNormsClassificationCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    classificationLabel = v3->_classificationLabel;
    v3->_classificationLabel = v4;

    [(HKPopulationNormsClassificationCollectionViewCell *)v3 addSubview:v3->_classificationLabel];
    [(HKPopulationNormsClassificationCollectionViewCell *)v3 _setupFonts];
  }

  return v3;
}

- (void)setTitle:(id)title classificationIdentifier:(id)identifier highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v13[4] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  self->_isHighlighted = highlightedCopy;
  titleCopy = title;
  [(HKPopulationNormsClassificationCollectionViewCell *)self setSoftHighlightState:highlightedCopy];
  if (highlightedCopy)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] hk_populationChartTextColor];
  }
  v10 = ;
  [(UILabel *)self->_classificationLabel setTextColor:v10];

  [(UILabel *)self->_classificationLabel setText:titleCopy];
  [(UILabel *)self->_classificationLabel setTextAlignment:1];
  if (identifierCopy)
  {
    v13[0] = @"Cell";
    v13[1] = @"PopulationNorms";
    v13[2] = @"Classification";
    v13[3] = identifierCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
    v12 = HKUIJoinStringsForAutomationIdentifier(v11);
    [(HKPopulationNormsClassificationCollectionViewCell *)self setAccessibilityIdentifier:v12];
  }

  else
  {
    [(HKPopulationNormsClassificationCollectionViewCell *)self setAccessibilityIdentifier:0];
  }

  [(UILabel *)self->_classificationLabel sizeToFit];
}

- (void)setSoftHighlightState:(BOOL)state
{
  if (self->_isHighlighted || state)
  {
    highlightColor = [(HKPopulationNormsClassificationCollectionViewCell *)self highlightColor];
  }

  else
  {
    highlightColor = [MEMORY[0x1E69DC888] hk_populationChartLevelBackgroundColor];
  }

  v5 = highlightColor;
  [(HKPopulationNormsClassificationCollectionViewCell *)self setBackgroundColor:highlightColor];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HKPopulationNormsClassificationCollectionViewCell;
  [(HKPopulationNormsClassificationCollectionViewCell *)&v3 prepareForReuse];
  [(HKPopulationNormsClassificationCollectionViewCell *)self setTitle:&stru_1F42FFBE0 classificationIdentifier:0 highlighted:0];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = HKPopulationNormsClassificationCollectionViewCell;
  [(HKPopulationNormsClassificationCollectionViewCell *)&v7 layoutSubviews];
  [(HKPopulationNormsClassificationCollectionViewCell *)self frame];
  Height = CGRectGetHeight(v8);
  v4 = HKUIFloorToScreenScale(Height * 0.5);
  layer = [(HKPopulationNormsClassificationCollectionViewCell *)self layer];
  [layer setCornerRadius:v4];

  layer2 = [(HKPopulationNormsClassificationCollectionViewCell *)self layer];
  [layer2 setMasksToBounds:1];

  [(HKPopulationNormsClassificationCollectionViewCell *)self bounds];
  v10 = CGRectInset(v9, 12.0, 6.0);
  [(UILabel *)self->_classificationLabel setFrame:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = fits.width + -24.0;
  if (v3 < 90.0)
  {
    v3 = 90.0;
  }

  [(UILabel *)self->_classificationLabel sizeThatFits:v3, fits.height];
  v6 = fmax(v4 + 24.0, 90.0);
  v7 = fmax(v5 + 12.0, 28.0);
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKPopulationNormsClassificationCollectionViewCell;
  [(HKPopulationNormsClassificationCollectionViewCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKPopulationNormsClassificationCollectionViewCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKPopulationNormsClassificationCollectionViewCell *)self _setupFonts];
    }
  }
}

- (void)_setupFonts
{
  v3 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD28] symbolicTraits:32770 maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  [(UILabel *)self->_classificationLabel setFont:v3];
}

@end