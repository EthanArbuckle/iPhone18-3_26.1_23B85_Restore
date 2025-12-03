@interface MODataAccessInfoCell
- (MODataAccessInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation MODataAccessInfoCell

- (MODataAccessInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = MODataAccessInfoCell;
  return [(PSTableCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v43[7] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v42.receiver = self;
  v42.super_class = MODataAccessInfoCell;
  [(PSTableCell *)&v42 refreshCellContentsWithSpecifier:specifierCopy];
  if (self)
  {
    contentView = [(MODataAccessInfoCell *)self contentView];
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v6 setFont:v7];

    [v6 setNumberOfLines:0];
    [contentView addSubview:v6];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
    [v8 setFont:v9];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v8 setTextColor:secondaryLabelColor];

    [v8 setNumberOfLines:0];
    [contentView addSubview:v8];
    v11 = [specifierCopy objectForKeyedSubscript:@"MOTitle"];
    [v6 setText:v11];

    v12 = [specifierCopy objectForKeyedSubscript:@"MOBody"];
    [v8 setText:v12];

    contentView2 = [(MODataAccessInfoCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    v32 = MEMORY[0x277CCAAD0];
    topAnchor = [v6 topAnchor];
    v31 = contentView;
    topAnchor2 = [contentView topAnchor];
    v39 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
    v43[0] = v39;
    leadingAnchor = [v6 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v43[1] = v36;
    trailingAnchor = [v6 trailingAnchor];
    v30 = layoutMarginsGuide;
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v43[2] = v33;
    topAnchor3 = [v8 topAnchor];
    bottomAnchor = [v6 bottomAnchor];
    v27 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
    v43[3] = v27;
    leadingAnchor3 = [v8 leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v43[4] = v24;
    trailingAnchor3 = [v8 trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v43[5] = v17;
    bottomAnchor2 = [contentView bottomAnchor];
    bottomAnchor3 = [v8 bottomAnchor];
    v20 = [bottomAnchor2 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:2.0];
    v43[6] = v20;
    [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:7];
    v22 = v21 = specifierCopy;
    [v32 activateConstraints:v22];

    specifierCopy = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end