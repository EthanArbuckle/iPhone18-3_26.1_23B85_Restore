@interface WDMedicalRecordCategorySectionHeaderCell
- (HKGradient)gradient;
- (NSString)title;
- (UIImage)image;
- (void)setGradient:(id)gradient;
- (void)setImage:(id)image;
- (void)setTitle:(id)title;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordCategorySectionHeaderCell

- (void)setupSubviews
{
  v13.receiver = self;
  v13.super_class = WDMedicalRecordCategorySectionHeaderCell;
  [(WDMedicalRecordGroupableCell *)&v13 setupSubviews];
  v3 = objc_alloc(MEMORY[0x1E69A4490]);
  defaultGradient = [MEMORY[0x1E69A4398] defaultGradient];
  v5 = [v3 initWithGradient:defaultGradient];
  [(WDMedicalRecordCategorySectionHeaderCell *)self setHeaderView:v5];

  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  headerView = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [headerView setTextColor:systemWhiteColor];

  headerView2 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [headerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(WDMedicalRecordCategorySectionHeaderCell *)self contentView];
  headerView3 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [contentView addSubview:headerView3];

  headerView4 = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [headerView4 hk_alignConstraintsWithView:pillBackgroundView];
}

- (void)setGradient:(id)gradient
{
  gradientCopy = gradient;
  headerView = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [headerView setGradient:gradientCopy];
}

- (HKGradient)gradient
{
  headerView = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  gradient = [headerView gradient];

  return gradient;
}

- (UIImage)image
{
  headerView = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  image = [headerView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  headerView = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [headerView setImage:imageCopy];
}

- (NSString)title
{
  headerView = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  text = [headerView text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  headerView = [(WDMedicalRecordCategorySectionHeaderCell *)self headerView];
  [headerView setText:titleCopy];
}

@end