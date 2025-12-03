@interface HRParagraphTableViewCell
+ (id)reuseIdentifier;
- (HRParagraphTableViewCell)initWithCoder:(id)coder;
- (HRParagraphTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)_lastViewToBottom;
- (double)_subtitleLabelBaselineToButton;
- (double)_titleLabelBaselineToParagraphBaseline;
- (double)_titleLabelTopToBaseline;
- (id)_buttonFont;
- (id)_paragraphLabelFont;
- (id)_titleLabelFont;
- (int64_t)_buttonHorizontalAlignment;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateBottomConstraint;
- (void)_updateForCurrentSizeCategory;
- (void)setButtonText:(id)text;
- (void)setParagraphText:(id)text;
- (void)setTitleText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HRParagraphTableViewCell

- (HRParagraphTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HRParagraphTableViewCell;
  v4 = [(HRParagraphTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HRParagraphTableViewCell *)v4 _setUpUI];
    [(HRParagraphTableViewCell *)v5 _setUpConstraints];
  }

  return v5;
}

- (HRParagraphTableViewCell)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (void)setTitleText:(id)text
{
  objc_storeStrong(&self->_titleText, text);
  textCopy = text;
  titleLabel = [(HRParagraphTableViewCell *)self titleLabel];
  [titleLabel setText:textCopy];

  contentView = [(HRParagraphTableViewCell *)self contentView];
  [contentView setNeedsLayout];
}

- (void)setParagraphText:(id)text
{
  objc_storeStrong(&self->_paragraphText, text);
  textCopy = text;
  paragraphLabel = [(HRParagraphTableViewCell *)self paragraphLabel];
  [paragraphLabel setText:textCopy];

  contentView = [(HRParagraphTableViewCell *)self contentView];
  [contentView setNeedsLayout];
}

- (void)setButtonText:(id)text
{
  objc_storeStrong(&self->_buttonText, text);
  textCopy = text;
  button = [(HRParagraphTableViewCell *)self button];
  [button setTitle:textCopy forState:0];

  [(HRParagraphTableViewCell *)self _updateBottomConstraint];
  contentView = [(HRParagraphTableViewCell *)self contentView];
  [contentView setNeedsLayout];
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HRParagraphTableViewCell;
  [(HRParagraphTableViewCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HRParagraphTableViewCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HRParagraphTableViewCell *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)_setUpUI
{
  [(HRParagraphTableViewCell *)self setSelectionStyle:0];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRParagraphTableViewCell *)self setTitleLabel:v3];

  _titleLabelFont = [(HRParagraphTableViewCell *)self _titleLabelFont];
  titleLabel = [(HRParagraphTableViewCell *)self titleLabel];
  [titleLabel setFont:_titleLabelFont];

  blackColor = [MEMORY[0x277D75348] blackColor];
  titleLabel2 = [(HRParagraphTableViewCell *)self titleLabel];
  [titleLabel2 setTextColor:blackColor];

  titleLabel3 = [(HRParagraphTableViewCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:0];

  titleLabel4 = [(HRParagraphTableViewCell *)self titleLabel];
  [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HRParagraphTableViewCell *)self contentView];
  titleLabel5 = [(HRParagraphTableViewCell *)self titleLabel];
  [contentView addSubview:titleLabel5];

  v12 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRParagraphTableViewCell *)self setParagraphLabel:v12];

  _paragraphLabelFont = [(HRParagraphTableViewCell *)self _paragraphLabelFont];
  paragraphLabel = [(HRParagraphTableViewCell *)self paragraphLabel];
  [paragraphLabel setFont:_paragraphLabelFont];

  blackColor2 = [MEMORY[0x277D75348] blackColor];
  paragraphLabel2 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [paragraphLabel2 setTextColor:blackColor2];

  paragraphLabel3 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [paragraphLabel3 setNumberOfLines:0];

  paragraphLabel4 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [paragraphLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(HRParagraphTableViewCell *)self contentView];
  paragraphLabel5 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [contentView2 addSubview:paragraphLabel5];

  v21 = objc_alloc_init(MEMORY[0x277D75220]);
  [(HRParagraphTableViewCell *)self setButton:v21];

  _buttonFont = [(HRParagraphTableViewCell *)self _buttonFont];
  button = [(HRParagraphTableViewCell *)self button];
  titleLabel6 = [button titleLabel];
  [titleLabel6 setFont:_buttonFont];

  button2 = [(HRParagraphTableViewCell *)self button];
  v26 = HKHealthKeyColor();
  [button2 setTitleColor:v26 forState:0];

  button3 = [(HRParagraphTableViewCell *)self button];
  [button3 setContentHorizontalAlignment:{-[HRParagraphTableViewCell _buttonHorizontalAlignment](self, "_buttonHorizontalAlignment")}];

  button4 = [(HRParagraphTableViewCell *)self button];
  [button4 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView3 = [(HRParagraphTableViewCell *)self contentView];
  button5 = [(HRParagraphTableViewCell *)self button];
  [contentView3 addSubview:button5];
}

- (void)_setUpConstraints
{
  titleLabel = [(HRParagraphTableViewCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  contentView = [(HRParagraphTableViewCell *)self contentView];
  topAnchor = [contentView topAnchor];
  [(HRParagraphTableViewCell *)self _titleLabelTopToBaseline];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [(HRParagraphTableViewCell *)self setTitleLabelBaselineConstraint:v7];

  titleLabelBaselineConstraint = [(HRParagraphTableViewCell *)self titleLabelBaselineConstraint];
  [titleLabelBaselineConstraint setActive:1];

  titleLabel2 = [(HRParagraphTableViewCell *)self titleLabel];
  layoutMarginsGuide = [(HRParagraphTableViewCell *)self layoutMarginsGuide];
  [titleLabel2 hrui_alignHorizontalConstraintsWithGuide:layoutMarginsGuide insets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];

  paragraphLabel = [(HRParagraphTableViewCell *)self paragraphLabel];
  firstBaselineAnchor2 = [paragraphLabel firstBaselineAnchor];
  titleLabel3 = [(HRParagraphTableViewCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel3 lastBaselineAnchor];
  [(HRParagraphTableViewCell *)self _titleLabelBaselineToParagraphBaseline];
  v15 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [(HRParagraphTableViewCell *)self setParagraphLabelBaselineConstraint:v15];

  paragraphLabelBaselineConstraint = [(HRParagraphTableViewCell *)self paragraphLabelBaselineConstraint];
  [paragraphLabelBaselineConstraint setActive:1];

  paragraphLabel2 = [(HRParagraphTableViewCell *)self paragraphLabel];
  titleLabel4 = [(HRParagraphTableViewCell *)self titleLabel];
  [paragraphLabel2 hk_alignHorizontalConstraintsWithView:titleLabel4 margin:0.0];

  button = [(HRParagraphTableViewCell *)self button];
  firstBaselineAnchor3 = [button firstBaselineAnchor];
  paragraphLabel3 = [(HRParagraphTableViewCell *)self paragraphLabel];
  lastBaselineAnchor2 = [paragraphLabel3 lastBaselineAnchor];
  [(HRParagraphTableViewCell *)self _subtitleLabelBaselineToButton];
  v23 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [(HRParagraphTableViewCell *)self setButtonBaselineConstraint:v23];

  buttonBaselineConstraint = [(HRParagraphTableViewCell *)self buttonBaselineConstraint];
  [buttonBaselineConstraint setActive:1];

  button2 = [(HRParagraphTableViewCell *)self button];
  paragraphLabel4 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [button2 hk_alignHorizontalConstraintsWithView:paragraphLabel4 margin:0.0];

  contentView2 = [(HRParagraphTableViewCell *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  paragraphLabel5 = [(HRParagraphTableViewCell *)self paragraphLabel];
  lastBaselineAnchor3 = [paragraphLabel5 lastBaselineAnchor];
  [(HRParagraphTableViewCell *)self _lastViewToBottom];
  v31 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor3 constant:?];
  [(HRParagraphTableViewCell *)self setContentViewParagraphBottomConstraint:v31];

  contentView3 = [(HRParagraphTableViewCell *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  button3 = [(HRParagraphTableViewCell *)self button];
  lastBaselineAnchor4 = [button3 lastBaselineAnchor];
  [(HRParagraphTableViewCell *)self _lastViewToBottom];
  v36 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor4 constant:?];
  [(HRParagraphTableViewCell *)self setContentViewButtonBottomConstraint:v36];

  [(HRParagraphTableViewCell *)self _updateBottomConstraint];
}

- (id)_titleLabelFont
{
  v2 = MEMORY[0x277D74300];
  _titleLabelFontTextStyle = [(HRParagraphTableViewCell *)self _titleLabelFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_titleLabelFontTextStyle symbolicTraits:32770];

  return v4;
}

- (double)_titleLabelTopToBaseline
{
  v2 = MEMORY[0x277D75520];
  _titleLabelFontTextStyle = [(HRParagraphTableViewCell *)self _titleLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:_titleLabelFontTextStyle];

  [v4 scaledValueForValue:30.0];
  v6 = v5;

  return v6;
}

- (id)_paragraphLabelFont
{
  v2 = MEMORY[0x277D74300];
  _paragraphLabelFontTextStyle = [(HRParagraphTableViewCell *)self _paragraphLabelFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_paragraphLabelFontTextStyle symbolicTraits:0x8000];

  return v4;
}

- (double)_titleLabelBaselineToParagraphBaseline
{
  v2 = MEMORY[0x277D75520];
  _paragraphLabelFontTextStyle = [(HRParagraphTableViewCell *)self _paragraphLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:_paragraphLabelFontTextStyle];

  [v4 scaledValueForValue:24.0];
  v6 = v5;

  return v6;
}

- (double)_subtitleLabelBaselineToButton
{
  v2 = MEMORY[0x277D75520];
  _paragraphLabelFontTextStyle = [(HRParagraphTableViewCell *)self _paragraphLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:_paragraphLabelFontTextStyle];

  [v4 scaledValueForValue:24.0];
  v6 = v5;

  return v6;
}

- (id)_buttonFont
{
  v2 = MEMORY[0x277D74300];
  _buttonFontTextStyle = [(HRParagraphTableViewCell *)self _buttonFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_buttonFontTextStyle symbolicTraits:0x8000];

  return v4;
}

- (double)_lastViewToBottom
{
  v2 = MEMORY[0x277D75520];
  _buttonFontTextStyle = [(HRParagraphTableViewCell *)self _buttonFontTextStyle];
  v4 = [v2 metricsForTextStyle:_buttonFontTextStyle];

  [v4 scaledValueForValue:20.0];
  v6 = v5;

  return v6;
}

- (void)_updateBottomConstraint
{
  buttonText = [(HRParagraphTableViewCell *)self buttonText];
  v4 = buttonText != 0;
  v5 = buttonText == 0;

  contentViewParagraphBottomConstraint = [(HRParagraphTableViewCell *)self contentViewParagraphBottomConstraint];
  [contentViewParagraphBottomConstraint setActive:v5];

  contentViewButtonBottomConstraint = [(HRParagraphTableViewCell *)self contentViewButtonBottomConstraint];
  [contentViewButtonBottomConstraint setActive:v4];
}

- (int64_t)_buttonHorizontalAlignment
{
  if ([(HRParagraphTableViewCell *)self hk_isLeftToRight])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_updateForCurrentSizeCategory
{
  _titleLabelFont = [(HRParagraphTableViewCell *)self _titleLabelFont];
  titleLabel = [(HRParagraphTableViewCell *)self titleLabel];
  [titleLabel setFont:_titleLabelFont];

  _paragraphLabelFont = [(HRParagraphTableViewCell *)self _paragraphLabelFont];
  paragraphLabel = [(HRParagraphTableViewCell *)self paragraphLabel];
  [paragraphLabel setFont:_paragraphLabelFont];

  _buttonFont = [(HRParagraphTableViewCell *)self _buttonFont];
  button = [(HRParagraphTableViewCell *)self button];
  titleLabel2 = [button titleLabel];
  [titleLabel2 setFont:_buttonFont];

  [(HRParagraphTableViewCell *)self _titleLabelTopToBaseline];
  v11 = v10;
  titleLabelBaselineConstraint = [(HRParagraphTableViewCell *)self titleLabelBaselineConstraint];
  [titleLabelBaselineConstraint setConstant:v11];

  [(HRParagraphTableViewCell *)self _titleLabelBaselineToParagraphBaseline];
  v14 = v13;
  paragraphLabelBaselineConstraint = [(HRParagraphTableViewCell *)self paragraphLabelBaselineConstraint];
  [paragraphLabelBaselineConstraint setConstant:v14];

  [(HRParagraphTableViewCell *)self _subtitleLabelBaselineToButton];
  v17 = v16;
  buttonBaselineConstraint = [(HRParagraphTableViewCell *)self buttonBaselineConstraint];
  [buttonBaselineConstraint setConstant:v17];

  [(HRParagraphTableViewCell *)self _lastViewToBottom];
  v20 = v19;
  contentViewParagraphBottomConstraint = [(HRParagraphTableViewCell *)self contentViewParagraphBottomConstraint];
  [contentViewParagraphBottomConstraint setConstant:v20];

  [(HRParagraphTableViewCell *)self _lastViewToBottom];
  v23 = v22;
  contentViewButtonBottomConstraint = [(HRParagraphTableViewCell *)self contentViewButtonBottomConstraint];
  [contentViewButtonBottomConstraint setConstant:v23];

  [(HRParagraphTableViewCell *)self _updateBottomConstraint];
}

@end