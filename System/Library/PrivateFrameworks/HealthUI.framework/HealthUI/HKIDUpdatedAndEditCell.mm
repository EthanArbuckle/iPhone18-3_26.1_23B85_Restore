@interface HKIDUpdatedAndEditCell
- (HKIDUpdatedAndEditCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HKIDUpdatedAndEditCellDelegate)delegate;
- (void)_editButtonTapped:(id)tapped;
- (void)_updateFont;
- (void)_updateForCurrentSizeCategory;
- (void)setDateSaved:(id)saved;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKIDUpdatedAndEditCell

- (HKIDUpdatedAndEditCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v87[2] = *MEMORY[0x1E69E9840];
  v84.receiver = self;
  v84.super_class = HKIDUpdatedAndEditCell;
  v4 = [(HKIDUpdatedAndEditCell *)&v84 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"updated_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    localizedUppercaseString = [v7 localizedUppercaseString];
    [(UILabel *)v5 setText:localizedUppercaseString];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5 setTextColor:secondaryLabelColor];

    v82 = v5;
    [(UILabel *)v5 setNumberOfLines:0];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v10 setTextColor:secondaryLabelColor2];

    v83 = v10;
    [(UILabel *)v10 setNumberOfLines:0];
    v12 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [(UIButton *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v12 addTarget:v4 action:sel__editButtonTapped_ forControlEvents:64];
    v13 = HKHealthKeyColor();
    [(UIButton *)v12 setTitleColor:v13 forState:0];

    secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIButton *)v12 setTitleColor:secondaryLabelColor3 forState:2];

    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:@"updated_edit_button_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(UIButton *)v12 setTitle:v16 forState:0];

    contentView = [(HKIDUpdatedAndEditCell *)v4 contentView];
    [contentView addSubview:v12];

    v18 = objc_alloc(MEMORY[0x1E69DCF90]);
    v87[0] = v5;
    v87[1] = v10;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    v20 = [v18 initWithArrangedSubviews:v19];

    [(UIStackView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v20 setAxis:1];
    [(UIStackView *)v20 setAlignment:1];
    [(UIStackView *)v20 setDistribution:0];
    contentView2 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    [contentView2 addSubview:v20];

    firstBaselineAnchor = [(UIButton *)v12 firstBaselineAnchor];
    contentView3 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    topAnchor = [contentView3 topAnchor];
    v25 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:0.0];
    editFirstBaseLineAnchorConstraint = v4->_editFirstBaseLineAnchorConstraint;
    v4->_editFirstBaseLineAnchorConstraint = v25;

    stackView = v4->_stackView;
    v4->_stackView = v20;
    v81 = v20;

    v86[0] = v4->_editFirstBaseLineAnchorConstraint;
    trailingAnchor = [(UIButton *)v12 trailingAnchor];
    contentView4 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v86[1] = v29;
    v30 = v12;
    v80 = v12;
    centerYAnchor = [(UIButton *)v12 centerYAnchor];
    contentView5 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    centerYAnchor2 = [contentView5 centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v86[2] = v34;
    centerYAnchor3 = [(UIStackView *)v81 centerYAnchor];
    centerYAnchor4 = [(UIButton *)v30 centerYAnchor];
    v37 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v86[3] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:4];
    regularLayoutConstraints = v4->_regularLayoutConstraints;
    v4->_regularLayoutConstraints = v38;

    contentView6 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    topAnchor2 = [contentView6 topAnchor];
    topAnchor3 = [(UIStackView *)v81 topAnchor];
    v74 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:-12.0];
    v85[0] = v74;
    contentView7 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    bottomAnchor = [contentView7 bottomAnchor];
    bottomAnchor2 = [(UIStackView *)v81 bottomAnchor];
    v70 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:12.0];
    v85[1] = v70;
    widthAnchor = [(UILabel *)v82 widthAnchor];
    widthAnchor2 = [(UIStackView *)v81 widthAnchor];
    [(HKIDUpdatedAndEditCell *)v4 separatorInset];
    v67 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-v40];
    v85[2] = v67;
    widthAnchor3 = [(UILabel *)v83 widthAnchor];
    widthAnchor4 = [(UIStackView *)v81 widthAnchor];
    [(HKIDUpdatedAndEditCell *)v4 separatorInset];
    v42 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 constant:-v41];
    v85[3] = v42;
    centerYAnchor5 = [(UIStackView *)v81 centerYAnchor];
    contentView8 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    centerYAnchor6 = [contentView8 centerYAnchor];
    v46 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v85[4] = v46;
    trailingAnchor3 = [(UIStackView *)v81 trailingAnchor];
    contentView9 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    trailingAnchor4 = [contentView9 trailingAnchor];
    v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v85[5] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:6];
    largeTextLayoutConstraints = v4->_largeTextLayoutConstraints;
    v4->_largeTextLayoutConstraints = v51;

    leadingAnchor = [(UIStackView *)v81 leadingAnchor];
    contentView10 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    leadingAnchor2 = [contentView10 leadingAnchor];
    [(HKIDUpdatedAndEditCell *)v4 separatorInset];
    v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v56];
    [v57 setActive:1];

    LODWORD(v58) = 1148846080;
    [(UIButton *)v80 setContentCompressionResistancePriority:0 forAxis:v58];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v82;
    v60 = v82;

    dateLabel = v4->_dateLabel;
    v4->_dateLabel = v83;
    v62 = v83;

    editButton = v4->_editButton;
    v4->_editButton = v80;

    [(HKIDUpdatedAndEditCell *)v4 _updateForCurrentSizeCategory];
  }

  return v4;
}

- (void)_updateFont
{
  v7 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD80] symbolicTraits:2];
  v3 = *MEMORY[0x1E69DDD08];
  v4 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD08] symbolicTraits:2];
  v5 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v3];
  [(UILabel *)self->_titleLabel setFont:v4];
  [(UILabel *)self->_dateLabel setFont:v5];
  titleLabel = [(UIButton *)self->_editButton titleLabel];
  [titleLabel setFont:v7];

  [v7 _scaledValueForValue:36.0];
  [(NSLayoutConstraint *)self->_editFirstBaseLineAnchorConstraint setConstant:?];
}

- (void)_updateForCurrentSizeCategory
{
  [(HKIDUpdatedAndEditCell *)self _updateFont];
  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  stackView = self->_stackView;
  editButton = self->_editButton;
  if (IsUsingAccessibilityContentSizeCategory)
  {
    [(UIStackView *)stackView addArrangedSubview:editButton];
    v6 = &OBJC_IVAR___HKIDUpdatedAndEditCell__largeTextLayoutConstraints;
    v7 = &OBJC_IVAR___HKIDUpdatedAndEditCell__regularLayoutConstraints;
  }

  else
  {
    [(UIStackView *)stackView removeArrangedSubview:editButton];
    contentView = [(HKIDUpdatedAndEditCell *)self contentView];
    [contentView addSubview:self->_editButton];

    v6 = &OBJC_IVAR___HKIDUpdatedAndEditCell__regularLayoutConstraints;
    v7 = &OBJC_IVAR___HKIDUpdatedAndEditCell__largeTextLayoutConstraints;
  }

  [MEMORY[0x1E696ACD8] deactivateConstraints:*(&self->super.super.super.super.isa + *v7)];
  v9 = MEMORY[0x1E696ACD8];
  v10 = *(&self->super.super.super.super.isa + *v6);

  [v9 activateConstraints:v10];
}

- (void)_editButtonTapped:(id)tapped
{
  delegate = [(HKIDUpdatedAndEditCell *)self delegate];
  [delegate updatedAndEditCellDidTapEditButton:self];
}

- (void)setDateSaved:(id)saved
{
  objc_storeStrong(&self->_dateSaved, saved);
  savedCopy = saved;
  v7 = HKLocalizedStringForDateAndTemplate(self->_dateSaved, 35);

  dateLabel = [(HKIDUpdatedAndEditCell *)self dateLabel];
  [dateLabel setText:v7];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKIDUpdatedAndEditCell;
  [(HKIDUpdatedAndEditCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKIDUpdatedAndEditCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKIDUpdatedAndEditCell *)self _updateForCurrentSizeCategory];
    }
  }
}

- (HKIDUpdatedAndEditCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end