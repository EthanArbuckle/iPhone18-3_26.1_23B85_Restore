@interface HRMetadataEducationTableViewCell
+ (id)defaultReuseIdentifier;
- (HRMetadataEducationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)_bodyBottomAnchorToBottom;
- (double)_titleBaselineToBodyBaseline;
- (double)_topToTitleBaseline;
- (id)_bodyLabelFont;
- (id)_titleLabelFont;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateForCurrentSizeCategory;
- (void)setBodyText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HRMetadataEducationTableViewCell

+ (id)defaultReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HRMetadataEducationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HRMetadataEducationTableViewCell;
  v4 = [(HRMetadataEducationTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HRMetadataEducationTableViewCell *)v4 setSelectionStyle:0];
    [(HRMetadataEducationTableViewCell *)v5 _setUpUI];
    [(HRMetadataEducationTableViewCell *)v5 _setUpConstraints];
  }

  return v5;
}

- (void)setTitleText:(id)a3
{
  v5 = a3;
  titleText = self->_titleText;
  if (titleText != v5)
  {
    v9 = v5;
    if (!titleText || ![(NSString *)v5 isEqualToString:?])
    {
      objc_storeStrong(&self->_titleText, a3);
      v7 = [(HRMetadataEducationTableViewCell *)self titleLabel];
      [v7 setText:v9];

      v8 = [(HRMetadataEducationTableViewCell *)self contentView];
      [v8 setNeedsLayout];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setBodyText:(id)a3
{
  v5 = a3;
  bodyText = self->_bodyText;
  if (bodyText != v5)
  {
    v9 = v5;
    if (!bodyText || ![(NSString *)v5 isEqualToString:?])
    {
      objc_storeStrong(&self->_bodyText, a3);
      v7 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
      [v7 setText:v9];

      v8 = [(HRMetadataEducationTableViewCell *)self contentView];
      [v8 setNeedsLayout];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HRMetadataEducationTableViewCell;
  [(HRMetadataEducationTableViewCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HRMetadataEducationTableViewCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

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

  v4 = [(HRMetadataEducationTableViewCell *)self _titleLabelFont];
  v5 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [v5 setFont:v4];

  v6 = [MEMORY[0x277D75348] blackColor];
  v7 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [v7 setTextColor:v6];

  v8 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [v8 setNumberOfLines:0];

  v9 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [v10 setAdjustsFontForContentSizeCategory:1];

  v11 = [(HRMetadataEducationTableViewCell *)self contentView];
  v12 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [v11 addSubview:v12];

  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRMetadataEducationTableViewCell *)self setBodyLabel:v13];

  v14 = [(HRMetadataEducationTableViewCell *)self _bodyLabelFont];
  v15 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [v15 setFont:v14];

  v16 = [MEMORY[0x277D75348] blackColor];
  v17 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [v17 setTextColor:v16];

  v18 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [v18 setNumberOfLines:0];

  v19 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [v20 setAdjustsFontForContentSizeCategory:1];

  v22 = [(HRMetadataEducationTableViewCell *)self contentView];
  v21 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  [v22 addSubview:v21];
}

- (void)_setUpConstraints
{
  v3 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  v4 = [(HRMetadataEducationTableViewCell *)self contentView];
  v5 = [v4 layoutMarginsGuide];
  [v3 hrui_alignHorizontalConstraintsWithGuide:v5 insets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];

  v6 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  v7 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  [v6 hk_alignHorizontalConstraintsWithView:v7 margin:0.0];

  v8 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  v9 = [v8 firstBaselineAnchor];
  v10 = [(HRMetadataEducationTableViewCell *)self contentView];
  v11 = [v10 topAnchor];
  [(HRMetadataEducationTableViewCell *)self _topToTitleBaseline];
  v12 = [v9 constraintEqualToAnchor:v11 constant:?];
  [(HRMetadataEducationTableViewCell *)self setTopToTitleBaselineConstraint:v12];

  v13 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  v14 = [v13 firstBaselineAnchor];
  v15 = [(HRMetadataEducationTableViewCell *)self titleLabel];
  v16 = [v15 lastBaselineAnchor];
  [(HRMetadataEducationTableViewCell *)self _titleBaselineToBodyBaseline];
  v17 = [v14 constraintEqualToAnchor:v16 constant:?];
  [(HRMetadataEducationTableViewCell *)self setTitleBaselineToBodyBaselineConstraint:v17];

  v18 = [(HRMetadataEducationTableViewCell *)self contentView];
  v19 = [v18 bottomAnchor];
  v20 = [(HRMetadataEducationTableViewCell *)self bodyLabel];
  v21 = [v20 bottomAnchor];
  [(HRMetadataEducationTableViewCell *)self _bodyBottomAnchorToBottom];
  v22 = [v19 constraintEqualToAnchor:v21 constant:?];
  [(HRMetadataEducationTableViewCell *)self setBodyBottomAnchorToBottomConstraint:v22];

  v23 = [(HRMetadataEducationTableViewCell *)self topToTitleBaselineConstraint];
  [v23 setActive:1];

  v24 = [(HRMetadataEducationTableViewCell *)self titleBaselineToBodyBaselineConstraint];
  [v24 setActive:1];

  v25 = [(HRMetadataEducationTableViewCell *)self bodyBottomAnchorToBottomConstraint];
  [v25 setActive:1];
}

- (void)_updateForCurrentSizeCategory
{
  [(HRMetadataEducationTableViewCell *)self _topToTitleBaseline];
  v4 = v3;
  v5 = [(HRMetadataEducationTableViewCell *)self topToTitleBaselineConstraint];
  [v5 setConstant:v4];

  [(HRMetadataEducationTableViewCell *)self _titleBaselineToBodyBaseline];
  v7 = v6;
  v8 = [(HRMetadataEducationTableViewCell *)self titleBaselineToBodyBaselineConstraint];
  [v8 setConstant:v7];

  [(HRMetadataEducationTableViewCell *)self _bodyBottomAnchorToBottom];
  v10 = v9;
  v11 = [(HRMetadataEducationTableViewCell *)self bodyBottomAnchorToBottomConstraint];
  [v11 setConstant:v10];
}

- (id)_titleLabelFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRMetadataEducationTableViewCell *)self _titleLabelFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:32770];

  return v4;
}

- (id)_bodyLabelFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRMetadataEducationTableViewCell *)self _bodyLabelFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:0x8000];

  return v4;
}

- (double)_topToTitleBaseline
{
  v2 = MEMORY[0x277D75520];
  v3 = [(HRMetadataEducationTableViewCell *)self _titleLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:v3];

  [v4 scaledValueForValue:44.0];
  v6 = v5;

  return v6;
}

- (double)_titleBaselineToBodyBaseline
{
  v2 = MEMORY[0x277D75520];
  v3 = [(HRMetadataEducationTableViewCell *)self _titleLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:v3];

  [v4 scaledValueForValue:28.0];
  v6 = v5;

  return v6;
}

- (double)_bodyBottomAnchorToBottom
{
  v2 = MEMORY[0x277D75520];
  v3 = [(HRMetadataEducationTableViewCell *)self _bodyLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:v3];

  [v4 scaledValueForValue:28.0];
  v6 = v5;

  return v6;
}

@end