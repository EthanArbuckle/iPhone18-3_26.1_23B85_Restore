@interface WDMedicalRecordBrandCell
- (UILabel)brandDetailLabel;
- (UILabel)brandSubtitleLabel;
- (UILabel)brandTitleLabel;
- (void)_updateForContentSizeCategory:(id)a3;
- (void)_updateLabelVisibility;
- (void)setBrandable:(id)a3 dataProvider:(id)a4;
@end

@implementation WDMedicalRecordBrandCell

- (UILabel)brandTitleLabel
{
  v2 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  v3 = [v2 brandTitleLabel];

  return v3;
}

- (UILabel)brandSubtitleLabel
{
  v2 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  v3 = [v2 brandSubtitleLabel];

  return v3;
}

- (UILabel)brandDetailLabel
{
  v2 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  v3 = [v2 brandDetailLabel];

  return v3;
}

- (void)_updateForContentSizeCategory:(id)a3
{
  v6.receiver = self;
  v6.super_class = WDMedicalRecordBrandCell;
  v4 = a3;
  [(WDMedicalRecordGroupableCell *)&v6 _updateForContentSizeCategory:v4];
  v5 = [(WDMedicalRecordBrandLogoCell *)self brandView:v6.receiver];
  [v5 _updateForContentSizeCategory:v4];
}

- (void)_updateLabelVisibility
{
  v3 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [v3 _updateLabelVisibility];

  [(WDMedicalRecordBrandCell *)self setNeedsUpdateConstraints];
}

- (void)setBrandable:(id)a3 dataProvider:(id)a4
{
  v5.receiver = self;
  v5.super_class = WDMedicalRecordBrandCell;
  [(WDMedicalRecordBrandLogoCell *)&v5 setBrandable:a3 dataProvider:a4];
  [(WDMedicalRecordBrandCell *)self _updateLabelVisibility];
}

@end