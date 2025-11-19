@interface HKParagraphTableViewCell
- (HKParagraphTableViewCell)initWithCoder:(id)a3;
- (HKParagraphTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)_buttonBaselineToBottom;
- (double)_subtitleLabelBaselineToButton;
- (double)_titleLabelBaselineToParagraphBaseline;
- (double)_titleLabelTopToBaseline;
- (int64_t)_buttonHorizontalAlignment;
- (void)_setupUI;
- (void)_updateForCurrentSizeCategory;
- (void)setButtonText:(id)a3;
- (void)setParagraphText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKParagraphTableViewCell

- (HKParagraphTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKParagraphTableViewCell;
  v4 = [(HKParagraphTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKParagraphTableViewCell *)v4 _setupUI];
  }

  return v5;
}

- (HKParagraphTableViewCell)initWithCoder:(id)a3
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

  v5 = [(HKParagraphTableViewCell *)self _titleLabelFont];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = [MEMORY[0x1E69DC888] blackColor];
  [(UILabel *)self->_titleLabel setTextColor:v6];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(HKParagraphTableViewCell *)self contentView];
  [v7 addSubview:self->_titleLabel];

  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  paragraphLabel = self->_paragraphLabel;
  self->_paragraphLabel = v8;

  v10 = [(HKParagraphTableViewCell *)self _paragraphLabelFont];
  [(UILabel *)self->_paragraphLabel setFont:v10];

  v11 = [MEMORY[0x1E69DC888] blackColor];
  [(UILabel *)self->_paragraphLabel setTextColor:v11];

  [(UILabel *)self->_paragraphLabel setNumberOfLines:0];
  [(UILabel *)self->_paragraphLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(HKParagraphTableViewCell *)self contentView];
  [v12 addSubview:self->_paragraphLabel];

  v13 = objc_alloc_init(MEMORY[0x1E69DC738]);
  button = self->_button;
  self->_button = v13;

  v15 = [(HKParagraphTableViewCell *)self _buttonFont];
  v16 = [(UIButton *)self->_button titleLabel];
  [v16 setFont:v15];

  v17 = self->_button;
  v18 = HKHealthKeyColor();
  [(UIButton *)v17 setTitleColor:v18 forState:0];

  [(UIButton *)self->_button setContentHorizontalAlignment:[(HKParagraphTableViewCell *)self _buttonHorizontalAlignment]];
  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [(HKParagraphTableViewCell *)self contentView];
  [v19 addSubview:self->_button];

  v20 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v21 = [(HKParagraphTableViewCell *)self contentView];
  v22 = [v21 topAnchor];
  [(HKParagraphTableViewCell *)self _titleLabelTopToBaseline];
  v23 = [v20 constraintEqualToAnchor:v22 constant:?];
  titleLabelBaselineConstraint = self->_titleLabelBaselineConstraint;
  self->_titleLabelBaselineConstraint = v23;

  [(NSLayoutConstraint *)self->_titleLabelBaselineConstraint setActive:1];
  v25 = [(UILabel *)self->_titleLabel leadingAnchor];
  v26 = [(HKParagraphTableViewCell *)self contentView];
  v27 = [v26 leadingAnchor];
  v28 = [v25 constraintEqualToAnchor:v27 constant:20.0];
  [v28 setActive:1];

  v29 = [(UILabel *)self->_titleLabel trailingAnchor];
  v30 = [(HKParagraphTableViewCell *)self contentView];
  v31 = [v30 trailingAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:-20.0];
  [v32 setActive:1];

  v33 = [(UILabel *)self->_paragraphLabel firstBaselineAnchor];
  v34 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  [(HKParagraphTableViewCell *)self _titleLabelBaselineToParagraphBaseline];
  v35 = [v33 constraintEqualToAnchor:v34 constant:?];
  paragraphLabelBaselineConstraint = self->_paragraphLabelBaselineConstraint;
  self->_paragraphLabelBaselineConstraint = v35;

  [(NSLayoutConstraint *)self->_paragraphLabelBaselineConstraint setActive:1];
  v37 = [(UILabel *)self->_paragraphLabel leadingAnchor];
  v38 = [(UILabel *)self->_titleLabel leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  [v39 setActive:1];

  v40 = [(UILabel *)self->_paragraphLabel trailingAnchor];
  v41 = [(UILabel *)self->_titleLabel trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = [(UIButton *)self->_button firstBaselineAnchor];
  v44 = [(UILabel *)self->_paragraphLabel lastBaselineAnchor];
  [(HKParagraphTableViewCell *)self _subtitleLabelBaselineToButton];
  v45 = [v43 constraintEqualToAnchor:v44 constant:?];
  buttonBaselineConstraint = self->_buttonBaselineConstraint;
  self->_buttonBaselineConstraint = v45;

  [(NSLayoutConstraint *)self->_buttonBaselineConstraint setActive:1];
  v47 = [(UIButton *)self->_button leadingAnchor];
  v48 = [(UILabel *)self->_paragraphLabel leadingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  v50 = [(UIButton *)self->_button trailingAnchor];
  v51 = [(UILabel *)self->_paragraphLabel trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  [v52 setActive:1];

  v53 = [(HKParagraphTableViewCell *)self contentView];
  v54 = [v53 bottomAnchor];
  v55 = [(UIButton *)self->_button lastBaselineAnchor];
  [(HKParagraphTableViewCell *)self _buttonBaselineToBottom];
  v56 = [v54 constraintEqualToAnchor:v55 constant:?];
  contentViewBottomConstraint = self->_contentViewBottomConstraint;
  self->_contentViewBottomConstraint = v56;

  v58 = self->_contentViewBottomConstraint;

  [(NSLayoutConstraint *)v58 setActive:1];
}

- (double)_titleLabelTopToBaseline
{
  v2 = [(HKParagraphTableViewCell *)self _titleLabelFont];
  [v2 _scaledValueForValue:30.0];
  v4 = v3;

  return v4;
}

- (double)_titleLabelBaselineToParagraphBaseline
{
  v2 = [(HKParagraphTableViewCell *)self _paragraphLabelFont];
  [v2 _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_subtitleLabelBaselineToButton
{
  v2 = [(HKParagraphTableViewCell *)self _paragraphLabelFont];
  [v2 _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_buttonBaselineToBottom
{
  v2 = [(HKParagraphTableViewCell *)self _buttonFont];
  [v2 _scaledValueForValue:20.0];
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
  v3 = [(HKParagraphTableViewCell *)self _titleLabelFont];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = [(HKParagraphTableViewCell *)self _paragraphLabelFont];
  [(UILabel *)self->_paragraphLabel setFont:v4];

  v5 = [(HKParagraphTableViewCell *)self _buttonFont];
  v6 = [(UIButton *)self->_button titleLabel];
  [v6 setFont:v5];

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

- (void)setTitleText:(id)a3
{
  objc_storeStrong(&self->_titleText, a3);
  v5 = a3;
  [(UILabel *)self->_titleLabel setText:v5];

  v6 = [(HKParagraphTableViewCell *)self contentView];
  [v6 setNeedsLayout];
}

- (void)setParagraphText:(id)a3
{
  objc_storeStrong(&self->_paragraphText, a3);
  v5 = a3;
  [(UILabel *)self->_paragraphLabel setText:v5];

  v6 = [(HKParagraphTableViewCell *)self contentView];
  [v6 setNeedsLayout];
}

- (void)setButtonText:(id)a3
{
  objc_storeStrong(&self->_buttonText, a3);
  v5 = a3;
  [(UIButton *)self->_button setTitle:v5 forState:0];

  v6 = [(HKParagraphTableViewCell *)self contentView];
  [v6 setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKParagraphTableViewCell;
  [(HKParagraphTableViewCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKParagraphTableViewCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKParagraphTableViewCell *)self _updateForCurrentSizeCategory];
    }
  }
}

@end