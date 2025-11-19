@interface GKOnboardingWhatsNewListCell
- (GKOnboardingWhatsNewListCell)initWithType:(unint64_t)a3;
- (id)getIconImageFromBundle:(id)a3;
- (id)getIconImageFromSFSymbol:(id)a3;
- (void)createConstarints;
- (void)loadView;
- (void)setupCell;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation GKOnboardingWhatsNewListCell

- (GKOnboardingWhatsNewListCell)initWithType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = GKOnboardingWhatsNewListCell;
  v4 = [(GKOnboardingWhatsNewListCell *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_currentCellType = a3;
    [(GKOnboardingWhatsNewListCell *)v4 loadView];
  }

  return v5;
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(GKOnboardingWhatsNewListCell *)self setIcon:v3];

  v4 = [(GKOnboardingWhatsNewListCell *)self icon];
  [v4 setAccessibilityIgnoresInvertColors:1];

  v5 = [(GKOnboardingWhatsNewListCell *)self icon];
  [v5 setContentMode:1];

  v6 = [(GKOnboardingWhatsNewListCell *)self icon];
  [(GKOnboardingWhatsNewListCell *)self addSubview:v6];

  v7 = objc_opt_new();
  [(GKOnboardingWhatsNewListCell *)self setTitleLabel:v7];

  v8 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [v8 setNumberOfLines:0];

  v9 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [v9 setAdjustsFontForContentSizeCategory:1];

  v10 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [v10 setLineBreakMode:0];

  v11 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [(GKOnboardingWhatsNewListCell *)self addSubview:v11];

  v12 = objc_opt_new();
  [(GKOnboardingWhatsNewListCell *)self setSubtitleLabel:v12];

  v13 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [v13 setLineBreakMode:0];

  v14 = [MEMORY[0x277D75348] secondaryLabelColor];
  v15 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [v15 setTextColor:v14];

  v16 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [v16 setNumberOfLines:0];

  v17 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [v17 setAdjustsFontForContentSizeCategory:1];

  v18 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [v18 setLineBreakMode:0];

  v19 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [(GKOnboardingWhatsNewListCell *)self addSubview:v19];

  v20 = [(GKOnboardingWhatsNewListCell *)self icon];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(GKOnboardingWhatsNewListCell *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [v23 setTextAlignment:4];

  v24 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [v24 setTextAlignment:4];

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

  v16 = [MEMORY[0x277D75348] systemBlueColor];
  v17 = [(GKOnboardingWhatsNewListCell *)self icon];
  [v17 setTintColor:v16];

  v18 = *MEMORY[0x277D769D0];
  v19 = [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:*MEMORY[0x277D769D0] symbolicTraits:2];
  v20 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [v20 setFont:v19];

  v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:v18];
  v22 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [v22 setFont:v21];

  v23 = [(GKOnboardingWhatsNewListCell *)self icon];
  [v23 setContentMode:4];

  v24 = [(GKOnboardingWhatsNewListCell *)self icon];
  [v24 setImage:v27];

  v25 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  [v25 setText:v6];

  v26 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  [v26 setText:v12];

  [(GKOnboardingWhatsNewListCell *)self createConstarints];
}

- (id)getIconImageFromBundle:(id)a3
{
  v3 = MEMORY[0x277D755D0];
  v4 = *MEMORY[0x277D769A8];
  v5 = a3;
  v6 = [v3 configurationWithTextStyle:v4];
  v7 = MEMORY[0x277D755B8];
  v8 = GKGameCenterUIFrameworkBundle();
  v9 = [v7 imageNamed:v5 inBundle:v8 withConfiguration:v6];

  return v9;
}

- (id)getIconImageFromSFSymbol:(id)a3
{
  v3 = MEMORY[0x277D755D0];
  v4 = *MEMORY[0x277D769A8];
  v5 = a3;
  v6 = [v3 configurationWithTextStyle:v4];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:v5 withConfiguration:v6];

  return v7;
}

- (void)createConstarints
{
  v108[12] = *MEMORY[0x277D85DE8];
  v105 = [(GKOnboardingWhatsNewListCell *)self icon];
  v103 = [v105 widthAnchor];
  v101 = [v103 constraintEqualToConstant:40.0];
  v108[0] = v101;
  v99 = [(GKOnboardingWhatsNewListCell *)self icon];
  v97 = [v99 heightAnchor];
  v95 = [v97 constraintEqualToConstant:40.0];
  v108[1] = v95;
  v93 = [(GKOnboardingWhatsNewListCell *)self icon];
  v91 = [v93 leadingAnchor];
  v89 = [(GKOnboardingWhatsNewListCell *)self leadingAnchor];
  v87 = [v91 constraintEqualToAnchor:v89];
  v108[2] = v87;
  v85 = [(GKOnboardingWhatsNewListCell *)self icon];
  v83 = [v85 centerYAnchor];
  v81 = [(GKOnboardingWhatsNewListCell *)self centerYAnchor];
  v79 = [v83 constraintEqualToAnchor:v81];
  v108[3] = v79;
  v77 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v73 = [v77 leadingAnchor];
  v75 = [(GKOnboardingWhatsNewListCell *)self icon];
  v71 = [v75 trailingAnchor];
  v69 = [v73 constraintEqualToAnchor:v71 constant:14.0];
  v108[4] = v69;
  v67 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v65 = [v67 trailingAnchor];
  v63 = [(GKOnboardingWhatsNewListCell *)self trailingAnchor];
  v61 = [v65 constraintEqualToAnchor:v63];
  v108[5] = v61;
  v59 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v57 = [v59 topAnchor];
  v55 = [(GKOnboardingWhatsNewListCell *)self topAnchor];
  v53 = [v57 constraintEqualToAnchor:v55];
  v108[6] = v53;
  v52 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  v48 = [v52 leadingAnchor];
  v50 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v46 = [v50 leadingAnchor];
  v44 = [v48 constraintEqualToAnchor:v46];
  v108[7] = v44;
  v42 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  v38 = [v42 trailingAnchor];
  v40 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v36 = [v40 trailingAnchor];
  v34 = [v38 constraintEqualToAnchor:v36];
  v108[8] = v34;
  v32 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  v30 = [v32 topAnchor];
  v3 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v4 = [v3 bottomAnchor];
  v5 = [v30 constraintEqualToAnchor:v4 constant:2.0];
  v108[9] = v5;
  v6 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  v7 = [v6 bottomAnchor];
  v8 = [(GKOnboardingWhatsNewListCell *)self bottomAnchor];
  v9 = [v7 constraintLessThanOrEqualToAnchor:v8];
  v108[10] = v9;
  v10 = [(GKOnboardingWhatsNewListCell *)self heightAnchor];
  v11 = [v10 constraintGreaterThanOrEqualToConstant:45.0];
  v108[11] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:12];
  normalConstraints = self->_normalConstraints;
  self->_normalConstraints = v12;

  v106 = [(GKOnboardingWhatsNewListCell *)self icon];
  v104 = [v106 widthAnchor];
  v102 = [v104 constraintEqualToConstant:62.0];
  v107[0] = v102;
  v100 = [(GKOnboardingWhatsNewListCell *)self icon];
  v98 = [v100 heightAnchor];
  v96 = [v98 constraintEqualToConstant:74.0];
  v107[1] = v96;
  v94 = [(GKOnboardingWhatsNewListCell *)self icon];
  v92 = [v94 leadingAnchor];
  v90 = [(GKOnboardingWhatsNewListCell *)self leadingAnchor];
  v88 = [v92 constraintEqualToAnchor:v90];
  v107[2] = v88;
  v86 = [(GKOnboardingWhatsNewListCell *)self icon];
  v84 = [v86 topAnchor];
  v82 = [(GKOnboardingWhatsNewListCell *)self topAnchor];
  v80 = [v84 constraintEqualToAnchor:v82];
  v107[3] = v80;
  v78 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v74 = [v78 leadingAnchor];
  v76 = [(GKOnboardingWhatsNewListCell *)self icon];
  v72 = [v76 leadingAnchor];
  v70 = [v74 constraintEqualToAnchor:v72];
  v107[4] = v70;
  v68 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v66 = [v68 trailingAnchor];
  v64 = [(GKOnboardingWhatsNewListCell *)self trailingAnchor];
  v62 = [v66 constraintEqualToAnchor:v64];
  v107[5] = v62;
  v60 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v56 = [v60 topAnchor];
  v58 = [(GKOnboardingWhatsNewListCell *)self icon];
  v54 = [v58 bottomAnchor];
  v51 = [v56 constraintEqualToAnchor:v54];
  v107[6] = v51;
  v49 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  v45 = [v49 leadingAnchor];
  v47 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v43 = [v47 leadingAnchor];
  v41 = [v45 constraintEqualToAnchor:v43];
  v107[7] = v41;
  v39 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  v35 = [v39 trailingAnchor];
  v37 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v33 = [v37 trailingAnchor];
  v31 = [v35 constraintEqualToAnchor:v33];
  v107[8] = v31;
  v29 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  v28 = [v29 topAnchor];
  v14 = [(GKOnboardingWhatsNewListCell *)self titleLabel];
  v15 = [v14 bottomAnchor];
  v16 = [v28 constraintEqualToAnchor:v15 constant:4.0];
  v107[9] = v16;
  v17 = [(GKOnboardingWhatsNewListCell *)self subtitleLabel];
  v18 = [v17 bottomAnchor];
  v19 = [(GKOnboardingWhatsNewListCell *)self bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v107[10] = v20;
  v21 = [(GKOnboardingWhatsNewListCell *)self heightAnchor];
  v22 = [v21 constraintGreaterThanOrEqualToConstant:80.0];
  v107[11] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:12];
  axConstraints = self->_axConstraints;
  self->_axConstraints = v23;

  v25 = [(GKOnboardingWhatsNewListCell *)self traitCollection];
  v26 = [v25 preferredContentSizeCategory];
  LODWORD(v21) = UIContentSizeCategoryIsAccessibilityCategory(v26);

  v27 = 440;
  if (v21)
  {
    v27 = 448;
  }

  [MEMORY[0x277CCAAD0] activateConstraints:*(&self->super.super.super.isa + v27)];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(GKOnboardingWhatsNewListCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

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