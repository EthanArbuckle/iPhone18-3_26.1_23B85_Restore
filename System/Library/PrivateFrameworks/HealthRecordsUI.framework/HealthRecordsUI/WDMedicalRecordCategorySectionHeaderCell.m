@interface WDMedicalRecordCategorySectionHeaderCell
- (HKGradient)gradient;
- (NSString)title;
- (UIImage)image;
- (void)setGradient:(id)a3;
- (void)setImage:(id)a3;
- (void)setTitle:(id)a3;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordCategorySectionHeaderCell

- (void)setupSubviews
{
  v13.receiver = self;
  v13.super_class = WDMedicalRecordCategorySectionHeaderCell;
  [(WDMedicalRecordGroupableCell *)&v13 setupSubviews];
  v3 = objc_alloc(MEMORY[0x1E69A4490]);
  v4 = [MEMORY[0x1E69A4398] defaultGradient];
  v5 = [v3 initWithGradient:v4];
  [(WDMedicalRecordCategorySectionHeaderCell *)self setHeaderView:v5];

  v6 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v7 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [v7 setTextColor:v6];

  v8 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(WDMedicalRecordCategorySectionHeaderCell *)self contentView];
  v10 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [v9 addSubview:v10];

  v11 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  v12 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [v11 hk_alignConstraintsWithView:v12];
}

- (void)setGradient:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [v5 setGradient:v4];
}

- (HKGradient)gradient
{
  v2 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  v3 = [v2 gradient];

  return v3;
}

- (UIImage)image
{
  v2 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [v5 setImage:v4];
}

- (NSString)title
{
  v2 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [v5 setText:v4];
}

@end