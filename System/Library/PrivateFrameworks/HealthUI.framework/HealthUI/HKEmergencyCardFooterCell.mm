@interface HKEmergencyCardFooterCell
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HKEmergencyCardFooterCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateTextColor;
- (void)setFooterText:(id)text;
- (void)setTextViewDelegate:(id)delegate;
- (void)setupConstraints;
- (void)setupViews;
- (void)tintColorDidChange;
@end

@implementation HKEmergencyCardFooterCell

- (HKEmergencyCardFooterCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKEmergencyCardFooterCell;
  v4 = [(HKEmergencyCardFooterCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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

  footerTextView = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView setTranslatesAutoresizingMaskIntoConstraints:0];

  footerTextView2 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView2 setScrollEnabled:0];

  footerTextViewString = [(HKEmergencyCardFooterCell *)self footerTextViewString];
  footerTextView3 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView3 setAttributedText:footerTextViewString];

  footerTextView4 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView4 setUserInteractionEnabled:1];

  footerTextView5 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView5 setDelegate:self];

  footerTextView6 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView6 setEditable:0];

  footerTextView7 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView7 _setInteractiveTextSelectionDisabled:1];

  footerTextView8 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView8 setDataDetectorTypes:2];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  footerTextView9 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView9 setBackgroundColor:clearColor];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  footerTextView10 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView10 setTextColor:secondaryLabelColor];

  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  footerTextView11 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView11 setFont:v18];

  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  contentView = [(HKEmergencyCardFooterCell *)self contentView];
  [contentView setBackgroundColor:systemGroupedBackgroundColor];

  contentView2 = [(HKEmergencyCardFooterCell *)self contentView];
  footerTextView12 = [(HKEmergencyCardFooterCell *)self footerTextView];
  [contentView2 addSubview:footerTextView12];
}

- (void)setupConstraints
{
  footerTextView = [(HKEmergencyCardFooterCell *)self footerTextView];
  topAnchor = [footerTextView topAnchor];
  contentView = [(HKEmergencyCardFooterCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v7 setActive:1];

  footerTextView2 = [(HKEmergencyCardFooterCell *)self footerTextView];
  leftAnchor = [footerTextView2 leftAnchor];
  contentView2 = [(HKEmergencyCardFooterCell *)self contentView];
  leftAnchor2 = [contentView2 leftAnchor];
  v12 = [leftAnchor constraintEqualToSystemSpacingAfterAnchor:leftAnchor2 multiplier:2.0];
  [v12 setActive:1];

  contentView3 = [(HKEmergencyCardFooterCell *)self contentView];
  rightAnchor = [contentView3 rightAnchor];
  footerTextView3 = [(HKEmergencyCardFooterCell *)self footerTextView];
  rightAnchor2 = [footerTextView3 rightAnchor];
  v17 = [rightAnchor constraintEqualToSystemSpacingAfterAnchor:rightAnchor2 multiplier:1.0];
  [v17 setActive:1];

  contentView4 = [(HKEmergencyCardFooterCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  footerTextView4 = [(HKEmergencyCardFooterCell *)self footerTextView];
  bottomAnchor2 = [footerTextView4 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v21 setActive:1];
}

- (void)setFooterText:(id)text
{
  objc_storeStrong(&self->_footerTextViewString, text);
  textCopy = text;
  footerTextViewString = self->_footerTextViewString;
  footerTextView = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView setAttributedText:footerTextViewString];
}

- (void)setTextViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  footerTextView = [(HKEmergencyCardFooterCell *)self footerTextView];
  v5 = footerTextView;
  if (delegateCopy)
  {
    selfCopy = delegateCopy;
  }

  else
  {
    selfCopy = self;
  }

  [footerTextView setDelegate:selfCopy];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v6 = MEMORY[0x1E6963608];
  lCopy = l;
  defaultWorkspace = [v6 defaultWorkspace];
  [defaultWorkspace openSensitiveURL:lCopy withOptions:0];

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
  footerTextViewString = [(HKEmergencyCardFooterCell *)self footerTextViewString];
  footerTextView = [(HKEmergencyCardFooterCell *)self footerTextView];
  [footerTextView setAttributedText:footerTextViewString];
}

@end