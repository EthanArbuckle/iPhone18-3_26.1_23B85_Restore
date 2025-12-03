@interface ActiveDeviceLinkCell
- (ActiveDeviceLinkCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation ActiveDeviceLinkCell

- (ActiveDeviceLinkCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = ActiveDeviceLinkCell;
  v5 = [(PSTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(ActiveDeviceLinkCell *)v5 setupSubviews];
    [(ActiveDeviceLinkCell *)v6 setupConstraints];
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v15.receiver = self;
  v15.super_class = ActiveDeviceLinkCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v15 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v15.receiver, v15.super_class}];
  v6 = [v5 localizedStringForKey:@"FROM_TITLE" value:&stru_285D99658 table:@"LocalizableUI"];
  fromLabel = [(ActiveDeviceLinkCell *)self fromLabel];
  [fromLabel setText:v6];

  v8 = [specifierCopy propertyForKey:@"ActiveDeviceLinkNameKey"];
  deviceNameLabel = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [deviceNameLabel setText:v8];

  v10 = [specifierCopy propertyForKey:@"ActiveDeviceLinkDetailsKey"];

  detailsLabel = [(ActiveDeviceLinkCell *)self detailsLabel];
  [detailsLabel setText:v10];

  detailsLabel2 = [(ActiveDeviceLinkCell *)self detailsLabel];
  text = [detailsLabel2 text];
  detailsHeightContraint = [(ActiveDeviceLinkCell *)self detailsHeightContraint];
  [detailsHeightContraint setActive:text == 0];

  [(ActiveDeviceLinkCell *)self setNeedsLayout];
}

- (void)setupSubviews
{
  v3 = 2 * ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1);
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(ActiveDeviceLinkCell *)self setFromLabel:v4];

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  fromLabel = [(ActiveDeviceLinkCell *)self fromLabel];
  [fromLabel setFont:v5];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(ActiveDeviceLinkCell *)self setDeviceNameLabel:v7];

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  deviceNameLabel = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [deviceNameLabel setFont:v8];

  tableCellGrayTextColor = [MEMORY[0x277D75348] tableCellGrayTextColor];
  deviceNameLabel2 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [deviceNameLabel2 setTextColor:tableCellGrayTextColor];

  deviceNameLabel3 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [deviceNameLabel3 setTextAlignment:v3];

  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(ActiveDeviceLinkCell *)self setDetailsLabel:v13];

  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  detailsLabel = [(ActiveDeviceLinkCell *)self detailsLabel];
  [detailsLabel setFont:v14];

  tableCellGrayTextColor2 = [MEMORY[0x277D75348] tableCellGrayTextColor];
  detailsLabel2 = [(ActiveDeviceLinkCell *)self detailsLabel];
  [detailsLabel2 setTextColor:tableCellGrayTextColor2];

  detailsLabel3 = [(ActiveDeviceLinkCell *)self detailsLabel];
  [detailsLabel3 setTextAlignment:v3];

  contentView = [(ActiveDeviceLinkCell *)self contentView];
  fromLabel2 = [(ActiveDeviceLinkCell *)self fromLabel];
  [contentView addSubview:fromLabel2];

  contentView2 = [(ActiveDeviceLinkCell *)self contentView];
  deviceNameLabel4 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [contentView2 addSubview:deviceNameLabel4];

  contentView3 = [(ActiveDeviceLinkCell *)self contentView];
  detailsLabel4 = [(ActiveDeviceLinkCell *)self detailsLabel];
  [contentView3 addSubview:detailsLabel4];
}

- (void)setupConstraints
{
  deviceNameLabel = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [deviceNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  detailsLabel = [(ActiveDeviceLinkCell *)self detailsLabel];
  [detailsLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  fromLabel = [(ActiveDeviceLinkCell *)self fromLabel];
  [fromLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  fromLabel2 = [(ActiveDeviceLinkCell *)self fromLabel];
  LODWORD(v7) = 1148846080;
  [fromLabel2 setContentHuggingPriority:0 forAxis:v7];

  fromLabel3 = [(ActiveDeviceLinkCell *)self fromLabel];
  LODWORD(v9) = 1148846080;
  [fromLabel3 setContentCompressionResistancePriority:0 forAxis:v9];

  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  LODWORD(fromLabel3) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  fromLabel4 = [(ActiveDeviceLinkCell *)self fromLabel];
  leadingAnchor = [fromLabel4 leadingAnchor];
  contentView = [(ActiveDeviceLinkCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v16 setActive:1];

  fromLabel5 = [(ActiveDeviceLinkCell *)self fromLabel];
  topAnchor = [fromLabel5 topAnchor];
  contentView2 = [(ActiveDeviceLinkCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  [v21 setActive:1];

  fromLabel6 = [(ActiveDeviceLinkCell *)self fromLabel];
  trailingAnchor = [fromLabel6 trailingAnchor];
  if (fromLabel3)
  {
    contentView3 = [(ActiveDeviceLinkCell *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:8.0];
    [v26 setActive:1];

    deviceNameLabel2 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    topAnchor3 = [deviceNameLabel2 topAnchor];
    fromLabel7 = [(ActiveDeviceLinkCell *)self fromLabel];
    bottomAnchor = [fromLabel7 bottomAnchor];
    v31 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    [v31 setActive:1];

    deviceNameLabel3 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    leadingAnchor3 = [deviceNameLabel3 leadingAnchor];
    contentView4 = [(ActiveDeviceLinkCell *)self contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v37 setActive:1];

    deviceNameLabel4 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    trailingAnchor3 = [deviceNameLabel4 trailingAnchor];
    contentView5 = [(ActiveDeviceLinkCell *)self contentView];
    trailingAnchor4 = [contentView5 trailingAnchor];
    v42 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v42 setActive:1];

    deviceNameLabel5 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    bottomAnchor2 = [deviceNameLabel5 bottomAnchor];
    detailsLabel2 = [(ActiveDeviceLinkCell *)self detailsLabel];
    topAnchor4 = [detailsLabel2 topAnchor];
    v47 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4];
    [v47 setActive:1];

    deviceNameLabel6 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    [deviceNameLabel6 setTextAlignment:0];

    deviceNameLabel7 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    [deviceNameLabel7 setNumberOfLines:0];

    detailsLabel3 = [(ActiveDeviceLinkCell *)self detailsLabel];
    leadingAnchor5 = [detailsLabel3 leadingAnchor];
    contentView6 = [(ActiveDeviceLinkCell *)self contentView];
    layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
    leadingAnchor6 = [layoutMarginsGuide3 leadingAnchor];
    v55 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v55 setActive:1];

    detailsLabel4 = [(ActiveDeviceLinkCell *)self detailsLabel];
    trailingAnchor5 = [detailsLabel4 trailingAnchor];
    contentView7 = [(ActiveDeviceLinkCell *)self contentView];
    trailingAnchor6 = [contentView7 trailingAnchor];
    v60 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v60 setActive:1];

    detailsLabel5 = [(ActiveDeviceLinkCell *)self detailsLabel];
    bottomAnchor3 = [detailsLabel5 bottomAnchor];
    contentView8 = [(ActiveDeviceLinkCell *)self contentView];
    bottomAnchor4 = [contentView8 bottomAnchor];
    v65 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
    [v65 setActive:1];

    detailsLabel6 = [(ActiveDeviceLinkCell *)self detailsLabel];
    [detailsLabel6 setTextAlignment:0];

    detailsLabel7 = [(ActiveDeviceLinkCell *)self detailsLabel];
    [detailsLabel7 setNumberOfLines:0];
  }

  else
  {
    deviceNameLabel8 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    leadingAnchor7 = [deviceNameLabel8 leadingAnchor];
    v70 = [trailingAnchor constraintEqualToAnchor:leadingAnchor7 constant:-8.0];
    [v70 setActive:1];

    fromLabel8 = [(ActiveDeviceLinkCell *)self fromLabel];
    bottomAnchor5 = [fromLabel8 bottomAnchor];
    contentView9 = [(ActiveDeviceLinkCell *)self contentView];
    bottomAnchor6 = [contentView9 bottomAnchor];
    v75 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-8.0];
    [v75 setActive:1];

    deviceNameLabel9 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    topAnchor5 = [deviceNameLabel9 topAnchor];
    contentView10 = [(ActiveDeviceLinkCell *)self contentView];
    topAnchor6 = [contentView10 topAnchor];
    v80 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:8.0];
    [v80 setActive:1];

    deviceNameLabel10 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    trailingAnchor7 = [deviceNameLabel10 trailingAnchor];
    contentView11 = [(ActiveDeviceLinkCell *)self contentView];
    layoutMarginsGuide4 = [contentView11 layoutMarginsGuide];
    trailingAnchor8 = [layoutMarginsGuide4 trailingAnchor];
    v86 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    [v86 setActive:1];

    deviceNameLabel11 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    bottomAnchor7 = [deviceNameLabel11 bottomAnchor];
    detailsLabel8 = [(ActiveDeviceLinkCell *)self detailsLabel];
    topAnchor7 = [detailsLabel8 topAnchor];
    v91 = [bottomAnchor7 constraintEqualToAnchor:topAnchor7];
    [v91 setActive:1];

    detailsLabel9 = [(ActiveDeviceLinkCell *)self detailsLabel];
    leadingAnchor8 = [detailsLabel9 leadingAnchor];
    deviceNameLabel12 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    leadingAnchor9 = [deviceNameLabel12 leadingAnchor];
    v96 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    [v96 setActive:1];

    detailsLabel10 = [(ActiveDeviceLinkCell *)self detailsLabel];
    trailingAnchor9 = [detailsLabel10 trailingAnchor];
    contentView12 = [(ActiveDeviceLinkCell *)self contentView];
    layoutMarginsGuide5 = [contentView12 layoutMarginsGuide];
    trailingAnchor10 = [layoutMarginsGuide5 trailingAnchor];
    v102 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    [v102 setActive:1];

    detailsLabel7 = [(ActiveDeviceLinkCell *)self detailsLabel];
    bottomAnchor8 = [detailsLabel7 bottomAnchor];
    contentView13 = [(ActiveDeviceLinkCell *)self contentView];
    bottomAnchor9 = [contentView13 bottomAnchor];
    v106 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-8.0];
    [v106 setActive:1];
  }

  detailsLabel11 = [(ActiveDeviceLinkCell *)self detailsLabel];
  heightAnchor = [detailsLabel11 heightAnchor];
  v108 = [heightAnchor constraintEqualToConstant:0.0];
  [(ActiveDeviceLinkCell *)self setDetailsHeightContraint:v108];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = ActiveDeviceLinkCell;
  [(PSTableCell *)&v10 layoutSubviews];
  specifier = [(PSTableCell *)self specifier];
  v4 = [specifier propertyForKey:*MEMORY[0x277D3FF38]];
  bOOLValue = [v4 BOOLValue];

  deviceNameLabel = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [deviceNameLabel setHidden:bOOLValue ^ 1];

  detailsLabel = [(ActiveDeviceLinkCell *)self detailsLabel];
  [detailsLabel setHidden:bOOLValue ^ 1];

  if (bOOLValue)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.400000006;
  }

  fromLabel = [(ActiveDeviceLinkCell *)self fromLabel];
  [fromLabel setAlpha:v8];

  [(PSTableCell *)self setCellEnabled:bOOLValue];
}

@end