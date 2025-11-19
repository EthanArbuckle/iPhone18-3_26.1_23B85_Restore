@interface WDMedicalRecordCategoryMinimizedSectionHeaderCell
+ (double)_pillBackgroundViewHeightConstraint;
- (HKGradient)gradient;
- (void)_traitCollectionDidChange:(id)a3;
- (void)_updateForCurrentSizeCategory;
- (void)setGradient:(id)a3;
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

  v4 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  [v4 maskCorners:3 radius:10.0];

  v5 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  [v5 setClipsToBounds:1];

  v6 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self contentView];
  v8 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  [v7 addSubview:v8];

  v9 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  v10 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [v9 hk_alignConstraintsWithView:v10];

  v11 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v12 = [v11 heightAnchor];
  [objc_opt_class() _pillBackgroundViewHeightConstraint];
  v13 = [v12 constraintEqualToConstant:?];
  [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self setHeightConstraint:v13];

  v14 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self heightConstraint];
  LODWORD(v15) = 1144750080;
  [v14 setPriority:v15];

  v16 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self heightConstraint];
  [v16 setActive:1];
}

- (void)setGradient:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  [v5 setGradient:v4];
}

- (HKGradient)gradient
{
  v2 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self backgroundGradientView];
  v3 = [v2 gradient];

  return v3;
}

+ (double)_pillBackgroundViewHeightConstraint
{
  v2 = [objc_opt_class() _titleLabelFont];
  [v2 _scaledValueForValue:16.0];
  v4 = v3;

  return v4;
}

- (void)_updateForCurrentSizeCategory
{
  [objc_opt_class() _pillBackgroundViewHeightConstraint];
  v4 = v3;
  v5 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self heightConstraint];
  [v5 setConstant:v4];

  [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self setNeedsDisplay];
}

- (void)_traitCollectionDidChange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v9 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    v4 = v9;
    if ((v8 & 1) == 0)
    {
      [(WDMedicalRecordCategoryMinimizedSectionHeaderCell *)self _updateForCurrentSizeCategory];
      v4 = v9;
    }
  }
}

@end