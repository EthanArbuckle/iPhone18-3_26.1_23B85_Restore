@interface WDMedicalRecordConnectedBrandCell
- (WDMedicalRecordConnectedBrandCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordConnectedBrandCell

- (WDMedicalRecordConnectedBrandCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = WDMedicalRecordConnectedBrandCell;
  v4 = [(WDMedicalRecordBrandLogoCell *)&v6 initWithStyle:a3 reuseIdentifier:a4];
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
  v3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [v3 setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
}

@end