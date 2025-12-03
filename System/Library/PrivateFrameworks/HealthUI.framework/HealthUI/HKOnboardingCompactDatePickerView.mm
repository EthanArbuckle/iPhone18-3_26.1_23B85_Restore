@interface HKOnboardingCompactDatePickerView
- (HKOnboardingCompactDatePickerView)initWithFrame:(CGRect)frame initialText:(id)text defaultDate:(id)date maxYears:(int64_t)years;
- (HKOnboardingCompactDatePickerViewDelegate)delegate;
- (id)axidForElementWithString:(id)string;
- (void)_datePickerDidBeginEditing:(id)editing;
- (void)_datePickerValueChanged:(id)changed;
- (void)_setInitialLabelBGColor;
- (void)_setUpDatePicker:(id)picker maxYears:(int64_t)years;
- (void)_setUpInitialLabel:(id)label;
- (void)_showDatePicker;
- (void)setBackgroundColor:(id)color;
- (void)setInitialText:(id)text alignment:(int64_t)alignment;
@end

@implementation HKOnboardingCompactDatePickerView

- (HKOnboardingCompactDatePickerView)initWithFrame:(CGRect)frame initialText:(id)text defaultDate:(id)date maxYears:(int64_t)years
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  textCopy = text;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = HKOnboardingCompactDatePickerView;
  height = [(HKOnboardingCompactDatePickerView *)&v18 initWithFrame:x, y, width, height];
  v16 = height;
  if (height)
  {
    [(HKOnboardingCompactDatePickerView *)height _setUpDatePicker:dateCopy maxYears:years];
    if (textCopy)
    {
      [(HKOnboardingCompactDatePickerView *)v16 _setUpInitialLabel:textCopy];
      [(UIDatePicker *)v16->_datePicker setAccessibilityElementsHidden:1];
    }
  }

  return v16;
}

- (void)setInitialText:(id)text alignment:(int64_t)alignment
{
  initialTextLabel = self->_initialTextLabel;
  if (initialTextLabel)
  {
    [(UILabel *)initialTextLabel setText:text];
  }

  else
  {
    [(HKOnboardingCompactDatePickerView *)self _setUpInitialLabel:text];
    [(UIDatePicker *)self->_datePicker setAccessibilityElementsHidden:1];
  }

  v7 = self->_initialTextLabel;

  [(UILabel *)v7 setTextAlignment:alignment];
}

- (void)_showDatePicker
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__HKOnboardingCompactDatePickerView__showDatePicker__block_invoke;
  v5[3] = &unk_1E81B5738;
  objc_copyWeak(&v6, &location);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__HKOnboardingCompactDatePickerView__showDatePicker__block_invoke_2;
  v3[3] = &unk_1E81B6368;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v5 animations:v3 completion:0.3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __52__HKOnboardingCompactDatePickerView__showDatePicker__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained datePicker];
  [v3 setAccessibilityElementsHidden:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 initialTextLabel];
  [v4 setAlpha:0.0];
}

void __52__HKOnboardingCompactDatePickerView__showDatePicker__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained initialTextLabel];
  [v3 removeFromSuperview];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setInitialTextLabel:0];
}

- (void)_setInitialLabelBGColor
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    superview = selfCopy;
    do
    {
      v5 = superview;
      backgroundColor = [superview backgroundColor];
      superview = [superview superview];

      systemBackgroundColor = backgroundColor;
    }

    while (!backgroundColor && superview);
    if (backgroundColor)
    {
      goto LABEL_9;
    }
  }

  else
  {
    superview = 0;
  }

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
LABEL_9:
  v8 = systemBackgroundColor;
  [(UILabel *)v3->_initialTextLabel setBackgroundColor:systemBackgroundColor];
}

- (void)setBackgroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = HKOnboardingCompactDatePickerView;
  [(HKOnboardingCompactDatePickerView *)&v4 setBackgroundColor:color];
  [(HKOnboardingCompactDatePickerView *)self _setInitialLabelBGColor];
}

- (void)_setUpInitialLabel:(id)label
{
  v27[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCC10];
  labelCopy = label;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  initialTextLabel = self->_initialTextLabel;
  self->_initialTextLabel = v7;

  v9 = HKHealthKeyColor();
  [(UILabel *)self->_initialTextLabel setTextColor:v9];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_initialTextLabel setFont:v10];

  [(UILabel *)self->_initialTextLabel setAdjustsFontForContentSizeCategory:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_initialTextLabel setTintColor:clearColor];

  [(UILabel *)self->_initialTextLabel setText:labelCopy];
  v12 = [(HKOnboardingCompactDatePickerView *)self axidForElementWithString:@"PlaceholderLabel"];
  [(UILabel *)self->_initialTextLabel setAccessibilityIdentifier:v12];

  [(HKOnboardingCompactDatePickerView *)self _setInitialLabelBGColor];
  [(HKOnboardingCompactDatePickerView *)self addSubview:self->_initialTextLabel];
  [(UILabel *)self->_initialTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UILabel *)self->_initialTextLabel leadingAnchor];
  leadingAnchor2 = [(HKOnboardingCompactDatePickerView *)self leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[0] = v24;
  trailingAnchor = [(UILabel *)self->_initialTextLabel trailingAnchor];
  trailingAnchor2 = [(HKOnboardingCompactDatePickerView *)self trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[1] = v15;
  topAnchor = [(UILabel *)self->_initialTextLabel topAnchor];
  topAnchor2 = [(HKOnboardingCompactDatePickerView *)self topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[2] = v18;
  bottomAnchor = [(UILabel *)self->_initialTextLabel bottomAnchor];
  bottomAnchor2 = [(HKOnboardingCompactDatePickerView *)self bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v23 activateConstraints:v22];
}

- (void)_setUpDatePicker:(id)picker maxYears:(int64_t)years
{
  v38[4] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DEE8];
  pickerCopy = picker;
  hk_gregorianCalendarWithUTCTimeZone = [v6 hk_gregorianCalendarWithUTCTimeZone];
  hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
  date = [MEMORY[0x1E695DF00] date];
  v36 = [hk_gregorianCalendarWithLocalTimeZone hk_dateOfBirthDateComponentsWithDate:date];

  [hk_gregorianCalendarWithUTCTimeZone dateFromComponents:v36];
  v33 = v35 = hk_gregorianCalendarWithUTCTimeZone;
  v34 = [hk_gregorianCalendarWithUTCTimeZone dateByAddingUnit:4 value:-years toDate:v33 options:0];
  v10 = objc_alloc(MEMORY[0x1E69DC920]);
  v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  datePicker = self->_datePicker;
  self->_datePicker = v11;

  v13 = self->_datePicker;
  timeZone = [hk_gregorianCalendarWithUTCTimeZone timeZone];
  [(UIDatePicker *)v13 setTimeZone:timeZone];

  [(UIDatePicker *)self->_datePicker setDatePickerMode:1];
  [(UIDatePicker *)self->_datePicker setPreferredDatePickerStyle:2];
  [(UIDatePicker *)self->_datePicker addTarget:self action:sel__datePickerValueChanged_ forControlEvents:4096];
  [(UIDatePicker *)self->_datePicker addTarget:self action:sel__datePickerDidBeginEditing_ forControlEvents:0x10000];
  [(UIDatePicker *)self->_datePicker setDate:pickerCopy];

  [(UIDatePicker *)self->_datePicker setMinimumDate:v34];
  [(UIDatePicker *)self->_datePicker setMaximumDate:v33];
  [(UIDatePicker *)self->_datePicker setContentHorizontalAlignment:4];
  v15 = [(HKOnboardingCompactDatePickerView *)self axidForElementWithString:@"DatePicker"];
  [(UIDatePicker *)self->_datePicker setAccessibilityIdentifier:v15];

  [(HKOnboardingCompactDatePickerView *)self addSubview:self->_datePicker];
  [(UIDatePicker *)self->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIDatePicker *)self->_datePicker leadingAnchor];
  leadingAnchor2 = [(HKOnboardingCompactDatePickerView *)self leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v30;
  trailingAnchor = [(UIDatePicker *)self->_datePicker trailingAnchor];
  trailingAnchor2 = [(HKOnboardingCompactDatePickerView *)self trailingAnchor];
  v16 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v38[1] = v16;
  topAnchor = [(UIDatePicker *)self->_datePicker topAnchor];
  topAnchor2 = [(HKOnboardingCompactDatePickerView *)self topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[2] = v19;
  bottomAnchor = [(UIDatePicker *)self->_datePicker bottomAnchor];
  bottomAnchor2 = [(HKOnboardingCompactDatePickerView *)self bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v27 activateConstraints:v23];

  widthAnchor = [(UIDatePicker *)self->_datePicker widthAnchor];
  v25 = [widthAnchor constraintEqualToConstant:0.0];

  LODWORD(v26) = 1132068864;
  [v25 setPriority:v26];
  [v25 setActive:1];
}

- (void)_datePickerValueChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    date = [changedCopy date];
    [v6 compactDatePickerView:self didChangeValue:date];
  }
}

- (void)_datePickerDidBeginEditing:(id)editing
{
  editingCopy = editing;
  if (self->_initialTextLabel)
  {
    [(HKOnboardingCompactDatePickerView *)self _showDatePicker];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    date = [editingCopy date];
    [v6 compactDatePickerView:self didChangeValue:date];
  }
}

- (id)axidForElementWithString:(id)string
{
  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"BirthDate.%@", string];
  v4 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:0 suffix:string];

  return v4;
}

- (HKOnboardingCompactDatePickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end