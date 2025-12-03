@interface HKInfographicTableViewCell
- (HKInfographicTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_labelWithFont:(id)font;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateAutomationIdentifiersWith:(id)with;
@end

@implementation HKInfographicTableViewCell

- (HKInfographicTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v69[11] = *MEMORY[0x1E69E9840];
  v68.receiver = self;
  v68.super_class = HKInfographicTableViewCell;
  v4 = [(HKInfographicTableViewCell *)&v68 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->hideSeparator = 0;
    _titleFont = [(HKInfographicTableViewCell *)v4 _titleFont];
    v7 = [(HKInfographicTableViewCell *)v5 _labelWithFont:_titleFont];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v7;

    _valueFont = [(HKInfographicTableViewCell *)v5 _valueFont];
    v10 = [(HKInfographicTableViewCell *)v5 _labelWithFont:_valueFont];
    valueLabel = v5->_valueLabel;
    v5->_valueLabel = v10;

    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    separator = v5->_separator;
    v5->_separator = v13;

    v15 = v5->_separator;
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v15 setBackgroundColor:separatorColor];

    [(UIView *)v5->_separator setHidden:v5->hideSeparator];
    [(UIView *)v5->_separator setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v17) = 1148846080;
    [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:0 forAxis:v17];
    [(UILabel *)v5->_valueLabel setTextAlignment:2];
    contentView = [(HKInfographicTableViewCell *)v5 contentView];
    [contentView addSubview:v5->_titleLabel];

    contentView2 = [(HKInfographicTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_valueLabel];

    contentView3 = [(HKInfographicTableViewCell *)v5 contentView];
    [contentView3 addSubview:v5->_separator];

    contentView4 = [(HKInfographicTableViewCell *)v5 contentView];
    [contentView4 setDirectionalLayoutMargins:{3.0, 3.0, 3.0, 3.0}];

    v50 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v5->_titleLabel topAnchor];
    contentView5 = [(HKInfographicTableViewCell *)v5 contentView];
    layoutMarginsGuide = [contentView5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v63 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v69[0] = v63;
    leadingAnchor = [(UILabel *)v5->_titleLabel leadingAnchor];
    contentView6 = [(HKInfographicTableViewCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v69[1] = v58;
    bottomAnchor = [(UILabel *)v5->_titleLabel bottomAnchor];
    contentView7 = [(HKInfographicTableViewCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView7 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide3 bottomAnchor];
    v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v69[2] = v53;
    leadingAnchor3 = [(UILabel *)v5->_valueLabel leadingAnchor];
    trailingAnchor = [(UILabel *)v5->_titleLabel trailingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:3.0];
    v69[3] = v49;
    topAnchor3 = [(UILabel *)v5->_valueLabel topAnchor];
    topAnchor4 = [(UILabel *)v5->_titleLabel topAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v69[4] = v46;
    trailingAnchor2 = [(UILabel *)v5->_valueLabel trailingAnchor];
    contentView8 = [(HKInfographicTableViewCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView8 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide4 trailingAnchor];
    v41 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v69[5] = v41;
    bottomAnchor3 = [(UILabel *)v5->_valueLabel bottomAnchor];
    bottomAnchor4 = [(UILabel *)v5->_titleLabel bottomAnchor];
    v38 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v69[6] = v38;
    heightAnchor = [(UIView *)v5->_separator heightAnchor];
    v36 = [heightAnchor constraintEqualToConstant:0.5];
    v69[7] = v36;
    leadingAnchor4 = [(UIView *)v5->_separator leadingAnchor];
    leadingAnchor5 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v22 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v69[8] = v22;
    trailingAnchor4 = [(UIView *)v5->_separator trailingAnchor];
    trailingAnchor5 = [(UILabel *)v5->_valueLabel trailingAnchor];
    v25 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v69[9] = v25;
    bottomAnchor5 = [(UIView *)v5->_separator bottomAnchor];
    contentView9 = [(HKInfographicTableViewCell *)v5 contentView];
    bottomAnchor6 = [contentView9 bottomAnchor];
    v29 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v69[10] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:11];
    [v50 activateConstraints:v30];

    contentView10 = [(HKInfographicTableViewCell *)v5 contentView];
    layer = [contentView10 layer];
    [layer setMasksToBounds:1];
  }

  return v5;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = HKInfographicTableViewCell;
  [(HKInfographicTableViewCell *)&v4 setSelected:selected animated:animated];
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
    v18[1] = @"InfographicTableViewItem";
    v18[2] = @"Cell";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v7 = HKUIJoinStringsForAutomationIdentifier(v6);
    [(HKInfographicTableViewCell *)self setAccessibilityIdentifier:v7];

    v17[0] = v5;
    v17[1] = @"InfographicTableViewItem";
    v17[2] = @"Title";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v9 = HKUIJoinStringsForAutomationIdentifier(v8);
    titleLabel = [(HKInfographicTableViewCell *)self titleLabel];
    [titleLabel setAccessibilityIdentifier:v9];

    v16[0] = v5;
    v16[1] = @"InfographicTableViewItem";
    v16[2] = @"Value";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v12 = HKUIJoinStringsForAutomationIdentifier(v11);
    valueLabel = [(HKInfographicTableViewCell *)self valueLabel];
    [valueLabel setAccessibilityIdentifier:v12];
  }

  else
  {
    [(HKInfographicTableViewCell *)self setAccessibilityIdentifier:0];
    titleLabel2 = [(HKInfographicTableViewCell *)self titleLabel];
    [titleLabel2 setAccessibilityIdentifier:0];

    valueLabel2 = [(HKInfographicTableViewCell *)self valueLabel];
    [valueLabel2 setAccessibilityIdentifier:0];
  }
}

@end