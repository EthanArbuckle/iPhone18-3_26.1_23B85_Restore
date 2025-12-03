@interface WDMedicalRecordConnectedBrandCell
- (WDMedicalRecordConnectedBrandCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordConnectedBrandCell

- (WDMedicalRecordConnectedBrandCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = WDMedicalRecordConnectedBrandCell;
  v4 = [(WDMedicalRecordBrandLogoCell *)&v6 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    [MEMORY[0x1E69DCAE0] smallLogoViewDimension];
    [(WDMedicalRecordBrandLogoCell *)v4 setLogoSize:?];
  }

  return v4;
}

- (void)setupSubviews
{
  v4.receiver = self;
  v4.super_class = WDMedicalRecordConnectedBrandCell;
  [(WDMedicalRecordBrandLogoCell *)&v4 setupSubviews];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [pillBackgroundView setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
}

@end