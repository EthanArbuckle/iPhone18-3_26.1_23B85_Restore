@interface HROnboardingElectrocardiogramResultView
+ (id)resultViewWithItem:(id)item;
- (HROnboardingElectrocardiogramResultView)initWithBadge:(id)badge title:(id)title numberedTitle:(id)numberedTitle visibleBodyText:(id)text video:(id)video expandedView:(id)view;
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
- (void)setAlwaysExpanded:(BOOL)expanded;
@end

@implementation HROnboardingElectrocardiogramResultView

- (HROnboardingElectrocardiogramResultView)initWithBadge:(id)badge title:(id)title numberedTitle:(id)numberedTitle visibleBodyText:(id)text video:(id)video expandedView:(id)view
{
  badgeCopy = badge;
  titleCopy = title;
  numberedTitleCopy = numberedTitle;
  textCopy = text;
  videoCopy = video;
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = HROnboardingElectrocardiogramResultView;
  v18 = [(HROnboardingElectrocardiogramResultView *)&v24 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_badge, badge);
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v19->_numberedTitle, numberedTitle);
    objc_storeStrong(&v19->_visibleBody, text);
    objc_storeStrong(&v19->_playerView, video);
    objc_storeStrong(&v19->_expandedView, view);
    [(HROnboardingElectrocardiogramResultView *)v19 _setUpUI];
    [(HROnboardingElectrocardiogramResultView *)v19 _setUpConstraints];
  }

  return v19;
}

+ (id)resultViewWithItem:(id)item
{
  itemCopy = item;
  videoPath = [itemCopy videoPath];

  if (videoPath)
  {
    v5 = MEMORY[0x277CBEBC0];
    videoPath2 = [itemCopy videoPath];
    v7 = [v5 fileURLWithPath:videoPath2];

    videoPath = [HRVideoPlayerView playerViewWithURL:v7 looping:1];
  }

  expandedContentItems = [itemCopy expandedContentItems];
  v9 = [HROnboardingInlineExpandedContentView viewWithItems:expandedContentItems];

  v10 = [HROnboardingElectrocardiogramResultView alloc];
  badge = [itemCopy badge];
  title = [itemCopy title];
  numberedTitle = [itemCopy numberedTitle];
  visibleBodyText = [itemCopy visibleBodyText];
  v15 = [(HROnboardingElectrocardiogramResultView *)v10 initWithBadge:badge title:title numberedTitle:numberedTitle visibleBodyText:visibleBodyText video:videoPath expandedView:v9];

  return v15;
}

- (void)setAlwaysExpanded:(BOOL)expanded
{
  self->_alwaysExpanded = expanded;
  if (expanded)
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
  badge = [(HROnboardingElectrocardiogramResultView *)self badge];

  if (badge)
  {
    v4 = [HRPaddingLabel alloc];
    v5 = [(HRPaddingLabel *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(HROnboardingElectrocardiogramResultView *)self setBadgeLabel:v5];

    badgeLabel = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [badgeLabel setAdjustsFontForContentSizeCategory:1];

    hk_heartKeyColor = [MEMORY[0x277D75348] hk_heartKeyColor];
    badgeLabel2 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [badgeLabel2 setBackgroundColor:hk_heartKeyColor];

    badgeLabel3 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    LODWORD(v10) = 1148846080;
    [badgeLabel3 setContentHuggingPriority:0 forAxis:v10];

    _badgeFont = [(HROnboardingElectrocardiogramResultView *)self _badgeFont];
    badgeLabel4 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [badgeLabel4 setFont:_badgeFont];

    badgeLabel5 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [badgeLabel5 setNumberOfLines:2];

    badgeLabel6 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [badgeLabel6 setPadding:{5.0, 8.0, 5.0, 8.0}];

    badge2 = [(HROnboardingElectrocardiogramResultView *)self badge];
    localizedUppercaseString = [badge2 localizedUppercaseString];
    badgeLabel7 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [badgeLabel7 setText:localizedUppercaseString];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    badgeLabel8 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [badgeLabel8 setTextColor:whiteColor];

    badgeLabel9 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [badgeLabel9 setTranslatesAutoresizingMaskIntoConstraints:0];

    badgeLabel10 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [badgeLabel10 hrui_maskAllCornersWithRadius:4.0];

    badgeLabel11 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    [(HROnboardingElectrocardiogramResultView *)self addSubview:badgeLabel11];
  }

  v23 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramResultView *)self setNumberedTitleLabel:v23];

  numberedTitle = [(HROnboardingElectrocardiogramResultView *)self numberedTitle];
  numberedTitleLabel = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [numberedTitleLabel setText:numberedTitle];

  v26 = MEMORY[0x277CCACA8];
  numberedTitle2 = [(HROnboardingElectrocardiogramResultView *)self numberedTitle];
  v78 = [v26 stringWithFormat:@"ResultsYouMaySee.%@.Title", numberedTitle2];

  v28 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:v78];
  numberedTitleLabel2 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [numberedTitleLabel2 setAccessibilityIdentifier:v28];

  _numberedTitleFont = [(HROnboardingElectrocardiogramResultView *)self _numberedTitleFont];
  numberedTitleLabel3 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [numberedTitleLabel3 setFont:_numberedTitleFont];

  numberedTitleLabel4 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [numberedTitleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  numberedTitleLabel5 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [numberedTitleLabel5 setAdjustsFontForContentSizeCategory:1];

  numberedTitleLabel6 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [numberedTitleLabel6 setNumberOfLines:0];

  numberedTitleLabel7 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [(HROnboardingElectrocardiogramResultView *)self addSubview:numberedTitleLabel7];

  playerView = [(HROnboardingElectrocardiogramResultView *)self playerView];

  if (playerView)
  {
    playerView2 = [(HROnboardingElectrocardiogramResultView *)self playerView];
    [playerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    playerView3 = [(HROnboardingElectrocardiogramResultView *)self playerView];
    [playerView3 hrui_maskAllCornersWithRadius:*MEMORY[0x277D12798]];

    playerView4 = [(HROnboardingElectrocardiogramResultView *)self playerView];
    [(HROnboardingElectrocardiogramResultView *)self addSubview:playerView4];
  }

  v40 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramResultView *)self setVisibleBodyLabel:v40];

  visibleBody = [(HROnboardingElectrocardiogramResultView *)self visibleBody];
  visibleBodyLabel = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [visibleBodyLabel setText:visibleBody];

  v43 = MEMORY[0x277CCACA8];
  numberedTitle3 = [(HROnboardingElectrocardiogramResultView *)self numberedTitle];
  v45 = [v43 stringWithFormat:@"ResultsYouMaySee.%@.Description", numberedTitle3];

  v46 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:v45];
  visibleBodyLabel2 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [visibleBodyLabel2 setAccessibilityIdentifier:v46];

  _visibleBodyFont = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFont];
  visibleBodyLabel3 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [visibleBodyLabel3 setFont:_visibleBodyFont];

  visibleBodyLabel4 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [visibleBodyLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  visibleBodyLabel5 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [visibleBodyLabel5 setAdjustsFontForContentSizeCategory:1];

  visibleBodyLabel6 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [visibleBodyLabel6 setNumberOfLines:0];

  visibleBodyLabel7 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  [(HROnboardingElectrocardiogramResultView *)self addSubview:visibleBodyLabel7];

  v54 = objc_alloc_init(MEMORY[0x277D75220]);
  [(HROnboardingElectrocardiogramResultView *)self setLearnMoreButton:v54];

  learnMoreButton = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  v56 = HRHeartRhythmUIFrameworkBundle();
  v57 = [v56 localizedStringForKey:@"ONBOARDING_LEARN_MORE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  [learnMoreButton setTitle:v57 forState:0];

  learnMoreButton2 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  v59 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"ResultsYouMaySee.LearnMoreButton"];
  [learnMoreButton2 setAccessibilityIdentifier:v59];

  learnMoreButton3 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  hk_appKeyColor = [MEMORY[0x277D75348] hk_appKeyColor];
  [learnMoreButton3 setTitleColor:hk_appKeyColor forState:0];

  learnMoreButton4 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  [learnMoreButton4 addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:64];

  learnMoreButton5 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  [learnMoreButton5 setContentHorizontalAlignment:4];

  _visibleBodyFont2 = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFont];
  learnMoreButton6 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  titleLabel = [learnMoreButton6 titleLabel];
  [titleLabel setFont:_visibleBodyFont2];

  learnMoreButton7 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  titleLabel2 = [learnMoreButton7 titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  learnMoreButton8 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  [(HROnboardingElectrocardiogramResultView *)self addSubview:learnMoreButton8];

  expandedView = [(HROnboardingElectrocardiogramResultView *)self expandedView];
  [expandedView setTranslatesAutoresizingMaskIntoConstraints:0];

  expandedView2 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
  [expandedView2 setHidden:1];

  expandedView3 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
  [(HROnboardingElectrocardiogramResultView *)self addSubview:expandedView3];

  v73 = objc_alloc_init(MEMORY[0x277D12A48]);
  [(HROnboardingElectrocardiogramResultView *)self setSeparatorLineView:v73];

  separatorColor = [MEMORY[0x277D75348] separatorColor];
  separatorLineView = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  [separatorLineView setColor:separatorColor];

  separatorLineView2 = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  [separatorLineView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  separatorLineView3 = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  [(HROnboardingElectrocardiogramResultView *)self addSubview:separatorLineView3];
}

- (void)_setUpConstraints
{
  badgeLabel = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];

  if (badgeLabel)
  {
    badgeLabel2 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    leadingAnchor = [badgeLabel2 leadingAnchor];
    leadingAnchor2 = [(HROnboardingElectrocardiogramResultView *)self leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v7 setActive:1];

    badgeLabel3 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    trailingAnchor = [badgeLabel3 trailingAnchor];
    trailingAnchor2 = [(HROnboardingElectrocardiogramResultView *)self trailingAnchor];
    v11 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    [v11 setActive:1];

    badgeLabel4 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    firstBaselineAnchor = [badgeLabel4 firstBaselineAnchor];
    topAnchor = [(HROnboardingElectrocardiogramResultView *)self topAnchor];
    [(HROnboardingElectrocardiogramResultView *)self _badgeTopToFirstBaseline];
    v15 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
    [v15 setActive:1];
  }

  [(HROnboardingElectrocardiogramResultView *)self _setUpNumberedTitleLabelConstraints];
  playerView = [(HROnboardingElectrocardiogramResultView *)self playerView];

  if (playerView)
  {
    playerView2 = [(HROnboardingElectrocardiogramResultView *)self playerView];
    [playerView2 hk_alignHorizontalConstraintsWithView:self margin:0.0];

    [(HROnboardingElectrocardiogramResultView *)self _setUpPlayerViewTopConstraint];
    visibleBodyLabel = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
    [visibleBodyLabel hk_alignHorizontalConstraintsWithView:self margin:0.0];

    visibleBodyLabel2 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
    firstBaselineAnchor2 = [visibleBodyLabel2 firstBaselineAnchor];
    playerView3 = [(HROnboardingElectrocardiogramResultView *)self playerView];
    bottomAnchor = [playerView3 bottomAnchor];
    [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFirstBaselineDistance];
    v23 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor constant:?];
    [v23 setActive:1];
  }

  else
  {
    visibleBodyLabel3 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
    [visibleBodyLabel3 hk_alignHorizontalConstraintsWithView:self margin:0.0];

    [(HROnboardingElectrocardiogramResultView *)self _setUpVisibleBodyLabelTopConstraint];
  }

  learnMoreButton = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  [learnMoreButton hk_alignHorizontalConstraintsWithView:self margin:0.0];

  learnMoreButton2 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  firstBaselineAnchor3 = [learnMoreButton2 firstBaselineAnchor];
  visibleBodyLabel4 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  lastBaselineAnchor = [visibleBodyLabel4 lastBaselineAnchor];
  [(HROnboardingElectrocardiogramResultView *)self _visibleBodyLastBaselineToLearnMoreButtonFirstBaseline];
  v30 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v30 setActive:1];

  expandedView = [(HROnboardingElectrocardiogramResultView *)self expandedView];
  [expandedView hk_alignHorizontalConstraintsWithView:self margin:0.0];

  expandedView2 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
  topAnchor2 = [expandedView2 topAnchor];
  visibleBodyLabel5 = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  bottomAnchor2 = [visibleBodyLabel5 bottomAnchor];
  v36 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
  [v36 setActive:1];

  separatorLineView = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  [separatorLineView hk_alignHorizontalConstraintsWithView:self margin:0.0];

  separatorLineView2 = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  heightAnchor = [separatorLineView2 heightAnchor];
  v40 = [heightAnchor constraintEqualToConstant:1.0];
  [v40 setActive:1];

  separatorLineView3 = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  bottomAnchor3 = [separatorLineView3 bottomAnchor];
  bottomAnchor4 = [(HROnboardingElectrocardiogramResultView *)self bottomAnchor];
  v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v44 setActive:1];

  bottomAnchor5 = [(HROnboardingElectrocardiogramResultView *)self bottomAnchor];
  learnMoreButton3 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  lastBaselineAnchor2 = [learnMoreButton3 lastBaselineAnchor];
  [(HROnboardingElectrocardiogramResultView *)self _learnMoreButtonLastBaselineToBottom];
  v48 = [bottomAnchor5 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [(HROnboardingElectrocardiogramResultView *)self setBottomConstraint:v48];

  bottomConstraint = [(HROnboardingElectrocardiogramResultView *)self bottomConstraint];
  [bottomConstraint setActive:1];
}

- (void)_setUpNumberedTitleLabelConstraints
{
  numberedTitleLabel = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  [numberedTitleLabel hk_alignHorizontalConstraintsWithView:self margin:0.0];

  badgeLabel = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];

  numberedTitleLabel2 = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  firstBaselineAnchor = [numberedTitleLabel2 firstBaselineAnchor];
  if (badgeLabel)
  {
    badgeLabel2 = [(HROnboardingElectrocardiogramResultView *)self badgeLabel];
    bottomAnchor = [badgeLabel2 bottomAnchor];
    [(HROnboardingElectrocardiogramResultView *)self _numberedTitleToBadgeLastBaseline];
    v8 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
    [v8 setActive:1];
  }

  else
  {
    badgeLabel2 = [(HROnboardingElectrocardiogramResultView *)self topAnchor];
    [(HROnboardingElectrocardiogramResultView *)self _numberedTitleTopToFirstBaseline];
    bottomAnchor = [firstBaselineAnchor constraintEqualToAnchor:badgeLabel2 constant:?];
    [bottomAnchor setActive:1];
  }
}

- (void)_setUpPlayerViewTopConstraint
{
  v14[1] = *MEMORY[0x277D85DE8];
  playerViewOrVisibleBodyLabelTopConstraint = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];

  if (playerViewOrVisibleBodyLabelTopConstraint)
  {
    v4 = MEMORY[0x277CCAAD0];
    playerViewOrVisibleBodyLabelTopConstraint2 = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];
    v14[0] = playerViewOrVisibleBodyLabelTopConstraint2;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v4 deactivateConstraints:v6];

    [(HROnboardingElectrocardiogramResultView *)self setPlayerViewOrVisibleBodyLabelTopConstraint:0];
  }

  _playerViewOrVisibleBodyLabelTopConstraint = [(HROnboardingElectrocardiogramResultView *)self _playerViewOrVisibleBodyLabelTopConstraint];
  [(HROnboardingElectrocardiogramResultView *)self _playerViewOrVisibleBodyLabelTopConstant];
  v9 = v8;
  playerView = [(HROnboardingElectrocardiogramResultView *)self playerView];
  topAnchor = [playerView topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:_playerViewOrVisibleBodyLabelTopConstraint constant:v9];
  [(HROnboardingElectrocardiogramResultView *)self setPlayerViewOrVisibleBodyLabelTopConstraint:v12];

  playerViewOrVisibleBodyLabelTopConstraint3 = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];
  [playerViewOrVisibleBodyLabelTopConstraint3 setActive:1];
}

- (void)_setUpVisibleBodyLabelTopConstraint
{
  v14[1] = *MEMORY[0x277D85DE8];
  playerViewOrVisibleBodyLabelTopConstraint = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];

  if (playerViewOrVisibleBodyLabelTopConstraint)
  {
    v4 = MEMORY[0x277CCAAD0];
    playerViewOrVisibleBodyLabelTopConstraint2 = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];
    v14[0] = playerViewOrVisibleBodyLabelTopConstraint2;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v4 deactivateConstraints:v6];

    [(HROnboardingElectrocardiogramResultView *)self setPlayerViewOrVisibleBodyLabelTopConstraint:0];
  }

  _playerViewOrVisibleBodyLabelTopConstraint = [(HROnboardingElectrocardiogramResultView *)self _playerViewOrVisibleBodyLabelTopConstraint];
  [(HROnboardingElectrocardiogramResultView *)self _playerViewOrVisibleBodyLabelTopConstant];
  v9 = v8;
  visibleBodyLabel = [(HROnboardingElectrocardiogramResultView *)self visibleBodyLabel];
  topAnchor = [visibleBodyLabel topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:_playerViewOrVisibleBodyLabelTopConstraint constant:v9];
  [(HROnboardingElectrocardiogramResultView *)self setPlayerViewOrVisibleBodyLabelTopConstraint:v12];

  playerViewOrVisibleBodyLabelTopConstraint3 = [(HROnboardingElectrocardiogramResultView *)self playerViewOrVisibleBodyLabelTopConstraint];
  [playerViewOrVisibleBodyLabelTopConstraint3 setActive:1];
}

- (id)_playerViewOrVisibleBodyLabelTopConstraint
{
  if ([(HROnboardingElectrocardiogramResultView *)self isHidingNumberedTitle])
  {
    topAnchor = [(HROnboardingElectrocardiogramResultView *)self topAnchor];
  }

  else
  {
    numberedTitleLabel = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
    topAnchor = [numberedTitleLabel lastBaselineAnchor];
  }

  return topAnchor;
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
  isHidingNumberedTitle = [(HROnboardingElectrocardiogramResultView *)self isHidingNumberedTitle];
  numberedTitleLabel = [(HROnboardingElectrocardiogramResultView *)self numberedTitleLabel];
  v5 = numberedTitleLabel;
  if (isHidingNumberedTitle)
  {
    [numberedTitleLabel removeFromSuperview];
  }

  else
  {
    [(HROnboardingElectrocardiogramResultView *)self addSubview:numberedTitleLabel];

    [(HROnboardingElectrocardiogramResultView *)self _setUpNumberedTitleLabelConstraints];
  }

  playerView = [(HROnboardingElectrocardiogramResultView *)self playerView];

  if (playerView)
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
  shouldHideSeparatorLine = [(HROnboardingElectrocardiogramResultView *)self shouldHideSeparatorLine];
  separatorLineView = [(HROnboardingElectrocardiogramResultView *)self separatorLineView];
  [separatorLineView setHidden:shouldHideSeparatorLine];

  LODWORD(separatorLineView) = [(HROnboardingElectrocardiogramResultView *)self isExpanded];
  learnMoreButton = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
  v6 = learnMoreButton;
  if (separatorLineView)
  {
    [learnMoreButton setHidden:1];

    expandedView = [(HROnboardingElectrocardiogramResultView *)self expandedView];
    [expandedView setHidden:0];

    v8 = MEMORY[0x277CCAAD0];
    bottomConstraint = [(HROnboardingElectrocardiogramResultView *)self bottomConstraint];
    v22[0] = bottomConstraint;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v8 deactivateConstraints:v10];

    [(HROnboardingElectrocardiogramResultView *)self setBottomConstraint:0];
    bottomAnchor = [(HROnboardingElectrocardiogramResultView *)self bottomAnchor];
    expandedView2 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
    bottomAnchor2 = [expandedView2 bottomAnchor];
  }

  else
  {
    [learnMoreButton setHidden:0];

    expandedView3 = [(HROnboardingElectrocardiogramResultView *)self expandedView];
    [expandedView3 setHidden:1];

    v15 = MEMORY[0x277CCAAD0];
    bottomConstraint2 = [(HROnboardingElectrocardiogramResultView *)self bottomConstraint];
    v21 = bottomConstraint2;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v15 deactivateConstraints:v17];

    [(HROnboardingElectrocardiogramResultView *)self setBottomConstraint:0];
    bottomAnchor = [(HROnboardingElectrocardiogramResultView *)self bottomAnchor];
    expandedView2 = [(HROnboardingElectrocardiogramResultView *)self learnMoreButton];
    bottomAnchor2 = [expandedView2 lastBaselineAnchor];
  }

  v18 = bottomAnchor2;
  [(HROnboardingElectrocardiogramResultView *)self _learnMoreButtonLastBaselineToBottom];
  v19 = [bottomAnchor constraintEqualToAnchor:v18 constant:?];
  [(HROnboardingElectrocardiogramResultView *)self setBottomConstraint:v19];

  bottomConstraint3 = [(HROnboardingElectrocardiogramResultView *)self bottomConstraint];
  [bottomConstraint3 setActive:1];
}

- (double)_badgeTopToFirstBaseline
{
  _badgeFont = [(HROnboardingElectrocardiogramResultView *)self _badgeFont];
  [_badgeFont _scaledValueForValue:52.0];
  v4 = v3;

  return v4;
}

- (id)_numberedTitleFont
{
  v2 = MEMORY[0x277D74300];
  _titleFontTextStyle = [(HROnboardingElectrocardiogramResultView *)self _titleFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_titleFontTextStyle symbolicTraits:2];

  return v4;
}

- (double)_numberedTitleTopToFirstBaseline
{
  _numberedTitleFont = [(HROnboardingElectrocardiogramResultView *)self _numberedTitleFont];
  [_numberedTitleFont _scaledValueForValue:52.0];
  v4 = v3;

  return v4;
}

- (double)_numberedTitleToBadgeLastBaseline
{
  _numberedTitleFont = [(HROnboardingElectrocardiogramResultView *)self _numberedTitleFont];
  [_numberedTitleFont _scaledValueForValue:26.0];
  v4 = v3;

  return v4;
}

- (double)_numberedTitleLastBaseLineToVideoTop
{
  _numberedTitleFont = [(HROnboardingElectrocardiogramResultView *)self _numberedTitleFont];
  [_numberedTitleFont _scaledValueForValue:18.0];
  v4 = v3;

  return v4;
}

- (id)_visibleBodyFont
{
  v2 = MEMORY[0x277D74300];
  _visibleBodyFontTextStyle = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_visibleBodyFontTextStyle];

  return v4;
}

- (double)_visibleBodyFirstBaselineDistance
{
  _visibleBodyFont = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFont];
  [_visibleBodyFont _scaledValueForValue:30.0];
  v4 = v3;

  return v4;
}

- (double)_visibleBodyLastBaselineToLearnMoreButtonFirstBaseline
{
  _visibleBodyFont = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFont];
  [_visibleBodyFont _scaledValueForValue:40.0];
  v4 = v3;

  return v4;
}

- (double)_learnMoreButtonLastBaselineToBottom
{
  _visibleBodyFont = [(HROnboardingElectrocardiogramResultView *)self _visibleBodyFont];
  [_visibleBodyFont _scaledValueForValue:40.0];
  v4 = v3;

  return v4;
}

@end