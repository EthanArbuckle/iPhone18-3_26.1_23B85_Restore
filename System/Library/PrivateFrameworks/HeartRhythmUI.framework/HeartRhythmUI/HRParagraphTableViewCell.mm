@interface HRParagraphTableViewCell
+ (id)reuseIdentifier;
- (HRParagraphTableViewCell)initWithCoder:(id)a3;
- (HRParagraphTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
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
- (void)setButtonText:(id)a3;
- (void)setParagraphText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HRParagraphTableViewCell

- (HRParagraphTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HRParagraphTableViewCell;
  v4 = [(HRParagraphTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HRParagraphTableViewCell *)v4 _setUpUI];
    [(HRParagraphTableViewCell *)v5 _setUpConstraints];
  }

  return v5;
}

- (HRParagraphTableViewCell)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (void)setTitleText:(id)a3
{
  objc_storeStrong(&self->_titleText, a3);
  v5 = a3;
  v6 = [(HRParagraphTableViewCell *)self titleLabel];
  [v6 setText:v5];

  v7 = [(HRParagraphTableViewCell *)self contentView];
  [v7 setNeedsLayout];
}

- (void)setParagraphText:(id)a3
{
  objc_storeStrong(&self->_paragraphText, a3);
  v5 = a3;
  v6 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [v6 setText:v5];

  v7 = [(HRParagraphTableViewCell *)self contentView];
  [v7 setNeedsLayout];
}

- (void)setButtonText:(id)a3
{
  objc_storeStrong(&self->_buttonText, a3);
  v5 = a3;
  v6 = [(HRParagraphTableViewCell *)self button];
  [v6 setTitle:v5 forState:0];

  [(HRParagraphTableViewCell *)self _updateBottomConstraint];
  v7 = [(HRParagraphTableViewCell *)self contentView];
  [v7 setNeedsLayout];
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HRParagraphTableViewCell;
  [(HRParagraphTableViewCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HRParagraphTableViewCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

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

  v4 = [(HRParagraphTableViewCell *)self _titleLabelFont];
  v5 = [(HRParagraphTableViewCell *)self titleLabel];
  [v5 setFont:v4];

  v6 = [MEMORY[0x277D75348] blackColor];
  v7 = [(HRParagraphTableViewCell *)self titleLabel];
  [v7 setTextColor:v6];

  v8 = [(HRParagraphTableViewCell *)self titleLabel];
  [v8 setNumberOfLines:0];

  v9 = [(HRParagraphTableViewCell *)self titleLabel];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(HRParagraphTableViewCell *)self contentView];
  v11 = [(HRParagraphTableViewCell *)self titleLabel];
  [v10 addSubview:v11];

  v12 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRParagraphTableViewCell *)self setParagraphLabel:v12];

  v13 = [(HRParagraphTableViewCell *)self _paragraphLabelFont];
  v14 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [v14 setFont:v13];

  v15 = [MEMORY[0x277D75348] blackColor];
  v16 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [v16 setTextColor:v15];

  v17 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [v17 setNumberOfLines:0];

  v18 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(HRParagraphTableViewCell *)self contentView];
  v20 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [v19 addSubview:v20];

  v21 = objc_alloc_init(MEMORY[0x277D75220]);
  [(HRParagraphTableViewCell *)self setButton:v21];

  v22 = [(HRParagraphTableViewCell *)self _buttonFont];
  v23 = [(HRParagraphTableViewCell *)self button];
  v24 = [v23 titleLabel];
  [v24 setFont:v22];

  v25 = [(HRParagraphTableViewCell *)self button];
  v26 = HKHealthKeyColor();
  [v25 setTitleColor:v26 forState:0];

  v27 = [(HRParagraphTableViewCell *)self button];
  [v27 setContentHorizontalAlignment:{-[HRParagraphTableViewCell _buttonHorizontalAlignment](self, "_buttonHorizontalAlignment")}];

  v28 = [(HRParagraphTableViewCell *)self button];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(HRParagraphTableViewCell *)self contentView];
  v29 = [(HRParagraphTableViewCell *)self button];
  [v30 addSubview:v29];
}

- (void)_setUpConstraints
{
  v3 = [(HRParagraphTableViewCell *)self titleLabel];
  v4 = [v3 firstBaselineAnchor];
  v5 = [(HRParagraphTableViewCell *)self contentView];
  v6 = [v5 topAnchor];
  [(HRParagraphTableViewCell *)self _titleLabelTopToBaseline];
  v7 = [v4 constraintEqualToAnchor:v6 constant:?];
  [(HRParagraphTableViewCell *)self setTitleLabelBaselineConstraint:v7];

  v8 = [(HRParagraphTableViewCell *)self titleLabelBaselineConstraint];
  [v8 setActive:1];

  v9 = [(HRParagraphTableViewCell *)self titleLabel];
  v10 = [(HRParagraphTableViewCell *)self layoutMarginsGuide];
  [v9 hrui_alignHorizontalConstraintsWithGuide:v10 insets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];

  v11 = [(HRParagraphTableViewCell *)self paragraphLabel];
  v12 = [v11 firstBaselineAnchor];
  v13 = [(HRParagraphTableViewCell *)self titleLabel];
  v14 = [v13 lastBaselineAnchor];
  [(HRParagraphTableViewCell *)self _titleLabelBaselineToParagraphBaseline];
  v15 = [v12 constraintEqualToAnchor:v14 constant:?];
  [(HRParagraphTableViewCell *)self setParagraphLabelBaselineConstraint:v15];

  v16 = [(HRParagraphTableViewCell *)self paragraphLabelBaselineConstraint];
  [v16 setActive:1];

  v17 = [(HRParagraphTableViewCell *)self paragraphLabel];
  v18 = [(HRParagraphTableViewCell *)self titleLabel];
  [v17 hk_alignHorizontalConstraintsWithView:v18 margin:0.0];

  v19 = [(HRParagraphTableViewCell *)self button];
  v20 = [v19 firstBaselineAnchor];
  v21 = [(HRParagraphTableViewCell *)self paragraphLabel];
  v22 = [v21 lastBaselineAnchor];
  [(HRParagraphTableViewCell *)self _subtitleLabelBaselineToButton];
  v23 = [v20 constraintEqualToAnchor:v22 constant:?];
  [(HRParagraphTableViewCell *)self setButtonBaselineConstraint:v23];

  v24 = [(HRParagraphTableViewCell *)self buttonBaselineConstraint];
  [v24 setActive:1];

  v25 = [(HRParagraphTableViewCell *)self button];
  v26 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [v25 hk_alignHorizontalConstraintsWithView:v26 margin:0.0];

  v27 = [(HRParagraphTableViewCell *)self contentView];
  v28 = [v27 bottomAnchor];
  v29 = [(HRParagraphTableViewCell *)self paragraphLabel];
  v30 = [v29 lastBaselineAnchor];
  [(HRParagraphTableViewCell *)self _lastViewToBottom];
  v31 = [v28 constraintEqualToAnchor:v30 constant:?];
  [(HRParagraphTableViewCell *)self setContentViewParagraphBottomConstraint:v31];

  v32 = [(HRParagraphTableViewCell *)self contentView];
  v33 = [v32 bottomAnchor];
  v34 = [(HRParagraphTableViewCell *)self button];
  v35 = [v34 lastBaselineAnchor];
  [(HRParagraphTableViewCell *)self _lastViewToBottom];
  v36 = [v33 constraintEqualToAnchor:v35 constant:?];
  [(HRParagraphTableViewCell *)self setContentViewButtonBottomConstraint:v36];

  [(HRParagraphTableViewCell *)self _updateBottomConstraint];
}

- (id)_titleLabelFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRParagraphTableViewCell *)self _titleLabelFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:32770];

  return v4;
}

- (double)_titleLabelTopToBaseline
{
  v2 = MEMORY[0x277D75520];
  v3 = [(HRParagraphTableViewCell *)self _titleLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:v3];

  [v4 scaledValueForValue:30.0];
  v6 = v5;

  return v6;
}

- (id)_paragraphLabelFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRParagraphTableViewCell *)self _paragraphLabelFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:0x8000];

  return v4;
}

- (double)_titleLabelBaselineToParagraphBaseline
{
  v2 = MEMORY[0x277D75520];
  v3 = [(HRParagraphTableViewCell *)self _paragraphLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:v3];

  [v4 scaledValueForValue:24.0];
  v6 = v5;

  return v6;
}

- (double)_subtitleLabelBaselineToButton
{
  v2 = MEMORY[0x277D75520];
  v3 = [(HRParagraphTableViewCell *)self _paragraphLabelFontTextStyle];
  v4 = [v2 metricsForTextStyle:v3];

  [v4 scaledValueForValue:24.0];
  v6 = v5;

  return v6;
}

- (id)_buttonFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRParagraphTableViewCell *)self _buttonFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:0x8000];

  return v4;
}

- (double)_lastViewToBottom
{
  v2 = MEMORY[0x277D75520];
  v3 = [(HRParagraphTableViewCell *)self _buttonFontTextStyle];
  v4 = [v2 metricsForTextStyle:v3];

  [v4 scaledValueForValue:20.0];
  v6 = v5;

  return v6;
}

- (void)_updateBottomConstraint
{
  v3 = [(HRParagraphTableViewCell *)self buttonText];
  v4 = v3 != 0;
  v5 = v3 == 0;

  v6 = [(HRParagraphTableViewCell *)self contentViewParagraphBottomConstraint];
  [v6 setActive:v5];

  v7 = [(HRParagraphTableViewCell *)self contentViewButtonBottomConstraint];
  [v7 setActive:v4];
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
  v3 = [(HRParagraphTableViewCell *)self _titleLabelFont];
  v4 = [(HRParagraphTableViewCell *)self titleLabel];
  [v4 setFont:v3];

  v5 = [(HRParagraphTableViewCell *)self _paragraphLabelFont];
  v6 = [(HRParagraphTableViewCell *)self paragraphLabel];
  [v6 setFont:v5];

  v7 = [(HRParagraphTableViewCell *)self _buttonFont];
  v8 = [(HRParagraphTableViewCell *)self button];
  v9 = [v8 titleLabel];
  [v9 setFont:v7];

  [(HRParagraphTableViewCell *)self _titleLabelTopToBaseline];
  v11 = v10;
  v12 = [(HRParagraphTableViewCell *)self titleLabelBaselineConstraint];
  [v12 setConstant:v11];

  [(HRParagraphTableViewCell *)self _titleLabelBaselineToParagraphBaseline];
  v14 = v13;
  v15 = [(HRParagraphTableViewCell *)self paragraphLabelBaselineConstraint];
  [v15 setConstant:v14];

  [(HRParagraphTableViewCell *)self _subtitleLabelBaselineToButton];
  v17 = v16;
  v18 = [(HRParagraphTableViewCell *)self buttonBaselineConstraint];
  [v18 setConstant:v17];

  [(HRParagraphTableViewCell *)self _lastViewToBottom];
  v20 = v19;
  v21 = [(HRParagraphTableViewCell *)self contentViewParagraphBottomConstraint];
  [v21 setConstant:v20];

  [(HRParagraphTableViewCell *)self _lastViewToBottom];
  v23 = v22;
  v24 = [(HRParagraphTableViewCell *)self contentViewButtonBottomConstraint];
  [v24 setConstant:v23];

  [(HRParagraphTableViewCell *)self _updateBottomConstraint];
}

@end