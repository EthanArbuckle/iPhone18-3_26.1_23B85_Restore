@interface HUTitleDescriptionContentView
- (HUTitleDescriptionContentView)initWithFrame:(CGRect)a3;
- (UIFont)descriptionFont;
- (UIFont)titleFont;
- (void)_setupDescriptionLabel;
- (void)_setupStackView;
- (void)_setupTitleLabel;
- (void)_updateLabel:(id)a3 withContent:(id)a4;
- (void)setDescriptionFont:(id)a3;
- (void)setDescriptionText:(id)a3;
- (void)setDescriptionTextColor:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setTitleFont:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setTitleTextColor:(id)a3;
@end

@implementation HUTitleDescriptionContentView

- (HUTitleDescriptionContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUTitleDescriptionContentView;
  v3 = [(HUTitleDescriptionContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUTitleDescriptionContentView *)v3 _setupStackView];
    [(HUTitleDescriptionContentView *)v4 _setupTitleLabel];
    [(HUTitleDescriptionContentView *)v4 _setupDescriptionLabel];
  }

  return v4;
}

- (void)setTitleText:(id)a3
{
  objc_storeStrong(&self->_titleText, a3);
  v5 = a3;
  v6 = [(HUTitleDescriptionContentView *)self titleLabel];
  [(HUTitleDescriptionContentView *)self _updateLabel:v6 withContent:v5];
}

- (void)setTitleTextColor:(id)a3
{
  v4 = a3;
  v5 = [(HUTitleDescriptionContentView *)self titleLabel];
  [v5 setTextColor:v4];
}

- (void)setDescriptionText:(id)a3
{
  objc_storeStrong(&self->_descriptionText, a3);
  v5 = a3;
  v6 = [(HUTitleDescriptionContentView *)self descriptionLabel];
  [(HUTitleDescriptionContentView *)self _updateLabel:v6 withContent:v5];
}

- (void)setDescriptionTextColor:(id)a3
{
  v4 = a3;
  v5 = [(HUTitleDescriptionContentView *)self descriptionLabel];
  [v5 setTextColor:v4];
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    if (a3)
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] labelColor];
    }
    v5 = ;
    v6 = [(HUTitleDescriptionContentView *)self titleLabel];
    [v6 setTextColor:v5];

    v8 = [(HUTitleDescriptionContentView *)self titleLabel];
    v7 = [(HUTitleDescriptionContentView *)self titleText];
    [(HUTitleDescriptionContentView *)self _updateLabel:v8 withContent:v7];
  }
}

- (UIFont)titleFont
{
  v2 = [(HUTitleDescriptionContentView *)self titleLabel];
  v3 = [v2 font];

  return v3;
}

- (void)setTitleFont:(id)a3
{
  v4 = a3;
  v5 = [(HUTitleDescriptionContentView *)self titleLabel];
  [v5 setFont:v4];

  v7 = [(HUTitleDescriptionContentView *)self titleLabel];
  v6 = [(HUTitleDescriptionContentView *)self titleText];
  [(HUTitleDescriptionContentView *)self _updateLabel:v7 withContent:v6];
}

- (UIFont)descriptionFont
{
  v2 = [(HUTitleDescriptionContentView *)self descriptionLabel];
  v3 = [v2 font];

  return v3;
}

- (void)setDescriptionFont:(id)a3
{
  v4 = a3;
  v5 = [(HUTitleDescriptionContentView *)self descriptionLabel];
  [v5 setFont:v4];

  v7 = [(HUTitleDescriptionContentView *)self descriptionLabel];
  v6 = [(HUTitleDescriptionContentView *)self descriptionText];
  [(HUTitleDescriptionContentView *)self _updateLabel:v7 withContent:v6];
}

- (void)_setupStackView
{
  v30[5] = *MEMORY[0x277D85DE8];
  if (self->_stackView)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HUTitleDescriptionContentView.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"!_stackView"}];
  }

  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  stackView = self->_stackView;
  self->_stackView = v3;

  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setAlignment:1];
  [(UIStackView *)self->_stackView setSpacing:2.0];
  [(HUTitleDescriptionContentView *)self addSubview:self->_stackView];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1148846080;
  [(UIStackView *)self->_stackView setContentHuggingPriority:1 forAxis:v5];
  v20 = MEMORY[0x277CCAAD0];
  v29 = [(HUTitleDescriptionContentView *)self stackView];
  v28 = [v29 leadingAnchor];
  v27 = [(HUTitleDescriptionContentView *)self leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v30[0] = v26;
  v25 = [(HUTitleDescriptionContentView *)self stackView];
  v24 = [v25 trailingAnchor];
  v23 = [(HUTitleDescriptionContentView *)self trailingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v30[1] = v22;
  v21 = [(HUTitleDescriptionContentView *)self stackView];
  v19 = [v21 topAnchor];
  v18 = [(HUTitleDescriptionContentView *)self topAnchor];
  v6 = [v19 constraintGreaterThanOrEqualToAnchor:v18];
  v30[2] = v6;
  v7 = [(HUTitleDescriptionContentView *)self stackView];
  v8 = [v7 bottomAnchor];
  v9 = [(HUTitleDescriptionContentView *)self bottomAnchor];
  v10 = [v8 constraintLessThanOrEqualToAnchor:v9];
  v30[3] = v10;
  v11 = [(HUTitleDescriptionContentView *)self stackView];
  v12 = [v11 centerYAnchor];
  v13 = [(HUTitleDescriptionContentView *)self centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v30[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
  [v20 activateConstraints:v15];
}

- (void)_setupTitleLabel
{
  if (self->_titleLabel)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUTitleDescriptionContentView.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"!_titleLabel"}];
  }

  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_titleLabel setFont:v6];

  [(UILabel *)self->_titleLabel setNumberOfLines:2];
  LODWORD(v7) = 1144766464;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1132134400;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v8];
  v9 = [(HUTitleDescriptionContentView *)self stackView];
  [v9 insertArrangedSubview:self->_titleLabel atIndex:0];

  v10 = self->_titleLabel;
  v13 = [(HUTitleDescriptionContentView *)self titleText];
  [(HUTitleDescriptionContentView *)self _updateLabel:v10 withContent:v13];
}

- (void)_setupDescriptionLabel
{
  if (self->_descriptionLabel)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUTitleDescriptionContentView.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"!_descriptionLabel"}];
  }

  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v4;

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [(UILabel *)self->_descriptionLabel setFont:v6];

  v7 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_descriptionLabel setTextColor:v7];

  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  LODWORD(v8) = 1144766464;
  [(UILabel *)self->_descriptionLabel setContentHuggingPriority:1 forAxis:v8];
  v9 = [(HUTitleDescriptionContentView *)self stackView];
  [v9 addArrangedSubview:self->_descriptionLabel];

  v10 = self->_descriptionLabel;
  v13 = [(HUTitleDescriptionContentView *)self descriptionText];
  [(HUTitleDescriptionContentView *)self _updateLabel:v10 withContent:v13];
}

- (void)_updateLabel:(id)a3 withContent:(id)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v14[0] = *MEMORY[0x277D740A8];
  v7 = [v5 font];
  v15[0] = v7;
  v14[1] = *MEMORY[0x277D740C0];
  v8 = [v5 textColor];
  v15[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  if ([v6 prefersDynamicString])
  {
    [v5 bounds];
    [v6 dynamicStringForSize:v9 attributes:{v10, v11}];
  }

  else
  {
    [v6 stringWithAttributes:v9];
  }
  v12 = ;
  [v5 setAttributedText:v12];

  v13 = [v5 attributedText];
  [v5 setHidden:{objc_msgSend(v13, "length") == 0}];
}

@end