@interface HKParagraphTableViewCell
- (HKParagraphTableViewCell)initWithCoder:(id)coder;
- (HKParagraphTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)_buttonBaselineToBottom;
- (double)_subtitleLabelBaselineToButton;
- (double)_titleLabelBaselineToParagraphBaseline;
- (double)_titleLabelTopToBaseline;
- (int64_t)_buttonHorizontalAlignment;
- (void)_setupUI;
- (void)_updateForCurrentSizeCategory;
- (void)setButtonText:(id)text;
- (void)setParagraphText:(id)text;
- (void)setTitleText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKParagraphTableViewCell

- (HKParagraphTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKParagraphTableViewCell;
  v4 = [(HKParagraphTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKParagraphTableViewCell *)v4 _setupUI];
  }

  return v5;
}

- (HKParagraphTableViewCell)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (void)_setupUI
{
  [(HKParagraphTableViewCell *)self setSelectionStyle:0];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  _titleLabelFont = [(HKParagraphTableViewCell *)self _titleLabelFont];
  [(UILabel *)self->_titleLabel setFont:_titleLabelFont];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(UILabel *)self->_titleLabel setTextColor:blackColor];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(HKParagraphTableViewCell *)self contentView];
  [contentView addSubview:self->_titleLabel];

  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  paragraphLabel = self->_paragraphLabel;
  self->_paragraphLabel = v8;

  _paragraphLabelFont = [(HKParagraphTableViewCell *)self _paragraphLabelFont];
  [(UILabel *)self->_paragraphLabel setFont:_paragraphLabelFont];

  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  [(UILabel *)self->_paragraphLabel setTextColor:blackColor2];

  [(UILabel *)self->_paragraphLabel setNumberOfLines:0];
  [(UILabel *)self->_paragraphLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(HKParagraphTableViewCell *)self contentView];
  [contentView2 addSubview:self->_paragraphLabel];

  v13 = objc_alloc_init(MEMORY[0x1E69DC738]);
  button = self->_button;
  self->_button = v13;

  _buttonFont = [(HKParagraphTableViewCell *)self _buttonFont];
  titleLabel = [(UIButton *)self->_button titleLabel];
  [titleLabel setFont:_buttonFont];

  v17 = self->_button;
  v18 = HKHealthKeyColor();
  [(UIButton *)v17 setTitleColor:v18 forState:0];

  [(UIButton *)self->_button setContentHorizontalAlignment:[(HKParagraphTableViewCell *)self _buttonHorizontalAlignment]];
  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView3 = [(HKParagraphTableViewCell *)self contentView];
  [contentView3 addSubview:self->_button];

  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  contentView4 = [(HKParagraphTableViewCell *)self contentView];
  topAnchor = [contentView4 topAnchor];
  [(HKParagraphTableViewCell *)self _titleLabelTopToBaseline];
  v23 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  titleLabelBaselineConstraint = self->_titleLabelBaselineConstraint;
  self->_titleLabelBaselineConstraint = v23;

  [(NSLayoutConstraint *)self->_titleLabelBaselineConstraint setActive:1];
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  contentView5 = [(HKParagraphTableViewCell *)self contentView];
  leadingAnchor2 = [contentView5 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  [v28 setActive:1];

  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  contentView6 = [(HKParagraphTableViewCell *)self contentView];
  trailingAnchor2 = [contentView6 trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  [v32 setActive:1];

  firstBaselineAnchor2 = [(UILabel *)self->_paragraphLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  [(HKParagraphTableViewCell *)self _titleLabelBaselineToParagraphBaseline];
  v35 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  paragraphLabelBaselineConstraint = self->_paragraphLabelBaselineConstraint;
  self->_paragraphLabelBaselineConstraint = v35;

  [(NSLayoutConstraint *)self->_paragraphLabelBaselineConstraint setActive:1];
  leadingAnchor3 = [(UILabel *)self->_paragraphLabel leadingAnchor];
  leadingAnchor4 = [(UILabel *)self->_titleLabel leadingAnchor];
  v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v39 setActive:1];

  trailingAnchor3 = [(UILabel *)self->_paragraphLabel trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_titleLabel trailingAnchor];
  v42 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v42 setActive:1];

  firstBaselineAnchor3 = [(UIButton *)self->_button firstBaselineAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_paragraphLabel lastBaselineAnchor];
  [(HKParagraphTableViewCell *)self _subtitleLabelBaselineToButton];
  v45 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  buttonBaselineConstraint = self->_buttonBaselineConstraint;
  self->_buttonBaselineConstraint = v45;

  [(NSLayoutConstraint *)self->_buttonBaselineConstraint setActive:1];
  leadingAnchor5 = [(UIButton *)self->_button leadingAnchor];
  leadingAnchor6 = [(UILabel *)self->_paragraphLabel leadingAnchor];
  v49 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v49 setActive:1];

  trailingAnchor5 = [(UIButton *)self->_button trailingAnchor];
  trailingAnchor6 = [(UILabel *)self->_paragraphLabel trailingAnchor];
  v52 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v52 setActive:1];

  contentView7 = [(HKParagraphTableViewCell *)self contentView];
  bottomAnchor = [contentView7 bottomAnchor];
  lastBaselineAnchor3 = [(UIButton *)self->_button lastBaselineAnchor];
  [(HKParagraphTableViewCell *)self _buttonBaselineToBottom];
  v56 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor3 constant:?];
  contentViewBottomConstraint = self->_contentViewBottomConstraint;
  self->_contentViewBottomConstraint = v56;

  v58 = self->_contentViewBottomConstraint;

  [(NSLayoutConstraint *)v58 setActive:1];
}

- (double)_titleLabelTopToBaseline
{
  _titleLabelFont = [(HKParagraphTableViewCell *)self _titleLabelFont];
  [_titleLabelFont _scaledValueForValue:30.0];
  v4 = v3;

  return v4;
}

- (double)_titleLabelBaselineToParagraphBaseline
{
  _paragraphLabelFont = [(HKParagraphTableViewCell *)self _paragraphLabelFont];
  [_paragraphLabelFont _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_subtitleLabelBaselineToButton
{
  _paragraphLabelFont = [(HKParagraphTableViewCell *)self _paragraphLabelFont];
  [_paragraphLabelFont _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_buttonBaselineToBottom
{
  _buttonFont = [(HKParagraphTableViewCell *)self _buttonFont];
  [_buttonFont _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (int64_t)_buttonHorizontalAlignment
{
  if ([(UIView *)self hk_isLeftToRight])
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
  _titleLabelFont = [(HKParagraphTableViewCell *)self _titleLabelFont];
  [(UILabel *)self->_titleLabel setFont:_titleLabelFont];

  _paragraphLabelFont = [(HKParagraphTableViewCell *)self _paragraphLabelFont];
  [(UILabel *)self->_paragraphLabel setFont:_paragraphLabelFont];

  _buttonFont = [(HKParagraphTableViewCell *)self _buttonFont];
  titleLabel = [(UIButton *)self->_button titleLabel];
  [titleLabel setFont:_buttonFont];

  [(HKParagraphTableViewCell *)self _titleLabelTopToBaseline];
  [(NSLayoutConstraint *)self->_titleLabelBaselineConstraint setConstant:?];
  [(HKParagraphTableViewCell *)self _titleLabelBaselineToParagraphBaseline];
  [(NSLayoutConstraint *)self->_paragraphLabelBaselineConstraint setConstant:?];
  [(HKParagraphTableViewCell *)self _subtitleLabelBaselineToButton];
  [(NSLayoutConstraint *)self->_buttonBaselineConstraint setConstant:?];
  [(HKParagraphTableViewCell *)self _buttonBaselineToBottom];
  contentViewBottomConstraint = self->_contentViewBottomConstraint;

  [(NSLayoutConstraint *)contentViewBottomConstraint setConstant:?];
}

- (void)setTitleText:(id)text
{
  objc_storeStrong(&self->_titleText, text);
  textCopy = text;
  [(UILabel *)self->_titleLabel setText:textCopy];

  contentView = [(HKParagraphTableViewCell *)self contentView];
  [contentView setNeedsLayout];
}

- (void)setParagraphText:(id)text
{
  objc_storeStrong(&self->_paragraphText, text);
  textCopy = text;
  [(UILabel *)self->_paragraphLabel setText:textCopy];

  contentView = [(HKParagraphTableViewCell *)self contentView];
  [contentView setNeedsLayout];
}

- (void)setButtonText:(id)text
{
  objc_storeStrong(&self->_buttonText, text);
  textCopy = text;
  [(UIButton *)self->_button setTitle:textCopy forState:0];

  contentView = [(HKParagraphTableViewCell *)self contentView];
  [contentView setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKParagraphTableViewCell;
  [(HKParagraphTableViewCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKParagraphTableViewCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKParagraphTableViewCell *)self _updateForCurrentSizeCategory];
    }
  }
}

@end