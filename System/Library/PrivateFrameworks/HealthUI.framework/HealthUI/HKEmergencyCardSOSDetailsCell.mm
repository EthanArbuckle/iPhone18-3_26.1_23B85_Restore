@interface HKEmergencyCardSOSDetailsCell
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HKEmergencyCardSOSDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateText;
- (void)setFooterAttributedText:(id)text;
- (void)tintColorDidChange;
@end

@implementation HKEmergencyCardSOSDetailsCell

- (HKEmergencyCardSOSDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKEmergencyCardSOSDetailsCell;
  v4 = [(HKEmergencyCardSOSDetailsCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKEmergencyCardSOSDetailsCell *)v4 _setupViews];
    [(HKEmergencyCardSOSDetailsCell *)v5 _setupConstraints];
  }

  return v5;
}

- (void)setFooterAttributedText:(id)text
{
  v4 = MEMORY[0x1E696AAB0];
  textCopy = text;
  v6 = [[v4 alloc] initWithAttributedString:textCopy];

  footerAttributedText = self->_footerAttributedText;
  self->_footerAttributedText = v6;

  [(HKEmergencyCardSOSDetailsCell *)self _updateText];
}

- (void)_setupViews
{
  v3 = objc_alloc(MEMORY[0x1E69DD168]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKEmergencyCardSOSDetailsCell *)self setFooterTextView:v4];

  footerTextView = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  textContainer = [footerTextView textContainer];
  [textContainer lineFragmentPadding];
  v8 = v7;

  footerTextView2 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  [footerTextView2 setTextContainerInset:{0.0, -v8, 0.0, -v8}];

  footerTextView3 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  [footerTextView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  footerTextView4 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  [footerTextView4 setScrollEnabled:0];

  footerTextView5 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  [footerTextView5 setUserInteractionEnabled:1];

  footerTextView6 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  [footerTextView6 setDelegate:self];

  footerTextView7 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  [footerTextView7 setEditable:0];

  footerTextView8 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  [footerTextView8 _setInteractiveTextSelectionDisabled:1];

  footerTextView9 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  [footerTextView9 setDataDetectorTypes:2];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  footerTextView10 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  [footerTextView10 setBackgroundColor:clearColor];

  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  contentView = [(HKEmergencyCardSOSDetailsCell *)self contentView];
  [contentView setBackgroundColor:systemGroupedBackgroundColor];

  contentView2 = [(HKEmergencyCardSOSDetailsCell *)self contentView];
  footerTextView11 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  [contentView2 addSubview:footerTextView11];
}

- (void)_setupConstraints
{
  footerTextView = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  topAnchor = [footerTextView topAnchor];
  contentView = [(HKEmergencyCardSOSDetailsCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v7 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  [v7 setActive:1];

  footerTextView2 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  leftAnchor = [footerTextView2 leftAnchor];
  contentView2 = [(HKEmergencyCardSOSDetailsCell *)self contentView];
  leftAnchor2 = [contentView2 leftAnchor];
  v12 = [leftAnchor constraintEqualToSystemSpacingAfterAnchor:leftAnchor2 multiplier:2.0];
  [v12 setActive:1];

  contentView3 = [(HKEmergencyCardSOSDetailsCell *)self contentView];
  rightAnchor = [contentView3 rightAnchor];
  footerTextView3 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  rightAnchor2 = [footerTextView3 rightAnchor];
  v17 = [rightAnchor constraintEqualToSystemSpacingAfterAnchor:rightAnchor2 multiplier:1.0];
  [v17 setActive:1];

  contentView4 = [(HKEmergencyCardSOSDetailsCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  footerTextView4 = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  bottomAnchor2 = [footerTextView4 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v21 setActive:1];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v6 = MEMORY[0x1E6963608];
  lCopy = l;
  defaultWorkspace = [v6 defaultWorkspace];
  [defaultWorkspace openSensitiveURL:lCopy withOptions:0];

  return 0;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HKEmergencyCardSOSDetailsCell;
  [(HKEmergencyCardSOSDetailsCell *)&v3 tintColorDidChange];
  [(HKEmergencyCardSOSDetailsCell *)self _updateText];
}

- (void)_updateText
{
  footerAttributedText = [(HKEmergencyCardSOSDetailsCell *)self footerAttributedText];
  footerTextView = [(HKEmergencyCardSOSDetailsCell *)self footerTextView];
  [footerTextView setAttributedText:footerAttributedText];
}

@end