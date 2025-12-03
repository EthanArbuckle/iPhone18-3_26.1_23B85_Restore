@interface WDMedicalRecordCategoryMinimizedSectionHeaderCell
+ (double)_pillBackgroundViewHeightConstraint;
- (HKGradient)gradient;
- (void)_traitCollectionDidChange:(id)change;
- (void)_updateForCurrentSizeCategory;
- (void)setGradient:(id)gradient;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordCategoryMinimizedSectionHeaderCell

- (void)setupSubviews
{
  v17.receiver = self;
  v17.super_class = WDMedicalRecordCategoryMinimizedSectionHeaderCell;
  [(WDMedicalRecordGroupableCell *)&v17 setupSubviews];
  v3 = objc_alloc_init(MEMORY[0x1E69A43A0]);
  [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self setBackgroundGradientView:v3];

  backgroundGradientView = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  [backgroundGradientView maskCorners:3 radius:10.0];

  backgroundGradientView2 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  [backgroundGradientView2 setClipsToBounds:1];

  backgroundGradientView3 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  [backgroundGradientView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self contentView];
  backgroundGradientView4 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  [contentView addSubview:backgroundGradientView4];

  backgroundGradientView5 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [backgroundGradientView5 hk_alignConstraintsWithView:pillBackgroundView];

  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  heightAnchor = [pillBackgroundView2 heightAnchor];
  [objc_opt_class() _pillBackgroundViewHeightConstraint];
  v13 = [heightAnchor constraintEqualToConstant:?];
  [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self setHeightConstraint:v13];

  heightConstraint = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self heightConstraint];
  LODWORD(v15) = 1144750080;
  [heightConstraint setPriority:v15];

  heightConstraint2 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self heightConstraint];
  [heightConstraint2 setActive:1];
}

- (void)setGradient:(id)gradient
{
  gradientCopy = gradient;
  backgroundGradientView = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  [backgroundGradientView setGradient:gradientCopy];
}

- (HKGradient)gradient
{
  backgroundGradientView = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  gradient = [backgroundGradientView gradient];

  return gradient;
}

+ (double)_pillBackgroundViewHeightConstraint
{
  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  [_titleLabelFont _scaledValueForValue:16.0];
  v4 = v3;

  return v4;
}

- (void)_updateForCurrentSizeCategory
{
  [objc_opt_class() _pillBackgroundViewHeightConstraint];
  v4 = v3;
  heightConstraint = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self heightConstraint];
  [heightConstraint setConstant:v4];

  [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self setNeedsDisplay];
}

- (void)_traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    v9 = changeCopy;
    traitCollection = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [v9 preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    changeCopy = v9;
    if ((v8 & 1) == 0)
    {
      [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self _updateForCurrentSizeCategory];
      changeCopy = v9;
    }
  }
}

@end