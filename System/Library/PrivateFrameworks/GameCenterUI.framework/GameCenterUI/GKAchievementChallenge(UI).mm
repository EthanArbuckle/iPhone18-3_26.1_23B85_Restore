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
  achievement = [self achievement];
  title = [achievement title];

  return title;
}

- (id)listTitleText
{
  achievement = [self achievement];
  title = [achievement title];

  return title;
}

- (id)listGoalText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  issuingPlayer = [self issuingPlayer];
  v6 = [issuingPlayer displayNameWithOptions:0];
  v7 = [v2 stringWithFormat:v4, v6];

  return v7;
}

- (id)composeGoalText
{
  achievement = [self achievement];
  unachievedDescription = [achievement unachievedDescription];
  if (!unachievedDescription)
  {
    unachievedDescription = [achievement title];
  }

  return unachievedDescription;
}

- (id)iconSource
{
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  untreatedAchievementImageSource = [mEMORY[0x277D0C8C8] untreatedAchievementImageSource];

  return untreatedAchievementImageSource;
}

- (id)iconURLString
{
  achievement = [self achievement];
  imageURL = [achievement imageURL];

  return imageURL;
}

- (id)smallIconURLString
{
  achievement = [self achievement];
  imageURL = [achievement imageURL];

  return imageURL;
}

@end