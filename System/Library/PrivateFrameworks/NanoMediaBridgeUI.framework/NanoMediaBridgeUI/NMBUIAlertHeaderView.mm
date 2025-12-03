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
    tintColor = [(NMBUIAlertHeaderView *)self tintColor];
    [(UILabel *)v5 setTextColor:tintColor];

    _contentStackView = [(NMBUIAlertHeaderView *)self _contentStackView];
    [_contentStackView insertArrangedSubview:v5 atIndex:0];

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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v5 setTextColor:whiteColor];

    [(UILabel *)v5 setNumberOfLines:0];
    _contentStackView = [(NMBUIAlertHeaderView *)self _contentStackView];
    _contentStackView2 = [(NMBUIAlertHeaderView *)self _contentStackView];
    arrangedSubviews = [_contentStackView2 arrangedSubviews];
    v11 = [arrangedSubviews count];

    [_contentStackView insertArrangedSubview:v5 atIndex:v11 != 0];
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
  tintColor = [(NMBUIAlertHeaderView *)self tintColor];
  v4 = [tintColor colorWithAlphaComponent:0.2];
  [(UIView *)self->_backgroundView setBackgroundColor:v4];

  tintColor2 = [(NMBUIAlertHeaderView *)self tintColor];
  [(UILabel *)self->_textLabel setTextColor:tintColor2];
}

- (id)_backgroundView
{
  v29[4] = *MEMORY[0x277D85DE8];
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    tintColor = [(NMBUIAlertHeaderView *)self tintColor];
    v7 = [tintColor colorWithAlphaComponent:0.2];
    [(UIView *)v5 setBackgroundColor:v7];

    [(UIView *)v5 _setContinuousCornerRadius:10.0];
    [(NMBUIAlertHeaderView *)self addSubview:v5];
    v8 = self->_backgroundView;
    self->_backgroundView = v5;
    v9 = v5;

    [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIView *)v9 leadingAnchor];
    layoutMarginsGuide = [(NMBUIAlertHeaderView *)self layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[0] = v25;
    trailingAnchor = [(UIView *)v9 trailingAnchor];
    layoutMarginsGuide2 = [(NMBUIAlertHeaderView *)self layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[1] = v21;
    topAnchor = [(UIView *)v9 topAnchor];
    layoutMarginsGuide3 = [(NMBUIAlertHeaderView *)self layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[2] = v12;
    bottomAnchor = [(UIView *)v9 bottomAnchor];
    layoutMarginsGuide4 = [(NMBUIAlertHeaderView *)self layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
    _backgroundView = [(NMBUIAlertHeaderView *)self _backgroundView];
    [_backgroundView addSubview:v5];

    v7 = self->_contentStackView;
    self->_contentStackView = v5;
    v8 = v5;

    [(UIStackView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIStackView *)v8 leadingAnchor];
    superview = [(UIStackView *)v8 superview];
    leadingAnchor2 = [superview leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v28[0] = v24;
    trailingAnchor = [(UIStackView *)v8 trailingAnchor];
    superview2 = [(UIStackView *)v8 superview];
    trailingAnchor2 = [superview2 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v28[1] = v19;
    topAnchor = [(UIStackView *)v8 topAnchor];
    superview3 = [(UIStackView *)v8 superview];
    topAnchor2 = [superview3 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    v28[2] = v10;
    bottomAnchor = [(UIStackView *)v8 bottomAnchor];
    superview4 = [(UIStackView *)v8 superview];
    bottomAnchor2 = [superview4 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    v28[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v20 activateConstraints:v15];

    contentStackView = self->_contentStackView;
  }

  return contentStackView;
}

@end