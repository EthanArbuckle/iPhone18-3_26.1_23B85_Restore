@interface HXUIInlineDatePickerTableViewCell
- (HXUIInlineDatePickerTableViewCell)initWithTitle:(id)a3 datePickerMode:(int64_t)a4 maxDate:(id)a5;
- (void)setupConstraints;
@end

@implementation HXUIInlineDatePickerTableViewCell

- (HXUIInlineDatePickerTableViewCell)initWithTitle:(id)a3 datePickerMode:(int64_t)a4 maxDate:(id)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];

  v28.receiver = self;
  v28.super_class = HXUIInlineDatePickerTableViewCell;
  v12 = [(HXUIInlineDatePickerTableViewCell *)&v28 initWithStyle:0 reuseIdentifier:v11];
  if (v12)
  {
    v13 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(HXUIInlineDatePickerTableViewCell *)v12 setBackgroundColor:v13];

    [(HXUIInlineDatePickerTableViewCell *)v12 setSelectionStyle:0];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v14;

    [(UILabel *)v12->_titleLabel setText:v8];
    v16 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v12->_titleLabel setFont:v16];

    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v12->_titleLabel setTextColor:v17];

    [(UILabel *)v12->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v12->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(HXUIInlineDatePickerTableViewCell *)v12 contentView];
    [v18 addSubview:v12->_titleLabel];

    v19 = objc_alloc_init(MEMORY[0x1E69DC920]);
    picker = v12->_picker;
    v12->_picker = v19;

    [(UIDatePicker *)v12->_picker setPreferredDatePickerStyle:2];
    [(UIDatePicker *)v12->_picker setDatePickerMode:a4];
    [(UIDatePicker *)v12->_picker setMaximumDate:v9];
    v21 = [MEMORY[0x1E695DEE8] currentCalendar];
    v22 = [v21 timeZone];
    [(UIDatePicker *)v12->_picker setTimeZone:v22];

    [(UIDatePicker *)v12->_picker setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(HXUIInlineDatePickerTableViewCell *)v12 contentView];
    [v23 addSubview:v12->_picker];

    [(HXUIInlineDatePickerTableViewCell *)v12 setupConstraints];
    v24 = objc_opt_self();
    v29[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v26 = [(HXUIInlineDatePickerTableViewCell *)v12 registerForTraitChanges:v25 withHandler:&__block_literal_global_5];
  }

  return v12;
}

- (void)setupConstraints
{
  v24[5] = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1E696ACD8];
  v22 = [(UILabel *)self->_titleLabel leadingAnchor];
  v23 = [(HXUIInlineDatePickerTableViewCell *)self contentView];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21 constant:16.0];
  v24[0] = v20;
  v18 = [(UILabel *)self->_titleLabel centerYAnchor];
  v19 = [(HXUIInlineDatePickerTableViewCell *)self contentView];
  v17 = [v19 centerYAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v24[1] = v16;
  v14 = [(UILabel *)self->_titleLabel trailingAnchor];
  v13 = [(UIDatePicker *)self->_picker leadingAnchor];
  v3 = [v14 constraintLessThanOrEqualToAnchor:v13 constant:-16.0];
  v24[2] = v3;
  v4 = [(UIDatePicker *)self->_picker trailingAnchor];
  v5 = [(HXUIInlineDatePickerTableViewCell *)self contentView];
  v6 = [v5 trailingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:-16.0];
  v24[3] = v7;
  v8 = [(UIDatePicker *)self->_picker centerYAnchor];
  v9 = [(HXUIInlineDatePickerTableViewCell *)self contentView];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v24[4] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
  [v15 activateConstraints:v12];
}

@end