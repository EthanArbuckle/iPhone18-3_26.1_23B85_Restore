@interface GKDashboardChallengeDetailViewController
- (GKDashboardChallengeDetailViewController)initWithChallenge:(id)challenge;
- (id)delegate;
- (id)preferredFocusEnvironments;
- (void)configureForChallenge;
- (void)decline:(id)decline;
- (void)play:(id)play;
- (void)updateLeaderboardImage;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation GKDashboardChallengeDetailViewController

- (GKDashboardChallengeDetailViewController)initWithChallenge:(id)challenge
{
  challengeCopy = challenge;
  _gkPlatformNibName = [objc_opt_class() _gkPlatformNibName];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9.receiver = self;
  v9.super_class = GKDashboardChallengeDetailViewController;
  v7 = [(GKDashboardCollectionViewController *)&v9 initWithNibName:_gkPlatformNibName bundle:v6];

  if (v7)
  {
    [(GKDashboardChallengeDetailViewController *)v7 setChallenge:challengeCopy];
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = GKDashboardChallengeDetailViewController;
  [(GKDetailViewController *)&v4 viewDidLoad];
  reporter = [MEMORY[0x277D0C1F8] reporter];
  [reporter reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA08]];

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
  view = [(GKDashboardChallengeDetailViewController *)self view];
  [view safeAreaInsets];
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
  detailFromText = [(GKChallenge *)self->_challenge detailFromText];
  v4 = [detailFromText stringByReplacingOccurrencesOfString:@"<friend>" withString:&stru_28612D290];

  v19 = [v4 stringByReplacingOccurrencesOfString:@"</friend>" withString:&stru_28612D290];

  [(UILabel *)self->_fromLabel setText:v19];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  challenge = self->_challenge;
  if (isKindOfClass)
  {
    achievement = [(GKChallenge *)challenge achievement];
    title = [achievement title];
    [(UILabel *)self->_titleLabel setText:title];

    unachievedDescription = [achievement unachievedDescription];
    [(UILabel *)self->_descriptionLabel setText:unachievedDescription];

    [(GKAchievementIconView *)self->_iconView setupForAchievement:achievement localAchievement:achievement];
  }

  else
  {
    v10 = challenge;
    leaderboard = [(GKChallenge *)v10 leaderboard];
    title2 = [leaderboard title];
    [(UILabel *)self->_titleLabel setText:title2];

    v13 = MEMORY[0x277CCACA8];
    v14 = GKGameCenterUIFrameworkBundle();
    v15 = GKGetLocalizedStringFromTableInBundle();
    score = [(GKChallenge *)v10 score];
    formattedValue = [score formattedValue];
    v18 = [v13 stringWithFormat:v15, formattedValue];
    [(UILabel *)self->_descriptionLabel setText:v18];

    [(GKDashboardChallengeDetailViewController *)self updateLeaderboardImage];
  }

  [(UIButton *)self->_playButton setHidden:!self->_shouldShowPlay];
}

- (void)updateLeaderboardImage
{
  v3 = self->_challenge;
  leaderboard = [(GKChallenge *)v3 leaderboard];
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  iconLeaderboardListSource = [mEMORY[0x277D0C8C8] iconLeaderboardListSource];

  identifier = [leaderboard identifier];
  v8 = [iconLeaderboardListSource cachedImageForIdentifier:identifier];

  [(GKAchievementIconView *)self->_iconView setImage:v8];
  if (!v8)
  {
    imageURL = [leaderboard imageURL];
    challenge = self->_challenge;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__GKDashboardChallengeDetailViewController_updateLeaderboardImage__block_invoke;
    v11[3] = &unk_27966AC10;
    v11[4] = self;
    v12 = iconLeaderboardListSource;
    [v12 loadImageForURLString:imageURL reference:challenge queue:MEMORY[0x277D85CD0] handler:v11];
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

- (void)play:(id)play
{
  _gkExtensionViewController = [(UIViewController *)self _gkExtensionViewController];
  [_gkExtensionViewController finishAndPlayChallenge:self->_challenge];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidSelectPlay:self];
}

- (void)decline:(id)decline
{
  [(GKChallenge *)self->_challenge decline];
  _gkOriginatingViewController = [(UIViewController *)self _gkOriginatingViewController];
  [(UIViewController *)self _gkRemoveViewController:self animated:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [_gkOriginatingViewController setNeedsRefresh];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end