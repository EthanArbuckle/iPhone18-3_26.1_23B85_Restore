@interface GKLeaderboard(UI)
+ (id)localizedStringForLeaderboardOccurrence:()UI;
+ (id)localizedStringForTimeScope:()UI;
- (id)imageURL;
- (id)miniImageURL;
- (void)loadImageWithCompletionHandler:()UI;
@end

@implementation GKLeaderboard(UI)

- (void)loadImageWithCompletionHandler:()UI
{
  v4 = a3;
  v5 = MEMORY[0x277D0C020];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard+UI.m", 28, "-[GKLeaderboard(UI) loadImageWithCompletionHandler:]"];
  v7 = [v5 dispatchGroupWithName:v6];

  imageURL = [self imageURL];
  v9 = imageURL;
  if (imageURL)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__GKLeaderboard_UI__loadImageWithCompletionHandler___block_invoke;
    v13[3] = &unk_279669A20;
    v14 = imageURL;
    v15 = v7;
    [v15 perform:v13];
  }

  if (v4)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__GKLeaderboard_UI__loadImageWithCompletionHandler___block_invoke_3;
    v10[3] = &unk_27966A480;
    v12 = v4;
    v11 = v7;
    [v11 notifyOnMainQueueWithBlock:v10];
  }
}

- (id)imageURL
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice userInterfaceIdiom];

  internal = [self internal];
  icons = [internal icons];
  mEMORY[0x277D0C8A8] = [MEMORY[0x277D0C8A8] sharedController];
  [mEMORY[0x277D0C8A8] greatestScreenScale];
  v6 = [icons _gkImageURLForSize:187 scale:?];

  return v6;
}

- (id)miniImageURL
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice userInterfaceIdiom];

  internal = [self internal];
  icons = [internal icons];
  mEMORY[0x277D0C8A8] = [MEMORY[0x277D0C8A8] sharedController];
  [mEMORY[0x277D0C8A8] greatestScreenScale];
  v6 = [icons _gkImageURLForSize:187 scale:?];

  return v6;
}

+ (id)localizedStringForTimeScope:()UI
{
  v0 = GKGameCenterUIFrameworkBundle();
  v1 = GKGetLocalizedStringFromTableInBundle();

  return v1;
}

+ (id)localizedStringForLeaderboardOccurrence:()UI
{
  v0 = GKGameCenterUIFrameworkBundle();
  v1 = GKGetLocalizedStringFromTableInBundle();

  return v1;
}

@end