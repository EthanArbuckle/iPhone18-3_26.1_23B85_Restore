@interface GKTurnParticipantCell
+ (double)defaultRowHeight;
+ (id)itemHeightList;
+ (void)registerCellClassesForCollectionView:(id)view;
- (BOOL)matchWantsLocalPlayerAttention;
- (BOOL)needsRefreshOverlappingPlayersView;
- (GKTurnParticipantCell)initWithFrame:(CGRect)frame;
- (SEL)detailPressedAction;
- (UIEdgeInsets)insets;
- (double)getOverlappingPlayerAvatarIconSize;
- (id)getPlayerIDForAllNonAutomatchedTurnBasedParticipants;
- (void)configureForDetail;
- (void)configureForMatch;
- (void)configureOverlappingPlayersView;
- (void)detailPressed:(id)pressed;
- (void)didUpdateModel;
- (void)establishConstraints;
- (void)setDetailPressedAction:(SEL)action;
- (void)setMatch:(id)match;
- (void)setParticipant:(id)participant;
- (void)traitCollectionDidChange:(id)change;
- (void)updateMarginConstraints;
- (void)updateOverlappingPlayerViewsAvatar;
- (void)updateUIBasedOnTraitCollection;
@end

@implementation GKTurnParticipantCell

+ (void)registerCellClassesForCollectionView:(id)view
{
  viewCopy = view;
  [viewCopy _gkRegisterCellClass:objc_opt_class()];
}

+ (double)defaultRowHeight
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    return 65.0;
  }

  result = 65.0;
  if (*MEMORY[0x277D0C8F0] & 1 | ((*MEMORY[0x277D0C258] & 1) == 0))
  {
    return 90.0;
  }

  return result;
}

+ (id)itemHeightList
{
  v14[2] = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {
    v8 = *MEMORY[0x277D76918];
    v13[0] = @"GKFixedHeightSentinel";
    v13[1] = v8;
    v14[0] = &unk_286189618;
    v14[1] = &unk_2861896D8;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v14;
    v7 = v13;
  }

  else
  {
    v4 = *MEMORY[0x277D76918];
    v11[0] = @"GKFixedHeightSentinel";
    v11[1] = v4;
    v12[0] = &unk_286189630;
    v12[1] = &unk_2861896D8;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v12;
    v7 = v11;
  }

  v9 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:2];

  return v9;
}

- (GKTurnParticipantCell)initWithFrame:(CGRect)frame
{
  v57.receiver = self;
  v57.super_class = GKTurnParticipantCell;
  v3 = [(GKBasePlayerCell *)&v57 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    textStyle = [MEMORY[0x277D0C8B0] textStyle];
    v5 = objc_alloc_init(GKLabel);
    body = [textStyle body];
    [(GKLabel *)v5 applyTextStyle:body];

    [(GKLabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)v5 setNumberOfLines:2];
    nameLabel = [(GKBasePlayerCell *)v3 nameLabel];
    [nameLabel removeFromSuperview];

    [(GKBasePlayerCell *)v3 setNameLabel:v5];
    v8 = objc_alloc_init(GKLabel);
    bottomLabel = v3->_bottomLabel;
    v3->_bottomLabel = v8;

    v10 = v3->_bottomLabel;
    footnote = [textStyle footnote];
    emphasized = [footnote emphasized];
    [(GKLabel *)v10 applyTextStyle:emphasized];

    [(GKLabel *)v3->_bottomLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)v3->_bottomLabel setNumberOfLines:1];
    v13 = objc_alloc_init(MEMORY[0x277D755E8]);
    statusImageView = v3->_statusImageView;
    v3->_statusImageView = v13;

    [(UIImageView *)v3->_statusImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x277D755B8] systemImageNamed:@"circle.fill"];
    v16 = [v15 imageWithRenderingMode:2];
    [(UIImageView *)v3->_statusImageView setImage:v16];

    [(UIImageView *)v3->_statusImageView setContentMode:1];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UIImageView *)v3->_statusImageView setTintColor:labelColor];

    [(UIImageView *)v3->_statusImageView setHidden:1];
    v18 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v18 setAxis:0];
    [v18 setAlignment:3];
    [v18 setDistribution:0];
    [v18 setSpacing:2.0];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 addArrangedSubview:v3->_statusImageView];
    [v18 addArrangedSubview:v3->_bottomLabel];
    v19 = objc_alloc_init(MEMORY[0x277D75A68]);
    textStackView = v3->_textStackView;
    v3->_textStackView = v19;

    [(UIStackView *)v3->_textStackView setAxis:1];
    [(UIStackView *)v3->_textStackView setAlignment:1];
    [(UIStackView *)v3->_textStackView setDistribution:0];
    [(UIStackView *)v3->_textStackView setSpacing:2.0];
    [(UIStackView *)v3->_textStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = v3->_textStackView;
    nameLabel2 = [(GKBasePlayerCell *)v3 nameLabel];
    [(UIStackView *)v21 addArrangedSubview:nameLabel2];

    [(UIStackView *)v3->_textStackView addArrangedSubview:v18];
    staticContentView = [(GKCollectionViewCell *)v3 staticContentView];
    [staticContentView addSubview:v3->_textStackView];

    v24 = objc_alloc_init(MEMORY[0x277D75D18]);
    overlappingPlayersViewContainer = v3->_overlappingPlayersViewContainer;
    v3->_overlappingPlayersViewContainer = v24;

    [(UIView *)v3->_overlappingPlayersViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v26) = 1148829696;
    [(UIView *)v3->_overlappingPlayersViewContainer setContentHuggingPriority:0 forAxis:v26];
    LODWORD(v27) = 1148829696;
    [(UIView *)v3->_overlappingPlayersViewContainer setContentHuggingPriority:1 forAxis:v27];
    LODWORD(v28) = 1120403456;
    [(UIView *)v3->_overlappingPlayersViewContainer setContentCompressionResistancePriority:0 forAxis:v28];
    LODWORD(v29) = 1120403456;
    [(UIView *)v3->_overlappingPlayersViewContainer setContentCompressionResistancePriority:1 forAxis:v29];
    staticContentView2 = [(GKCollectionViewCell *)v3 staticContentView];
    [staticContentView2 addSubview:v3->_overlappingPlayersViewContainer];

    v31 = [_TtC12GameCenterUI22OverlappingPlayersView alloc];
    v32 = [(OverlappingPlayersView *)v31 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    overlappingPlayersView = v3->_overlappingPlayersView;
    v3->_overlappingPlayersView = v32;

    [(OverlappingPlayersView *)v3->_overlappingPlayersView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(OverlappingPlayersView *)v3->_overlappingPlayersView setOverlapPercentage:0.75];
    [(UIView *)v3->_overlappingPlayersViewContainer addSubview:v3->_overlappingPlayersView];
    [(UIView *)v3->_overlappingPlayersViewContainer setClipsToBounds:0];
    [(OverlappingPlayersView *)v3->_overlappingPlayersView setClipsToBounds:0];
    [MEMORY[0x277CCAAD0] _gkInstallEdgeConstraintsForView:v3->_overlappingPlayersView containedWithinParentView:v3->_overlappingPlayersViewContainer];
    v34 = [GKFocusableButton buttonWithType:3];
    [(GKTurnParticipantCell *)v3 setDetailButton:v34];

    [(GKFocusableButton *)v3->_detailButton _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    [(GKFocusableButton *)v3->_detailButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKFocusableButton *)v3->_detailButton addTarget:v3 action:sel_detailPressed_ forControlEvents:0x2000];
    [(GKFocusableButton *)v3->_detailButton setHidden:1];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(GKFocusableButton *)v3->_detailButton setTintColor:whiteColor];

    staticContentView3 = [(GKCollectionViewCell *)v3 staticContentView];
    [staticContentView3 addSubview:v3->_detailButton];

    v37 = objc_alloc_init(MEMORY[0x277D75D18]);
    divider = v3->_divider;
    v3->_divider = v37;

    quaternaryLabelColor = [MEMORY[0x277D75348] quaternaryLabelColor];
    [(UIView *)v3->_divider setBackgroundColor:quaternaryLabelColor];

    [(UIView *)v3->_divider setTranslatesAutoresizingMaskIntoConstraints:0];
    staticContentView4 = [(GKCollectionViewCell *)v3 staticContentView];
    [staticContentView4 addSubview:v3->_divider];

    v41 = objc_alloc_init(MEMORY[0x277D756B8]);
    additionalPlayerCountLabel = v3->_additionalPlayerCountLabel;
    v3->_additionalPlayerCountLabel = v41;

    v43 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v3->_additionalPlayerCountLabel setFont:v43];

    [(UILabel *)v3->_additionalPlayerCountLabel setAdjustsFontForContentSizeCategory:1];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->_additionalPlayerCountLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v3->_additionalPlayerCountLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    staticContentView5 = [(GKCollectionViewCell *)v3 staticContentView];
    [staticContentView5 addSubview:v3->_additionalPlayerCountLabel];

    array = [MEMORY[0x277CBEA60] array];
    constraints = v3->_constraints;
    v3->_constraints = array;

    [(GKTurnParticipantCell *)v3 establishConstraints];
    [(GKTurnParticipantCell *)v3 updateUIBasedOnTraitCollection];
    v48 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0700000003];
    staticContentView6 = [(GKCollectionViewCell *)v3 staticContentView];
    [staticContentView6 setBackgroundColor:v48];

    [(GKTurnParticipantCell *)v3 setClipsToBounds:1];
    v50 = *MEMORY[0x277CDA138];
    layer = [(GKTurnParticipantCell *)v3 layer];
    [layer setCornerCurve:v50];

    v52 = MEMORY[0x277D75208];
    [(GKFocusableButton *)v3->_detailButton bounds];
    v59 = CGRectInset(v58, 1.0, 1.0);
    v53 = [v52 bezierPathWithOvalInRect:{v59.origin.x, v59.origin.y, v59.size.width, v59.size.height}];
    v54 = [MEMORY[0x277D75508] effectWithPath:v53];
    [(GKFocusableButton *)v3->_detailButton setFocusEffect:v54];

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(GKTurnParticipantCell *)v3 setTintColor:whiteColor2];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = GKTurnParticipantCell;
  [(GKTurnParticipantCell *)&v4 traitCollectionDidChange:change];
  [(GKTurnParticipantCell *)self updateUIBasedOnTraitCollection];
}

- (void)updateUIBasedOnTraitCollection
{
  [(GKTurnParticipantCell *)self establishConstraints];
  traitCollection = [(GKTurnParticipantCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  nameLabel = [(GKBasePlayerCell *)self nameLabel];
  v7 = nameLabel;
  if (IsAccessibilityCategory)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (IsAccessibilityCategory)
  {
    v9 = 0.649999976;
  }

  else
  {
    v9 = 0.75;
  }

  [nameLabel setNumberOfLines:v8];

  [(OverlappingPlayersView *)self->_overlappingPlayersView setOverlapPercentage:v9];
  overlappingPlayersView = [(GKTurnParticipantCell *)self overlappingPlayersView];
  allValues = [(NSDictionary *)self->_playerAvatarMapping allValues];
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v13 = v12;
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  [overlappingPlayersView applyWithPlayerAvatars:allValues playerSize:{v13, v14}];

  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v16 = -5.0 - v15;
  overlappingPlayersViewTrailingConstraint = [(GKTurnParticipantCell *)self overlappingPlayersViewTrailingConstraint];
  [overlappingPlayersViewTrailingConstraint setConstant:v16];
}

- (double)getOverlappingPlayerAvatarIconSize
{
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  traitCollection = [(GKTurnParticipantCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  v7 = 30.0;
  if (IsAccessibilityCategory)
  {
    v7 = 20.0;
  }

  [defaultMetrics scaledValueForValue:v7];
  v9 = v8;

  return v9;
}

- (void)establishConstraints
{
  v131[10] = *MEMORY[0x277D85DE8];
  staticContentView = [(GKCollectionViewCell *)self staticContentView];
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  array = [MEMORY[0x277CBEB18] array];
  iconView = [(GKBasePlayerCell *)self iconView];
  widthAnchor = [iconView widthAnchor];
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v115 = [widthAnchor constraintEqualToConstant:?];
  v131[0] = v115;
  iconView2 = [(GKBasePlayerCell *)self iconView];
  heightAnchor = [iconView2 heightAnchor];
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v109 = [heightAnchor constraintEqualToConstant:?];
  v131[1] = v109;
  widthAnchor2 = [(UIImageView *)self->_statusImageView widthAnchor];
  v105 = [widthAnchor2 constraintEqualToConstant:8.0];
  v131[2] = v105;
  heightAnchor2 = [(UIImageView *)self->_statusImageView heightAnchor];
  v101 = [heightAnchor2 constraintEqualToConstant:8.0];
  v131[3] = v101;
  heightAnchor3 = [(UIView *)self->_divider heightAnchor];
  v97 = [heightAnchor3 constraintEqualToConstant:1.0];
  v131[4] = v97;
  bottomAnchor = [(UIView *)self->_divider bottomAnchor];
  v121 = staticContentView;
  bottomAnchor2 = [staticContentView bottomAnchor];
  v91 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  v131[5] = v91;
  trailingAnchor = [(UILabel *)self->_additionalPlayerCountLabel trailingAnchor];
  leadingAnchor = [(GKFocusableButton *)self->_detailButton leadingAnchor];
  v84 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-2.0];
  v131[6] = v84;
  detailButton = [(GKTurnParticipantCell *)self detailButton];
  trailingAnchor2 = [detailButton trailingAnchor];
  superview = [(GKFocusableButton *)self->_detailButton superview];
  trailingAnchor3 = [superview trailingAnchor];
  v5 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
  [(GKTurnParticipantCell *)self setDetailButtonConstraint:v5];
  v131[7] = v5;
  bottomAnchor3 = [(OverlappingPlayersView *)self->_overlappingPlayersView bottomAnchor];
  bottomAnchor4 = [(GKFocusableButton *)self->_detailButton bottomAnchor];
  v8 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v131[8] = v8;
  trailingAnchor4 = [(UIView *)self->_overlappingPlayersViewContainer trailingAnchor];
  leadingAnchor2 = [(UILabel *)self->_additionalPlayerCountLabel leadingAnchor];
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v12 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor2 constant:-5.0 - v11];
  [(GKTurnParticipantCell *)self setOverlappingPlayersViewTrailingConstraint:v12];
  v131[9] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:10];
  [(NSArray *)array addObjectsFromArray:v13];

  LODWORD(leadingAnchor2) = self->_isDetail;
  leadingAnchor3 = [(UIView *)self->_divider leadingAnchor];
  if (leadingAnchor2 == 1)
  {
    v15 = v121;
    leadingAnchor4 = [v121 leadingAnchor];
    v16LeadingAnchor = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
    v130[0] = v16LeadingAnchor;
    trailingAnchor5 = [(UIView *)self->_divider trailingAnchor];
    trailingAnchor6 = [v121 trailingAnchor];
    detailButton2 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-20.0];
    v130[1] = detailButton2;
    trailingAnchor7 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
    [(NSArray *)array addObjectsFromArray:trailingAnchor7];
  }

  else
  {
    leadingAnchor4 = [(GKTurnParticipantCell *)self textStackView];
    v16LeadingAnchor = [leadingAnchor4 leadingAnchor];
    trailingAnchor5 = [leadingAnchor3 constraintEqualToAnchor:v16LeadingAnchor constant:0.0];
    v129[0] = trailingAnchor5;
    trailingAnchor6 = [(UIView *)self->_divider trailingAnchor];
    detailButton2 = [(GKTurnParticipantCell *)self detailButton];
    trailingAnchor7 = [detailButton2 trailingAnchor];
    v22 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:0.0];
    v129[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:2];
    [(NSArray *)array addObjectsFromArray:v23];

    v15 = v121;
  }

  traitCollection = [(GKTurnParticipantCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    iconView3 = [(GKBasePlayerCell *)self iconView];
    leadingAnchor5 = [iconView3 leadingAnchor];
    leadingAnchor6 = [v15 leadingAnchor];
    v27 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:8.0];
    [(GKTurnParticipantCell *)self setIconLeadingConstraint:v27];
    v122 = v27;
    v128[0] = v27;
    iconView4 = [(GKBasePlayerCell *)self iconView];
    topAnchor = [iconView4 topAnchor];
    topAnchor2 = [v15 topAnchor];
    v118 = topAnchor;
    v114 = [topAnchor constraintEqualToAnchor:16.0 constant:?];
    v128[1] = v114;
    textStackView = [(GKTurnParticipantCell *)self textStackView];
    leadingAnchor7 = [textStackView leadingAnchor];
    leadingAnchor8 = [v15 leadingAnchor];
    v110 = leadingAnchor7;
    v30 = [leadingAnchor7 constraintEqualToAnchor:8.0 constant:?];
    [(GKTurnParticipantCell *)self setTextStackViewToIconViewLeadingConstraint:v30];
    v106 = v30;
    v128[2] = v30;
    textStackView2 = [(GKTurnParticipantCell *)self textStackView];
    trailingAnchor8 = [textStackView2 trailingAnchor];
    trailingAnchor9 = [v15 trailingAnchor];
    textStackView5 = trailingAnchor8;
    v32 = [trailingAnchor8 constraintEqualToAnchor:-8.0 constant:?];
    [(GKTurnParticipantCell *)self setTextContainerTrailingConstraint:v32];
    centerYAnchor4 = v32;
    v128[3] = v32;
    textStackView3 = [(GKTurnParticipantCell *)self textStackView];
    topAnchor3 = [textStackView3 topAnchor];
    detailButton3 = [(GKTurnParticipantCell *)self detailButton];
    [detailButton3 bottomAnchor];
    v90 = v94 = topAnchor3;
    detailButton5 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:1.1 multiplier:?];
    v128[4] = detailButton5;
    centerYAnchor = [(UILabel *)self->_additionalPlayerCountLabel centerYAnchor];
    [(GKFocusableButton *)self->_detailButton centerYAnchor];
    v87 = v123 = centerYAnchor;
    v85 = [centerYAnchor constraintEqualToAnchor:?];
    v128[5] = v85;
    detailButton4 = [(GKTurnParticipantCell *)self detailButton];
    topAnchor4 = [detailButton4 topAnchor];
    topAnchor5 = [v15 topAnchor];
    v81 = topAnchor4;
    topAnchor9 = [topAnchor4 constraintEqualToAnchor:8.0 constant:?];
    v128[6] = topAnchor9;
    widthAnchor3 = [(UIView *)self->_overlappingPlayersViewContainer widthAnchor];
    v38 = [widthAnchor3 constraintEqualToConstant:120.0];
    [(GKTurnParticipantCell *)self setOverlappingPlayersViewWidthConstraint:v38];
    v128[7] = v38;
    topAnchor6 = [(OverlappingPlayersView *)self->_overlappingPlayersView topAnchor];
    topAnchor7 = [(GKFocusableButton *)self->_detailButton topAnchor];
    [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:8.0];
    v42 = v41 = v15;
    v128[8] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:9];
    v44 = array;
    [(NSArray *)array addObjectsFromArray:v43];

    iconView5 = iconView3;
    v15 = v41;
    v46 = leadingAnchor6;

    v47 = leadingAnchor5;
  }

  else
  {
    isDetail = self->_isDetail;
    textStackView4 = [(GKTurnParticipantCell *)self textStackView];
    trailingAnchor10 = [textStackView4 trailingAnchor];
    if (isDetail)
    {
      trailingAnchor11 = [v15 trailingAnchor];
      v52 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-8.0];
      [(GKTurnParticipantCell *)self setTextContainerTrailingConstraint:v52];
      v127 = v52;
      v53 = &v127;
    }

    else
    {
      trailingAnchor11 = [(UIView *)self->_overlappingPlayersViewContainer leadingAnchor];
      v52 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:0.0];
      [(GKTurnParticipantCell *)self setTextContainerTrailingConstraint:v52];
      v126 = v52;
      v53 = &v126;
    }

    v44 = array;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    [(NSArray *)array addObjectsFromArray:v54];

    iconView5 = [(GKBasePlayerCell *)self iconView];
    leadingAnchor9 = [iconView5 leadingAnchor];
    leadingAnchor10 = [v15 leadingAnchor];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v59 = 15.0;
    if (userInterfaceIdiom == 1 && *MEMORY[0x277D0C8F0] & 1 | ((*MEMORY[0x277D0C258] & 1) == 0))
    {
      v59 = 25.0;
    }

    v47 = leadingAnchor9;
    v46 = leadingAnchor10;
    v60 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:v59];
    [(GKTurnParticipantCell *)self setIconLeadingConstraint:v60];
    v122 = v60;
    v125[0] = v60;
    iconView4 = [(GKBasePlayerCell *)self iconView];
    centerYAnchor2 = [iconView4 centerYAnchor];
    topAnchor2 = [v15 centerYAnchor];
    v118 = centerYAnchor2;
    v114 = [centerYAnchor2 constraintEqualToAnchor:?];
    v125[1] = v114;
    textStackView = [(GKTurnParticipantCell *)self textStackView];
    leadingAnchor11 = [textStackView leadingAnchor];
    leadingAnchor8 = [(GKBasePlayerCell *)self iconView];
    [leadingAnchor8 trailingAnchor];
    v106 = v110 = leadingAnchor11;
    v63 = [leadingAnchor11 constraintEqualToAnchor:8.0 constant:?];
    [(GKTurnParticipantCell *)self setTextStackViewToIconViewLeadingConstraint:v63];
    textStackView2 = v63;
    v125[2] = v63;
    textStackView5 = [(GKTurnParticipantCell *)self textStackView];
    centerYAnchor3 = [textStackView5 centerYAnchor];
    centerYAnchor4 = [v15 centerYAnchor];
    trailingAnchor9 = centerYAnchor3;
    textStackView3 = [centerYAnchor3 constraintEqualToAnchor:?];
    v125[3] = textStackView3;
    centerYAnchor5 = [(UILabel *)self->_additionalPlayerCountLabel centerYAnchor];
    detailButton3 = [v15 centerYAnchor];
    v94 = centerYAnchor5;
    v90 = [centerYAnchor5 constraintEqualToAnchor:?];
    v125[4] = v90;
    detailButton5 = [(GKTurnParticipantCell *)self detailButton];
    centerYAnchor6 = [detailButton5 centerYAnchor];
    [v15 centerYAnchor];
    v87 = v123 = centerYAnchor6;
    v85 = [centerYAnchor6 constraintEqualToAnchor:?];
    v125[5] = v85;
    detailButton4 = [(UIView *)self->_overlappingPlayersViewContainer widthAnchor];
    v67 = [detailButton4 constraintEqualToConstant:60.0];
    [(GKTurnParticipantCell *)self setOverlappingPlayersViewWidthConstraint:v67];
    v81 = v67;
    v125[6] = v67;
    topAnchor8 = [(OverlappingPlayersView *)self->_overlappingPlayersView topAnchor];
    topAnchor9 = [(GKFocusableButton *)self->_detailButton topAnchor];
    topAnchor5 = topAnchor8;
    widthAnchor3 = [topAnchor8 constraintEqualToAnchor:topAnchor9 constant:-2.0];
    v125[7] = widthAnchor3;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:8];
    [(NSArray *)array addObjectsFromArray:v38];
  }

  constraints = self->_constraints;
  self->_constraints = v44;
  v70 = v44;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
  textStackView6 = [(GKTurnParticipantCell *)self textStackView];
  leadingAnchor12 = [textStackView6 leadingAnchor];
  leadingAnchor13 = [v15 leadingAnchor];
  v74 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13 constant:15.0];
  [(GKTurnParticipantCell *)self setTextStackViewToSuperViewLeadingConstraint:v74];

  [(GKTurnParticipantCell *)self updateMarginConstraints];
}

- (BOOL)matchWantsLocalPlayerAttention
{
  match = [(GKTurnParticipantCell *)self match];
  state = [match state];

  return state == 2 || (state & 0xFFFFFFFD) == 1;
}

- (void)didUpdateModel
{
  v3.receiver = self;
  v3.super_class = GKTurnParticipantCell;
  [(GKBasePlayerCell *)&v3 didUpdateModel];
  if (self->_isDetail)
  {
    [(GKTurnParticipantCell *)self configureForDetail];
  }

  else
  {
    [(GKTurnParticipantCell *)self configureForMatch];
  }

  [(GKTurnParticipantCell *)self establishConstraints];
}

- (void)configureForMatch
{
  textStyle = [MEMORY[0x277D0C8B0] textStyle];
  match = [(GKTurnParticipantCell *)self match];
  iconView = [(GKBasePlayerCell *)self iconView];
  [iconView setHidden:1];

  textStackViewToIconViewLeadingConstraint = [(GKTurnParticipantCell *)self textStackViewToIconViewLeadingConstraint];
  [textStackViewToIconViewLeadingConstraint setActive:0];

  textStackViewToSuperViewLeadingConstraint = [(GKTurnParticipantCell *)self textStackViewToSuperViewLeadingConstraint];
  [textStackViewToSuperViewLeadingConstraint setActive:1];

  message = [match message];
  state = [match state];
  v35 = match;
  if (state <= 2)
  {
    if (state != 1)
    {
      if (state != 2)
      {
        goto LABEL_23;
      }

      activeExchanges = [match activeExchanges];
      lastObject = [activeExchanges lastObject];
      message2 = [lastObject message];

      if (!message2 || ![message2 length])
      {
        v16 = GKGameCenterUIFrameworkBundle();
        v17 = GKGetLocalizedStringFromTableInBundle();

        message2 = v17;
      }

      goto LABEL_22;
    }

    currentParticipant = [match currentParticipant];
    lastObject = [currentParticipant inviteMessage];

    if (!lastObject || ![lastObject length])
    {
      goto LABEL_20;
    }

LABEL_19:
    message = lastObject;
    goto LABEL_23;
  }

  if (state == 3)
  {
LABEL_21:
    activeExchanges = GKGameCenterUIFrameworkBundle();
    message2 = GKGetLocalizedStringFromTableInBundle();
    lastObject = message;
    goto LABEL_22;
  }

  if (state == 4)
  {
    player = [(GKBasePlayerCell *)self player];

    if (player)
    {
      player2 = [(GKBasePlayerCell *)self player];
      isAutomatchPlayer = [player2 isAutomatchPlayer];

      if (!isAutomatchPlayer)
      {
        v32 = MEMORY[0x277CCACA8];
        activeExchanges = GKGameCenterUIFrameworkBundle();
        lastObject = GKGetLocalizedStringFromTableInBundle();
        player3 = [(GKBasePlayerCell *)self player];
        v3 = [player3 displayNameWithOptions:1];
        message2 = [v32 stringWithFormat:lastObject, v3];

        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  if (state != 5)
  {
    goto LABEL_23;
  }

  localPlayerParticipant = [match localPlayerParticipant];
  match2 = [(GKTurnParticipantCell *)self match];
  message2 = [match2 participants];
  lastObject = [localPlayerParticipant matchOutcomeStringForLocalPlayer:{objc_msgSend(message2, "count")}];

  if (lastObject && [lastObject length])
  {
    goto LABEL_19;
  }

LABEL_20:
  activeExchanges = GKGameCenterUIFrameworkBundle();
  message2 = GKGetLocalizedStringFromTableInBundle();
LABEL_22:

  message = message2;
LABEL_23:
  footnote = [textStyle footnote];
  v34 = message;
  v23 = [message _gkAttributedStringByApplyingStyle:footnote];
  [(GKLabel *)self->_bottomLabel setAttributedText:v23];

  [(UIImageView *)self->_statusImageView setHidden:[(GKTurnParticipantCell *)self matchWantsLocalPlayerAttention]^ 1];
  match3 = [(GKTurnParticipantCell *)self match];
  participants = [match3 participants];
  v26 = [participants count];
  if (v26 < 5)
  {
    v28 = &stru_28612D290;
  }

  else
  {
    v27 = MEMORY[0x277CCACA8];
    message2 = GKGameCenterUIFrameworkBundle();
    v3 = GKGetLocalizedStringFromTableInBundle();
    message = [(GKTurnParticipantCell *)self match];
    participants2 = [message participants];
    v28 = [v27 stringWithFormat:v3, objc_msgSend(participants2, "count") - 4];
  }

  additionalPlayerCountLabel = [(GKTurnParticipantCell *)self additionalPlayerCountLabel];
  [additionalPlayerCountLabel setText:v28];

  if (v26 >= 5)
  {
  }

  matchTitle = [(GKTurnBasedMatch *)self->_match matchTitle];
  nameLabel = [(GKBasePlayerCell *)self nameLabel];
  [nameLabel setText:matchTitle];

  [(GKTurnParticipantCell *)self configureOverlappingPlayersView];
}

- (id)getPlayerIDForAllNonAutomatchedTurnBasedParticipants
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  match = [(GKTurnParticipantCell *)self match];
  participants = [match participants];

  v6 = [participants countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(participants);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if ([array count] > 3)
      {
        break;
      }

      player = [v10 player];

      if (player)
      {
        player2 = [v10 player];
        internal = [player2 internal];
        playerID = [internal playerID];
        [array addObject:playerID];
      }

      if (v7 == ++v9)
      {
        v7 = [participants countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return array;
}

- (BOOL)needsRefreshOverlappingPlayersView
{
  getPlayerIDForAllNonAutomatchedTurnBasedParticipants = [(GKTurnParticipantCell *)self getPlayerIDForAllNonAutomatchedTurnBasedParticipants];
  playerAvatarMapping = [(GKTurnParticipantCell *)self playerAvatarMapping];
  allKeys = [playerAvatarMapping allKeys];
  v6 = [getPlayerIDForAllNonAutomatchedTurnBasedParticipants isEqualToArray:allKeys];

  return v6 ^ 1;
}

- (void)configureOverlappingPlayersView
{
  if ([(GKTurnParticipantCell *)self needsRefreshOverlappingPlayersView])
  {
    overlappingPlayersView = [(GKTurnParticipantCell *)self overlappingPlayersView];
    [overlappingPlayersView prepareForReuse];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(GKTurnParticipantCell *)self setPlayerAvatarMapping:dictionary];

    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v5 = MEMORY[0x277D0C020];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnCell.m", 413, "-[GKTurnParticipantCell configureOverlappingPlayersView]"];
    v7 = [v5 dispatchGroupWithName:v6];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke;
    v17[3] = &unk_27966AC60;
    v17[4] = self;
    v19 = v20;
    v8 = v7;
    v18 = v8;
    [v8 perform:v17];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke_6;
    v14[3] = &unk_279669E48;
    v9 = v8;
    v15 = v9;
    selfCopy = self;
    [v9 notifyOnMainQueueWithBlock:v14];
    match = [(GKTurnParticipantCell *)self match];
    participants = [match participants];
    v12 = [participants count];

    if (!v12)
    {
      overlappingPlayersViewWidthConstraint = [(GKTurnParticipantCell *)self overlappingPlayersViewWidthConstraint];
      [overlappingPlayersViewWidthConstraint setConstant:0.0];
    }

    _Block_object_dispose(v20, 8);
  }
}

void __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [*(a1 + 32) match];
  v6 = [v5 participants];
  v7 = [v6 count];

  if (v7)
  {
    v25 = v3;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [*(a1 + 32) match];
    v9 = [v8 participants];

    obj = v9;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v34 + 1) + 8 * i) player];
          if (v14)
          {
            ++*(*(*(a1 + 48) + 8) + 24);
            v15 = MEMORY[0x277D0C020];
            v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnCell.m", 427, "-[GKTurnParticipantCell configureOverlappingPlayersView]_block_invoke"];
            v17 = [v15 dispatchGroupWithName:v16];

            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke_2;
            v31[3] = &unk_279669A20;
            v18 = v14;
            v32 = v18;
            v19 = v4;
            v20 = v4;
            v33 = v20;
            [v17 perform:v31];
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke_5;
            v26[3] = &unk_27966D8F8;
            v21 = *(a1 + 40);
            v30 = *(a1 + 48);
            v27 = v21;
            v28 = v20;
            v29 = v25;
            [v17 notifyOnMainQueueWithBlock:v26];
            v22 = *(*(*(a1 + 48) + 8) + 24);

            v23 = v22 == 4;
            v4 = v19;
            if (v23)
            {

              goto LABEL_14;
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v3 = v25;
  }

  else
  {
    [*(a1 + 40) setResult:v4];
    v3[2](v3);
  }
}

void __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke_3;
    v5[3] = &unk_27966D8D0;
    v6 = v4;
    v7 = *(a1 + 40);
    v8 = v3;
    [v6 loadPhotoForSize:0 withCompletionHandler:v5];
  }
}

void __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke_3(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke_4;
    v10[3] = &unk_27966BF40;
    v6 = a1[4];
    v11 = a1[5];
    v12 = a1[4];
    v13 = a1[6];
    [v6 monogramImageWithPhotoSize:0 handler:v10];
  }

  else
  {
    v7 = a1[5];
    v8 = [a1[4] internal];
    v9 = [v8 playerID];
    [v7 setObject:v5 forKeyedSubscript:v9];

    (*(a1[6] + 2))();
  }
}

uint64_t __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke_4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 internal];
  v7 = [v6 playerID];
  [v3 setObject:v5 forKeyedSubscript:v7];

  v8 = *(a1[6] + 16);

  return v8();
}

uint64_t __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke_5(uint64_t result)
{
  if (!--*(*(*(result + 56) + 8) + 24))
  {
    v2 = result;
    [*(result + 32) setResult:*(result + 40)];
    v3 = *(*(v2 + 48) + 16);

    return v3();
  }

  return result;
}

void __56__GKTurnParticipantCell_configureOverlappingPlayersView__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  if ([v2 count])
  {
    [*(a1 + 40) setPlayerAvatarMapping:v2];
    [*(a1 + 40) updateOverlappingPlayerViewsAvatar];
  }
}

- (void)updateOverlappingPlayerViewsAvatar
{
  array = [MEMORY[0x277CBEB18] array];
  playerAvatarMapping = [(GKTurnParticipantCell *)self playerAvatarMapping];
  allValues = [playerAvatarMapping allValues];
  [array addObjectsFromArray:allValues];

  for (i = [array count]; ; ++i)
  {
    match = [(GKTurnParticipantCell *)self match];
    participants = [match participants];
    v8 = [participants count];

    if (i > 3 || i >= v8)
    {
      break;
    }

    mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
    defaultPlayerPhoto = [mEMORY[0x277D0C8C8] defaultPlayerPhoto];
    [array addObject:defaultPlayerPhoto];
  }

  overlappingPlayersView = [(GKTurnParticipantCell *)self overlappingPlayersView];
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v13 = v12;
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  [overlappingPlayersView applyWithPlayerAvatars:array playerSize:{v13, v14}];
}

- (void)configureForDetail
{
  v40[1] = *MEMORY[0x277D85DE8];
  [(UIImageView *)self->_statusImageView setHidden:1];
  textStyle = [MEMORY[0x277D0C8B0] textStyle];
  player = [(GKBasePlayerCell *)self player];
  v5 = [player displayNameWithOptions:0];
  v6 = textStyle;
  body = [textStyle body];
  v8 = [v5 _gkAttributedStringByApplyingStyle:body];
  nameLabel = [(GKBasePlayerCell *)self nameLabel];
  [nameLabel setAttributedText:v8];

  match = [(GKTurnParticipantCell *)self match];
  participant = [(GKTurnParticipantCell *)self participant];
  localPlayerParticipant = [match localPlayerParticipant];
  currentParticipant = [match currentParticipant];

  if (participant != currentParticipant)
  {
    v14 = &stru_28612D290;
    goto LABEL_4;
  }

  v15 = GKGameCenterUIFrameworkBundle();
  v14 = GKGetLocalizedStringFromTableInBundle();

  if (v14)
  {
LABEL_4:
    if ([(__CFString *)v14 length])
    {
      goto LABEL_9;
    }
  }

  if ([participant status] == 5)
  {
    participants = [match participants];
    matchStatusString = [participant matchOutcomeString:{-[__CFString count](participants, "count")}];

    v14 = participants;
  }

  else
  {
    matchStatusString = [participant matchStatusString];
  }

  v14 = matchStatusString;
LABEL_9:
  lastTurnDate = [participant lastTurnDate];
  v35 = lastTurnDate;
  if (lastTurnDate)
  {
    v19 = [lastTurnDate _gkFormattedWhenStringWithOptions:0];
  }

  else
  {
    v19 = &stru_28612D290;
  }

  currentParticipant2 = [match currentParticipant];
  v37 = participant;
  v38 = match;
  v36 = localPlayerParticipant;
  if ([currentParticipant2 status] == 1)
  {

LABEL_15:
    v19 = &stru_28612D290;
    goto LABEL_16;
  }

  currentParticipant3 = [match currentParticipant];

  if (participant == currentParticipant3)
  {
    goto LABEL_15;
  }

LABEL_16:
  v34 = v19;
  v22 = MEMORY[0x277CCACA8];
  v23 = GKGameCenterUIFrameworkBundle();
  v24 = GKGetLocalizedStringFromTableInBundle();
  v25 = [v22 stringWithFormat:v24, v14, v19];

  v39 = @"state";
  footnote = [v6 footnote];
  emphasized = [footnote emphasized];
  v40[0] = emphasized;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  footnote2 = [v6 footnote];
  emphasized2 = [footnote2 emphasized];
  v31 = [v25 _gkAttributedStringByApplyingStylesForTags:v28 untaggedStyle:emphasized2];
  [(GKLabel *)self->_bottomLabel setAttributedText:v31];

  mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
  standardTextColor = [mEMORY[0x277D0C868] standardTextColor];
  [(GKLabel *)self->_bottomLabel setTextColor:standardTextColor];

  [(GKLabel *)self->_bottomLabel setAdjustsFontSizeToFitWidth:1];
  [(GKLabel *)self->_bottomLabel setMinimumScaleFactor:0.7];
}

- (void)setParticipant:(id)participant
{
  participantCopy = participant;
  participant = self->_participant;
  v8 = participantCopy;
  if (participant != participantCopy)
  {
    objc_storeStrong(&self->_participant, participant);
    participant = self->_participant;
  }

  player = [(GKTurnBasedParticipant *)participant player];
  if (!player)
  {
    player = [MEMORY[0x277D0C170] automatchPlayer];
  }

  [(GKBasePlayerCell *)self setPlayer:player];
}

- (void)setMatch:(id)match
{
  matchCopy = match;
  match = self->_match;
  if (match != matchCopy)
  {
    v9 = matchCopy;
    if (match)
    {
      participants = [(GKTurnBasedMatch *)match participants];
      previousParticipants = self->_previousParticipants;
      self->_previousParticipants = participants;
    }

    objc_storeStrong(&self->_match, match);
    matchCopy = v9;
  }

  MEMORY[0x2821F96F8](match, matchCopy);
}

- (void)setDetailPressedAction:(SEL)action
{
  p_detailPressedAction = &self->_detailPressedAction;
  detailPressedAction = self->_detailPressedAction;
  if (detailPressedAction)
  {
    if (detailPressedAction == action)
    {
      return;
    }

    [(GKFocusableButton *)self->_detailButton removeTarget:self action:sel_detailPressed_ forControlEvents:64];
    if (!action)
    {
      *p_detailPressedAction = 0;
      goto LABEL_8;
    }
  }

  else if (!action)
  {
    return;
  }

  *p_detailPressedAction = action;
  if (action)
  {
    v7 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v7 = 1;
LABEL_9:
  [(GKFocusableButton *)self->_detailButton setHidden:v7];
  if (!*p_detailPressedAction)
  {
    detailButton = self->_detailButton;

    [(GKFocusableButton *)detailButton removeFromSuperview];
  }
}

- (void)detailPressed:(id)pressed
{
  pressedCopy = pressed;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v5 = mEMORY[0x277D75128];
  if (self->_detailPressedAction)
  {
    detailPressedAction = self->_detailPressedAction;
  }

  else
  {
    detailPressedAction = 0;
  }

  v7 = [mEMORY[0x277D75128] _gkTargetForAction:detailPressedAction viaResponder:pressedCopy];

  if (self->_detailPressedAction)
  {
    v8 = self->_detailPressedAction;
  }

  else
  {
    v8 = 0;
  }

  match = [(GKTurnParticipantCell *)self match];
  [v7 v8];
}

- (void)updateMarginConstraints
{
  p_insets = &self->_insets;
  v3 = *&self->_insets.top;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*MEMORY[0x277D768C8], v3), vceqq_f64(*(MEMORY[0x277D768C8] + 16), *&self->_insets.bottom)))) & 1) == 0)
  {
    [(NSLayoutConstraint *)self->_iconLeadingConstraint setConstant:v3.f64[1]];
    v5 = -p_insets->right;
    detailButtonConstraint = self->_detailButtonConstraint;

    [(NSLayoutConstraint *)detailButtonConstraint setConstant:v5];
  }
}

- (SEL)detailPressedAction
{
  if (self->_detailPressedAction)
  {
    return self->_detailPressedAction;
  }

  else
  {
    return 0;
  }
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end