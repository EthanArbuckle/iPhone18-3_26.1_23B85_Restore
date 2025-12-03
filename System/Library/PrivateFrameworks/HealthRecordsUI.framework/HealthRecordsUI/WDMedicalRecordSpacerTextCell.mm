@interface WDMedicalRecordSpacerTextCell
+ (id)defaultReuseIdentifier;
- (WDMedicalRecordSpacerTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupSubviews;
- (void)setTitle:(id)title;
- (void)setUseTallTopPadding:(BOOL)padding;
@end

@implementation WDMedicalRecordSpacerTextCell

- (WDMedicalRecordSpacerTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDMedicalRecordSpacerTextCell;
  v4 = [(WDMedicalRecordSpacerTextCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(WDMedicalRecordSpacerTextCell *)v4 setBackgroundColor:clearColor];

    [(WDMedicalRecordSpacerTextCell *)v4 _setupSubviews];
  }

  return v4;
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordSpacerTextCell *)self setTitleLabel:v3];

  titleLabel = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] variant:1024];
  titleLabel2 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  [titleLabel2 setFont:v5];

  contentView = [(WDMedicalRecordSpacerTextCell *)self contentView];
  titleLabel3 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  [contentView addSubview:titleLabel3];

  titleLabel4 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  leadingAnchor = [titleLabel4 leadingAnchor];
  contentView2 = [(WDMedicalRecordSpacerTextCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:18.0];
  [v13 setActive:1];

  titleLabel5 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  trailingAnchor = [titleLabel5 trailingAnchor];
  contentView3 = [(WDMedicalRecordSpacerTextCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-18.0];
  [v18 setActive:1];

  titleLabel6 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  bottomAnchor = [titleLabel6 bottomAnchor];
  contentView4 = [(WDMedicalRecordSpacerTextCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-9.0];
  [v23 setActive:1];

  titleLabel7 = [(WDMedicalRecordSpacerTextCell *)self titleLabel];
  topAnchor = [titleLabel7 topAnchor];
  contentView5 = [(WDMedicalRecordSpacerTextCell *)self contentView];
  topAnchor2 = [contentView5 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  [(WDMedicalRecordSpacerTextCell *)self setTopConstraint:v28];

  topConstraint = [(WDMedicalRecordSpacerTextCell *)self topConstraint];
  [topConstraint setActive:1];

  self->_useTallTopPadding = 0;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, title);
    localizedUppercaseString = [(NSString *)self->_title localizedUppercaseString];
    [(UILabel *)self->_titleLabel setText:localizedUppercaseString];
  }
}

- (void)setUseTallTopPadding:(BOOL)padding
{
  if (self->_useTallTopPadding != padding)
  {
    self->_useTallTopPadding = padding;
    if (padding)
    {
      v4 = 26.0;
    }

    else
    {
      v4 = 20.0;
    }

    topConstraint = [(WDMedicalRecordSpacerTextCell *)self topConstraint];
    [topConstraint setConstant:v4];
  }
}

+ (id)defaultReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end