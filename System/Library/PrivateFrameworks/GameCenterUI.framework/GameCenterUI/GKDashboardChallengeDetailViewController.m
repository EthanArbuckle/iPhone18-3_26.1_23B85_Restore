@interface GKDashboardChallengeDetailViewController
- (GKDashboardChallengeDetailViewController)initWithChallenge:(id)a3;
- (id)delegate;
- (id)preferredFocusEnvironments;
- (void)configureForChallenge;
- (void)decline:(id)a3;
- (void)play:(id)a3;
- (void)updateLeaderboardImage;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation GKDashboardChallengeDetailViewController

- (GKDashboardChallengeDetailViewController)initWithChallenge:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _gkPlatformNibName];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9.receiver = self;
  v9.super_class = GKDashboardChallengeDetailViewController;
  v7 = [(GKDashboardCollectionViewController *)&v9 initWithNibName:v5 bundle:v6];

  if (v7)
  {
    [(GKDashboardChallengeDetailViewController *)v7 setChallenge:v4];
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = GKDashboardChallengeDetailViewController;
  [(GKDetailViewController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x277D0C1F8] reporter];
  [v3 reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA08]];

  [(NSLayoutConstraint *)self->_topConstraint constant];
  [(GKDashboardChallengeDetailViewController *)self setTopMargin:?];
  [(GKAchievementIconView *)self->_iconView setIsDetail:1];
  [(GKDashboardChallengeDetailViewController *)self configureForChallenge];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = GKDashboardChallengeDetailViewController;
  [(GKDashboardChallengeDetailViewController *)&v6 viewWillLayoutSubviews];
  topMargin = self->_topMargin;
  v4 = [(GKDashboardChallengeDetailViewController *)self view];
  [v4 safeAreaInsets];
  [(NSLayoutConstraint *)self->_topConstraint setConstant:topMargin + v5];
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_playButton)
  {
    v4[0] = self->_playButton;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (void)configureForChallenge
{
  v3 = [(GKChallenge *)self->_challenge detailFromText];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"<friend>" withString:&stru_28612D290];

  v19 = [v4 stringByReplacingOccurrencesOfString:@"</friend>" withString:&stru_28612D290];

  [(UILabel *)self->_fromLabel setText:v19];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  challenge = self->_challenge;
  if (isKindOfClass)
  {
    v7 = [(GKChallenge *)challenge achievement];
    v8 = [v7 title];
    [(UILabel *)self->_titleLabel setText:v8];

    v9 = [v7 unachievedDescription];
    [(UILabel *)self->_descriptionLabel setText:v9];

    [(GKAchievementIconView *)self->_iconView setupForAchievement:v7 localAchievement:v7];
  }

  else
  {
    v10 = challenge;
    v11 = [(GKChallenge *)v10 leaderboard];
    v12 = [v11 title];
    [(UILabel *)self->_titleLabel setText:v12];

    v13 = MEMORY[0x277CCACA8];
    v14 = GKGameCenterUIFrameworkBundle();
    v15 = GKGetLocalizedStringFromTableInBundle();
    v16 = [(GKChallenge *)v10 score];
    v17 = [v16 formattedValue];
    v18 = [v13 stringWithFormat:v15, v17];
    [(UILabel *)self->_descriptionLabel setText:v18];

    [(GKDashboardChallengeDetailViewController *)self updateLeaderboardImage];
  }

  [(UIButton *)self->_playButton setHidden:!self->_shouldShowPlay];
}

- (void)updateLeaderboardImage
{
  v3 = self->_challenge;
  v4 = [(GKChallenge *)v3 leaderboard];
  v5 = [MEMORY[0x277D0C8C8] sharedTheme];
  v6 = [v5 iconLeaderboardListSource];

  v7 = [v4 identifier];
  v8 = [v6 cachedImageForIdentifier:v7];

  [(GKAchievementIconView *)self->_iconView setImage:v8];
  if (!v8)
  {
    v9 = [v4 imageURL];
    challenge = self->_challenge;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__GKDashboardChallengeDetailViewController_updateLeaderboardImage__block_invoke;
    v11[3] = &unk_27966AC10;
    v11[4] = self;
    v12 = v6;
    [v12 loadImageForURLString:v9 reference:challenge queue:MEMORY[0x277D85CD0] handler:v11];
  }
}

void __66__GKDashboardChallengeDetailViewController_updateLeaderboardImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 challenge];
  v8 = [v7 isEqual:v6];

  if (v8)
  {
    v9 = v10;
    if (!v10)
    {
      v9 = [*(a1 + 40) defaultImage];
    }

    v10 = v9;
    [*(*(a1 + 32) + 1192) setImage:v9];
  }
}

- (void)play:(id)a3
{
  v4 = [(UIViewController *)self _gkExtensionViewController];
  [v4 finishAndPlayChallenge:self->_challenge];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidSelectPlay:self];
}

- (void)decline:(id)a3
{
  [(GKChallenge *)self->_challenge decline];
  v4 = [(UIViewController *)self _gkOriginatingViewController];
  [(UIViewController *)self _gkRemoveViewController:self animated:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setNeedsRefresh];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end