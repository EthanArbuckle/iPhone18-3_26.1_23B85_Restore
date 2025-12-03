@interface HKInfographicContentViewCell
- (HKInfographicContentViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_labelWithFont:(id)font;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateAutomationIdentifiersWith:(id)with;
@end

@implementation HKInfographicContentViewCell

- (HKInfographicContentViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v50[7] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = HKInfographicContentViewCell;
  v4 = [(HKInfographicContentViewCell *)&v49 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    _titleFont = [(HKInfographicContentViewCell *)v4 _titleFont];
    v7 = [(HKInfographicContentViewCell *)v5 _labelWithFont:_titleFont];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v7;

    _descriptionFont = [(HKInfographicContentViewCell *)v5 _descriptionFont];
    v10 = [(HKInfographicContentViewCell *)v5 _labelWithFont:_descriptionFont];
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v10;

    contentView = [(HKInfographicContentViewCell *)v5 contentView];
    [contentView addSubview:v5->_titleLabel];

    contentView2 = [(HKInfographicContentViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_descriptionLabel];

    contentView3 = [(HKInfographicContentViewCell *)v5 contentView];
    [contentView3 setDirectionalLayoutMargins:{7.0, 7.0, 7.0, 7.0}];

    v36 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v5->_titleLabel topAnchor];
    contentView4 = [(HKInfographicContentViewCell *)v5 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[0] = v44;
    leadingAnchor = [(UILabel *)v5->_titleLabel leadingAnchor];
    contentView5 = [(HKInfographicContentViewCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v50[1] = v39;
    trailingAnchor = [(UILabel *)v5->_titleLabel trailingAnchor];
    contentView6 = [(HKInfographicContentViewCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v50[2] = v33;
    topAnchor3 = [(UILabel *)v5->_descriptionLabel topAnchor];
    bottomAnchor = [(UILabel *)v5->_titleLabel bottomAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:3.0];
    v50[3] = v30;
    leadingAnchor3 = [(UILabel *)v5->_descriptionLabel leadingAnchor];
    leadingAnchor4 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v50[4] = v27;
    trailingAnchor3 = [(UILabel *)v5->_descriptionLabel trailingAnchor];
    trailingAnchor4 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v50[5] = v17;
    bottomAnchor2 = [(UILabel *)v5->_descriptionLabel bottomAnchor];
    contentView7 = [(HKInfographicContentViewCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView7 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide4 bottomAnchor];
    v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v50[6] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:7];
    [v36 activateConstraints:v23];

    contentView8 = [(HKInfographicContentViewCell *)v5 contentView];
    layer = [contentView8 layer];
    [layer setMasksToBounds:1];
  }

  return v5;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = HKInfographicContentViewCell;
  [(HKInfographicContentViewCell *)&v4 setSelected:selected animated:animated];
}

- (id)_labelWithFont:(id)font
{
  v3 = MEMORY[0x1E69DCC10];
  fontCopy = font;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setFont:fontCopy];

  [v6 setAdjustsFontForContentSizeCategory:1];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v6 setTextColor:labelColor];

  [v6 setClipsToBounds:0];
  [v6 setNumberOfLines:0];
  LODWORD(v8) = 1132068864;
  [v6 setContentCompressionResistancePriority:0 forAxis:v8];
  LODWORD(v9) = 1132068864;
  [v6 setContentHuggingPriority:0 forAxis:v9];
  [v6 setLineBreakMode:0];

  return v6;
}

- (void)updateAutomationIdentifiersWith:(id)with
{
  v18[3] = *MEMORY[0x1E69E9840];
  withCopy = with;
  v5 = withCopy;
  if (withCopy)
  {
    v18[0] = withCopy;
    v18[1] = @"InfographicContentItem";
    v18[2] = @"Cell";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v7 = HKUIJoinStringsForAutomationIdentifier(v6);
    [(HKInfographicContentViewCell *)self setAccessibilityIdentifier:v7];

    v17[0] = v5;
    v17[1] = @"InfographicContentItem";
    v17[2] = @"Title";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v9 = HKUIJoinStringsForAutomationIdentifier(v8);
    titleLabel = [(HKInfographicContentViewCell *)self titleLabel];
    [titleLabel setAccessibilityIdentifier:v9];

    v16[0] = v5;
    v16[1] = @"InfographicContentItem";
    v16[2] = @"Description";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v12 = HKUIJoinStringsForAutomationIdentifier(v11);
    descriptionLabel = [(HKInfographicContentViewCell *)self descriptionLabel];
    [descriptionLabel setAccessibilityIdentifier:v12];
  }

  else
  {
    [(HKInfographicContentViewCell *)self setAccessibilityIdentifier:0];
    titleLabel2 = [(HKInfographicContentViewCell *)self titleLabel];
    [titleLabel2 setAccessibilityIdentifier:0];

    descriptionLabel2 = [(HKInfographicContentViewCell *)self descriptionLabel];
    [descriptionLabel2 setAccessibilityIdentifier:0];
  }
}

@end