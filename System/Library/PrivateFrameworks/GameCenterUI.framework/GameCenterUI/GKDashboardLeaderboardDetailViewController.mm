@interface GKDashboardLeaderboardDetailViewController
- (GKDashboardLeaderboardDetailViewController)initWithScore:(id)score leaderboard:(id)leaderboard;
- (id)preferredFocusEnvironments;
- (void)challenge:(id)challenge;
- (void)configureForScore;
- (void)report:(id)report;
- (void)share:(id)share;
- (void)viewDidLoad;
@end

@implementation GKDashboardLeaderboardDetailViewController

- (GKDashboardLeaderboardDetailViewController)initWithScore:(id)score leaderboard:(id)leaderboard
{
  scoreCopy = score;
  leaderboardCopy = leaderboard;
  _gkPlatformNibName = [objc_opt_class() _gkPlatformNibName];
  player = [scoreCopy player];
  if (([player isLocalPlayer] & 1) == 0 && (objc_msgSend(player, "isFamiliarFriend") & 1) == 0)
  {
    v10 = [_gkPlatformNibName stringByAppendingString:@"NoBubbles"];

    _gkPlatformNibName = v10;
  }

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14.receiver = self;
  v14.super_class = GKDashboardLeaderboardDetailViewController;
  v12 = [(GKDashboardCollectionViewController *)&v14 initWithNibName:_gkPlatformNibName bundle:v11];

  if (v12)
  {
    [(GKDashboardLeaderboardDetailViewController *)v12 setScore:scoreCopy];
    [(GKDashboardLeaderboardDetailViewController *)v12 setLeaderboard:leaderboardCopy];
  }

  return v12;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = GKDashboardLeaderboardDetailViewController;
  [(GKDetailViewController *)&v19 viewDidLoad];
  player = [(GKScore *)self->_score player];
  isLocalPlayer = [player isLocalPlayer];

  if (isLocalPlayer)
  {
    reporter = [MEMORY[0x277D0C1F8] reporter];
    v6 = *MEMORY[0x277D0BE28];
    [reporter reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA20]];
    v7 = MEMORY[0x277D0BA38];
  }

  else
  {
    player2 = [(GKScore *)self->_score player];
    isFamiliarFriend = [player2 isFamiliarFriend];

    reporter2 = [MEMORY[0x277D0C1F8] reporter];
    reporter = reporter2;
    v6 = *MEMORY[0x277D0BE28];
    if (isFamiliarFriend)
    {
      [reporter2 reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA10]];
      v7 = MEMORY[0x277D0BA30];
    }

    else
    {
      [reporter2 reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA28]];
      v7 = MEMORY[0x277D0BA40];
    }
  }

  reporter3 = [MEMORY[0x277D0C1F8] reporter];
  v12 = *v7;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKScore rank](self->_score, "rank")}];
  [reporter3 reportEvent:v6 type:v12 scoreRank:v13];

  [(UIViewController *)self _gkModifyTopConstraintToLayoutGuideForSubview:self->_playerView];
  if (!self->_reportProblemButton)
  {
    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();
    v17 = [v14 initWithTitle:v16 style:2 target:self action:sel_report_];
    navigationItem = [(GKDashboardLeaderboardDetailViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v17];
  }

  [(GKDashboardLeaderboardDetailViewController *)self configureForScore];
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_firstButton)
  {
    v4[0] = self->_firstButton;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (void)configureForScore
{
  formattedValue = [(GKScore *)self->_score formattedValue];
  [(UILabel *)self->_descriptionLabel setText:formattedValue];

  v4 = MEMORY[0x277CCACA8];
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  [(GKScore *)self->_score rank];
  v7 = GKFormattedStringFromInteger();
  date = [(GKScore *)self->_score date];
  [date timeIntervalSince1970];
  v9 = GKAbsoluteTimeAsWhenString();
  v10 = [v4 stringWithFormat:v6, v7, v9];
  [(UILabel *)self->_earnedOnLabel setText:v10];

  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  player = [(GKScore *)self->_score player];
  [(GKDashboardPlayerPhotoView *)self->_playerView setPlayer:player];
  v12 = [player displayNameWithOptions:0];
  [(UILabel *)self->_nameLabel setText:v12];

  p_firstButton = &self->_firstButton;
  [(UIButton *)self->_firstButton setHidden:1];
  [(UIButton *)self->_secondButton setHidden:1];
  [(UIButton *)self->_firstButton removeTarget:self action:0 forControlEvents:64];
  [(UIButton *)self->_secondButton removeTarget:self action:0 forControlEvents:64];
  isUnderage = [localPlayer isUnderage];
  [(UILabel *)self->_infoLabel setHidden:1];
  isLocalPlayer = [player isLocalPlayer];
  if (isLocalPlayer)
  {
    if ([localPlayer numberOfFriends])
    {
      v16 = GKGameCenterUIFrameworkBundle();
      v17 = GKGetLocalizedStringFromTableInBundle();

      v18 = 0;
      if (isUnderage)
      {
        v19 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v17 = 0;
      if (isUnderage)
      {
        v19 = 0;
        v18 = 0;
        goto LABEL_24;
      }

      v18 = 0;
    }

    goto LABEL_15;
  }

  if (![player isFamiliarFriend])
  {
    v17 = 0;
    v18 = 0;
    v19 = 1;
    goto LABEL_24;
  }

  localPlayerScore = [(GKLeaderboard *)self->_leaderboard localPlayerScore];

  if (localPlayerScore)
  {
    v21 = GKGameCenterUIFrameworkBundle();
    v17 = GKGetLocalizedStringFromTableInBundle();

    v18 = 0;
    if (isUnderage)
    {
      v19 = 1;
      goto LABEL_19;
    }

LABEL_15:
    v19 = isLocalPlayer ^ 1u;
    if (v17)
    {
      p_secondButton = &self->_secondButton;
    }

    else
    {
      p_secondButton = &self->_firstButton;
    }

    v26 = *p_secondButton;
    v27 = GKGameCenterUIFrameworkBundle();
    v28 = GKGetLocalizedStringFromTableInBundle();
    [(UIButton *)v26 setTitle:v28 forState:0];

    [(UIButton *)v26 addTarget:self action:sel_share_ forControlEvents:64];
    [(UIButton *)v26 setHidden:0];

LABEL_19:
    if (v17)
    {
      v29 = [v17 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

      [(UIButton *)*p_firstButton setTitle:v29 forState:0];
      [(UIButton *)*p_firstButton addTarget:self action:sel_challenge_ forControlEvents:64];
      [(UIButton *)*p_firstButton setHidden:0];
      v17 = v29;
    }

    goto LABEL_21;
  }

  v22 = MEMORY[0x277CCACA8];
  v32 = GKGameCenterUIFrameworkBundle();
  v23 = GKGetLocalizedStringFromTableInBundle();
  localizedTitle = [(GKLeaderboard *)self->_leaderboard localizedTitle];
  v18 = [v22 stringWithFormat:v23, localizedTitle];

  v17 = 0;
  if ((isUnderage & 1) == 0)
  {
    goto LABEL_15;
  }

  v19 = 1;
LABEL_21:
  if (v18 && !v17)
  {
    [(UILabel *)self->_infoLabel setText:v18];
    [(UILabel *)self->_infoLabel setHidden:0];
  }

LABEL_24:
  [(UIButton *)self->_reportProblemButton setEnabled:v19];
  if (!self->_reportProblemButton)
  {
    navigationItem = [(GKDashboardLeaderboardDetailViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:v19];
  }
}

- (void)challenge:(id)challenge
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D0C208];
  game = [(GKScore *)self->_score game];
  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  localPlayerScore = [(GKLeaderboard *)self->_leaderboard localPlayerScore];
  v8 = [v4 challengeForGame:game andPlayer:localPlayer withScore:localPlayerScore];

  internal = [(GKLeaderboard *)self->_leaderboard internal];
  internal2 = [v8 internal];
  [internal2 setLeaderboard:internal];

  player = [(GKScore *)self->_score player];
  if (player)
  {
    player2 = [(GKScore *)self->_score player];
    v16[0] = player2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = [[GKChallengePlayerPickerViewController alloc] initWithChallenge:v8 initiallySelectedPlayers:v13];
  _gkOriginatingViewController = [(UIViewController *)self _gkOriginatingViewController];
  [_gkOriginatingViewController _gkPushViewController:v14 replaceCurrent:0 animated:1];
}

- (void)share:(id)share
{
  shareCopy = share;
  player = [(GKScore *)self->_score player];
  isLocalPlayer = [player isLocalPlayer];

  if (isLocalPlayer)
  {
    v6 = MEMORY[0x277D0BA50];
    v7 = MEMORY[0x277D0BA68];
  }

  else
  {
    player2 = [(GKScore *)self->_score player];
    isFamiliarFriend = [player2 isFamiliarFriend];

    if (!isFamiliarFriend)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x277D0BA48];
    v7 = MEMORY[0x277D0BA60];
  }

  reporter = [MEMORY[0x277D0C1F8] reporter];
  v11 = *MEMORY[0x277D0BE28];
  [reporter reportEvent:*MEMORY[0x277D0BE28] type:*v7];

  reporter2 = [MEMORY[0x277D0C1F8] reporter];
  v13 = *v6;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKScore rank](self->_score, "rank")}];
  [reporter2 reportEvent:v11 type:v13 scoreRank:v14];

LABEL_6:
  [(GKDetailViewController *)self shareScore:self->_score fromLeaderboard:self->_leaderboard sendingView:shareCopy];
}

- (void)report:(id)report
{
  player = [(GKScore *)self->_score player];
  [(GKDetailViewController *)self reportProblemAboutPlayer:player];
}

@end