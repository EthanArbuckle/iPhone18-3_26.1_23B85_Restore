@interface HROnboardingElectrocardiogramResultView
+ (id)resultViewWithItem:(id)a3;
- (HROnboardingElectrocardiogramResultView)initWithBadge:(id)a3 title:(id)a4 numberedTitle:(id)a5 visibleBodyText:(id)a6 video:(id)a7 expandedView:(id)a8;
- (double)_badgeTopToFirstBaseline;
- (double)_learnMoreButtonLastBaselineToBottom;
- (double)_numberedTitleLastBaseLineToVideoTop;
- (double)_numberedTitleToBadgeLastBaseline;
- (double)_numberedTitleTopToFirstBaseline;
- (double)_playerViewOrVisibleBodyLabelTopConstant;
- (double)_visibleBodyFirstBaselineDistance;
- (double)_visibleBodyLastBaselineToLearnMoreButtonFirstBaseline;
- (id)_numberedTitleFont;
- (id)_playerViewOrVisibleBodyLabelTopConstraint;
- (id)_visibleBodyFont;
- (void)_setUpConstraints;
- (void)_setUpNumberedTitleLabelConstraints;
- (void)_setUpPlayerViewTopConstraint;
- (void)_setUpUI;
- (void)_setUpVisibleBodyLabelTopConstraint;
- (void)_updateExpandedViewState;
- (void)_updateNumberedTitleViewState;
- (void)setAlwaysExpanded:(BOOL)a3;
@end

@implementation HROnboardingElectrocardiogramResultView

- (HROnboardingElectrocardiogramResultView)initWithBadge:(id)a3 title:(id)a4 numberedTitle:(id)a5 visibleBodyText:(id)a6 video:(id)a7 expandedView:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HROnboardingElectrocardiogramResultView;
  v18 = [(HROnboardingElectrocardiogramResultView *)&v24 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_badge, a3);
    objc_storeStrong(&v19->_title, a4);
    objc_storeStrong(&v19->_numberedTitle, a5);
    objc_storeStrong(&v19->_visibleBody, a6);
    objc_storeStrong(&v19->_playerView, a7);
    objc_storeStrong(&v19->_expandedView, a8);
    [(HROnboardingElectrocardiogramResultView *)v19 _setUpUI];
    [(HROnboardingElectrocardiogramResultView *)v19 _setUpConstraints];
  }

  return v19;
}

+ (id)resultViewWithItem:(id)a3
{
  v3 = a3;
  v4 = [v3 videoPath];

  if (v4)
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = [v3 videoPath];
    v7 = [v5 fileURLWithPath:v6];

    v4 = [HRVideoPlayerView playerViewWithURL:v7 looping:1];
  }

  v8 = [v3 expandedContentItems];
  v9 = [HROnboardingInlineExpandedContentView viewWithItems:v8];

  v10 = [HROnboardingElectrocardiogramResultView alloc];
  v11 = [v3 badge];
  v12 = [v3 title];
  v13 = [v3 numberedTitle];
  v14 = [v3 visibleBodyText];
  v15 = [(HROnboardingElectrocardiogramResultView *)v10 initWithBadge:v11 title:v12 numberedTitle:v13 visibleBodyText:v14 video:v4 expandedView:v9];

  return v15;
}

- (void)setAlwaysExpanded:(BOOL)a3
{
  self->_alwaysExpanded = a3;
  if (a3)
  {
    [(HROnboardingElectrocardiogramResultView *)self setExpanded:1];
  }

  else
  {
    [(HROnboardingElectrocardiogramResultView *)self _updateExpandedViewState];
  }
}

- (void)_setUpUI
{
  v3 = [(HROnboardingElectrocardiogramResultView *)self badge];

  if (v3)
  {
    v4 = [HRPaddingLabel alloc];
    v5 = [(HRPaddingLabel *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(HROnboardingElectrocardiogramResultView *)self setBadgeLabel:v5];

    v6 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [v6 setAdjustsFontForContentSizeCategory:1];

    v7 = [MEMORY[0x277D75348] hk_heartKeyColor];
    v8 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [v8 setBackgroundColor:v7];

    v9 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    LODWORD(v10) = 1148846080;
    [v9 setContentHuggingPriority:0 forAxis:v10];

    v11 = [(HROnboardingElectrocardiogramResultView *)self _badgeFont];
    v12 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [v12 setFont:v11];

    v13 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [v13 setNumberOfLines:2];

    v14 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [v14 setPadding:{5.0, 8.0, 5.0, 8.0}];

    v15 = [(HROnboardingElectrocardiogramResultView *)self badge];
    v16 = [v15 localizedUppercaseString];
    v17 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [v17 setText:v16];

    v18 = [MEMORY[0x277D75348] whiteColor];
    v19 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [v19 setTextColor:v18];

    v20 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [v21 hrui_maskAllCornersWithRadius:4.0];

    v22 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [(HROnboardingElectrocardiogramResultView *)self addSubview:v22];
  }

  v23 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramResultView *)self setNumberedTitleLabel:v23];

  v24 = [(HROnboardingElectrocardiogramResultView *)self numberedTitle];
  v25 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [v25 setText:v24];

  v26 = MEMORY[0x277CCACA8];
  v27 = [(HROnboardingElectrocardiogramResultView *)self numberedTitle];
  v78 = [v26 stringWithFormat:@"ResultsYouMaySee.%@.Title", v27];

  v28 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:v78];
  v29 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [v29 setAccessibilityIdentifier:v28];

  v30 = [(HROnboardingElectrocardiogramResultView *)self _numberedTitleFont];
  v31 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [v31 setFont:v30];

  v32 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

  v33 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [v33 setAdjustsFontForContentSizeCategory:1];

  v34 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [v34 setNumberOfLines:0];

  v35 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [(HROnboardingElectrocardiogramResultView *)self addSubview:v35];

  v36 = [(HROnboardingElectrocardiogramResultView *)self playerView];

  if (v36)
  {
    v37 = [(HROnboardingElectrocardiogramResultView *)self playerView];
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

    v38 = [(HROnboardingElectrocardiogramResultView *)self playerView];
    [v38 hrui_maskAllCornersWithRadius:*MEMORY[0x277D12798]];

    v39 = [(HROnboardingElectrocardiogramResultView *)self playerView];
    [(HROnboardingElectrocardiogramResultView *)self addSubview:v39];
  }

  v40 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramResultView *)self setVisibleBodyLabel:v40];

  v41 = [(HROnboardingElectrocardiogramResultView *)self visibleBody];
  v42 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [v42 setText:v41];

  v43 = MEMORY[0x277CCACA8];
  v44 = [(HROnboardingElectrocardiogramResultView *)self numberedTitle];
  v45 = [v43 stringWithFormat:@"ResultsYouMaySee.%@.Description", v44];

  v46 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:v45];
  v47 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [v47 setAccessibilityIdentifier:v46];

  v48 = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFont];
  v49 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [v49 setFont:v48];

  v50 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];

  v51 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [v51 setAdjustsFontForContentSizeCategory:1];

  v52 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [v52 setNumberOfLines:0];

  v53 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [(HROnboardingElectrocardiogramResultView *)self addSubview:v53];

  v54 = objc_alloc_init(MEMORY[0x277D75220]);
  [(HROnboardingElectrocardiogramResultView *)self setLearnMoreButton:v54];

  v55 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  v56 = HRHeartRhythmUIFrameworkBundle();
  v57 = [v56 localizedStringForKey:@"ONBOARDING_LEARN_MORE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  [v55 setTitle:v57 forState:0];

  v58 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  v59 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"ResultsYouMaySee.LearnMoreButton"];
  [v58 setAccessibilityIdentifier:v59];

  v60 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  v61 = [MEMORY[0x277D75348] hk_appKeyColor];
  [v60 setTitleColor:v61 forState:0];

  v62 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  [v62 addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:64];

  v63 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  [v63 setContentHorizontalAlignment:4];

  v64 = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFont];
  v65 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  v66 = [v65 titleLabel];
  [v66 setFont:v64];

  v67 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  v68 = [v67 titleLabel];
  [v68 setAdjustsFontForContentSizeCategory:1];

  v69 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  [(HROnboardingElectrocardiogramResultView *)self addSubview:v69];

  v70 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
  [v70 setTranslatesAutoresizingMaskIntoConstraints:0];

  v71 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
  [v71 setHidden:1];

  v72 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
  [(HROnboardingElectrocardiogramResultView *)self addSubview:v72];

  v73 = objc_alloc_init(MEMORY[0x277D12A48]);
  [(HROnboardingElectrocardiogramResultView *)self setSeparatorLineView:v73];

  v74 = [MEMORY[0x277D75348] separatorColor];
  v75 = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  [v75 setColor:v74];

  v76 = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  [v76 setTranslatesAutoresizingMaskIntoConstraints:0];

  v77 = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  [(HROnboardingElectrocardiogramResultView *)self addSubview:v77];
}

- (void)_setUpConstraints
{
  v3 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];

  if (v3)
  {
    v4 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    v5 = [v4 leadingAnchor];
    v6 = [(HROnboardingElectrocardiogramResultView *)self leadingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    [v7 setActive:1];

    v8 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    v9 = [v8 trailingAnchor];
    v10 = [(HROnboardingElectrocardiogramResultView *)self trailingAnchor];
    v11 = [v9 constraintLessThanOrEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    v13 = [v12 firstBaselineAnchor];
    v14 = [(HROnboardingElectrocardiogramResultView *)self topAnchor];
    [(HROnboardingElectrocardiogramResultView *)self _badgeTopToFirstBaseline];
    v15 = [v13 constraintEqualToAnchor:v14 constant:?];
    [v15 setActive:1];
  }

  [(HROnboardingElectrocardiogramResultView *)self _setUpNumberedTitleLabelConstraints];
  v16 = [(HROnboardingElectrocardiogramResultView *)self playerView];

  if (v16)
  {
    v17 = [(HROnboardingElectrocardiogramResultView *)self playerView];
    [v17 hk_alignHorizontalConstraintsWithView:self margin:0.0];

    [(HROnboardingElectrocardiogramResultView *)self _setUpPlayerViewTopConstraint];
    v18 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
    [v18 hk_alignHorizontalConstraintsWithView:self margin:0.0];

    v19 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
    v20 = [v19 firstBaselineAnchor];
    v21 = [(HROnboardingElectrocardiogramResultView *)self playerView];
    v22 = [v21 bottomAnchor];
    [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFirstBaselineDistance];
    v23 = [v20 constraintEqualToAnchor:v22 constant:?];
    [v23 setActive:1];
  }

  else
  {
    v24 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
    [v24 hk_alignHorizontalConstraintsWithView:self margin:0.0];

    [(HROnboardingElectrocardiogramResultView *)self _setUpVisibleBodyLabelTopConstraint];
  }

  v25 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  [v25 hk_alignHorizontalConstraintsWithView:self margin:0.0];

  v26 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  v27 = [v26 firstBaselineAnchor];
  v28 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  v29 = [v28 lastBaselineAnchor];
  [(HROnboardingElectrocardiogramResultView *)self _visibleBodyLastBaselineToLearnMoreButtonFirstBaseline];
  v30 = [v27 constraintEqualToAnchor:v29 constant:?];
  [v30 setActive:1];

  v31 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
  [v31 hk_alignHorizontalConstraintsWithView:self margin:0.0];

  v32 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
  v33 = [v32 topAnchor];
  v34 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  [v36 setActive:1];

  v37 = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  [v37 hk_alignHorizontalConstraintsWithView:self margin:0.0];

  v38 = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  v39 = [v38 heightAnchor];
  v40 = [v39 constraintEqualToConstant:1.0];
  [v40 setActive:1];

  v41 = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  v42 = [v41 bottomAnchor];
  v43 = [(HROnboardingElectrocardiogramResultView *)self bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  v45 = [(HROnboardingElectrocardiogramResultView *)self bottomAnchor];
  v46 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  v47 = [v46 lastBaselineAnchor];
  [(HROnboardingElectrocardiogramResultView *)self _learnMoreButtonLastBaselineToBottom];
  v48 = [v45 constraintEqualToAnchor:v47 constant:?];
  [(HROnboardingElectrocardiogramResultView *)self setBottomConstraint:v48];

  v49 = [(HROnboardingElectrocardiogramResultView *)self bottomConstraint];
  [v49 setActive:1];
}

- (void)_setUpNumberedTitleLabelConstraints
{
  v3 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [v3 hk_alignHorizontalConstraintsWithView:self margin:0.0];

  v4 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];

  v9 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  v5 = [v9 firstBaselineAnchor];
  if (v4)
  {
    v6 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    v7 = [v6 bottomAnchor];
    [(HROnboardingElectrocardiogramResultView *)self _numberedTitleToBadgeLastBaseline];
    v8 = [v5 constraintEqualToAnchor:v7 constant:?];
    [v8 setActive:1];
  }

  else
  {
    v6 = [(HROnboardingElectrocardiogramResultView *)self topAnchor];
    [(HROnboardingElectrocardiogramResultView *)self _numberedTitleTopToFirstBaseline];
    v7 = [v5 constraintEqualToAnchor:v6 constant:?];
    [v7 setActive:1];
  }
}

- (void)_setUpPlayerViewTopConstraint
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];
    v14[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v4 deactivateConstraints:v6];

    [(HROnboardingElectrocardiogramResultView *)self setPlayerViewOrVisibleBodyLabelTopConstraint:0];
  }

  v7 = [(HROnboardingElectrocardiogramResultView *)self _playerViewOrVisibleBodyLabelTopConstraint];
  [(HROnboardingElectrocardiogramResultView *)self _playerViewOrVisibleBodyLabelTopConstant];
  v9 = v8;
  v10 = [(HROnboardingElectrocardiogramResultView *)self playerView];
  v11 = [v10 topAnchor];
  v12 = [v11 constraintEqualToAnchor:v7 constant:v9];
  [(HROnboardingElectrocardiogramResultView *)self setPlayerViewOrVisibleBodyLabelTopConstraint:v12];

  v13 = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];
  [v13 setActive:1];
}

- (void)_setUpVisibleBodyLabelTopConstraint
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];
    v14[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v4 deactivateConstraints:v6];

    [(HROnboardingElectrocardiogramResultView *)self setPlayerViewOrVisibleBodyLabelTopConstraint:0];
  }

  v7 = [(HROnboardingElectrocardiogramResultView *)self _playerViewOrVisibleBodyLabelTopConstraint];
  [(HROnboardingElectrocardiogramResultView *)self _playerViewOrVisibleBodyLabelTopConstant];
  v9 = v8;
  v10 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  v11 = [v10 topAnchor];
  v12 = [v11 constraintEqualToAnchor:v7 constant:v9];
  [(HROnboardingElectrocardiogramResultView *)self setPlayerViewOrVisibleBodyLabelTopConstraint:v12];

  v13 = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];
  [v13 setActive:1];
}

- (id)_playerViewOrVisibleBodyLabelTopConstraint
{
  if ([(HROnboardingElectrocardiogramResultView *)self isHidingNumberedTitle])
  {
    v3 = [(HROnboardingElectrocardiogramResultView *)self topAnchor];
  }

  else
  {
    v4 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
    v3 = [v4 lastBaselineAnchor];
  }

  return v3;
}

- (double)_playerViewOrVisibleBodyLabelTopConstant
{
  if ([(HROnboardingElectrocardiogramResultView *)self isHidingNumberedTitle])
  {
    HKHealthUIBuddyDirectionalEdgeInsets();
    return v3;
  }

  else
  {

    [(HROnboardingElectrocardiogramResultView *)self _numberedTitleLastBaseLineToVideoTop];
  }

  return result;
}

- (void)_updateNumberedTitleViewState
{
  v3 = [(HROnboardingElectrocardiogramResultView *)self isHidingNumberedTitle];
  v4 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  v5 = v4;
  if (v3)
  {
    [v4 removeFromSuperview];
  }

  else
  {
    [(HROnboardingElectrocardiogramResultView *)self addSubview:v4];

    [(HROnboardingElectrocardiogramResultView *)self _setUpNumberedTitleLabelConstraints];
  }

  v6 = [(HROnboardingElectrocardiogramResultView *)self playerView];

  if (v6)
  {

    [(HROnboardingElectrocardiogramResultView *)self _setUpPlayerViewTopConstraint];
  }

  else
  {

    [(HROnboardingElectrocardiogramResultView *)self _setUpVisibleBodyLabelTopConstraint];
  }
}

- (void)_updateExpandedViewState
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingElectrocardiogramResultView *)self shouldHideSeparatorLine];
  v4 = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  [v4 setHidden:v3];

  LODWORD(v4) = [(HROnboardingElectrocardiogramResultView *)self isExpanded];
  v5 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  v6 = v5;
  if (v4)
  {
    [v5 setHidden:1];

    v7 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
    [v7 setHidden:0];

    v8 = MEMORY[0x277CCAAD0];
    v9 = [(HROnboardingElectrocardiogramResultView *)self bottomConstraint];
    v22[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v8 deactivateConstraints:v10];

    [(HROnboardingElectrocardiogramResultView *)self setBottomConstraint:0];
    v11 = [(HROnboardingElectrocardiogramResultView *)self bottomAnchor];
    v12 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
    v13 = [v12 bottomAnchor];
  }

  else
  {
    [v5 setHidden:0];

    v14 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
    [v14 setHidden:1];

    v15 = MEMORY[0x277CCAAD0];
    v16 = [(HROnboardingElectrocardiogramResultView *)self bottomConstraint];
    v21 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v15 deactivateConstraints:v17];

    [(HROnboardingElectrocardiogramResultView *)self setBottomConstraint:0];
    v11 = [(HROnboardingElectrocardiogramResultView *)self bottomAnchor];
    v12 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
    v13 = [v12 lastBaselineAnchor];
  }

  v18 = v13;
  [(HROnboardingElectrocardiogramResultView *)self _learnMoreButtonLastBaselineToBottom];
  v19 = [v11 constraintEqualToAnchor:v18 constant:?];
  [(HROnboardingElectrocardiogramResultView *)self setBottomConstraint:v19];

  v20 = [(HROnboardingElectrocardiogramResultView *)self bottomConstraint];
  [v20 setActive:1];
}

- (double)_badgeTopToFirstBaseline
{
  v2 = [(HROnboardingElectrocardiogramResultView *)self _badgeFont];
  [v2 _scaledValueForValue:52.0];
  v4 = v3;

  return v4;
}

- (id)_numberedTitleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramResultView *)self _titleFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (double)_numberedTitleTopToFirstBaseline
{
  v2 = [(HROnboardingElectrocardiogramResultView *)self _numberedTitleFont];
  [v2 _scaledValueForValue:52.0];
  v4 = v3;

  return v4;
}

- (double)_numberedTitleToBadgeLastBaseline
{
  v2 = [(HROnboardingElectrocardiogramResultView *)self _numberedTitleFont];
  [v2 _scaledValueForValue:26.0];
  v4 = v3;

  return v4;
}

- (double)_numberedTitleLastBaseLineToVideoTop
{
  v2 = [(HROnboardingElectrocardiogramResultView *)self _numberedTitleFont];
  [v2 _scaledValueForValue:18.0];
  v4 = v3;

  return v4;
}

- (id)_visibleBodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (double)_visibleBodyFirstBaselineDistance
{
  v2 = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFont];
  [v2 _scaledValueForValue:30.0];
  v4 = v3;

  return v4;
}

- (double)_visibleBodyLastBaselineToLearnMoreButtonFirstBaseline
{
  v2 = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFont];
  [v2 _scaledValueForValue:40.0];
  v4 = v3;

  return v4;
}

- (double)_learnMoreButtonLastBaselineToBottom
{
  v2 = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFont];
  [v2 _scaledValueForValue:40.0];
  v4 = v3;

  return v4;
}

@end