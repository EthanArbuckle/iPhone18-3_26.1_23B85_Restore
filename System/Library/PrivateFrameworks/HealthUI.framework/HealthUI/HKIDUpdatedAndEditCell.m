@interface HKIDUpdatedAndEditCell
- (HKIDUpdatedAndEditCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HKIDUpdatedAndEditCellDelegate)delegate;
- (void)_editButtonTapped:(id)a3;
- (void)_updateFont;
- (void)_updateForCurrentSizeCategory;
- (void)setDateSaved:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKIDUpdatedAndEditCell

- (HKIDUpdatedAndEditCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v87[2] = *MEMORY[0x1E69E9840];
  v84.receiver = self;
  v84.super_class = HKIDUpdatedAndEditCell;
  v4 = [(HKIDUpdatedAndEditCell *)&v84 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"updated_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v8 = [v7 localizedUppercaseString];
    [(UILabel *)v5 setText:v8];

    v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5 setTextColor:v9];

    v82 = v5;
    [(UILabel *)v5 setNumberOfLines:0];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v10 setTextColor:v11];

    v83 = v10;
    [(UILabel *)v10 setNumberOfLines:0];
    v12 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [(UIButton *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v12 addTarget:v4 action:sel__editButtonTapped_ forControlEvents:64];
    v13 = HKHealthKeyColor();
    [(UIButton *)v12 setTitleColor:v13 forState:0];

    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIButton *)v12 setTitleColor:v14 forState:2];

    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:@"updated_edit_button_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(UIButton *)v12 setTitle:v16 forState:0];

    v17 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    [v17 addSubview:v12];

    v18 = objc_alloc(MEMORY[0x1E69DCF90]);
    v87[0] = v5;
    v87[1] = v10;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    v20 = [v18 initWithArrangedSubviews:v19];

    [(UIStackView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v20 setAxis:1];
    [(UIStackView *)v20 setAlignment:1];
    [(UIStackView *)v20 setDistribution:0];
    v21 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    [v21 addSubview:v20];

    v22 = [(UIButton *)v12 firstBaselineAnchor];
    v23 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    v24 = [v23 topAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:0.0];
    editFirstBaseLineAnchorConstraint = v4->_editFirstBaseLineAnchorConstraint;
    v4->_editFirstBaseLineAnchorConstraint = v25;

    stackView = v4->_stackView;
    v4->_stackView = v20;
    v81 = v20;

    v86[0] = v4->_editFirstBaseLineAnchorConstraint;
    v76 = [(UIButton *)v12 trailingAnchor];
    v78 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    v28 = [v78 trailingAnchor];
    v29 = [v76 constraintEqualToAnchor:v28 constant:-16.0];
    v86[1] = v29;
    v30 = v12;
    v80 = v12;
    v31 = [(UIButton *)v12 centerYAnchor];
    v32 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    v33 = [v32 centerYAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    v86[2] = v34;
    v35 = [(UIStackView *)v81 centerYAnchor];
    v36 = [(UIButton *)v30 centerYAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v86[3] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:4];
    regularLayoutConstraints = v4->_regularLayoutConstraints;
    v4->_regularLayoutConstraints = v38;

    v79 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    v77 = [v79 topAnchor];
    v75 = [(UIStackView *)v81 topAnchor];
    v74 = [v77 constraintEqualToAnchor:v75 constant:-12.0];
    v85[0] = v74;
    v73 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    v72 = [v73 bottomAnchor];
    v71 = [(UIStackView *)v81 bottomAnchor];
    v70 = [v72 constraintEqualToAnchor:v71 constant:12.0];
    v85[1] = v70;
    v69 = [(UILabel *)v82 widthAnchor];
    v68 = [(UIStackView *)v81 widthAnchor];
    [(HKIDUpdatedAndEditCell *)v4 separatorInset];
    v67 = [v69 constraintEqualToAnchor:v68 constant:-v40];
    v85[2] = v67;
    v66 = [(UILabel *)v83 widthAnchor];
    v65 = [(UIStackView *)v81 widthAnchor];
    [(HKIDUpdatedAndEditCell *)v4 separatorInset];
    v42 = [v66 constraintEqualToAnchor:v65 constant:-v41];
    v85[3] = v42;
    v43 = [(UIStackView *)v81 centerYAnchor];
    v44 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    v45 = [v44 centerYAnchor];
    v46 = [v43 constraintEqualToAnchor:v45];
    v85[4] = v46;
    v47 = [(UIStackView *)v81 trailingAnchor];
    v48 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    v49 = [v48 trailingAnchor];
    v50 = [v47 constraintEqualToAnchor:v49];
    v85[5] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:6];
    largeTextLayoutConstraints = v4->_largeTextLayoutConstraints;
    v4->_largeTextLayoutConstraints = v51;

    v53 = [(UIStackView *)v81 leadingAnchor];
    v54 = [(HKIDUpdatedAndEditCell *)v4 contentView];
    v55 = [v54 leadingAnchor];
    [(HKIDUpdatedAndEditCell *)v4 separatorInset];
    v57 = [v53 constraintEqualToAnchor:v55 constant:v56];
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
  v6 = [(UIButton *)self->_editButton titleLabel];
  [v6 setFont:v7];

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
    v8 = [(HKIDUpdatedAndEditCell *)self contentView];
    [v8 addSubview:self->_editButton];

    v6 = &OBJC_IVAR___HKIDUpdatedAndEditCell__regularLayoutConstraints;
    v7 = &OBJC_IVAR___HKIDUpdatedAndEditCell__largeTextLayoutConstraints;
  }

  [MEMORY[0x1E696ACD8] deactivateConstraints:*(&self->super.super.super.super.isa + *v7)];
  v9 = MEMORY[0x1E696ACD8];
  v10 = *(&self->super.super.super.super.isa + *v6);

  [v9 activateConstraints:v10];
}

- (void)_editButtonTapped:(id)a3
{
  v4 = [(HKIDUpdatedAndEditCell *)self delegate];
  [v4 updatedAndEditCellDidTapEditButton:self];
}

- (void)setDateSaved:(id)a3
{
  objc_storeStrong(&self->_dateSaved, a3);
  v5 = a3;
  v7 = HKLocalizedStringForDateAndTemplate(self->_dateSaved, 35);

  v6 = [(HKIDUpdatedAndEditCell *)self dateLabel];
  [v6 setText:v7];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKIDUpdatedAndEditCell;
  [(HKIDUpdatedAndEditCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKIDUpdatedAndEditCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

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