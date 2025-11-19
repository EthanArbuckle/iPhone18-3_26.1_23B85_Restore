@interface GKAchievementChallenge(UI)
- (id)alertGoalText;
- (id)composeGoalText;
- (id)iconSource;
- (id)iconURLString;
- (id)listGoalText;
- (id)listTitleText;
- (id)smallIconURLString;
@end

@implementation GKAchievementChallenge(UI)

- (id)alertGoalText
{
  v1 = [a1 achievement];
  v2 = [v1 title];

  return v2;
}

- (id)listTitleText
{
  v1 = [a1 achievement];
  v2 = [v1 title];

  return v2;
}

- (id)listGoalText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = [a1 issuingPlayer];
  v6 = [v5 displayNameWithOptions:0];
  v7 = [v2 stringWithFormat:v4, v6];

  return v7;
}

- (id)composeGoalText
{
  v1 = [a1 achievement];
  v2 = [v1 unachievedDescription];
  if (!v2)
  {
    v2 = [v1 title];
  }

  return v2;
}

- (id)iconSource
{
  v0 = [MEMORY[0x277D0C8C8] sharedTheme];
  v1 = [v0 untreatedAchievementImageSource];

  return v1;
}

- (id)iconURLString
{
  v1 = [a1 achievement];
  v2 = [v1 imageURL];

  return v2;
}

- (id)smallIconURLString
{
  v1 = [a1 achievement];
  v2 = [v1 imageURL];

  return v2;
}

@end