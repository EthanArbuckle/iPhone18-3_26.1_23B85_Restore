@interface HKInfographicTextViewCell
- (HKInfographicTextViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_labelWithFont:(id)font;
- (void)updateAutomationIdentifiersWith:(id)with;
@end

@implementation HKInfographicTextViewCell

- (HKInfographicTextViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v35[4] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = HKInfographicTextViewCell;
  v4 = [(HKInfographicTextViewCell *)&v34 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    _descriptionFont = [(HKInfographicTextViewCell *)v4 _descriptionFont];
    v7 = [(HKInfographicTextViewCell *)v5 _labelWithFont:_descriptionFont];
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v7;

    contentView = [(HKInfographicTextViewCell *)v5 contentView];
    [contentView addSubview:v5->_descriptionLabel];

    contentView2 = [(HKInfographicTextViewCell *)v5 contentView];
    [contentView2 setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];

    v24 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v5->_descriptionLabel topAnchor];
    contentView3 = [(HKInfographicTextViewCell *)v5 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[0] = v29;
    leadingAnchor = [(UILabel *)v5->_descriptionLabel leadingAnchor];
    contentView4 = [(HKInfographicTextViewCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[1] = v23;
    trailingAnchor = [(UILabel *)v5->_descriptionLabel trailingAnchor];
    contentView5 = [(HKInfographicTextViewCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[2] = v13;
    bottomAnchor = [(UILabel *)v5->_descriptionLabel bottomAnchor];
    contentView6 = [(HKInfographicTextViewCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
    [v24 activateConstraints:v19];
  }

  return v5;
}

- (id)_labelWithFont:(id)font
{
  v4 = MEMORY[0x1E69DCC10];
  fontCopy = font;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setFont:fontCopy];

  [v7 setAdjustsFontForContentSizeCategory:1];
  _descriptionTextColor = [(HKInfographicTextViewCell *)self _descriptionTextColor];
  [v7 setTextColor:_descriptionTextColor];

  [v7 setNumberOfLines:0];
  LODWORD(v9) = 1132068864;
  [v7 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1132068864;
  [v7 setContentHuggingPriority:0 forAxis:v10];
  [v7 setLineBreakMode:0];

  return v7;
}

- (void)updateAutomationIdentifiersWith:(id)with
{
  v13[3] = *MEMORY[0x1E69E9840];
  withCopy = with;
  v5 = withCopy;
  if (withCopy)
  {
    v13[0] = withCopy;
    v13[1] = @"InfographicTextItem";
    v13[2] = @"Cell";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v7 = HKUIJoinStringsForAutomationIdentifier(v6);
    [(HKInfographicTextViewCell *)self setAccessibilityIdentifier:v7];

    v12[0] = v5;
    v12[1] = @"InfographicTextItem";
    v12[2] = @"Description";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    v9 = HKUIJoinStringsForAutomationIdentifier(v8);
    descriptionLabel = [(HKInfographicTextViewCell *)self descriptionLabel];
    [descriptionLabel setAccessibilityIdentifier:v9];
  }

  else
  {
    [(HKInfographicTextViewCell *)self setAccessibilityIdentifier:0];
    descriptionLabel2 = [(HKInfographicTextViewCell *)self descriptionLabel];
    [descriptionLabel2 setAccessibilityIdentifier:0];
  }
}

@end