@interface GKDashboardLeaderboardDetailViewController
- (GKDashboardLeaderboardDetailViewController)initWithScore:(id)a3 leaderboard:(id)a4;
- (id)preferredFocusEnvironments;
- (void)challenge:(id)a3;
- (void)configureForScore;
- (void)report:(id)a3;
- (void)share:(id)a3;
- (void)viewDidLoad;
@end

@implementation GKDashboardLeaderboardDetailViewController

- (GKDashboardLeaderboardDetailViewController)initWithScore:(id)a3 leaderboard:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _gkPlatformNibName];
  v9 = [v6 player];
  if (([v9 isLocalPlayer] & 1) == 0 && (objc_msgSend(v9, "isFamiliarFriend") & 1) == 0)
  {
    v10 = [v8 stringByAppendingString:@"NoBubbles"];

    v8 = v10;
  }

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14.receiver = self;
  v14.super_class = GKDashboardLeaderboardDetailViewController;
  v12 = [(GKDashboardCollectionViewController *)&v14 initWithNibName:v8 bundle:v11];

  if (v12)
  {
    [(GKDashboardLeaderboardDetailViewController *)v12 setScore:v6];
    [(GKDashboardLeaderboardDetailViewController *)v12 setLeaderboard:v7];
  }

  return v12;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = GKDashboardLeaderboardDetailViewController;
  [(GKDetailViewController *)&v19 viewDidLoad];
  v3 = [(GKScore *)self->_score player];
  v4 = [v3 isLocalPlayer];

  if (v4)
  {
    v5 = [MEMORY[0x277D0C1F8] reporter];
    v6 = *MEMORY[0x277D0BE28];
    [v5 reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA20]];
    v7 = MEMORY[0x277D0BA38];
  }

  else
  {
    v8 = [(GKScore *)self->_score player];
    v9 = [v8 isFamiliarFriend];

    v10 = [MEMORY[0x277D0C1F8] reporter];
    v5 = v10;
    v6 = *MEMORY[0x277D0BE28];
    if (v9)
    {
      [v10 reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA10]];
      v7 = MEMORY[0x277D0BA30];
    }

    else
    {
      [v10 reportEvent:*MEMORY[0x277D0BE28] type:*MEMORY[0x277D0BA28]];
      v7 = MEMORY[0x277D0BA40];
    }
  }

  v11 = [MEMORY[0x277D0C1F8] reporter];
  v12 = *v7;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKScore rank](self->_score, "rank")}];
  [v11 reportEvent:v6 type:v12 scoreRank:v13];

  [(UIViewController *)self _gkModifyTopConstraintToLayoutGuideForSubview:self->_playerView];
  if (!self->_reportProblemButton)
  {
    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();
    v17 = [v14 initWithTitle:v16 style:2 target:self action:sel_report_];
    v18 = [(GKDashboardLeaderboardDetailViewController *)self navigationItem];
    [v18 setRightBarButtonItem:v17];
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
  v3 = [(GKScore *)self->_score formattedValue];
  [(UILabel *)self->_descriptionLabel setText:v3];

  v4 = MEMORY[0x277CCACA8];
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  [(GKScore *)self->_score rank];
  v7 = GKFormattedStringFromInteger();
  v8 = [(GKScore *)self->_score date];
  [v8 timeIntervalSince1970];
  v9 = GKAbsoluteTimeAsWhenString();
  v10 = [v4 stringWithFormat:v6, v7, v9];
  [(UILabel *)self->_earnedOnLabel setText:v10];

  v33 = [MEMORY[0x277D0C138] localPlayer];
  v11 = [(GKScore *)self->_score player];
  [(GKDashboardPlayerPhotoView *)self->_playerView setPlayer:v11];
  v12 = [v11 displayNameWithOptions:0];
  [(UILabel *)self->_nameLabel setText:v12];

  p_firstButton = &self->_firstButton;
  [(UIButton *)self->_firstButton setHidden:1];
  [(UIButton *)self->_secondButton setHidden:1];
  [(UIButton *)self->_firstButton removeTarget:self action:0 forControlEvents:64];
  [(UIButton *)self->_secondButton removeTarget:self action:0 forControlEvents:64];
  v14 = [v33 isUnderage];
  [(UILabel *)self->_infoLabel setHidden:1];
  v15 = [v11 isLocalPlayer];
  if (v15)
  {
    if ([v33 numberOfFriends])
    {
      v16 = GKGameCenterUIFrameworkBundle();
      v17 = GKGetLocalizedStringFromTableInBundle();

      v18 = 0;
      if (v14)
      {
        v19 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v17 = 0;
      if (v14)
      {
        v19 = 0;
        v18 = 0;
        goto LABEL_24;
      }

      v18 = 0;
    }

    goto LABEL_15;
  }

  if (![v11 isFamiliarFriend])
  {
    v17 = 0;
    v18 = 0;
    v19 = 1;
    goto LABEL_24;
  }

  v20 = [(GKLeaderboard *)self->_leaderboard localPlayerScore];

  if (v20)
  {
    v21 = GKGameCenterUIFrameworkBundle();
    v17 = GKGetLocalizedStringFromTableInBundle();

    v18 = 0;
    if (v14)
    {
      v19 = 1;
      goto LABEL_19;
    }

LABEL_15:
    v19 = v15 ^ 1u;
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
  v24 = [(GKLeaderboard *)self->_leaderboard localizedTitle];
  v18 = [v22 stringWithFormat:v23, v24];

  v17 = 0;
  if ((v14 & 1) == 0)
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
    v30 = [(GKDashboardLeaderboardDetailViewController *)self navigationItem];
    v31 = [v30 rightBarButtonItem];
    [v31 setEnabled:v19];
  }
}

- (void)challenge:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D0C208];
  v5 = [(GKScore *)self->_score game];
  v6 = [MEMORY[0x277D0C138] localPlayer];
  v7 = [(GKLeaderboard *)self->_leaderboard localPlayerScore];
  v8 = [v4 challengeForGame:v5 andPlayer:v6 withScore:v7];

  v9 = [(GKLeaderboard *)self->_leaderboard internal];
  v10 = [v8 internal];
  [v10 setLeaderboard:v9];

  v11 = [(GKScore *)self->_score player];
  if (v11)
  {
    v12 = [(GKScore *)self->_score player];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = [[GKChallengePlayerPickerViewController alloc] initWithChallenge:v8 initiallySelectedPlayers:v13];
  v15 = [(UIViewController *)self _gkOriginatingViewController];
  [v15 _gkPushViewController:v14 replaceCurrent:0 animated:1];
}

- (void)share:(id)a3
{
  v15 = a3;
  v4 = [(GKScore *)self->_score player];
  v5 = [v4 isLocalPlayer];

  if (v5)
  {
    v6 = MEMORY[0x277D0BA50];
    v7 = MEMORY[0x277D0BA68];
  }

  else
  {
    v8 = [(GKScore *)self->_score player];
    v9 = [v8 isFamiliarFriend];

    if (!v9)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x277D0BA48];
    v7 = MEMORY[0x277D0BA60];
  }

  v10 = [MEMORY[0x277D0C1F8] reporter];
  v11 = *MEMORY[0x277D0BE28];
  [v10 reportEvent:*MEMORY[0x277D0BE28] type:*v7];

  v12 = [MEMORY[0x277D0C1F8] reporter];
  v13 = *v6;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKScore rank](self->_score, "rank")}];
  [v12 reportEvent:v11 type:v13 scoreRank:v14];

LABEL_6:
  [(GKDetailViewController *)self shareScore:self->_score fromLeaderboard:self->_leaderboard sendingView:v15];
}

- (void)report:(id)a3
{
  v4 = [(GKScore *)self->_score player];
  [(GKDetailViewController *)self reportProblemAboutPlayer:v4];
}

@end