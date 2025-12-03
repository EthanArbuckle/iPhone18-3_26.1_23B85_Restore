@interface HXUIInlineDatePickerTableViewCell
- (HXUIInlineDatePickerTableViewCell)initWithTitle:(id)title datePickerMode:(int64_t)mode maxDate:(id)date;
- (void)setupConstraints;
@end

@implementation HXUIInlineDatePickerTableViewCell

- (HXUIInlineDatePickerTableViewCell)initWithTitle:(id)title datePickerMode:(int64_t)mode maxDate:(id)date
{
  v29[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  dateCopy = date;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v28.receiver = self;
  v28.super_class = HXUIInlineDatePickerTableViewCell;
  v12 = [(HXUIInlineDatePickerTableViewCell *)&v28 initWithStyle:0 reuseIdentifier:uUIDString];
  if (v12)
  {
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(HXUIInlineDatePickerTableViewCell *)v12 setBackgroundColor:secondarySystemGroupedBackgroundColor];

    [(HXUIInlineDatePickerTableViewCell *)v12 setSelectionStyle:0];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v14;

    [(UILabel *)v12->_titleLabel setText:titleCopy];
    v16 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v12->_titleLabel setFont:v16];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v12->_titleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v12->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v12->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HXUIInlineDatePickerTableViewCell *)v12 contentView];
    [contentView addSubview:v12->_titleLabel];

    v19 = objc_alloc_init(MEMORY[0x1E69DC920]);
    picker = v12->_picker;
    v12->_picker = v19;

    [(UIDatePicker *)v12->_picker setPreferredDatePickerStyle:2];
    [(UIDatePicker *)v12->_picker setDatePickerMode:mode];
    [(UIDatePicker *)v12->_picker setMaximumDate:dateCopy];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    timeZone = [currentCalendar timeZone];
    [(UIDatePicker *)v12->_picker setTimeZone:timeZone];

    [(UIDatePicker *)v12->_picker setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(HXUIInlineDatePickerTableViewCell *)v12 contentView];
    [contentView2 addSubview:v12->_picker];

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
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  contentView = [(HXUIInlineDatePickerTableViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v24[0] = v20;
  centerYAnchor = [(UILabel *)self->_titleLabel centerYAnchor];
  contentView2 = [(HXUIInlineDatePickerTableViewCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v24[1] = v16;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  leadingAnchor3 = [(UIDatePicker *)self->_picker leadingAnchor];
  v3 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor3 constant:-16.0];
  v24[2] = v3;
  trailingAnchor2 = [(UIDatePicker *)self->_picker trailingAnchor];
  contentView3 = [(HXUIInlineDatePickerTableViewCell *)self contentView];
  trailingAnchor3 = [contentView3 trailingAnchor];
  v7 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
  v24[3] = v7;
  centerYAnchor3 = [(UIDatePicker *)self->_picker centerYAnchor];
  contentView4 = [(HXUIInlineDatePickerTableViewCell *)self contentView];
  centerYAnchor4 = [contentView4 centerYAnchor];
  v11 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v24[4] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
  [v15 activateConstraints:v12];
}

@end