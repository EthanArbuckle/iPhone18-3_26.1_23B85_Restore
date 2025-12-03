@interface HUTitleDescriptionContentView
- (HUTitleDescriptionContentView)initWithFrame:(CGRect)frame;
- (UIFont)descriptionFont;
- (UIFont)titleFont;
- (void)_setupDescriptionLabel;
- (void)_setupStackView;
- (void)_setupTitleLabel;
- (void)_updateLabel:(id)label withContent:(id)content;
- (void)setDescriptionFont:(id)font;
- (void)setDescriptionText:(id)text;
- (void)setDescriptionTextColor:(id)color;
- (void)setDisabled:(BOOL)disabled;
- (void)setTitleFont:(id)font;
- (void)setTitleText:(id)text;
- (void)setTitleTextColor:(id)color;
@end

@implementation HUTitleDescriptionContentView

- (HUTitleDescriptionContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUTitleDescriptionContentView;
  v3 = [(HUTitleDescriptionContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUTitleDescriptionContentView *)v3 _setupStackView];
    [(HUTitleDescriptionContentView *)v4 _setupTitleLabel];
    [(HUTitleDescriptionContentView *)v4 _setupDescriptionLabel];
  }

  return v4;
}

- (void)setTitleText:(id)text
{
  objc_storeStrong(&self->_titleText, text);
  textCopy = text;
  titleLabel = [(HUTitleDescriptionContentView *)self titleLabel];
  [(HUTitleDescriptionContentView *)self _updateLabel:titleLabel withContent:textCopy];
}

- (void)setTitleTextColor:(id)color
{
  colorCopy = color;
  titleLabel = [(HUTitleDescriptionContentView *)self titleLabel];
  [titleLabel setTextColor:colorCopy];
}

- (void)setDescriptionText:(id)text
{
  objc_storeStrong(&self->_descriptionText, text);
  textCopy = text;
  descriptionLabel = [(HUTitleDescriptionContentView *)self descriptionLabel];
  [(HUTitleDescriptionContentView *)self _updateLabel:descriptionLabel withContent:textCopy];
}

- (void)setDescriptionTextColor:(id)color
{
  colorCopy = color;
  descriptionLabel = [(HUTitleDescriptionContentView *)self descriptionLabel];
  [descriptionLabel setTextColor:colorCopy];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    if (disabled)
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] labelColor];
    }
    v5 = ;
    titleLabel = [(HUTitleDescriptionContentView *)self titleLabel];
    [titleLabel setTextColor:v5];

    titleLabel2 = [(HUTitleDescriptionContentView *)self titleLabel];
    titleText = [(HUTitleDescriptionContentView *)self titleText];
    [(HUTitleDescriptionContentView *)self _updateLabel:titleLabel2 withContent:titleText];
  }
}

- (UIFont)titleFont
{
  titleLabel = [(HUTitleDescriptionContentView *)self titleLabel];
  font = [titleLabel font];

  return font;
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  titleLabel = [(HUTitleDescriptionContentView *)self titleLabel];
  [titleLabel setFont:fontCopy];

  titleLabel2 = [(HUTitleDescriptionContentView *)self titleLabel];
  titleText = [(HUTitleDescriptionContentView *)self titleText];
  [(HUTitleDescriptionContentView *)self _updateLabel:titleLabel2 withContent:titleText];
}

- (UIFont)descriptionFont
{
  descriptionLabel = [(HUTitleDescriptionContentView *)self descriptionLabel];
  font = [descriptionLabel font];

  return font;
}

- (void)setDescriptionFont:(id)font
{
  fontCopy = font;
  descriptionLabel = [(HUTitleDescriptionContentView *)self descriptionLabel];
  [descriptionLabel setFont:fontCopy];

  descriptionLabel2 = [(HUTitleDescriptionContentView *)self descriptionLabel];
  descriptionText = [(HUTitleDescriptionContentView *)self descriptionText];
  [(HUTitleDescriptionContentView *)self _updateLabel:descriptionLabel2 withContent:descriptionText];
}

- (void)_setupStackView
{
  v30[5] = *MEMORY[0x277D85DE8];
  if (self->_stackView)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTitleDescriptionContentView.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"!_stackView"}];
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
  stackView = [(HUTitleDescriptionContentView *)self stackView];
  leadingAnchor = [stackView leadingAnchor];
  leadingAnchor2 = [(HUTitleDescriptionContentView *)self leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[0] = v26;
  stackView2 = [(HUTitleDescriptionContentView *)self stackView];
  trailingAnchor = [stackView2 trailingAnchor];
  trailingAnchor2 = [(HUTitleDescriptionContentView *)self trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[1] = v22;
  stackView3 = [(HUTitleDescriptionContentView *)self stackView];
  topAnchor = [stackView3 topAnchor];
  topAnchor2 = [(HUTitleDescriptionContentView *)self topAnchor];
  v6 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v30[2] = v6;
  stackView4 = [(HUTitleDescriptionContentView *)self stackView];
  bottomAnchor = [stackView4 bottomAnchor];
  bottomAnchor2 = [(HUTitleDescriptionContentView *)self bottomAnchor];
  v10 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v30[3] = v10;
  stackView5 = [(HUTitleDescriptionContentView *)self stackView];
  centerYAnchor = [stackView5 centerYAnchor];
  centerYAnchor2 = [(HUTitleDescriptionContentView *)self centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v30[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
  [v20 activateConstraints:v15];
}

- (void)_setupTitleLabel
{
  if (self->_titleLabel)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTitleDescriptionContentView.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"!_titleLabel"}];
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
  stackView = [(HUTitleDescriptionContentView *)self stackView];
  [stackView insertArrangedSubview:self->_titleLabel atIndex:0];

  v10 = self->_titleLabel;
  titleText = [(HUTitleDescriptionContentView *)self titleText];
  [(HUTitleDescriptionContentView *)self _updateLabel:v10 withContent:titleText];
}

- (void)_setupDescriptionLabel
{
  if (self->_descriptionLabel)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTitleDescriptionContentView.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"!_descriptionLabel"}];
  }

  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v4;

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [(UILabel *)self->_descriptionLabel setFont:v6];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_descriptionLabel setTextColor:systemGrayColor];

  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  LODWORD(v8) = 1144766464;
  [(UILabel *)self->_descriptionLabel setContentHuggingPriority:1 forAxis:v8];
  stackView = [(HUTitleDescriptionContentView *)self stackView];
  [stackView addArrangedSubview:self->_descriptionLabel];

  v10 = self->_descriptionLabel;
  descriptionText = [(HUTitleDescriptionContentView *)self descriptionText];
  [(HUTitleDescriptionContentView *)self _updateLabel:v10 withContent:descriptionText];
}

- (void)_updateLabel:(id)label withContent:(id)content
{
  v15[2] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  contentCopy = content;
  v14[0] = *MEMORY[0x277D740A8];
  font = [labelCopy font];
  v15[0] = font;
  v14[1] = *MEMORY[0x277D740C0];
  textColor = [labelCopy textColor];
  v15[1] = textColor;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  if ([contentCopy prefersDynamicString])
  {
    [labelCopy bounds];
    [contentCopy dynamicStringForSize:v9 attributes:{v10, v11}];
  }

  else
  {
    [contentCopy stringWithAttributes:v9];
  }
  v12 = ;
  [labelCopy setAttributedText:v12];

  attributedText = [labelCopy attributedText];
  [labelCopy setHidden:{objc_msgSend(attributedText, "length") == 0}];
}

@end