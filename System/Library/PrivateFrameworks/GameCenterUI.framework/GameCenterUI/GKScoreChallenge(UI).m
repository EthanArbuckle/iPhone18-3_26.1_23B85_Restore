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
  v2 = [a1 leaderboard];
  v3 = [v2 localizedTitle];
  v4 = MEMORY[0x277CCACA8];
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  v7 = [a1 score];
  v8 = [v7 formattedValue];
  v9 = [v4 stringWithFormat:v6, v8, v3];

  return v9;
}

- (id)listTitleText
{
  v1 = [a1 internal];
  v2 = [v1 leaderboard];
  v3 = [v2 title];

  return v3;
}

- (id)listGoalText
{
  v2 = [a1 score];
  v3 = [v2 formattedValue];

  if (v3 && ([a1 leaderboard], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "title"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    v9 = [a1 issuingPlayer];
    v10 = [v9 displayNameWithOptions:0];
    v11 = [v6 stringWithFormat:v8, v3, v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)composeGoalText
{
  v2 = [a1 score];
  v3 = [v2 formattedValue];

  v4 = [a1 internal];
  v5 = [v4 leaderboard];
  v6 = [v5 title];

  v7 = 0;
  if (v3 && v6)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v7 = [v8 stringWithFormat:v10, v3, v6];
  }

  return v7;
}

- (id)iconSource
{
  v0 = [MEMORY[0x277D0C8C8] sharedTheme];
  v1 = [v0 iconLeaderboardListSource];

  return v1;
}

- (id)smallIconURLString
{
  v1 = [a1 leaderboard];
  v2 = [v1 miniImageURL];

  return v2;
}

- (id)iconURLString
{
  v1 = [a1 leaderboard];
  v2 = [v1 imageURL];

  return v2;
}

@end