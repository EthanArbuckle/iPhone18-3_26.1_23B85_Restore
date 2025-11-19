@interface WDMedicalRecordSpacerTextCell
+ (id)defaultReuseIdentifier;
- (WDMedicalRecordSpacerTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupSubviews;
- (void)setTitle:(id)a3;
- (void)setUseTallTopPadding:(BOOL)a3;
@end

@implementation WDMedicalRecordSpacerTextCell

- (WDMedicalRecordSpacerTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = WDMedicalRecordSpacerTextCell;
  v4 = [(WDMedicalRecordSpacerTextCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(WDMedicalRecordSpacerTextCell *)v4 setBackgroundColor:v5];

    [(WDMedicalRecordSpacerTextCell *)v4 _setupSubviews];
  }

  return v4;
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordSpacerTextCell *)self setTitleLabel:v3];

  v4 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] variant:1024];
  v6 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  [v6 setFont:v5];

  v7 = [(WDMedicalRecordSpacerTextCell *)self contentView];
  v8 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  [v7 addSubview:v8];

  v9 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  v10 = [v9 leadingAnchor];
  v11 = [(WDMedicalRecordSpacerTextCell *)self contentView];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:18.0];
  [v13 setActive:1];

  v14 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  v15 = [v14 trailingAnchor];
  v16 = [(WDMedicalRecordSpacerTextCell *)self contentView];
  v17 = [v16 trailingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:-18.0];
  [v18 setActive:1];

  v19 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  v20 = [v19 bottomAnchor];
  v21 = [(WDMedicalRecordSpacerTextCell *)self contentView];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:-9.0];
  [v23 setActive:1];

  v24 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  v25 = [v24 topAnchor];
  v26 = [(WDMedicalRecordSpacerTextCell *)self contentView];
  v27 = [v26 topAnchor];
  v28 = [v25 constraintEqualToAnchor:v27 constant:20.0];
  [(WDMedicalRecordSpacerTextCell *)self setTopConstraint:v28];

  v29 = [(WDMedicalRecordSpacerTextCell *)self topConstraint];
  [v29 setActive:1];

  self->_useTallTopPadding = 0;
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, a3);
    v5 = [(NSString *)self->_title localizedUppercaseString];
    [(UILabel *)self->_titleLabel setText:v5];
  }
}

- (void)setUseTallTopPadding:(BOOL)a3
{
  if (self->_useTallTopPadding != a3)
  {
    self->_useTallTopPadding = a3;
    if (a3)
    {
      v4 = 26.0;
    }

    else
    {
      v4 = 20.0;
    }

    v5 = [(WDMedicalRecordSpacerTextCell *)self topConstraint];
    [v5 setConstant:v4];
  }
}

+ (id)defaultReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end