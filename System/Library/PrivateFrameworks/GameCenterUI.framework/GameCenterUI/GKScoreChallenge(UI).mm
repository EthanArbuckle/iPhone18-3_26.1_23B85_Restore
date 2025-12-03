@interface GKScoreChallenge(UI)
- (id)alertGoalText;
- (id)composeGoalText;
- (id)iconSource;
- (id)iconURLString;
- (id)listGoalText;
- (id)listTitleText;
- (id)smallIconURLString;
@end

@implementation GKScoreChallenge(UI)

- (id)alertGoalText
{
  leaderboard = [self leaderboard];
  localizedTitle = [leaderboard localizedTitle];
  v4 = MEMORY[0x277CCACA8];
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  score = [self score];
  formattedValue = [score formattedValue];
  v9 = [v4 stringWithFormat:v6, formattedValue, localizedTitle];

  return v9;
}

- (id)listTitleText
{
  internal = [self internal];
  leaderboard = [internal leaderboard];
  title = [leaderboard title];

  return title;
}

- (id)listGoalText
{
  score = [self score];
  formattedValue = [score formattedValue];

  if (formattedValue && ([self leaderboard], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "title"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    issuingPlayer = [self issuingPlayer];
    v10 = [issuingPlayer displayNameWithOptions:0];
    v11 = [v6 stringWithFormat:v8, formattedValue, v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)composeGoalText
{
  score = [self score];
  formattedValue = [score formattedValue];

  internal = [self internal];
  leaderboard = [internal leaderboard];
  title = [leaderboard title];

  v7 = 0;
  if (formattedValue && title)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v7 = [v8 stringWithFormat:v10, formattedValue, title];
  }

  return v7;
}

- (id)iconSource
{
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  iconLeaderboardListSource = [mEMORY[0x277D0C8C8] iconLeaderboardListSource];

  return iconLeaderboardListSource;
}

- (id)smallIconURLString
{
  leaderboard = [self leaderboard];
  miniImageURL = [leaderboard miniImageURL];

  return miniImageURL;
}

- (id)iconURLString
{
  leaderboard = [self leaderboard];
  imageURL = [leaderboard imageURL];

  return imageURL;
}

@end