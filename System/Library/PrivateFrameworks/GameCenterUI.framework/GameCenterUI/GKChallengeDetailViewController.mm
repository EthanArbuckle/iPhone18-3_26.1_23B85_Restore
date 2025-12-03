@interface GKChallengeDetailViewController
- (GKChallengeDetailViewController)initWithChallenge:(id)challenge;
- (id)delegate;
- (id)title;
- (void)adjustFontSizeForLabel:(id)label withTextStyle:(id)style;
- (void)adjustLabelFonts;
- (void)configureButtons;
- (void)configureForChallenge;
- (void)declinePressed:(id)pressed;
- (void)donePressed:(id)pressed;
- (void)playNowPressed:(id)pressed;
- (void)traitCollectionDidChange:(id)change;
- (void)updateIconViewWithSubView:(id)view edgeInsets:(UIEdgeInsets)insets;
- (void)updateLeaderboardImage;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation GKChallengeDetailViewController

- (GKChallengeDetailViewController)initWithChallenge:(id)challenge
{
  challengeCopy = challenge;
  _gkPlatformNibName = [objc_opt_class() _gkPlatformNibName];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9.receiver = self;
  v9.super_class = GKChallengeDetailViewController;
  v7 = [(GKDashboardCollectionViewController *)&v9 initWithNibName:_gkPlatformNibName bundle:v6];

  if (v7)
  {
    [(GKChallengeDetailViewController *)v7 setChallenge:challengeCopy];
  }

  return v7;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = GKChallengeDetailViewController;
  [(GKDashboardCollectionViewController *)&v16 viewDidLoad];
  reporter = [MEMORY[0x277D0C1F8] reporter];
  [reporter reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA08]];

  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(GKChallengeDetailViewController *)self view];
  [view setBackgroundColor:clearColor];

  playerAvatarView = [(GKChallengeDetailViewController *)self playerAvatarView];
  [playerAvatarView setBackgroundColor:0];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  iconView = [(GKChallengeDetailViewController *)self iconView];
  [iconView setBackgroundColor:clearColor2];

  _gkSpeechViewTintColor = [MEMORY[0x277D75348] _gkSpeechViewTintColor];
  playerAvatarView2 = [(GKChallengeDetailViewController *)self playerAvatarView];
  [playerAvatarView2 setTintColor:_gkSpeechViewTintColor];

  [(GKChallengeDetailViewController *)self configureForChallenge];
  navigationItem = [(GKChallengeDetailViewController *)self navigationItem];
  [navigationItem _setAutoScrollEdgeTransitionDistance:40.0];

  navigationItem2 = [(GKChallengeDetailViewController *)self navigationItem];
  [navigationItem2 _setManualScrollEdgeAppearanceEnabled:1];

  title = [(GKChallengeDetailViewController *)self title];
  navigationItem3 = [(GKChallengeDetailViewController *)self navigationItem];
  [navigationItem3 setTitle:title];

  navigationItem4 = [(GKChallengeDetailViewController *)self navigationItem];
  [navigationItem4 setLargeTitleDisplayMode:2];

  [(GKChallengeDetailViewController *)self configureButtons];
  [(GKChallengeDetailViewController *)self adjustLabelFonts];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = GKChallengeDetailViewController;
  [(GKDashboardCollectionViewController *)&v4 viewDidAppear:appear];
  reporter = [MEMORY[0x277D0BFA8] reporter];
  [reporter recordPageWithID:@"challengeDetail" pageContext:@"dashboard" pageType:@"challenge"];
}

- (void)viewDidLayoutSubviews
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    view = [(GKChallengeDetailViewController *)self view];
    [view bounds];
    Height = CGRectGetHeight(v17);
    artworkStack = [(GKChallengeDetailViewController *)self artworkStack];
    [artworkStack bounds];
    v8 = Height - CGRectGetHeight(v18);
    challengerStack = [(GKChallengeDetailViewController *)self challengerStack];
    [challengerStack bounds];
    v10 = v8 - CGRectGetHeight(v19);
    actionStack = [(GKChallengeDetailViewController *)self actionStack];
    [actionStack bounds];
    v12 = v10 - CGRectGetHeight(v20);

    v13 = v12 / 3.0;
    artworkStackPortraitTopConstraint = [(GKChallengeDetailViewController *)self artworkStackPortraitTopConstraint];
    [artworkStackPortraitTopConstraint setConstant:v13];

    actionStackPortraitBottomConstraint = [(GKChallengeDetailViewController *)self actionStackPortraitBottomConstraint];
    [actionStackPortraitBottomConstraint setConstant:v13];
  }
}

- (void)adjustLabelFonts
{
  challengeByNameLabel = [(GKChallengeDetailViewController *)self challengeByNameLabel];
  v4 = *MEMORY[0x277D76918];
  [(GKChallengeDetailViewController *)self adjustFontSizeForLabel:challengeByNameLabel withTextStyle:*MEMORY[0x277D76918]];

  titleLabel = [(GKChallengeDetailViewController *)self titleLabel];
  [(GKChallengeDetailViewController *)self adjustFontSizeForLabel:titleLabel withTextStyle:v4];

  descriptionLabel = [(GKChallengeDetailViewController *)self descriptionLabel];
  [(GKChallengeDetailViewController *)self adjustFontSizeForLabel:descriptionLabel withTextStyle:v4];

  playNowButton = [(GKChallengeDetailViewController *)self playNowButton];
  titleLabel2 = [playNowButton titleLabel];
  [(GKChallengeDetailViewController *)self adjustFontSizeForLabel:titleLabel2 withTextStyle:v4];

  declineButton = [(GKChallengeDetailViewController *)self declineButton];
  titleLabel3 = [declineButton titleLabel];
  [(GKChallengeDetailViewController *)self adjustFontSizeForLabel:titleLabel3 withTextStyle:v4];
}

- (void)adjustFontSizeForLabel:(id)label withTextStyle:(id)style
{
  v5 = MEMORY[0x277D74300];
  labelCopy = label;
  v6 = [v5 preferredFontForTextStyle:style];
  [labelCopy setFont:v6];

  [labelCopy setAdjustsFontForContentSizeCategory:1];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v44.receiver = self;
  v44.super_class = GKChallengeDetailViewController;
  [(GKDashboardCollectionViewController *)&v44 traitCollectionDidChange:changeCopy];
  traitCollection = [(GKChallengeDetailViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  if (horizontalSizeClass == [changeCopy horizontalSizeClass])
  {
    traitCollection2 = [(GKChallengeDetailViewController *)self traitCollection];
    layoutDirection = [traitCollection2 layoutDirection];
    if (layoutDirection == [changeCopy layoutDirection])
    {
      traitCollection3 = [(GKChallengeDetailViewController *)self traitCollection];
      preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];
      preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

      if (preferredContentSizeCategory == preferredContentSizeCategory2)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  traitCollection4 = [(GKChallengeDetailViewController *)self traitCollection];
  preferredContentSizeCategory3 = [traitCollection4 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);
  artworkStackPortraitTopConstraint = [(GKChallengeDetailViewController *)self artworkStackPortraitTopConstraint];
  v16 = artworkStackPortraitTopConstraint;
  if (IsAccessibilityCategory)
  {
    v17 = 0.0;
    [artworkStackPortraitTopConstraint setConstant:0.0];

    v18 = 3.0;
    if ([(NSString *)preferredContentSizeCategory3 isEqualToString:*MEMORY[0x277D767E8]])
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 0.0;
      if (![(NSString *)preferredContentSizeCategory3 isEqualToString:*MEMORY[0x277D767F0]])
      {
        v19 = 15.0;
        v18 = 30.0;
        v17 = 60.0;
      }
    }

    challengerStackLandscapeTopConstraint = [(GKChallengeDetailViewController *)self challengerStackLandscapeTopConstraint];
    [challengerStackLandscapeTopConstraint setConstant:v17];

    challengerStackPortraitTopConstraint = [(GKChallengeDetailViewController *)self challengerStackPortraitTopConstraint];
    [challengerStackPortraitTopConstraint setConstant:v18];

    actionStackPortraitTopConstraint = [(GKChallengeDetailViewController *)self actionStackPortraitTopConstraint];
    [actionStackPortraitTopConstraint setConstant:v19];

    actionStackPortraitBottomConstraint = [(GKChallengeDetailViewController *)self actionStackPortraitBottomConstraint];
    [actionStackPortraitBottomConstraint setConstant:0.0];

    artworkViewHeightConstraint = [(GKChallengeDetailViewController *)self artworkViewHeightConstraint];
    [artworkViewHeightConstraint setConstant:100.0];

    artworkStack = [(GKChallengeDetailViewController *)self artworkStack];
    [artworkStack setSpacing:0.0];

    challengerStack = [(GKChallengeDetailViewController *)self challengerStack];
    [challengerStack setSpacing:0.0];

    v38 = *MEMORY[0x277D768C8];
    v39 = *(MEMORY[0x277D768C8] + 8);
    v40 = *(MEMORY[0x277D768C8] + 16);
    v41 = *(MEMORY[0x277D768C8] + 24);
    playNowButton = [(GKChallengeDetailViewController *)self playNowButton];
    [playNowButton setTitleEdgeInsets:{v38, v39, v40, v41}];

    declineButton = [(GKChallengeDetailViewController *)self declineButton];
    [declineButton setTitleEdgeInsets:{v38, v39, v40, v41}];
  }

  else
  {
    [artworkStackPortraitTopConstraint setConstant:30.0];

    artworkViewHeightConstraint2 = [(GKChallengeDetailViewController *)self artworkViewHeightConstraint];
    [artworkViewHeightConstraint2 setConstant:200.0];

    challengerStackLandscapeTopConstraint2 = [(GKChallengeDetailViewController *)self challengerStackLandscapeTopConstraint];
    [challengerStackLandscapeTopConstraint2 setConstant:80.0];

    challengerStackPortraitTopConstraint2 = [(GKChallengeDetailViewController *)self challengerStackPortraitTopConstraint];
    [challengerStackPortraitTopConstraint2 setConstant:40.0];

    actionStackPortraitTopConstraint2 = [(GKChallengeDetailViewController *)self actionStackPortraitTopConstraint];
    [actionStackPortraitTopConstraint2 setConstant:25.0];

    actionStackPortraitBottomConstraint2 = [(GKChallengeDetailViewController *)self actionStackPortraitBottomConstraint];
    [actionStackPortraitBottomConstraint2 setConstant:25.0];

    artworkStack2 = [(GKChallengeDetailViewController *)self artworkStack];
    [artworkStack2 setSpacing:8.0];

    challengerStack2 = [(GKChallengeDetailViewController *)self challengerStack];
    [challengerStack2 setSpacing:10.0];

    playNowButton2 = [(GKChallengeDetailViewController *)self playNowButton];
    v28 = +[GKButtonStyle standardStyle];
    [playNowButton2 applyButtonStyle:v28];

    declineButton = [(GKChallengeDetailViewController *)self declineButton];
    v30 = +[GKButtonStyle standardStyle];
    [declineButton applyButtonStyle:v30];
  }

  view = [(GKChallengeDetailViewController *)self view];
  [view updateConstraintsIfNeeded];

LABEL_15:
}

- (id)title
{
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  return v3;
}

- (void)configureForChallenge
{
  issuingPlayer = [(GKChallenge *)self->_challenge issuingPlayer];
  playerAvatarView = [(GKChallengeDetailViewController *)self playerAvatarView];
  [playerAvatarView setPlayer:issuingPlayer];

  challenge = [(GKChallengeDetailViewController *)self challenge];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  challenge = self->_challenge;
  if (isKindOfClass)
  {
    achievement = [(GKChallenge *)challenge achievement];
    title = [achievement title];
    titleLabel = [(GKChallengeDetailViewController *)self titleLabel];
    [titleLabel setText:title];

    unachievedDescription = [achievement unachievedDescription];
    descriptionLabel = [(GKChallengeDetailViewController *)self descriptionLabel];
    [descriptionLabel setText:unachievedDescription];

    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    categoryLabel = [(GKChallengeDetailViewController *)self categoryLabel];
    [categoryLabel setText:v13];

    v15 = [_TtC12GameCenterUI16AchievementUtils achievementBadgeWithAchievement:achievement];
    [(GKChallengeDetailViewController *)self updateIconViewWithSubView:v15];
  }

  else
  {
    v16 = challenge;
    leaderboard = [(GKChallenge *)v16 leaderboard];
    title2 = [leaderboard title];
    titleLabel2 = [(GKChallengeDetailViewController *)self titleLabel];
    [titleLabel2 setText:title2];

    score = [(GKChallenge *)v16 score];

    formattedValue = [score formattedValue];
    descriptionLabel2 = [(GKChallengeDetailViewController *)self descriptionLabel];
    [descriptionLabel2 setText:formattedValue];

    v23 = GKGameCenterUIFrameworkBundle();
    v24 = GKGetLocalizedStringFromTableInBundle();
    categoryLabel2 = [(GKChallengeDetailViewController *)self categoryLabel];
    [categoryLabel2 setText:v24];

    [(GKChallengeDetailViewController *)self updateLeaderboardImage];
  }

  v26 = MEMORY[0x277CCACA8];
  v27 = GKGameCenterUIFrameworkBundle();
  v28 = GKGetLocalizedStringFromTableInBundle();
  alias = [issuingPlayer alias];
  v30 = [v26 stringWithFormat:v28, alias];
  challengeByNameLabel = [(GKChallengeDetailViewController *)self challengeByNameLabel];
  [challengeByNameLabel setText:v30];
}

- (void)configureButtons
{
  v24 = [MEMORY[0x277D75220] _gkXmarkedCloseButtonWithTarget:self action:sel_donePressed_];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v24];
  navigationItem = [(GKChallengeDetailViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  playNowButton = [(GKChallengeDetailViewController *)self playNowButton];
  [playNowButton setTranslatesAutoresizingMaskIntoConstraints:0];

  playNowButton2 = [(GKChallengeDetailViewController *)self playNowButton];
  v7 = +[GKButtonStyle standardStyle];
  [playNowButton2 applyButtonStyle:v7];

  declineButton = [(GKChallengeDetailViewController *)self declineButton];
  [declineButton setTranslatesAutoresizingMaskIntoConstraints:0];

  declineButton2 = [(GKChallengeDetailViewController *)self declineButton];
  v10 = +[GKButtonStyle standardStyle];
  [declineButton2 applyButtonStyle:v10];

  playNowButton3 = [(GKChallengeDetailViewController *)self playNowButton];
  v12 = GKGameCenterUIFrameworkBundle();
  v13 = GKGetLocalizedStringFromTableInBundle();
  [playNowButton3 setTitle:v13 forState:0];

  playNowButton4 = [(GKChallengeDetailViewController *)self playNowButton];
  v15 = GKGameCenterUIFrameworkBundle();
  v16 = GKGetLocalizedStringFromTableInBundle();
  [playNowButton4 setTitle:v16 forState:4];

  declineButton3 = [(GKChallengeDetailViewController *)self declineButton];
  v18 = GKGameCenterUIFrameworkBundle();
  v19 = GKGetLocalizedStringFromTableInBundle();
  [declineButton3 setTitle:v19 forState:0];

  declineButton4 = [(GKChallengeDetailViewController *)self declineButton];
  v21 = GKGameCenterUIFrameworkBundle();
  v22 = GKGetLocalizedStringFromTableInBundle();
  [declineButton4 setTitle:v22 forState:4];

  LODWORD(declineButton4) = [(GKChallengeDetailViewController *)self shouldShowPlay];
  playNowButton5 = [(GKChallengeDetailViewController *)self playNowButton];
  [playNowButton5 setHidden:declineButton4 ^ 1];
}

- (void)donePressed:(id)pressed
{
  _gkExtensionViewController = [(UIViewController *)self _gkExtensionViewController];
  [_gkExtensionViewController finish];
}

- (void)playNowPressed:(id)pressed
{
  _gkExtensionViewController = [(UIViewController *)self _gkExtensionViewController];
  [_gkExtensionViewController finish];

  _gkExtensionViewController2 = [(UIViewController *)self _gkExtensionViewController];
  [_gkExtensionViewController2 finishAndPlayChallenge:self->_challenge];
}

- (void)declinePressed:(id)pressed
{
  challenge = [(GKChallengeDetailViewController *)self challenge];
  [challenge decline];

  [(UIViewController *)self _gkRemoveViewController:self animated:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D0BA00] object:0];
}

- (void)updateLeaderboardImage
{
  v3 = self->_challenge;
  leaderboard = [(GKChallenge *)v3 leaderboard];
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  iconLeaderboardListSource = [mEMORY[0x277D0C8C8] iconLeaderboardListSource];

  identifier = [leaderboard identifier];
  v8 = [iconLeaderboardListSource cachedImageForIdentifier:identifier];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
    layer = [v9 layer];
    [layer setCornerRadius:10.0];

    layer2 = [v9 layer];
    [layer2 setMasksToBounds:1];

    [(GKChallengeDetailViewController *)self updateIconViewWithSubView:v9];
  }

  else
  {
    imageURL = [leaderboard imageURL];
    challenge = self->_challenge;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__GKChallengeDetailViewController_updateLeaderboardImage__block_invoke;
    v14[3] = &unk_279669EC8;
    v14[4] = self;
    [iconLeaderboardListSource loadImageForURLString:imageURL reference:challenge queue:MEMORY[0x277D85CD0] handler:v14];
  }
}

void __57__GKChallengeDetailViewController_updateLeaderboardImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 challenge];
  v8 = [v7 isEqual:v6];

  if (v8)
  {
    v9 = *MEMORY[0x277D768C8];
    v10 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
    if (!v20)
    {
      v13 = [MEMORY[0x277D755B8] _systemImageNamed:@"list.bullet.below.star.filled"];
      v20 = [v13 imageWithRenderingMode:2];
    }

    v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v20];
    v15 = [MEMORY[0x277D75348] tertiaryLabelColor];
    [v14 setTintColor:v15];

    [v14 setContentMode:2];
    v16 = *MEMORY[0x277CDA5E8];
    v17 = [v14 layer];
    [v17 setCompositingFilter:v16];

    v18 = [v14 layer];
    [v18 setCornerRadius:10.0];

    v19 = [v14 layer];
    [v19 setMasksToBounds:1];

    [*(a1 + 32) updateIconViewWithSubView:v14 edgeInsets:{v9, v10, v11, v12}];
  }
}

- (void)updateIconViewWithSubView:(id)view edgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  viewCopy = view;
  iconView = [(GKChallengeDetailViewController *)self iconView];
  [iconView addSubview:viewCopy];

  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  iconView2 = [(GKChallengeDetailViewController *)self iconView];
  [iconView2 setClipsToBounds:0];

  v12 = MEMORY[0x277CCAAD0];
  iconView3 = [(GKChallengeDetailViewController *)self iconView];
  [v12 _gkInstallEdgeConstraintsForView:viewCopy containedWithinParentView:iconView3 edgeInsets:{top, left, bottom, right}];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end