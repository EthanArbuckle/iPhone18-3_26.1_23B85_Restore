@interface NMBUIAlertHeaderView
- (UILabel)detailTextLabel;
- (UILabel)textLabel;
- (id)_backgroundView;
- (id)_contentStackView;
- (void)tintColorDidChange;
@end

@implementation NMBUIAlertHeaderView

- (UILabel)textLabel
{
  textLabel = self->_textLabel;
  if (!textLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v5 setFont:v6];

    [(UILabel *)v5 setAdjustsFontForContentSizeCategory:1];
    v7 = [(NMBUIAlertHeaderView *)self tintColor];
    [(UILabel *)v5 setTextColor:v7];

    v8 = [(NMBUIAlertHeaderView *)self _contentStackView];
    [v8 insertArrangedSubview:v5 atIndex:0];

    v9 = self->_textLabel;
    self->_textLabel = v5;

    textLabel = self->_textLabel;
  }

  return textLabel;
}

- (UILabel)detailTextLabel
{
  detailTextLabel = self->_detailTextLabel;
  if (!detailTextLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v5 setFont:v6];

    [(UILabel *)v5 setAdjustsFontForContentSizeCategory:1];
    v7 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v5 setTextColor:v7];

    [(UILabel *)v5 setNumberOfLines:0];
    v8 = [(NMBUIAlertHeaderView *)self _contentStackView];
    v9 = [(NMBUIAlertHeaderView *)self _contentStackView];
    v10 = [v9 arrangedSubviews];
    v11 = [v10 count];

    [v8 insertArrangedSubview:v5 atIndex:v11 != 0];
    v12 = self->_detailTextLabel;
    self->_detailTextLabel = v5;

    detailTextLabel = self->_detailTextLabel;
  }

  return detailTextLabel;
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = NMBUIAlertHeaderView;
  [(NMBUIAlertHeaderView *)&v6 tintColorDidChange];
  v3 = [(NMBUIAlertHeaderView *)self tintColor];
  v4 = [v3 colorWithAlphaComponent:0.2];
  [(UIView *)self->_backgroundView setBackgroundColor:v4];

  v5 = [(NMBUIAlertHeaderView *)self tintColor];
  [(UILabel *)self->_textLabel setTextColor:v5];
}

- (id)_backgroundView
{
  v29[4] = *MEMORY[0x277D85DE8];
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = [(NMBUIAlertHeaderView *)self tintColor];
    v7 = [v6 colorWithAlphaComponent:0.2];
    [(UIView *)v5 setBackgroundColor:v7];

    [(UIView *)v5 _setContinuousCornerRadius:10.0];
    [(NMBUIAlertHeaderView *)self addSubview:v5];
    v8 = self->_backgroundView;
    self->_backgroundView = v5;
    v9 = v5;

    [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    v27 = [(UIView *)v9 leadingAnchor];
    v28 = [(NMBUIAlertHeaderView *)self layoutMarginsGuide];
    v26 = [v28 leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v29[0] = v25;
    v23 = [(UIView *)v9 trailingAnchor];
    v24 = [(NMBUIAlertHeaderView *)self layoutMarginsGuide];
    v22 = [v24 trailingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v29[1] = v21;
    v19 = [(UIView *)v9 topAnchor];
    v10 = [(NMBUIAlertHeaderView *)self layoutMarginsGuide];
    v11 = [v10 topAnchor];
    v12 = [v19 constraintEqualToAnchor:v11];
    v29[2] = v12;
    v13 = [(UIView *)v9 bottomAnchor];
    v14 = [(NMBUIAlertHeaderView *)self layoutMarginsGuide];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v29[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v20 activateConstraints:v17];

    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (id)_contentStackView
{
  v28[4] = *MEMORY[0x277D85DE8];
  contentStackView = self->_contentStackView;
  if (!contentStackView)
  {
    v4 = objc_alloc(MEMORY[0x277D75A68]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UIStackView *)v5 setAxis:1];
    v6 = [(NMBUIAlertHeaderView *)self _backgroundView];
    [v6 addSubview:v5];

    v7 = self->_contentStackView;
    self->_contentStackView = v5;
    v8 = v5;

    [(UIStackView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    v26 = [(UIStackView *)v8 leadingAnchor];
    v27 = [(UIStackView *)v8 superview];
    v25 = [v27 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25 constant:16.0];
    v28[0] = v24;
    v22 = [(UIStackView *)v8 trailingAnchor];
    v23 = [(UIStackView *)v8 superview];
    v21 = [v23 trailingAnchor];
    v19 = [v22 constraintEqualToAnchor:v21 constant:-16.0];
    v28[1] = v19;
    v17 = [(UIStackView *)v8 topAnchor];
    v18 = [(UIStackView *)v8 superview];
    v9 = [v18 topAnchor];
    v10 = [v17 constraintEqualToAnchor:v9 constant:16.0];
    v28[2] = v10;
    v11 = [(UIStackView *)v8 bottomAnchor];
    v12 = [(UIStackView *)v8 superview];
    v13 = [v12 bottomAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:-16.0];
    v28[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v20 activateConstraints:v15];

    contentStackView = self->_contentStackView;
  }

  return contentStackView;
}

@end