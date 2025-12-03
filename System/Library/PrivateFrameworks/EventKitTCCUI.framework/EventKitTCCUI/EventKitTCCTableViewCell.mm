@interface EventKitTCCTableViewCell
+ (id)reuseIdentifier;
- (EventKitTCCTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle symbolName:(id)name imageColor:(id)color;
@end

@implementation EventKitTCCTableViewCell

+ (id)reuseIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__EventKitTCCTableViewCell_reuseIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (reuseIdentifier_onceToken != -1)
  {
    dispatch_once(&reuseIdentifier_onceToken, block);
  }

  v2 = reuseIdentifier_reuseIdentifier;

  return v2;
}

uint64_t __43__EventKitTCCTableViewCell_reuseIdentifier__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  reuseIdentifier_reuseIdentifier = NSStringFromClass(v2);

  return MEMORY[0x2821F96F8]();
}

- (EventKitTCCTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle symbolName:(id)name imageColor:(id)color
{
  v159[4] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  subtitleCopy = subtitle;
  nameCopy = name;
  colorCopy = color;
  v154.receiver = self;
  v154.super_class = EventKitTCCTableViewCell;
  v18 = [(EventKitTCCTableViewCell *)&v154 initWithStyle:style reuseIdentifier:identifier];
  if (v18)
  {
    tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
    [(EventKitTCCTableViewCell *)v18 setBackgroundColor:tertiarySystemFillColor];

    [(EventKitTCCTableViewCell *)v18 setSeparatorInset:0.0, 16.0, 0.0, 16.0];
    v20 = objc_alloc(MEMORY[0x277D755E8]);
    v21 = *MEMORY[0x277CBF3A0];
    v22 = *(MEMORY[0x277CBF3A0] + 8);
    v23 = *(MEMORY[0x277CBF3A0] + 16);
    v24 = *(MEMORY[0x277CBF3A0] + 24);
    v25 = [v20 initWithFrame:{*MEMORY[0x277CBF3A0], v22, v23, v24}];
    [(EventKitTCCTableViewCell *)v18 setSymbolImageView:v25];

    symbolImageView = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    [symbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];

    symbolImageView2 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    [symbolImageView2 setContentMode:4];

    symbolImageView3 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    v150 = colorCopy;
    [symbolImageView3 setTintColor:colorCopy];

    v29 = MEMORY[0x277D755B8];
    v30 = *MEMORY[0x277D76A08];
    [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A08] scale:-1];
    v31 = v153 = subtitleCopy;
    v151 = nameCopy;
    v32 = [v29 systemImageNamed:nameCopy withConfiguration:v31];
    symbolImageView4 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    [symbolImageView4 setImage:v32];

    contentView = [(EventKitTCCTableViewCell *)v18 contentView];
    symbolImageView5 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    [contentView addSubview:symbolImageView5];

    v36 = [MEMORY[0x277D74300] preferredFontForTextStyle:v30];
    [v36 pointSize];
    v38 = v37;

    v125 = MEMORY[0x277CCAAD0];
    symbolImageView6 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    centerYAnchor = [symbolImageView6 centerYAnchor];
    contentView2 = [(EventKitTCCTableViewCell *)v18 contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v133 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v159[0] = v133;
    symbolImageView7 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    leadingAnchor = [symbolImageView7 leadingAnchor];
    contentView3 = [(EventKitTCCTableViewCell *)v18 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v159[1] = v40;
    symbolImageView8 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    widthAnchor = [symbolImageView8 widthAnchor];
    v43 = [widthAnchor constraintEqualToConstant:v38];
    v159[2] = v43;
    symbolImageView9 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    [symbolImageView9 heightAnchor];
    v45 = v152 = titleCopy;
    v46 = [v45 constraintEqualToConstant:v38];
    v159[3] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:4];
    [v125 activateConstraints:v47];

    symbolImageView10 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
    LODWORD(v49) = 1144750080;
    [symbolImageView10 setContentHuggingPriority:0 forAxis:v49];

    v50 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v21, v22, v23, v24}];
    [(EventKitTCCTableViewCell *)v18 setTitleLabel:v50];

    titleLabel = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v52 = MEMORY[0x277D74300];
    v53 = *MEMORY[0x277D76968];
    v54 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [v54 pointSize];
    v55 = [v52 boldSystemFontOfSize:?];
    titleLabel2 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [titleLabel2 setFont:v55];

    titleLabel3 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [titleLabel3 setAdjustsFontForContentSizeCategory:1];

    titleLabel4 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [titleLabel4 setText:v152];

    titleLabel5 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [titleLabel5 setNumberOfLines:0];

    contentView4 = [(EventKitTCCTableViewCell *)v18 contentView];
    titleLabel6 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    [contentView4 addSubview:titleLabel6];

    v145 = MEMORY[0x277CCAAD0];
    titleLabel7 = [(EventKitTCCTableViewCell *)v18 titleLabel];
    topAnchor = [titleLabel7 topAnchor];
    contentView5 = [(EventKitTCCTableViewCell *)v18 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v142 = topAnchor2;
    if (v153)
    {
      v138 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
      v157[0] = v138;
      titleLabel8 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      leadingAnchor3 = [titleLabel8 leadingAnchor];
      symbolImageView11 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
      trailingAnchor = [symbolImageView11 trailingAnchor];
      v67 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:16.0];
      v157[1] = v67;
      titleLabel9 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      trailingAnchor2 = [titleLabel9 trailingAnchor];
      [(EventKitTCCTableViewCell *)v18 contentView];
      v70 = v126 = titleLabel7;
      [v70 trailingAnchor];
      v71 = v119 = topAnchor;
      v72 = [trailingAnchor2 constraintEqualToAnchor:v71 constant:-16.0];
      v157[2] = v72;
      [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:3];
      v73 = v134 = v53;
      [v145 activateConstraints:v73];

      v74 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v21, v22, v23, v24}];
      [(EventKitTCCTableViewCell *)v18 setSubtitleLabel:v74];

      subtitleLabel = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

      v76 = [MEMORY[0x277D74300] preferredFontForTextStyle:v134];
      subtitleLabel2 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [subtitleLabel2 setFont:v76];

      subtitleLabel3 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [subtitleLabel3 setAdjustsFontForContentSizeCategory:1];

      subtitleLabel4 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [subtitleLabel4 setNumberOfLines:1];

      grayColor = [MEMORY[0x277D75348] grayColor];
      subtitleLabel5 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [subtitleLabel5 setTextColor:grayColor];

      subtitleLabel6 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [subtitleLabel6 setText:v153];

      contentView6 = [(EventKitTCCTableViewCell *)v18 contentView];
      subtitleLabel7 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      [contentView6 addSubview:subtitleLabel7];

      v127 = MEMORY[0x277CCAAD0];
      subtitleLabel8 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      topAnchor3 = [subtitleLabel8 topAnchor];
      titleLabel10 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      bottomAnchor = [titleLabel10 bottomAnchor];
      v135 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
      v156[0] = v135;
      subtitleLabel9 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      leadingAnchor4 = [subtitleLabel9 leadingAnchor];
      symbolImageView12 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
      trailingAnchor3 = [symbolImageView12 trailingAnchor];
      v87 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor3 constant:16.0];
      v156[1] = v87;
      subtitleLabel10 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      trailingAnchor4 = [subtitleLabel10 trailingAnchor];
      contentView7 = [(EventKitTCCTableViewCell *)v18 contentView];
      trailingAnchor5 = [contentView7 trailingAnchor];
      v92 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-16.0];
      v156[2] = v92;
      v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:3];
      [v127 activateConstraints:v93];

      subtitleLabel11 = [(EventKitTCCTableViewCell *)v18 subtitleLabel];
      bottomAnchor2 = [subtitleLabel11 bottomAnchor];
      contentView8 = [(EventKitTCCTableViewCell *)v18 contentView];
      bottomAnchor3 = [contentView8 bottomAnchor];
      titleLabel7 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-8.0];

      LODWORD(v98) = 1144750080;
      [titleLabel7 setPriority:v98];
      v99 = MEMORY[0x277CCAAD0];
      v155 = titleLabel7;
      v100 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
      [v99 activateConstraints:v100];
    }

    else
    {
      v140 = [MEMORY[0x277D74300] preferredFontForTextStyle:v53];
      [v140 pointSize];
      v136 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v101 * 0.5 + 2.0 + 8.0];
      v158[0] = v136;
      titleLabel11 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      bottomAnchor4 = [titleLabel11 bottomAnchor];
      contentView9 = [(EventKitTCCTableViewCell *)v18 contentView];
      bottomAnchor5 = [contentView9 bottomAnchor];
      v120 = [MEMORY[0x277D74300] preferredFontForTextStyle:v53];
      [v120 pointSize];
      v116 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-(v102 * 0.5 + 2.0 + 8.0)];
      v158[1] = v116;
      titleLabel12 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      leadingAnchor5 = [titleLabel12 leadingAnchor];
      symbolImageView13 = [(EventKitTCCTableViewCell *)v18 symbolImageView];
      trailingAnchor6 = [symbolImageView13 trailingAnchor];
      v103 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:16.0];
      v158[2] = v103;
      titleLabel13 = [(EventKitTCCTableViewCell *)v18 titleLabel];
      trailingAnchor7 = [titleLabel13 trailingAnchor];
      contentView10 = [(EventKitTCCTableViewCell *)v18 contentView];
      trailingAnchor8 = [contentView10 trailingAnchor];
      [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-16.0];
      v108 = v100 = topAnchor;
      v158[3] = v108;
      v109 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:4];
      [v145 activateConstraints:v109];
    }

    titleCopy = v152;
    subtitleCopy = v153;
    colorCopy = v150;
    nameCopy = v151;
  }

  v110 = *MEMORY[0x277D85DE8];
  return v18;
}

@end