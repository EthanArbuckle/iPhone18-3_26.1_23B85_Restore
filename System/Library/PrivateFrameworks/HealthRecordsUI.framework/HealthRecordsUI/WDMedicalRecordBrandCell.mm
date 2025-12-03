@interface WDMedicalRecordBrandCell
- (UILabel)brandDetailLabel;
- (UILabel)brandSubtitleLabel;
- (UILabel)brandTitleLabel;
- (void)_updateForContentSizeCategory:(id)category;
- (void)_updateLabelVisibility;
- (void)setBrandable:(id)brandable dataProvider:(id)provider;
@end

@implementation WDMedicalRecordBrandCell

- (UILabel)brandTitleLabel
{
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  brandTitleLabel = [brandView brandTitleLabel];

  return brandTitleLabel;
}

- (UILabel)brandSubtitleLabel
{
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  brandSubtitleLabel = [brandView brandSubtitleLabel];

  return brandSubtitleLabel;
}

- (UILabel)brandDetailLabel
{
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  brandDetailLabel = [brandView brandDetailLabel];

  return brandDetailLabel;
}

- (void)_updateForContentSizeCategory:(id)category
{
  v6.receiver = self;
  v6.super_class = WDMedicalRecordBrandCell;
  categoryCopy = category;
  [(WDMedicalRecordGroupableCell *)&v6 _updateForContentSizeCategory:categoryCopy];
  v5 = [(WDMedicalRecordBrandLogoCell *)self brandView:v6.receiver];
  [v5 _updateForContentSizeCategory:categoryCopy];
}

- (void)_updateLabelVisibility
{
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [brandView _updateLabelVisibility];

  [(WDMedicalRecordBrandCell *)self setNeedsUpdateConstraints];
}

- (void)setBrandable:(id)brandable dataProvider:(id)provider
{
  v5.receiver = self;
  v5.super_class = WDMedicalRecordBrandCell;
  [(WDMedicalRecordBrandLogoCell *)&v5 setBrandable:brandable dataProvider:provider];
  [(WDMedicalRecordBrandCell *)self _updateLabelVisibility];
}

@end