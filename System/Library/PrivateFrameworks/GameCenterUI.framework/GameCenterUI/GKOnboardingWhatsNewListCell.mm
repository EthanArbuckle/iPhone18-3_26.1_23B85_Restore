@interface GKOnboardingWhatsNewListCell
- (GKOnboardingWhatsNewListCell)initWithType:(unint64_t)type;
- (id)getIconImageFromBundle:(id)bundle;
- (id)getIconImageFromSFSymbol:(id)symbol;
- (void)createConstarints;
- (void)loadView;
- (void)setupCell;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation GKOnboardingWhatsNewListCell

- (GKOnboardingWhatsNewListCell)initWithType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = GKOnboardingWhatsNewListCell;
  v4 = [(GKOnboardingWhatsNewListCell *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_currentCellType = type;
    [(GKOnboardingWhatsNewListCell *)v4 loadView];
  }

  return v5;
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(GKOnboardingWhatsNewListCell *)self setIcon:v3];

  icon = [(GKOnboardingWhatsNewListCell *)self icon];
  [icon setAccessibilityIgnoresInvertColors:1];

  icon2 = [(GKOnboardingWhatsNewListCell *)self icon];
  [icon2 setContentMode:1];

  icon3 = [(GKOnboardingWhatsNewListCell *)self icon];
  [(GKOnboardingWhatsNewListCell *)self addSubview:icon3];

  v7 = objc_opt_new();
  [(GKOnboardingWhatsNewListCell *)self setTitleLabel:v7];

  titleLabel = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [titleLabel setNumberOfLines:0];

  titleLabel2 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  titleLabel3 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [titleLabel3 setLineBreakMode:0];

  titleLabel4 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [(GKOnboardingWhatsNewListCell *)self addSubview:titleLabel4];

  v12 = objc_opt_new();
  [(GKOnboardingWhatsNewListCell *)self setSubtitleLabel:v12];

  subtitleLabel = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [subtitleLabel setLineBreakMode:0];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  subtitleLabel2 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [subtitleLabel2 setTextColor:secondaryLabelColor];

  subtitleLabel3 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [subtitleLabel3 setNumberOfLines:0];

  subtitleLabel4 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [subtitleLabel4 setAdjustsFontForContentSizeCategory:1];

  subtitleLabel5 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [subtitleLabel5 setLineBreakMode:0];

  subtitleLabel6 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [(GKOnboardingWhatsNewListCell *)self addSubview:subtitleLabel6];

  icon4 = [(GKOnboardingWhatsNewListCell *)self icon];
  [icon4 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel5 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  subtitleLabel7 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [subtitleLabel7 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(GKOnboardingWhatsNewListCell *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel6 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [titleLabel6 setTextAlignment:4];

  subtitleLabel8 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [subtitleLabel8 setTextAlignment:4];

  [(GKOnboardingWhatsNewListCell *)self setupCell];
}

- (void)setupCell
{
  currentCellType = self->_currentCellType;
  if (currentCellType <= 2)
  {
    switch(currentCellType)
    {
      case 0:
        v4 = [(GKOnboardingWhatsNewListCell *)self getIconImageFromSFSymbol:@"sparkles"];
        v10 = GKGameCenterUIFrameworkBundle();
        v6 = GKGetLocalizedStringFromTableInBundle();

        v7 = GKGameCenterUIFrameworkBundle();
        goto LABEL_14;
      case 1:
        v4 = [(GKOnboardingWhatsNewListCell *)self getIconImageFromSFSymbol:@"list.bullet.below.star.filled"];
        v13 = GKGameCenterUIFrameworkBundle();
        v6 = GKGetLocalizedStringFromTableInBundle();

        v7 = GKGameCenterUIFrameworkBundle();
        goto LABEL_14;
      case 2:
        v4 = [(GKOnboardingWhatsNewListCell *)self getIconImageFromSFSymbol:@"list.portrait.on.rectangle.portrait.angled.fill"];
        v5 = GKGameCenterUIFrameworkBundle();
        v6 = GKGetLocalizedStringFromTableInBundle();

        v7 = GKGameCenterUIFrameworkBundle();
LABEL_14:
        v12 = GKGetLocalizedStringFromTableInBundle();

        goto LABEL_15;
    }

LABEL_12:
    v4 = objc_opt_new();
    v6 = 0;
    v12 = 0;
LABEL_15:
    v14 = 2;
    goto LABEL_18;
  }

  switch(currentCellType)
  {
    case 3:
      v4 = [(GKOnboardingWhatsNewListCell *)self getIconImageFromBundle:@"gamecenter.widget"];
      v11 = GKGameCenterUIFrameworkBundle();
      v6 = GKGetLocalizedStringFromTableInBundle();

      v9 = GKGameCenterUIFrameworkBundle();
      break;
    case 4:
      v4 = [(GKOnboardingWhatsNewListCell *)self getIconImageFromBundle:@"gamecenter.friend.inbox"];
      v15 = GKGameCenterUIFrameworkBundle();
      v6 = GKGetLocalizedStringFromTableInBundle();

      v9 = GKGameCenterUIFrameworkBundle();
      break;
    case 5:
      v4 = [(GKOnboardingWhatsNewListCell *)self getIconImageFromBundle:@"gamecenter.multiplayer"];
      v8 = GKGameCenterUIFrameworkBundle();
      v6 = GKGetLocalizedStringFromTableInBundle();

      v9 = GKGameCenterUIFrameworkBundle();
      break;
    default:
      goto LABEL_12;
  }

  v12 = GKGetLocalizedStringFromTableInBundle();

  v14 = 1;
LABEL_18:
  v27 = [v4 imageWithRenderingMode:v14];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  icon = [(GKOnboardingWhatsNewListCell *)self icon];
  [icon setTintColor:systemBlueColor];

  v18 = *MEMORY[0x277D769D0];
  v19 = [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:*MEMORY[0x277D769D0] symbolicTraits:2];
  titleLabel = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [titleLabel setFont:v19];

  v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:v18];
  subtitleLabel = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [subtitleLabel setFont:v21];

  icon2 = [(GKOnboardingWhatsNewListCell *)self icon];
  [icon2 setContentMode:4];

  icon3 = [(GKOnboardingWhatsNewListCell *)self icon];
  [icon3 setImage:v27];

  titleLabel2 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [titleLabel2 setText:v6];

  subtitleLabel2 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [subtitleLabel2 setText:v12];

  [(GKOnboardingWhatsNewListCell *)self createConstarints];
}

- (id)getIconImageFromBundle:(id)bundle
{
  v3 = MEMORY[0x277D755D0];
  v4 = *MEMORY[0x277D769A8];
  bundleCopy = bundle;
  v6 = [v3 configurationWithTextStyle:v4];
  v7 = MEMORY[0x277D755B8];
  v8 = GKGameCenterUIFrameworkBundle();
  v9 = [v7 imageNamed:bundleCopy inBundle:v8 withConfiguration:v6];

  return v9;
}

- (id)getIconImageFromSFSymbol:(id)symbol
{
  v3 = MEMORY[0x277D755D0];
  v4 = *MEMORY[0x277D769A8];
  symbolCopy = symbol;
  v6 = [v3 configurationWithTextStyle:v4];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:symbolCopy withConfiguration:v6];

  return v7;
}

- (void)createConstarints
{
  v108[12] = *MEMORY[0x277D85DE8];
  icon = [(GKOnboardingWhatsNewListCell *)self icon];
  widthAnchor = [icon widthAnchor];
  v101 = [widthAnchor constraintEqualToConstant:40.0];
  v108[0] = v101;
  icon2 = [(GKOnboardingWhatsNewListCell *)self icon];
  heightAnchor = [icon2 heightAnchor];
  v95 = [heightAnchor constraintEqualToConstant:40.0];
  v108[1] = v95;
  icon3 = [(GKOnboardingWhatsNewListCell *)self icon];
  leadingAnchor = [icon3 leadingAnchor];
  leadingAnchor2 = [(GKOnboardingWhatsNewListCell *)self leadingAnchor];
  v87 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v108[2] = v87;
  icon4 = [(GKOnboardingWhatsNewListCell *)self icon];
  centerYAnchor = [icon4 centerYAnchor];
  centerYAnchor2 = [(GKOnboardingWhatsNewListCell *)self centerYAnchor];
  v79 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v108[3] = v79;
  titleLabel = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  leadingAnchor3 = [titleLabel leadingAnchor];
  icon5 = [(GKOnboardingWhatsNewListCell *)self icon];
  trailingAnchor = [icon5 trailingAnchor];
  v69 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:14.0];
  v108[4] = v69;
  titleLabel2 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  trailingAnchor2 = [titleLabel2 trailingAnchor];
  trailingAnchor3 = [(GKOnboardingWhatsNewListCell *)self trailingAnchor];
  v61 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v108[5] = v61;
  titleLabel3 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  topAnchor2 = [(GKOnboardingWhatsNewListCell *)self topAnchor];
  v53 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v108[6] = v53;
  subtitleLabel = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  leadingAnchor4 = [subtitleLabel leadingAnchor];
  titleLabel4 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  leadingAnchor5 = [titleLabel4 leadingAnchor];
  v44 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v108[7] = v44;
  subtitleLabel2 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  trailingAnchor4 = [subtitleLabel2 trailingAnchor];
  titleLabel5 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  trailingAnchor5 = [titleLabel5 trailingAnchor];
  v34 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v108[8] = v34;
  subtitleLabel3 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  topAnchor3 = [subtitleLabel3 topAnchor];
  titleLabel6 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  bottomAnchor = [titleLabel6 bottomAnchor];
  v5 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:2.0];
  v108[9] = v5;
  subtitleLabel4 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  bottomAnchor2 = [subtitleLabel4 bottomAnchor];
  bottomAnchor3 = [(GKOnboardingWhatsNewListCell *)self bottomAnchor];
  v9 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
  v108[10] = v9;
  heightAnchor2 = [(GKOnboardingWhatsNewListCell *)self heightAnchor];
  v11 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:45.0];
  v108[11] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:12];
  normalConstraints = self->_normalConstraints;
  self->_normalConstraints = v12;

  icon6 = [(GKOnboardingWhatsNewListCell *)self icon];
  widthAnchor2 = [icon6 widthAnchor];
  v102 = [widthAnchor2 constraintEqualToConstant:62.0];
  v107[0] = v102;
  icon7 = [(GKOnboardingWhatsNewListCell *)self icon];
  heightAnchor3 = [icon7 heightAnchor];
  v96 = [heightAnchor3 constraintEqualToConstant:74.0];
  v107[1] = v96;
  icon8 = [(GKOnboardingWhatsNewListCell *)self icon];
  leadingAnchor6 = [icon8 leadingAnchor];
  leadingAnchor7 = [(GKOnboardingWhatsNewListCell *)self leadingAnchor];
  v88 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v107[2] = v88;
  icon9 = [(GKOnboardingWhatsNewListCell *)self icon];
  topAnchor4 = [icon9 topAnchor];
  topAnchor5 = [(GKOnboardingWhatsNewListCell *)self topAnchor];
  v80 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v107[3] = v80;
  titleLabel7 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  leadingAnchor8 = [titleLabel7 leadingAnchor];
  icon10 = [(GKOnboardingWhatsNewListCell *)self icon];
  leadingAnchor9 = [icon10 leadingAnchor];
  v70 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v107[4] = v70;
  titleLabel8 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  trailingAnchor6 = [titleLabel8 trailingAnchor];
  trailingAnchor7 = [(GKOnboardingWhatsNewListCell *)self trailingAnchor];
  v62 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v107[5] = v62;
  titleLabel9 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  topAnchor6 = [titleLabel9 topAnchor];
  icon11 = [(GKOnboardingWhatsNewListCell *)self icon];
  bottomAnchor4 = [icon11 bottomAnchor];
  v51 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4];
  v107[6] = v51;
  subtitleLabel5 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  leadingAnchor10 = [subtitleLabel5 leadingAnchor];
  titleLabel10 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  leadingAnchor11 = [titleLabel10 leadingAnchor];
  v41 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  v107[7] = v41;
  subtitleLabel6 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  trailingAnchor8 = [subtitleLabel6 trailingAnchor];
  titleLabel11 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  trailingAnchor9 = [titleLabel11 trailingAnchor];
  v31 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v107[8] = v31;
  subtitleLabel7 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  topAnchor7 = [subtitleLabel7 topAnchor];
  titleLabel12 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  bottomAnchor5 = [titleLabel12 bottomAnchor];
  v16 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:4.0];
  v107[9] = v16;
  subtitleLabel8 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  bottomAnchor6 = [subtitleLabel8 bottomAnchor];
  bottomAnchor7 = [(GKOnboardingWhatsNewListCell *)self bottomAnchor];
  v20 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v107[10] = v20;
  heightAnchor4 = [(GKOnboardingWhatsNewListCell *)self heightAnchor];
  v22 = [heightAnchor4 constraintGreaterThanOrEqualToConstant:80.0];
  v107[11] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:12];
  axConstraints = self->_axConstraints;
  self->_axConstraints = v23;

  traitCollection = [(GKOnboardingWhatsNewListCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  LODWORD(heightAnchor4) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v27 = 440;
  if (heightAnchor4)
  {
    v27 = 448;
  }

  [MEMORY[0x277CCAAD0] activateConstraints:*(&self->super.super.super.isa + v27)];
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(GKOnboardingWhatsNewListCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v7 = &OBJC_IVAR___GKOnboardingWhatsNewListCell__normalConstraints;
  }

  else
  {
    v7 = &OBJC_IVAR___GKOnboardingWhatsNewListCell__axConstraints;
  }

  if (IsAccessibilityCategory)
  {
    v8 = &OBJC_IVAR___GKOnboardingWhatsNewListCell__axConstraints;
  }

  else
  {
    v8 = &OBJC_IVAR___GKOnboardingWhatsNewListCell__normalConstraints;
  }

  [MEMORY[0x277CCAAD0] deactivateConstraints:*(&self->super.super.super.isa + *v7)];
  v9 = MEMORY[0x277CCAAD0];
  v10 = *(&self->super.super.super.isa + *v8);

  [v9 activateConstraints:v10];
}

@end