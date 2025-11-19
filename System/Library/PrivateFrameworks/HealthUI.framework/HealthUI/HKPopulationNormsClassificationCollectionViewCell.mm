@interface HKPopulationNormsClassificationCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (HKPopulationNormsClassificationCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_setupFonts;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSoftHighlightState:(BOOL)a3;
- (void)setTitle:(id)a3 classificationIdentifier:(id)a4 highlighted:(BOOL)a5;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKPopulationNormsClassificationCollectionViewCell

- (HKPopulationNormsClassificationCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = HKPopulationNormsClassificationCollectionViewCell;
  v3 = [(HKPopulationNormsClassificationCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setTitle:(id)a3 classificationIdentifier:(id)a4 highlighted:(BOOL)a5
{
  v5 = a5;
  v13[4] = *MEMORY[0x1E69E9840];
  v8 = a4;
  self->_isHighlighted = v5;
  v9 = a3;
  [(HKPopulationNormsClassificationCollectionViewCell *)self setSoftHighlightState:v5];
  if (v5)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] hk_populationChartTextColor];
  }
  v10 = ;
  [(UILabel *)self->_classificationLabel setTextColor:v10];

  [(UILabel *)self->_classificationLabel setText:v9];
  [(UILabel *)self->_classificationLabel setTextAlignment:1];
  if (v8)
  {
    v13[0] = @"Cell";
    v13[1] = @"PopulationNorms";
    v13[2] = @"Classification";
    v13[3] = v8;
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

- (void)setSoftHighlightState:(BOOL)a3
{
  if (self->_isHighlighted || a3)
  {
    v4 = [(HKPopulationNormsClassificationCollectionViewCell *)self highlightColor];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] hk_populationChartLevelBackgroundColor];
  }

  v5 = v4;
  [(HKPopulationNormsClassificationCollectionViewCell *)self setBackgroundColor:v4];
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
  v5 = [(HKPopulationNormsClassificationCollectionViewCell *)self layer];
  [v5 setCornerRadius:v4];

  v6 = [(HKPopulationNormsClassificationCollectionViewCell *)self layer];
  [v6 setMasksToBounds:1];

  [(HKPopulationNormsClassificationCollectionViewCell *)self bounds];
  v10 = CGRectInset(v9, 12.0, 6.0);
  [(UILabel *)self->_classificationLabel setFrame:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = a3.width + -24.0;
  if (v3 < 90.0)
  {
    v3 = 90.0;
  }

  [(UILabel *)self->_classificationLabel sizeThatFits:v3, a3.height];
  v6 = fmax(v4 + 24.0, 90.0);
  v7 = fmax(v5 + 12.0, 28.0);
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKPopulationNormsClassificationCollectionViewCell;
  [(HKPopulationNormsClassificationCollectionViewCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKPopulationNormsClassificationCollectionViewCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

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