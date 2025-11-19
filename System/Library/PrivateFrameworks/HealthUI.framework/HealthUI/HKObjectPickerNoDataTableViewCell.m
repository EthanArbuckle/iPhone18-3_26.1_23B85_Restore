@interface HKObjectPickerNoDataTableViewCell
- (HKObjectPickerNoDataTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupSubviews;
- (void)prepareForReuse;
- (void)setShowLearnMoreButton:(BOOL)a3;
@end

@implementation HKObjectPickerNoDataTableViewCell

- (HKObjectPickerNoDataTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = HKObjectPickerNoDataTableViewCell;
  v4 = [(HKObjectPickerNoDataTableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKObjectPickerNoDataTableViewCell *)v4 _setupSubviews];
    v6 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(HKObjectPickerNoDataTableViewCell *)v5 setBackgroundColor:v6];

    [(HKObjectPickerNoDataTableViewCell *)v5 setShowLearnMoreButton:1];
  }

  return v5;
}

- (void)_setupSubviews
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(HKObjectPickerNoDataTableViewCell *)self setBackgroundColor:v3];

  [(HKObjectPickerNoDataTableViewCell *)self _setContinuousCornerRadius:10.0];
  [(HKObjectPickerNoDataTableViewCell *)self setSelectionStyle:0];
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  label = self->_label;
  self->_label = v9;

  [(UILabel *)self->_label setAdjustsFontForContentSizeCategory:1];
  v11 = *MEMORY[0x1E69DDD80];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UILabel *)self->_label setFont:v12];

  [(UILabel *)self->_label setNumberOfLines:0];
  v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_label setTextColor:v13];

  [(UILabel *)self->_label setTextAlignment:0];
  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_alloc(MEMORY[0x1E69DC738]) initWithFrame:{v5, v6, v7, v8}];
  learnMoreButton = self->_learnMoreButton;
  self->_learnMoreButton = v14;

  v16 = self->_learnMoreButton;
  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v18 = [v17 localizedStringForKey:@"LEARN_MORE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(UIButton *)v16 setTitle:v18 forState:0];

  v19 = self->_learnMoreButton;
  v20 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UIButton *)v19 setTitleColor:v20 forState:0];

  v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
  v22 = [(UIButton *)self->_learnMoreButton titleLabel];
  [v22 setFont:v21];

  [(UIButton *)self->_learnMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = objc_alloc(MEMORY[0x1E69DCF90]);
  v24 = self->_learnMoreButton;
  v33[0] = self->_label;
  v33[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v26 = [v23 initWithArrangedSubviews:v25];
  stackView = self->_stackView;
  self->_stackView = v26;

  [(UIStackView *)self->_stackView setAlignment:1];
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setDistribution:0];
  [(UIStackView *)self->_stackView setSpacing:4.0];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [(HKObjectPickerNoDataTableViewCell *)self contentView];
  [v28 addSubview:self->_stackView];

  v29 = self->_stackView;
  v30 = [(HKObjectPickerNoDataTableViewCell *)self contentView];
  [(UIStackView *)v29 hk_alignVerticalConstraintsWithView:v30 margin:16.0];

  v31 = self->_stackView;
  v32 = [(HKObjectPickerNoDataTableViewCell *)self contentView];
  [(UIStackView *)v31 hk_alignHorizontalConstraintsWithView:v32 margin:16.0];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HKObjectPickerNoDataTableViewCell;
  [(HKObjectPickerNoDataTableViewCell *)&v3 prepareForReuse];
  [(UILabel *)self->_label setText:0];
}

- (void)setShowLearnMoreButton:(BOOL)a3
{
  if (self->_showLearnMoreButton != a3)
  {
    if (a3)
    {
      [(UIStackView *)self->_stackView addArrangedSubview:self->_learnMoreButton];
    }

    else
    {
      [(UIButton *)self->_learnMoreButton removeFromSuperview];
    }

    self->_showLearnMoreButton = a3;
  }
}

@end