@interface HKEmergencyCardFooterCell
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HKEmergencyCardFooterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateTextColor;
- (void)setFooterText:(id)a3;
- (void)setTextViewDelegate:(id)a3;
- (void)setupConstraints;
- (void)setupViews;
- (void)tintColorDidChange;
@end

@implementation HKEmergencyCardFooterCell

- (HKEmergencyCardFooterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKEmergencyCardFooterCell;
  v4 = [(HKEmergencyCardFooterCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKEmergencyCardFooterCell *)v4 setupViews];
    [(HKEmergencyCardFooterCell *)v5 setupConstraints];
  }

  return v5;
}

- (void)setupViews
{
  v3 = objc_alloc(MEMORY[0x1E69DD168]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKEmergencyCardFooterCell *)self setFooterTextView:v4];

  v5 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v6 setScrollEnabled:0];

  v7 = [(HKEmergencyCardFooterCell *)self footerTextViewString];
  v8 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v8 setAttributedText:v7];

  v9 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v9 setUserInteractionEnabled:1];

  v10 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v10 setDelegate:self];

  v11 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v11 setEditable:0];

  v12 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v12 _setInteractiveTextSelectionDisabled:1];

  v13 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v13 setDataDetectorTypes:2];

  v14 = [MEMORY[0x1E69DC888] clearColor];
  v15 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v15 setBackgroundColor:v14];

  v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v17 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v17 setTextColor:v16];

  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v19 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v19 setFont:v18];

  v20 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  v21 = [(HKEmergencyCardFooterCell *)self contentView];
  [v21 setBackgroundColor:v20];

  v23 = [(HKEmergencyCardFooterCell *)self contentView];
  v22 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v23 addSubview:v22];
}

- (void)setupConstraints
{
  v3 = [(HKEmergencyCardFooterCell *)self footerTextView];
  v4 = [v3 topAnchor];
  v5 = [(HKEmergencyCardFooterCell *)self contentView];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [(HKEmergencyCardFooterCell *)self footerTextView];
  v9 = [v8 leftAnchor];
  v10 = [(HKEmergencyCardFooterCell *)self contentView];
  v11 = [v10 leftAnchor];
  v12 = [v9 constraintEqualToSystemSpacingAfterAnchor:v11 multiplier:2.0];
  [v12 setActive:1];

  v13 = [(HKEmergencyCardFooterCell *)self contentView];
  v14 = [v13 rightAnchor];
  v15 = [(HKEmergencyCardFooterCell *)self footerTextView];
  v16 = [v15 rightAnchor];
  v17 = [v14 constraintEqualToSystemSpacingAfterAnchor:v16 multiplier:1.0];
  [v17 setActive:1];

  v22 = [(HKEmergencyCardFooterCell *)self contentView];
  v18 = [v22 bottomAnchor];
  v19 = [(HKEmergencyCardFooterCell *)self footerTextView];
  v20 = [v19 bottomAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];
}

- (void)setFooterText:(id)a3
{
  objc_storeStrong(&self->_footerTextViewString, a3);
  v5 = a3;
  footerTextViewString = self->_footerTextViewString;
  v7 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v7 setAttributedText:footerTextViewString];
}

- (void)setTextViewDelegate:(id)a3
{
  v7 = a3;
  v4 = [(HKEmergencyCardFooterCell *)self footerTextView];
  v5 = v4;
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = self;
  }

  [v4 setDelegate:v6];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v6 = MEMORY[0x1E6963608];
  v7 = a4;
  v8 = [v6 defaultWorkspace];
  [v8 openSensitiveURL:v7 withOptions:0];

  return 1;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HKEmergencyCardFooterCell;
  [(HKEmergencyCardFooterCell *)&v3 tintColorDidChange];
  [(HKEmergencyCardFooterCell *)self _updateTextColor];
}

- (void)_updateTextColor
{
  v4 = [(HKEmergencyCardFooterCell *)self footerTextViewString];
  v3 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [v3 setAttributedText:v4];
}

@end