@interface GKChallengeDetailViewController
- (GKChallengeDetailViewController)initWithChallenge:(id)a3;
- (id)delegate;
- (id)title;
- (void)adjustFontSizeForLabel:(id)a3 withTextStyle:(id)a4;
- (void)adjustLabelFonts;
- (void)configureButtons;
- (void)configureForChallenge;
- (void)declinePressed:(id)a3;
- (void)donePressed:(id)a3;
- (void)playNowPressed:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateIconViewWithSubView:(id)a3 edgeInsets:(UIEdgeInsets)a4;
- (void)updateLeaderboardImage;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation GKChallengeDetailViewController

- (GKChallengeDetailViewController)initWithChallenge:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _gkPlatformNibName];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9.receiver = self;
  v9.super_class = GKChallengeDetailViewController;
  v7 = [(GKDashboardCollectionViewController *)&v9 initWithNibName:v5 bundle:v6];

  if (v7)
  {
    [(GKChallengeDetailViewController *)v7 setChallenge:v4];
  }

  return v7;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = GKChallengeDetailViewController;
  [(GKDashboardCollectionViewController *)&v16 viewDidLoad];
  v3 = [MEMORY[0x277D0C1F8] reporter];
  [v3 reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA08]];

  v4 = [MEMORY[0x277D75348] clearColor];
  v5 = [(GKChallengeDetailViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(GKChallengeDetailViewController *)self playerAvatarView];
  [v6 setBackgroundColor:0];

  v7 = [MEMORY[0x277D75348] clearColor];
  v8 = [(GKChallengeDetailViewController *)self iconView];
  [v8 setBackgroundColor:v7];

  v9 = [MEMORY[0x277D75348] _gkSpeechViewTintColor];
  v10 = [(GKChallengeDetailViewController *)self playerAvatarView];
  [v10 setTintColor:v9];

  [(GKChallengeDetailViewController *)self configureForChallenge];
  v11 = [(GKChallengeDetailViewController *)self navigationItem];
  [v11 _setAutoScrollEdgeTransitionDistance:40.0];

  v12 = [(GKChallengeDetailViewController *)self navigationItem];
  [v12 _setManualScrollEdgeAppearanceEnabled:1];

  v13 = [(GKChallengeDetailViewController *)self title];
  v14 = [(GKChallengeDetailViewController *)self navigationItem];
  [v14 setTitle:v13];

  v15 = [(GKChallengeDetailViewController *)self navigationItem];
  [v15 setLargeTitleDisplayMode:2];

  [(GKChallengeDetailViewController *)self configureButtons];
  [(GKChallengeDetailViewController *)self adjustLabelFonts];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = GKChallengeDetailViewController;
  [(GKDashboardCollectionViewController *)&v4 viewDidAppear:a3];
  v3 = [MEMORY[0x277D0BFA8] reporter];
  [v3 recordPageWithID:@"challengeDetail" pageContext:@"dashboard" pageType:@"challenge"];
}

- (void)viewDidLayoutSubviews
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = [(GKChallengeDetailViewController *)self view];
    [v5 bounds];
    Height = CGRectGetHeight(v17);
    v7 = [(GKChallengeDetailViewController *)self artworkStack];
    [v7 bounds];
    v8 = Height - CGRectGetHeight(v18);
    v9 = [(GKChallengeDetailViewController *)self challengerStack];
    [v9 bounds];
    v10 = v8 - CGRectGetHeight(v19);
    v11 = [(GKChallengeDetailViewController *)self actionStack];
    [v11 bounds];
    v12 = v10 - CGRectGetHeight(v20);

    v13 = v12 / 3.0;
    v14 = [(GKChallengeDetailViewController *)self artworkStackPortraitTopConstraint];
    [v14 setConstant:v13];

    v15 = [(GKChallengeDetailViewController *)self actionStackPortraitBottomConstraint];
    [v15 setConstant:v13];
  }
}

- (void)adjustLabelFonts
{
  v3 = [(GKChallengeDetailViewController *)self challengeByNameLabel];
  v4 = *MEMORY[0x277D76918];
  [(GKChallengeDetailViewController *)self adjustFontSizeForLabel:v3 withTextStyle:*MEMORY[0x277D76918]];

  v5 = [(GKChallengeDetailViewController *)self titleLabel];
  [(GKChallengeDetailViewController *)self adjustFontSizeForLabel:v5 withTextStyle:v4];

  v6 = [(GKChallengeDetailViewController *)self descriptionLabel];
  [(GKChallengeDetailViewController *)self adjustFontSizeForLabel:v6 withTextStyle:v4];

  v7 = [(GKChallengeDetailViewController *)self playNowButton];
  v8 = [v7 titleLabel];
  [(GKChallengeDetailViewController *)self adjustFontSizeForLabel:v8 withTextStyle:v4];

  v10 = [(GKChallengeDetailViewController *)self declineButton];
  v9 = [v10 titleLabel];
  [(GKChallengeDetailViewController *)self adjustFontSizeForLabel:v9 withTextStyle:v4];
}

- (void)adjustFontSizeForLabel:(id)a3 withTextStyle:(id)a4
{
  v5 = MEMORY[0x277D74300];
  v7 = a3;
  v6 = [v5 preferredFontForTextStyle:a4];
  [v7 setFont:v6];

  [v7 setAdjustsFontForContentSizeCategory:1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = GKChallengeDetailViewController;
  [(GKDashboardCollectionViewController *)&v44 traitCollectionDidChange:v4];
  v5 = [(GKChallengeDetailViewController *)self traitCollection];
  v6 = [v5 horizontalSizeClass];
  if (v6 == [v4 horizontalSizeClass])
  {
    v7 = [(GKChallengeDetailViewController *)self traitCollection];
    v8 = [v7 layoutDirection];
    if (v8 == [v4 layoutDirection])
    {
      v9 = [(GKChallengeDetailViewController *)self traitCollection];
      v10 = [v9 preferredContentSizeCategory];
      v11 = [v4 preferredContentSizeCategory];

      if (v10 == v11)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v12 = [(GKChallengeDetailViewController *)self traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v13);
  v15 = [(GKChallengeDetailViewController *)self artworkStackPortraitTopConstraint];
  v16 = v15;
  if (IsAccessibilityCategory)
  {
    v17 = 0.0;
    [v15 setConstant:0.0];

    v18 = 3.0;
    if ([(NSString *)v13 isEqualToString:*MEMORY[0x277D767E8]])
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 0.0;
      if (![(NSString *)v13 isEqualToString:*MEMORY[0x277D767F0]])
      {
        v19 = 15.0;
        v18 = 30.0;
        v17 = 60.0;
      }
    }

    v31 = [(GKChallengeDetailViewController *)self challengerStackLandscapeTopConstraint];
    [v31 setConstant:v17];

    v32 = [(GKChallengeDetailViewController *)self challengerStackPortraitTopConstraint];
    [v32 setConstant:v18];

    v33 = [(GKChallengeDetailViewController *)self actionStackPortraitTopConstraint];
    [v33 setConstant:v19];

    v34 = [(GKChallengeDetailViewController *)self actionStackPortraitBottomConstraint];
    [v34 setConstant:0.0];

    v35 = [(GKChallengeDetailViewController *)self artworkViewHeightConstraint];
    [v35 setConstant:100.0];

    v36 = [(GKChallengeDetailViewController *)self artworkStack];
    [v36 setSpacing:0.0];

    v37 = [(GKChallengeDetailViewController *)self challengerStack];
    [v37 setSpacing:0.0];

    v38 = *MEMORY[0x277D768C8];
    v39 = *(MEMORY[0x277D768C8] + 8);
    v40 = *(MEMORY[0x277D768C8] + 16);
    v41 = *(MEMORY[0x277D768C8] + 24);
    v42 = [(GKChallengeDetailViewController *)self playNowButton];
    [v42 setTitleEdgeInsets:{v38, v39, v40, v41}];

    v29 = [(GKChallengeDetailViewController *)self declineButton];
    [v29 setTitleEdgeInsets:{v38, v39, v40, v41}];
  }

  else
  {
    [v15 setConstant:30.0];

    v20 = [(GKChallengeDetailViewController *)self artworkViewHeightConstraint];
    [v20 setConstant:200.0];

    v21 = [(GKChallengeDetailViewController *)self challengerStackLandscapeTopConstraint];
    [v21 setConstant:80.0];

    v22 = [(GKChallengeDetailViewController *)self challengerStackPortraitTopConstraint];
    [v22 setConstant:40.0];

    v23 = [(GKChallengeDetailViewController *)self actionStackPortraitTopConstraint];
    [v23 setConstant:25.0];

    v24 = [(GKChallengeDetailViewController *)self actionStackPortraitBottomConstraint];
    [v24 setConstant:25.0];

    v25 = [(GKChallengeDetailViewController *)self artworkStack];
    [v25 setSpacing:8.0];

    v26 = [(GKChallengeDetailViewController *)self challengerStack];
    [v26 setSpacing:10.0];

    v27 = [(GKChallengeDetailViewController *)self playNowButton];
    v28 = +[GKButtonStyle standardStyle];
    [v27 applyButtonStyle:v28];

    v29 = [(GKChallengeDetailViewController *)self declineButton];
    v30 = +[GKButtonStyle standardStyle];
    [v29 applyButtonStyle:v30];
  }

  v43 = [(GKChallengeDetailViewController *)self view];
  [v43 updateConstraintsIfNeeded];

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
  v32 = [(GKChallenge *)self->_challenge issuingPlayer];
  v3 = [(GKChallengeDetailViewController *)self playerAvatarView];
  [v3 setPlayer:v32];

  v4 = [(GKChallengeDetailViewController *)self challenge];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  challenge = self->_challenge;
  if (isKindOfClass)
  {
    v7 = [(GKChallenge *)challenge achievement];
    v8 = [v7 title];
    v9 = [(GKChallengeDetailViewController *)self titleLabel];
    [v9 setText:v8];

    v10 = [v7 unachievedDescription];
    v11 = [(GKChallengeDetailViewController *)self descriptionLabel];
    [v11 setText:v10];

    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    v14 = [(GKChallengeDetailViewController *)self categoryLabel];
    [v14 setText:v13];

    v15 = [_TtC12GameCenterUI16AchievementUtils achievementBadgeWithAchievement:v7];
    [(GKChallengeDetailViewController *)self updateIconViewWithSubView:v15];
  }

  else
  {
    v16 = challenge;
    v17 = [(GKChallenge *)v16 leaderboard];
    v18 = [v17 title];
    v19 = [(GKChallengeDetailViewController *)self titleLabel];
    [v19 setText:v18];

    v20 = [(GKChallenge *)v16 score];

    v21 = [v20 formattedValue];
    v22 = [(GKChallengeDetailViewController *)self descriptionLabel];
    [v22 setText:v21];

    v23 = GKGameCenterUIFrameworkBundle();
    v24 = GKGetLocalizedStringFromTableInBundle();
    v25 = [(GKChallengeDetailViewController *)self categoryLabel];
    [v25 setText:v24];

    [(GKChallengeDetailViewController *)self updateLeaderboardImage];
  }

  v26 = MEMORY[0x277CCACA8];
  v27 = GKGameCenterUIFrameworkBundle();
  v28 = GKGetLocalizedStringFromTableInBundle();
  v29 = [v32 alias];
  v30 = [v26 stringWithFormat:v28, v29];
  v31 = [(GKChallengeDetailViewController *)self challengeByNameLabel];
  [v31 setText:v30];
}

- (void)configureButtons
{
  v24 = [MEMORY[0x277D75220] _gkXmarkedCloseButtonWithTarget:self action:sel_donePressed_];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v24];
  v4 = [(GKChallengeDetailViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [(GKChallengeDetailViewController *)self playNowButton];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(GKChallengeDetailViewController *)self playNowButton];
  v7 = +[GKButtonStyle standardStyle];
  [v6 applyButtonStyle:v7];

  v8 = [(GKChallengeDetailViewController *)self declineButton];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(GKChallengeDetailViewController *)self declineButton];
  v10 = +[GKButtonStyle standardStyle];
  [v9 applyButtonStyle:v10];

  v11 = [(GKChallengeDetailViewController *)self playNowButton];
  v12 = GKGameCenterUIFrameworkBundle();
  v13 = GKGetLocalizedStringFromTableInBundle();
  [v11 setTitle:v13 forState:0];

  v14 = [(GKChallengeDetailViewController *)self playNowButton];
  v15 = GKGameCenterUIFrameworkBundle();
  v16 = GKGetLocalizedStringFromTableInBundle();
  [v14 setTitle:v16 forState:4];

  v17 = [(GKChallengeDetailViewController *)self declineButton];
  v18 = GKGameCenterUIFrameworkBundle();
  v19 = GKGetLocalizedStringFromTableInBundle();
  [v17 setTitle:v19 forState:0];

  v20 = [(GKChallengeDetailViewController *)self declineButton];
  v21 = GKGameCenterUIFrameworkBundle();
  v22 = GKGetLocalizedStringFromTableInBundle();
  [v20 setTitle:v22 forState:4];

  LODWORD(v20) = [(GKChallengeDetailViewController *)self shouldShowPlay];
  v23 = [(GKChallengeDetailViewController *)self playNowButton];
  [v23 setHidden:v20 ^ 1];
}

- (void)donePressed:(id)a3
{
  v3 = [(UIViewController *)self _gkExtensionViewController];
  [v3 finish];
}

- (void)playNowPressed:(id)a3
{
  v4 = [(UIViewController *)self _gkExtensionViewController];
  [v4 finish];

  v5 = [(UIViewController *)self _gkExtensionViewController];
  [v5 finishAndPlayChallenge:self->_challenge];
}

- (void)declinePressed:(id)a3
{
  v4 = [(GKChallengeDetailViewController *)self challenge];
  [v4 decline];

  [(UIViewController *)self _gkRemoveViewController:self animated:1];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:*MEMORY[0x277D0BA00] object:0];
}

- (void)updateLeaderboardImage
{
  v3 = self->_challenge;
  v4 = [(GKChallenge *)v3 leaderboard];
  v5 = [MEMORY[0x277D0C8C8] sharedTheme];
  v6 = [v5 iconLeaderboardListSource];

  v7 = [v4 identifier];
  v8 = [v6 cachedImageForIdentifier:v7];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
    v10 = [v9 layer];
    [v10 setCornerRadius:10.0];

    v11 = [v9 layer];
    [v11 setMasksToBounds:1];

    [(GKChallengeDetailViewController *)self updateIconViewWithSubView:v9];
  }

  else
  {
    v12 = [v4 imageURL];
    challenge = self->_challenge;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__GKChallengeDetailViewController_updateLeaderboardImage__block_invoke;
    v14[3] = &unk_279669EC8;
    v14[4] = self;
    [v6 loadImageForURLString:v12 reference:challenge queue:MEMORY[0x277D85CD0] handler:v14];
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

- (void)updateIconViewWithSubView:(id)a3 edgeInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v10 = [(GKChallengeDetailViewController *)self iconView];
  [v10 addSubview:v9];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(GKChallengeDetailViewController *)self iconView];
  [v11 setClipsToBounds:0];

  v12 = MEMORY[0x277CCAAD0];
  v13 = [(GKChallengeDetailViewController *)self iconView];
  [v12 _gkInstallEdgeConstraintsForView:v9 containedWithinParentView:v13 edgeInsets:{top, left, bottom, right}];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end