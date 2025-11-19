@interface HKOnboardingCompactDatePickerView
- (HKOnboardingCompactDatePickerView)initWithFrame:(CGRect)a3 initialText:(id)a4 defaultDate:(id)a5 maxYears:(int64_t)a6;
- (HKOnboardingCompactDatePickerViewDelegate)delegate;
- (id)axidForElementWithString:(id)a3;
- (void)_datePickerDidBeginEditing:(id)a3;
- (void)_datePickerValueChanged:(id)a3;
- (void)_setInitialLabelBGColor;
- (void)_setUpDatePicker:(id)a3 maxYears:(int64_t)a4;
- (void)_setUpInitialLabel:(id)a3;
- (void)_showDatePicker;
- (void)setBackgroundColor:(id)a3;
- (void)setInitialText:(id)a3 alignment:(int64_t)a4;
@end

@implementation HKOnboardingCompactDatePickerView

- (HKOnboardingCompactDatePickerView)initWithFrame:(CGRect)a3 initialText:(id)a4 defaultDate:(id)a5 maxYears:(int64_t)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = HKOnboardingCompactDatePickerView;
  v15 = [(HKOnboardingCompactDatePickerView *)&v18 initWithFrame:x, y, width, height];
  v16 = v15;
  if (v15)
  {
    [(HKOnboardingCompactDatePickerView *)v15 _setUpDatePicker:v14 maxYears:a6];
    if (v13)
    {
      [(HKOnboardingCompactDatePickerView *)v16 _setUpInitialLabel:v13];
      [(UIDatePicker *)v16->_datePicker setAccessibilityElementsHidden:1];
    }
  }

  return v16;
}

- (void)setInitialText:(id)a3 alignment:(int64_t)a4
{
  initialTextLabel = self->_initialTextLabel;
  if (initialTextLabel)
  {
    [(UILabel *)initialTextLabel setText:a3];
  }

  else
  {
    [(HKOnboardingCompactDatePickerView *)self _setUpInitialLabel:a3];
    [(UIDatePicker *)self->_datePicker setAccessibilityElementsHidden:1];
  }

  v7 = self->_initialTextLabel;

  [(UILabel *)v7 setTextAlignment:a4];
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
  v2 = self;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    do
    {
      v5 = v4;
      v7 = [v4 backgroundColor];
      v4 = [v4 superview];

      v6 = v7;
    }

    while (!v7 && v4);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
LABEL_9:
  v8 = v6;
  [(UILabel *)v3->_initialTextLabel setBackgroundColor:v6];
}

- (void)setBackgroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = HKOnboardingCompactDatePickerView;
  [(HKOnboardingCompactDatePickerView *)&v4 setBackgroundColor:a3];
  [(HKOnboardingCompactDatePickerView *)self _setInitialLabelBGColor];
}

- (void)_setUpInitialLabel:(id)a3
{
  v27[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCC10];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  initialTextLabel = self->_initialTextLabel;
  self->_initialTextLabel = v7;

  v9 = HKHealthKeyColor();
  [(UILabel *)self->_initialTextLabel setTextColor:v9];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_initialTextLabel setFont:v10];

  [(UILabel *)self->_initialTextLabel setAdjustsFontForContentSizeCategory:1];
  v11 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_initialTextLabel setTintColor:v11];

  [(UILabel *)self->_initialTextLabel setText:v5];
  v12 = [(HKOnboardingCompactDatePickerView *)self axidForElementWithString:@"PlaceholderLabel"];
  [(UILabel *)self->_initialTextLabel setAccessibilityIdentifier:v12];

  [(HKOnboardingCompactDatePickerView *)self _setInitialLabelBGColor];
  [(HKOnboardingCompactDatePickerView *)self addSubview:self->_initialTextLabel];
  [(UILabel *)self->_initialTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = MEMORY[0x1E696ACD8];
  v26 = [(UILabel *)self->_initialTextLabel leadingAnchor];
  v25 = [(HKOnboardingCompactDatePickerView *)self leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v27[0] = v24;
  v13 = [(UILabel *)self->_initialTextLabel trailingAnchor];
  v14 = [(HKOnboardingCompactDatePickerView *)self trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v27[1] = v15;
  v16 = [(UILabel *)self->_initialTextLabel topAnchor];
  v17 = [(HKOnboardingCompactDatePickerView *)self topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v27[2] = v18;
  v19 = [(UILabel *)self->_initialTextLabel bottomAnchor];
  v20 = [(HKOnboardingCompactDatePickerView *)self bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v27[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v23 activateConstraints:v22];
}

- (void)_setUpDatePicker:(id)a3 maxYears:(int64_t)a4
{
  v38[4] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DEE8];
  v7 = a3;
  v8 = [v6 hk_gregorianCalendarWithUTCTimeZone];
  v37 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
  v9 = [MEMORY[0x1E695DF00] date];
  v36 = [v37 hk_dateOfBirthDateComponentsWithDate:v9];

  [v8 dateFromComponents:v36];
  v33 = v35 = v8;
  v34 = [v8 dateByAddingUnit:4 value:-a4 toDate:v33 options:0];
  v10 = objc_alloc(MEMORY[0x1E69DC920]);
  v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  datePicker = self->_datePicker;
  self->_datePicker = v11;

  v13 = self->_datePicker;
  v14 = [v8 timeZone];
  [(UIDatePicker *)v13 setTimeZone:v14];

  [(UIDatePicker *)self->_datePicker setDatePickerMode:1];
  [(UIDatePicker *)self->_datePicker setPreferredDatePickerStyle:2];
  [(UIDatePicker *)self->_datePicker addTarget:self action:sel__datePickerValueChanged_ forControlEvents:4096];
  [(UIDatePicker *)self->_datePicker addTarget:self action:sel__datePickerDidBeginEditing_ forControlEvents:0x10000];
  [(UIDatePicker *)self->_datePicker setDate:v7];

  [(UIDatePicker *)self->_datePicker setMinimumDate:v34];
  [(UIDatePicker *)self->_datePicker setMaximumDate:v33];
  [(UIDatePicker *)self->_datePicker setContentHorizontalAlignment:4];
  v15 = [(HKOnboardingCompactDatePickerView *)self axidForElementWithString:@"DatePicker"];
  [(UIDatePicker *)self->_datePicker setAccessibilityIdentifier:v15];

  [(HKOnboardingCompactDatePickerView *)self addSubview:self->_datePicker];
  [(UIDatePicker *)self->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = MEMORY[0x1E696ACD8];
  v32 = [(UIDatePicker *)self->_datePicker leadingAnchor];
  v31 = [(HKOnboardingCompactDatePickerView *)self leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v38[0] = v30;
  v29 = [(UIDatePicker *)self->_datePicker trailingAnchor];
  v28 = [(HKOnboardingCompactDatePickerView *)self trailingAnchor];
  v16 = [v29 constraintLessThanOrEqualToAnchor:v28];
  v38[1] = v16;
  v17 = [(UIDatePicker *)self->_datePicker topAnchor];
  v18 = [(HKOnboardingCompactDatePickerView *)self topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v38[2] = v19;
  v20 = [(UIDatePicker *)self->_datePicker bottomAnchor];
  v21 = [(HKOnboardingCompactDatePickerView *)self bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v38[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v27 activateConstraints:v23];

  v24 = [(UIDatePicker *)self->_datePicker widthAnchor];
  v25 = [v24 constraintEqualToConstant:0.0];

  LODWORD(v26) = 1132068864;
  [v25 setPriority:v26];
  [v25 setActive:1];
}

- (void)_datePickerValueChanged:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v8 date];
    [v6 compactDatePickerView:self didChangeValue:v7];
  }
}

- (void)_datePickerDidBeginEditing:(id)a3
{
  v8 = a3;
  if (self->_initialTextLabel)
  {
    [(HKOnboardingCompactDatePickerView *)self _showDatePicker];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v8 date];
    [v6 compactDatePickerView:self didChangeValue:v7];
  }
}

- (id)axidForElementWithString:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BirthDate.%@", a3];
  v4 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:0 suffix:v3];

  return v4;
}

- (HKOnboardingCompactDatePickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end