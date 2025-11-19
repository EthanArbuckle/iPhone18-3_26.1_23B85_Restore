@interface GKTurnParticipantCell
+ (double)defaultRowHeight;
+ (id)itemHeightList;
+ (void)registerCellClassesForCollectionView:(id)a3;
- (BOOL)matchWantsLocalPlayerAttention;
- (BOOL)needsRefreshOverlappingPlayersView;
- (GKTurnParticipantCell)initWithFrame:(CGRect)a3;
- (SEL)detailPressedAction;
- (UIEdgeInsets)insets;
- (double)getOverlappingPlayerAvatarIconSize;
- (id)getPlayerIDForAllNonAutomatchedTurnBasedParticipants;
- (void)configureForDetail;
- (void)configureForMatch;
- (void)configureOverlappingPlayersView;
- (void)detailPressed:(id)a3;
- (void)didUpdateModel;
- (void)establishConstraints;
- (void)setDetailPressedAction:(SEL)a3;
- (void)setMatch:(id)a3;
- (void)setParticipant:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateMarginConstraints;
- (void)updateOverlappingPlayerViewsAvatar;
- (void)updateUIBasedOnTraitCollection;
@end

@implementation GKTurnParticipantCell

+ (void)registerCellClassesForCollectionView:(id)a3
{
  v3 = a3;
  [v3 _gkRegisterCellClass:objc_opt_class()];
}

+ (double)defaultRowHeight
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 1)
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
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
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

- (GKTurnParticipantCell)initWithFrame:(CGRect)a3
{
  v57.receiver = self;
  v57.super_class = GKTurnParticipantCell;
  v3 = [(GKBasePlayerCell *)&v57 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D0C8B0] textStyle];
    v5 = objc_alloc_init(GKLabel);
    v6 = [v4 body];
    [(GKLabel *)v5 applyTextStyle:v6];

    [(GKLabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)v5 setNumberOfLines:2];
    v7 = [(GKBasePlayerCell *)v3 nameLabel];
    [v7 removeFromSuperview];

    [(GKBasePlayerCell *)v3 setNameLabel:v5];
    v8 = objc_alloc_init(GKLabel);
    bottomLabel = v3->_bottomLabel;
    v3->_bottomLabel = v8;

    v10 = v3->_bottomLabel;
    v11 = [v4 footnote];
    v12 = [v11 emphasized];
    [(GKLabel *)v10 applyTextStyle:v12];

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
    v17 = [MEMORY[0x277D75348] labelColor];
    [(UIImageView *)v3->_statusImageView setTintColor:v17];

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
    v22 = [(GKBasePlayerCell *)v3 nameLabel];
    [(UIStackView *)v21 addArrangedSubview:v22];

    [(UIStackView *)v3->_textStackView addArrangedSubview:v18];
    v23 = [(GKCollectionViewCell *)v3 staticContentView];
    [v23 addSubview:v3->_textStackView];

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
    v30 = [(GKCollectionViewCell *)v3 staticContentView];
    [v30 addSubview:v3->_overlappingPlayersViewContainer];

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
    v35 = [MEMORY[0x277D75348] whiteColor];
    [(GKFocusableButton *)v3->_detailButton setTintColor:v35];

    v36 = [(GKCollectionViewCell *)v3 staticContentView];
    [v36 addSubview:v3->_detailButton];

    v37 = objc_alloc_init(MEMORY[0x277D75D18]);
    divider = v3->_divider;
    v3->_divider = v37;

    v39 = [MEMORY[0x277D75348] quaternaryLabelColor];
    [(UIView *)v3->_divider setBackgroundColor:v39];

    [(UIView *)v3->_divider setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [(GKCollectionViewCell *)v3 staticContentView];
    [v40 addSubview:v3->_divider];

    v41 = objc_alloc_init(MEMORY[0x277D756B8]);
    additionalPlayerCountLabel = v3->_additionalPlayerCountLabel;
    v3->_additionalPlayerCountLabel = v41;

    v43 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v3->_additionalPlayerCountLabel setFont:v43];

    [(UILabel *)v3->_additionalPlayerCountLabel setAdjustsFontForContentSizeCategory:1];
    v44 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->_additionalPlayerCountLabel setTextColor:v44];

    [(UILabel *)v3->_additionalPlayerCountLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = [(GKCollectionViewCell *)v3 staticContentView];
    [v45 addSubview:v3->_additionalPlayerCountLabel];

    v46 = [MEMORY[0x277CBEA60] array];
    constraints = v3->_constraints;
    v3->_constraints = v46;

    [(GKTurnParticipantCell *)v3 establishConstraints];
    [(GKTurnParticipantCell *)v3 updateUIBasedOnTraitCollection];
    v48 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0700000003];
    v49 = [(GKCollectionViewCell *)v3 staticContentView];
    [v49 setBackgroundColor:v48];

    [(GKTurnParticipantCell *)v3 setClipsToBounds:1];
    v50 = *MEMORY[0x277CDA138];
    v51 = [(GKTurnParticipantCell *)v3 layer];
    [v51 setCornerCurve:v50];

    v52 = MEMORY[0x277D75208];
    [(GKFocusableButton *)v3->_detailButton bounds];
    v59 = CGRectInset(v58, 1.0, 1.0);
    v53 = [v52 bezierPathWithOvalInRect:{v59.origin.x, v59.origin.y, v59.size.width, v59.size.height}];
    v54 = [MEMORY[0x277D75508] effectWithPath:v53];
    [(GKFocusableButton *)v3->_detailButton setFocusEffect:v54];

    v55 = [MEMORY[0x277D75348] whiteColor];
    [(GKTurnParticipantCell *)v3 setTintColor:v55];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKTurnParticipantCell;
  [(GKTurnParticipantCell *)&v4 traitCollectionDidChange:a3];
  [(GKTurnParticipantCell *)self updateUIBasedOnTraitCollection];
}

- (void)updateUIBasedOnTraitCollection
{
  [(GKTurnParticipantCell *)self establishConstraints];
  v3 = [(GKTurnParticipantCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  v6 = [(GKBasePlayerCell *)self nameLabel];
  v7 = v6;
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

  [v6 setNumberOfLines:v8];

  [(OverlappingPlayersView *)self->_overlappingPlayersView setOverlapPercentage:v9];
  v10 = [(GKTurnParticipantCell *)self overlappingPlayersView];
  v11 = [(NSDictionary *)self->_playerAvatarMapping allValues];
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v13 = v12;
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  [v10 applyWithPlayerAvatars:v11 playerSize:{v13, v14}];

  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v16 = -5.0 - v15;
  v17 = [(GKTurnParticipantCell *)self overlappingPlayersViewTrailingConstraint];
  [v17 setConstant:v16];
}

- (double)getOverlappingPlayerAvatarIconSize
{
  v3 = [MEMORY[0x277D75520] defaultMetrics];
  v4 = [(GKTurnParticipantCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);
  v7 = 30.0;
  if (IsAccessibilityCategory)
  {
    v7 = 20.0;
  }

  [v3 scaledValueForValue:v7];
  v9 = v8;

  return v9;
}

- (void)establishConstraints
{
  v131[10] = *MEMORY[0x277D85DE8];
  v3 = [(GKCollectionViewCell *)self staticContentView];
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  v124 = [MEMORY[0x277CBEB18] array];
  v119 = [(GKBasePlayerCell *)self iconView];
  v117 = [v119 widthAnchor];
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v115 = [v117 constraintEqualToConstant:?];
  v131[0] = v115;
  v113 = [(GKBasePlayerCell *)self iconView];
  v111 = [v113 heightAnchor];
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v109 = [v111 constraintEqualToConstant:?];
  v131[1] = v109;
  v107 = [(UIImageView *)self->_statusImageView widthAnchor];
  v105 = [v107 constraintEqualToConstant:8.0];
  v131[2] = v105;
  v103 = [(UIImageView *)self->_statusImageView heightAnchor];
  v101 = [v103 constraintEqualToConstant:8.0];
  v131[3] = v101;
  v99 = [(UIView *)self->_divider heightAnchor];
  v97 = [v99 constraintEqualToConstant:1.0];
  v131[4] = v97;
  v95 = [(UIView *)self->_divider bottomAnchor];
  v121 = v3;
  v93 = [v3 bottomAnchor];
  v91 = [v95 constraintEqualToAnchor:v93 constant:0.0];
  v131[5] = v91;
  v88 = [(UILabel *)self->_additionalPlayerCountLabel trailingAnchor];
  v86 = [(GKFocusableButton *)self->_detailButton leadingAnchor];
  v84 = [v88 constraintEqualToAnchor:v86 constant:-2.0];
  v131[6] = v84;
  v82 = [(GKTurnParticipantCell *)self detailButton];
  v78 = [v82 trailingAnchor];
  v80 = [(GKFocusableButton *)self->_detailButton superview];
  v4 = [v80 trailingAnchor];
  v5 = [v78 constraintEqualToAnchor:v4 constant:-16.0];
  [(GKTurnParticipantCell *)self setDetailButtonConstraint:v5];
  v131[7] = v5;
  v6 = [(OverlappingPlayersView *)self->_overlappingPlayersView bottomAnchor];
  v7 = [(GKFocusableButton *)self->_detailButton bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v131[8] = v8;
  v9 = [(UIView *)self->_overlappingPlayersViewContainer trailingAnchor];
  v10 = [(UILabel *)self->_additionalPlayerCountLabel leadingAnchor];
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v12 = [v9 constraintEqualToAnchor:v10 constant:-5.0 - v11];
  [(GKTurnParticipantCell *)self setOverlappingPlayersViewTrailingConstraint:v12];
  v131[9] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:10];
  [(NSArray *)v124 addObjectsFromArray:v13];

  LODWORD(v10) = self->_isDetail;
  v14 = [(UIView *)self->_divider leadingAnchor];
  if (v10 == 1)
  {
    v15 = v121;
    v16 = [v121 leadingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16 constant:20.0];
    v130[0] = v17;
    v18 = [(UIView *)self->_divider trailingAnchor];
    v19 = [v121 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:-20.0];
    v130[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
    [(NSArray *)v124 addObjectsFromArray:v21];
  }

  else
  {
    v16 = [(GKTurnParticipantCell *)self textStackView];
    v17 = [v16 leadingAnchor];
    v18 = [v14 constraintEqualToAnchor:v17 constant:0.0];
    v129[0] = v18;
    v19 = [(UIView *)self->_divider trailingAnchor];
    v20 = [(GKTurnParticipantCell *)self detailButton];
    v21 = [v20 trailingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:0.0];
    v129[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:2];
    [(NSArray *)v124 addObjectsFromArray:v23];

    v15 = v121;
  }

  v24 = [(GKTurnParticipantCell *)self traitCollection];
  v25 = [v24 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v25);

  if (IsAccessibilityCategory)
  {
    v77 = [(GKBasePlayerCell *)self iconView];
    v76 = [v77 leadingAnchor];
    v75 = [v15 leadingAnchor];
    v27 = [v76 constraintEqualToAnchor:v75 constant:8.0];
    [(GKTurnParticipantCell *)self setIconLeadingConstraint:v27];
    v122 = v27;
    v128[0] = v27;
    v120 = [(GKBasePlayerCell *)self iconView];
    v28 = [v120 topAnchor];
    v116 = [v15 topAnchor];
    v118 = v28;
    v114 = [v28 constraintEqualToAnchor:16.0 constant:?];
    v128[1] = v114;
    v112 = [(GKTurnParticipantCell *)self textStackView];
    v29 = [v112 leadingAnchor];
    v108 = [v15 leadingAnchor];
    v110 = v29;
    v30 = [v29 constraintEqualToAnchor:8.0 constant:?];
    [(GKTurnParticipantCell *)self setTextStackViewToIconViewLeadingConstraint:v30];
    v106 = v30;
    v128[2] = v30;
    v104 = [(GKTurnParticipantCell *)self textStackView];
    v31 = [v104 trailingAnchor];
    v100 = [v15 trailingAnchor];
    v102 = v31;
    v32 = [v31 constraintEqualToAnchor:-8.0 constant:?];
    [(GKTurnParticipantCell *)self setTextContainerTrailingConstraint:v32];
    v98 = v32;
    v128[3] = v32;
    v96 = [(GKTurnParticipantCell *)self textStackView];
    v33 = [v96 topAnchor];
    v92 = [(GKTurnParticipantCell *)self detailButton];
    [v92 bottomAnchor];
    v90 = v94 = v33;
    v89 = [v33 constraintEqualToSystemSpacingBelowAnchor:1.1 multiplier:?];
    v128[4] = v89;
    v34 = [(UILabel *)self->_additionalPlayerCountLabel centerYAnchor];
    [(GKFocusableButton *)self->_detailButton centerYAnchor];
    v87 = v123 = v34;
    v85 = [v34 constraintEqualToAnchor:?];
    v128[5] = v85;
    v83 = [(GKTurnParticipantCell *)self detailButton];
    v35 = [v83 topAnchor];
    v79 = [v15 topAnchor];
    v81 = v35;
    v36 = [v35 constraintEqualToAnchor:8.0 constant:?];
    v128[6] = v36;
    v37 = [(UIView *)self->_overlappingPlayersViewContainer widthAnchor];
    v38 = [v37 constraintEqualToConstant:120.0];
    [(GKTurnParticipantCell *)self setOverlappingPlayersViewWidthConstraint:v38];
    v128[7] = v38;
    v39 = [(OverlappingPlayersView *)self->_overlappingPlayersView topAnchor];
    v40 = [(GKFocusableButton *)self->_detailButton topAnchor];
    [v39 constraintEqualToAnchor:v40 constant:8.0];
    v42 = v41 = v15;
    v128[8] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:9];
    v44 = v124;
    [(NSArray *)v124 addObjectsFromArray:v43];

    v45 = v77;
    v15 = v41;
    v46 = v75;

    v47 = v76;
  }

  else
  {
    isDetail = self->_isDetail;
    v49 = [(GKTurnParticipantCell *)self textStackView];
    v50 = [v49 trailingAnchor];
    if (isDetail)
    {
      v51 = [v15 trailingAnchor];
      v52 = [v50 constraintEqualToAnchor:v51 constant:-8.0];
      [(GKTurnParticipantCell *)self setTextContainerTrailingConstraint:v52];
      v127 = v52;
      v53 = &v127;
    }

    else
    {
      v51 = [(UIView *)self->_overlappingPlayersViewContainer leadingAnchor];
      v52 = [v50 constraintEqualToAnchor:v51 constant:0.0];
      [(GKTurnParticipantCell *)self setTextContainerTrailingConstraint:v52];
      v126 = v52;
      v53 = &v126;
    }

    v44 = v124;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    [(NSArray *)v124 addObjectsFromArray:v54];

    v45 = [(GKBasePlayerCell *)self iconView];
    v55 = [v45 leadingAnchor];
    v56 = [v15 leadingAnchor];
    v57 = [MEMORY[0x277D75418] currentDevice];
    v58 = [v57 userInterfaceIdiom];

    v59 = 15.0;
    if (v58 == 1 && *MEMORY[0x277D0C8F0] & 1 | ((*MEMORY[0x277D0C258] & 1) == 0))
    {
      v59 = 25.0;
    }

    v47 = v55;
    v46 = v56;
    v60 = [v55 constraintEqualToAnchor:v56 constant:v59];
    [(GKTurnParticipantCell *)self setIconLeadingConstraint:v60];
    v122 = v60;
    v125[0] = v60;
    v120 = [(GKBasePlayerCell *)self iconView];
    v61 = [v120 centerYAnchor];
    v116 = [v15 centerYAnchor];
    v118 = v61;
    v114 = [v61 constraintEqualToAnchor:?];
    v125[1] = v114;
    v112 = [(GKTurnParticipantCell *)self textStackView];
    v62 = [v112 leadingAnchor];
    v108 = [(GKBasePlayerCell *)self iconView];
    [v108 trailingAnchor];
    v106 = v110 = v62;
    v63 = [v62 constraintEqualToAnchor:8.0 constant:?];
    [(GKTurnParticipantCell *)self setTextStackViewToIconViewLeadingConstraint:v63];
    v104 = v63;
    v125[2] = v63;
    v102 = [(GKTurnParticipantCell *)self textStackView];
    v64 = [v102 centerYAnchor];
    v98 = [v15 centerYAnchor];
    v100 = v64;
    v96 = [v64 constraintEqualToAnchor:?];
    v125[3] = v96;
    v65 = [(UILabel *)self->_additionalPlayerCountLabel centerYAnchor];
    v92 = [v15 centerYAnchor];
    v94 = v65;
    v90 = [v65 constraintEqualToAnchor:?];
    v125[4] = v90;
    v89 = [(GKTurnParticipantCell *)self detailButton];
    v66 = [v89 centerYAnchor];
    [v15 centerYAnchor];
    v87 = v123 = v66;
    v85 = [v66 constraintEqualToAnchor:?];
    v125[5] = v85;
    v83 = [(UIView *)self->_overlappingPlayersViewContainer widthAnchor];
    v67 = [v83 constraintEqualToConstant:60.0];
    [(GKTurnParticipantCell *)self setOverlappingPlayersViewWidthConstraint:v67];
    v81 = v67;
    v125[6] = v67;
    v68 = [(OverlappingPlayersView *)self->_overlappingPlayersView topAnchor];
    v36 = [(GKFocusableButton *)self->_detailButton topAnchor];
    v79 = v68;
    v37 = [v68 constraintEqualToAnchor:v36 constant:-2.0];
    v125[7] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:8];
    [(NSArray *)v124 addObjectsFromArray:v38];
  }

  constraints = self->_constraints;
  self->_constraints = v44;
  v70 = v44;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
  v71 = [(GKTurnParticipantCell *)self textStackView];
  v72 = [v71 leadingAnchor];
  v73 = [v15 leadingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:15.0];
  [(GKTurnParticipantCell *)self setTextStackViewToSuperViewLeadingConstraint:v74];

  [(GKTurnParticipantCell *)self updateMarginConstraints];
}

- (BOOL)matchWantsLocalPlayerAttention
{
  v2 = [(GKTurnParticipantCell *)self match];
  v3 = [v2 state];

  return v3 == 2 || (v3 & 0xFFFFFFFD) == 1;
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
  v36 = [MEMORY[0x277D0C8B0] textStyle];
  v6 = [(GKTurnParticipantCell *)self match];
  v7 = [(GKBasePlayerCell *)self iconView];
  [v7 setHidden:1];

  v8 = [(GKTurnParticipantCell *)self textStackViewToIconViewLeadingConstraint];
  [v8 setActive:0];

  v9 = [(GKTurnParticipantCell *)self textStackViewToSuperViewLeadingConstraint];
  [v9 setActive:1];

  v10 = [v6 message];
  v11 = [v6 state];
  v35 = v6;
  if (v11 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 != 2)
      {
        goto LABEL_23;
      }

      v15 = [v6 activeExchanges];
      v14 = [v15 lastObject];
      v2 = [v14 message];

      if (!v2 || ![v2 length])
      {
        v16 = GKGameCenterUIFrameworkBundle();
        v17 = GKGetLocalizedStringFromTableInBundle();

        v2 = v17;
      }

      goto LABEL_22;
    }

    v21 = [v6 currentParticipant];
    v14 = [v21 inviteMessage];

    if (!v14 || ![v14 length])
    {
      goto LABEL_20;
    }

LABEL_19:
    v10 = v14;
    goto LABEL_23;
  }

  if (v11 == 3)
  {
LABEL_21:
    v15 = GKGameCenterUIFrameworkBundle();
    v2 = GKGetLocalizedStringFromTableInBundle();
    v14 = v10;
    goto LABEL_22;
  }

  if (v11 == 4)
  {
    v18 = [(GKBasePlayerCell *)self player];

    if (v18)
    {
      v19 = [(GKBasePlayerCell *)self player];
      v20 = [v19 isAutomatchPlayer];

      if (!v20)
      {
        v32 = MEMORY[0x277CCACA8];
        v15 = GKGameCenterUIFrameworkBundle();
        v14 = GKGetLocalizedStringFromTableInBundle();
        v33 = [(GKBasePlayerCell *)self player];
        v3 = [v33 displayNameWithOptions:1];
        v2 = [v32 stringWithFormat:v14, v3];

        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  if (v11 != 5)
  {
    goto LABEL_23;
  }

  v12 = [v6 localPlayerParticipant];
  v13 = [(GKTurnParticipantCell *)self match];
  v2 = [v13 participants];
  v14 = [v12 matchOutcomeStringForLocalPlayer:{objc_msgSend(v2, "count")}];

  if (v14 && [v14 length])
  {
    goto LABEL_19;
  }

LABEL_20:
  v15 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();
LABEL_22:

  v10 = v2;
LABEL_23:
  v22 = [v36 footnote];
  v34 = v10;
  v23 = [v10 _gkAttributedStringByApplyingStyle:v22];
  [(GKLabel *)self->_bottomLabel setAttributedText:v23];

  [(UIImageView *)self->_statusImageView setHidden:[(GKTurnParticipantCell *)self matchWantsLocalPlayerAttention]^ 1];
  v24 = [(GKTurnParticipantCell *)self match];
  v25 = [v24 participants];
  v26 = [v25 count];
  if (v26 < 5)
  {
    v28 = &stru_28612D290;
  }

  else
  {
    v27 = MEMORY[0x277CCACA8];
    v2 = GKGameCenterUIFrameworkBundle();
    v3 = GKGetLocalizedStringFromTableInBundle();
    v10 = [(GKTurnParticipantCell *)self match];
    v4 = [v10 participants];
    v28 = [v27 stringWithFormat:v3, objc_msgSend(v4, "count") - 4];
  }

  v29 = [(GKTurnParticipantCell *)self additionalPlayerCountLabel];
  [v29 setText:v28];

  if (v26 >= 5)
  {
  }

  v30 = [(GKTurnBasedMatch *)self->_match matchTitle];
  v31 = [(GKBasePlayerCell *)self nameLabel];
  [v31 setText:v30];

  [(GKTurnParticipantCell *)self configureOverlappingPlayersView];
}

- (id)getPlayerIDForAllNonAutomatchedTurnBasedParticipants
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(GKTurnParticipantCell *)self match];
  v5 = [v4 participants];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if ([v3 count] > 3)
      {
        break;
      }

      v11 = [v10 player];

      if (v11)
      {
        v12 = [v10 player];
        v13 = [v12 internal];
        v14 = [v13 playerID];
        [v3 addObject:v14];
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v3;
}

- (BOOL)needsRefreshOverlappingPlayersView
{
  v3 = [(GKTurnParticipantCell *)self getPlayerIDForAllNonAutomatchedTurnBasedParticipants];
  v4 = [(GKTurnParticipantCell *)self playerAvatarMapping];
  v5 = [v4 allKeys];
  v6 = [v3 isEqualToArray:v5];

  return v6 ^ 1;
}

- (void)configureOverlappingPlayersView
{
  if ([(GKTurnParticipantCell *)self needsRefreshOverlappingPlayersView])
  {
    v3 = [(GKTurnParticipantCell *)self overlappingPlayersView];
    [v3 prepareForReuse];

    v4 = [MEMORY[0x277CBEB38] dictionary];
    [(GKTurnParticipantCell *)self setPlayerAvatarMapping:v4];

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
    v16 = self;
    [v9 notifyOnMainQueueWithBlock:v14];
    v10 = [(GKTurnParticipantCell *)self match];
    v11 = [v10 participants];
    v12 = [v11 count];

    if (!v12)
    {
      v13 = [(GKTurnParticipantCell *)self overlappingPlayersViewWidthConstraint];
      [v13 setConstant:0.0];
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
  v15 = [MEMORY[0x277CBEB18] array];
  v3 = [(GKTurnParticipantCell *)self playerAvatarMapping];
  v4 = [v3 allValues];
  [v15 addObjectsFromArray:v4];

  for (i = [v15 count]; ; ++i)
  {
    v6 = [(GKTurnParticipantCell *)self match];
    v7 = [v6 participants];
    v8 = [v7 count];

    if (i > 3 || i >= v8)
    {
      break;
    }

    v9 = [MEMORY[0x277D0C8C8] sharedTheme];
    v10 = [v9 defaultPlayerPhoto];
    [v15 addObject:v10];
  }

  v11 = [(GKTurnParticipantCell *)self overlappingPlayersView];
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  v13 = v12;
  [(GKTurnParticipantCell *)self getOverlappingPlayerAvatarIconSize];
  [v11 applyWithPlayerAvatars:v15 playerSize:{v13, v14}];
}

- (void)configureForDetail
{
  v40[1] = *MEMORY[0x277D85DE8];
  [(UIImageView *)self->_statusImageView setHidden:1];
  v3 = [MEMORY[0x277D0C8B0] textStyle];
  v4 = [(GKBasePlayerCell *)self player];
  v5 = [v4 displayNameWithOptions:0];
  v6 = v3;
  v7 = [v3 body];
  v8 = [v5 _gkAttributedStringByApplyingStyle:v7];
  v9 = [(GKBasePlayerCell *)self nameLabel];
  [v9 setAttributedText:v8];

  v10 = [(GKTurnParticipantCell *)self match];
  v11 = [(GKTurnParticipantCell *)self participant];
  v12 = [v10 localPlayerParticipant];
  v13 = [v10 currentParticipant];

  if (v11 != v13)
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

  if ([v11 status] == 5)
  {
    v16 = [v10 participants];
    v17 = [v11 matchOutcomeString:{-[__CFString count](v16, "count")}];

    v14 = v16;
  }

  else
  {
    v17 = [v11 matchStatusString];
  }

  v14 = v17;
LABEL_9:
  v18 = [v11 lastTurnDate];
  v35 = v18;
  if (v18)
  {
    v19 = [v18 _gkFormattedWhenStringWithOptions:0];
  }

  else
  {
    v19 = &stru_28612D290;
  }

  v20 = [v10 currentParticipant];
  v37 = v11;
  v38 = v10;
  v36 = v12;
  if ([v20 status] == 1)
  {

LABEL_15:
    v19 = &stru_28612D290;
    goto LABEL_16;
  }

  v21 = [v10 currentParticipant];

  if (v11 == v21)
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
  v26 = [v6 footnote];
  v27 = [v26 emphasized];
  v40[0] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v29 = [v6 footnote];
  v30 = [v29 emphasized];
  v31 = [v25 _gkAttributedStringByApplyingStylesForTags:v28 untaggedStyle:v30];
  [(GKLabel *)self->_bottomLabel setAttributedText:v31];

  v32 = [MEMORY[0x277D0C868] sharedPalette];
  v33 = [v32 standardTextColor];
  [(GKLabel *)self->_bottomLabel setTextColor:v33];

  [(GKLabel *)self->_bottomLabel setAdjustsFontSizeToFitWidth:1];
  [(GKLabel *)self->_bottomLabel setMinimumScaleFactor:0.7];
}

- (void)setParticipant:(id)a3
{
  v5 = a3;
  participant = self->_participant;
  v8 = v5;
  if (participant != v5)
  {
    objc_storeStrong(&self->_participant, a3);
    participant = self->_participant;
  }

  v7 = [(GKTurnBasedParticipant *)participant player];
  if (!v7)
  {
    v7 = [MEMORY[0x277D0C170] automatchPlayer];
  }

  [(GKBasePlayerCell *)self setPlayer:v7];
}

- (void)setMatch:(id)a3
{
  v5 = a3;
  match = self->_match;
  if (match != v5)
  {
    v9 = v5;
    if (match)
    {
      v7 = [(GKTurnBasedMatch *)match participants];
      previousParticipants = self->_previousParticipants;
      self->_previousParticipants = v7;
    }

    objc_storeStrong(&self->_match, a3);
    v5 = v9;
  }

  MEMORY[0x2821F96F8](match, v5);
}

- (void)setDetailPressedAction:(SEL)a3
{
  p_detailPressedAction = &self->_detailPressedAction;
  detailPressedAction = self->_detailPressedAction;
  if (detailPressedAction)
  {
    if (detailPressedAction == a3)
    {
      return;
    }

    [(GKFocusableButton *)self->_detailButton removeTarget:self action:sel_detailPressed_ forControlEvents:64];
    if (!a3)
    {
      *p_detailPressedAction = 0;
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    return;
  }

  *p_detailPressedAction = a3;
  if (a3)
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

- (void)detailPressed:(id)a3
{
  v10 = a3;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = v4;
  if (self->_detailPressedAction)
  {
    detailPressedAction = self->_detailPressedAction;
  }

  else
  {
    detailPressedAction = 0;
  }

  v7 = [v4 _gkTargetForAction:detailPressedAction viaResponder:v10];

  if (self->_detailPressedAction)
  {
    v8 = self->_detailPressedAction;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(GKTurnParticipantCell *)self match];
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