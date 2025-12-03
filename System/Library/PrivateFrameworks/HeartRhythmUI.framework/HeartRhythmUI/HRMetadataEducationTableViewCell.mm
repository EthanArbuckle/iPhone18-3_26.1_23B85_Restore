@interface HRMetadataEducationTableViewCell
+ (id)defaultReuseIdentifier;
- (HRMetadataEducationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)_bodyBottomAnchorToBottom;
- (double)_titleBaselineToBodyBaseline;
- (double)_topToTitleBaseline;
- (id)_bodyLabelFont;
- (id)_titleLabelFont;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateForCurrentSizeCategory;
- (void)setBodyText:(id)text;
- (void)setTitleText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HRMetadataEducationTableViewCell

+ (id)defaultReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HRMetadataEducationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HRMetadataEducationTableViewCell;
  v4 = [(HRMetadataEducationTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HRMetadataEducationTableViewCell *)v4 setSelectionStyle:0];
    [(HRMetadataEducationTableViewCell *)v5 _setUpUI];
    [(HRMetadataEducationTableViewCell *)v5 _setUpConstraints];
  }

  return v5;
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleText = self->_titleText;
  if (titleText != textCopy)
  {
    v9 = textCopy;
    if (!titleText || ![(NSString *)textCopy isEqualToString:?])
    {
      objc_storeStrong(&self->_titleText, text);
      titleLabel = [(HRMetadataEducationTableViewCell *)self titleLabel];
      [titleLabel setText:v9];

      contentView = [(HRMetadataEducationTableViewCell *)self contentView];
      [contentView setNeedsLayout];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setBodyText:(id)text
{
  textCopy = text;
  bodyText = self->_bodyText;
  if (bodyText != textCopy)
  {
    v9 = textCopy;
    if (!bodyText || ![(NSString *)textCopy isEqualToString:?])
    {
      objc_storeStrong(&self->_bodyText, text);
      bodyLabel = [(HRMetadataEducationTableViewCell *)self bodyLabel];
      [bodyLabel setText:v9];

      contentView = [(HRMetadataEducationTableViewCell *)self contentView];
      [contentView setNeedsLayout];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HRMetadataEducationTableViewCell;
  [(HRMetadataEducationTableViewCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HRMetadataEducationTableViewCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HRMetadataEducationTableViewCell *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)_setUpUI
{
  [(HRMetadataEducationTableViewCell *)self setSelectionStyle:0];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRMetadataEducationTableViewCell *)self setTitleLabel:v3];

  _titleLabelFont = [(HRMetadataEducationTableViewCell *)self _titleLabelFont];
  titleLabel = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [titleLabel setFont:_titleLabelFont];

  blackColor = [MEMORY[0x277D75348] blackColor];
  titleLabel2 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [titleLabel2 setTextColor:blackColor];

  titleLabel3 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:0];

  titleLabel4 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel5 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [titleLabel5 setAdjustsFontForContentSizeCategory:1];

  contentView = [(HRMetadataEducationTableViewCell *)self contentView];
  titleLabel6 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [contentView addSubview:titleLabel6];

  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRMetadataEducationTableViewCell *)self setBodyLabel:v13];

  _bodyLabelFont = [(HRMetadataEducationTableViewCell *)self _bodyLabelFont];
  bodyLabel = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [bodyLabel setFont:_bodyLabelFont];

  blackColor2 = [MEMORY[0x277D75348] blackColor];
  bodyLabel2 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [bodyLabel2 setTextColor:blackColor2];

  bodyLabel3 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [bodyLabel3 setNumberOfLines:0];

  bodyLabel4 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [bodyLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyLabel5 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [bodyLabel5 setAdjustsFontForContentSizeCategory:1];

  contentView2 = [(HRMetadataEducationTableViewCell *)self contentView];
  bodyLabel6 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [contentView2 addSubview:bodyLabel6];
}

- (void)_setUpConstraints
{
  titleLabel = [(HRMetadataEducationTableViewCell *)self titleLabel];
  contentView = [(HRMetadataEducationTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  [titleLabel hrui_alignHorizontalConstraintsWithGuide:layoutMarginsGuide insets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];

  bodyLabel = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  titleLabel2 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [bodyLabel hk_alignHorizontalConstraintsWithView:titleLabel2 margin:0.0];

  titleLabel3 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel3 firstBaselineAnchor];
  contentView2 = [(HRMetadataEducationTableViewCell *)self contentView];
  topAnchor = [contentView2 topAnchor];
  [(HRMetadataEducationTableViewCell *)self _topToTitleBaseline];
  v12 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [(HRMetadataEducationTableViewCell *)self setTopToTitleBaselineConstraint:v12];

  bodyLabel2 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  firstBaselineAnchor2 = [bodyLabel2 firstBaselineAnchor];
  titleLabel4 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel4 lastBaselineAnchor];
  [(HRMetadataEducationTableViewCell *)self _titleBaselineToBodyBaseline];
  v17 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [(HRMetadataEducationTableViewCell *)self setTitleBaselineToBodyBaselineConstraint:v17];

  contentView3 = [(HRMetadataEducationTableViewCell *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  bodyLabel3 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  bottomAnchor2 = [bodyLabel3 bottomAnchor];
  [(HRMetadataEducationTableViewCell *)self _bodyBottomAnchorToBottom];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
  [(HRMetadataEducationTableViewCell *)self setBodyBottomAnchorToBottomConstraint:v22];

  topToTitleBaselineConstraint = [(HRMetadataEducationTableViewCell *)self topToTitleBaselineConstraint];
  [topToTitleBaselineConstraint setActive:1];

  titleBaselineToBodyBaselineConstraint = [(HRMetadataEducationTableViewCell *)self titleBaselineToBodyBaselineConstraint];
  [titleBaselineToBodyBaselineConstraint setActive:1];

  bodyBottomAnchorToBottomConstraint = [(HRMetadataEducationTableViewCell *)self bodyBottomAnchorToBottomConstraint];
  [bodyBottomAnchorToBottomConstraint setActive:1];
}

- (void)_updateForCurrentSizeCategory
{
  [(HRMetadataEducationTableViewCell *)self _topToTitleBaseline];
  v4 = v3;
  topToTitleBaselineConstraint = [(HRMetadataEducationTableViewCell *)self topToTitleBaselineConstraint];
  [topToTitleBaselineConstraint setConstant:v4];

  [(HRMetadataEducationTableViewCell *)self _titleBaselineToBodyBaseline];
  v7 = v6;
  titleBaselineToBodyBaselineConstraint = [(HRMetadataEducationTableViewCell *)self titleBaselineToBodyBaselineConstraint];
  [titleBaselineToBodyBaselineConstraint setConstant:v7];

  [(HRMetadataEducationTableViewCell *)self _bodyBottomAnchorToBottom];
  v10 = v9;
  bodyBottomAnchorToBottomConstraint = [(HRMetadataEducationTableViewCell *)self bodyBottomAnchorToBottomConstraint];
  [bodyBottomAnchorToBottomConstraint setConstant:v10];
}

- (id)_titleLabelFont
{
  v2 = MEMORY[0x277D74300];
  _titleLabelFontTextStyle = [(HRMetadataEducationTableViewCell *)self _titleLabelFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_titleLabelFontTextStyle symbolicTraits:32770];

  return v4;
}

- (id)_bodyLabelFont
{
  v2 = MEMORY[0x277D74300];
  _bodyLabelFontTextStyle = [(HRMetadataEducationTableViewCell *)self _bodyLabelFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_bodyLabelFontTextStyle symbolicTraits:0x8000];

  return v4;
}

- (double)_topToTitleBaseline
{
  v2 = MEMORY[0x277D75520];
  _titleLabelFontTextStyle = [(HRMetadataEducationTableViewCell *)self _titleLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:_titleLabelFontTextStyle];

  [v4 scaledValueForValue:44.0];
  v6 = v5;

  return v6;
}

- (double)_titleBaselineToBodyBaseline
{
  v2 = MEMORY[0x277D75520];
  _titleLabelFontTextStyle = [(HRMetadataEducationTableViewCell *)self _titleLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:_titleLabelFontTextStyle];

  [v4 scaledValueForValue:28.0];
  v6 = v5;

  return v6;
}

- (double)_bodyBottomAnchorToBottom
{
  v2 = MEMORY[0x277D75520];
  _bodyLabelFontTextStyle = [(HRMetadataEducationTableViewCell *)self _bodyLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:_bodyLabelFontTextStyle];

  [v4 scaledValueForValue:28.0];
  v6 = v5;

  return v6;
}

@end