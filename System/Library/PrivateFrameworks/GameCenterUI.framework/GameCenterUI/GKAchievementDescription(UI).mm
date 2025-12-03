@interface GKAchievementDescription(UI)
+ (id)incompleteAchievementImage;
+ (id)placeholderCompletedAchievementImage;
- (void)loadImageWithCompletionHandler:()UI;
- (void)loadImageWithTimeout:()UI completionHandler:;
@end

@implementation GKAchievementDescription(UI)

- (void)loadImageWithCompletionHandler:()UI
{
  v4 = a3;
  imageNameForIcon = [self imageNameForIcon];
  if (imageNameForIcon)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = MEMORY[0x277CCA8D8];
    game = [self game];
    gameDescriptor = [game gameDescriptor];
    bundleIdentifier = [gameDescriptor bundleIdentifier];
    v11 = [v7 bundleWithIdentifier:bundleIdentifier];
    v12 = [v6 imageNamed:imageNameForIcon inBundle:v11 compatibleWithTraitCollection:0];

    if (v12)
    {
      v4[2](v4, v12, 0);
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
      (v4)[2](v4, 0, v18);
    }

LABEL_12:

    goto LABEL_13;
  }

  imageURL = [self imageURL];

  if (imageURL)
  {
    v14 = MEMORY[0x277D755B8];
    v15 = MEMORY[0x277CBEBC0];
    imageURL2 = [self imageURL];
    v17 = [v15 URLWithString:imageURL2];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__GKAchievementDescription_UI__loadImageWithCompletionHandler___block_invoke;
    v19[3] = &unk_27966B008;
    v19[4] = self;
    v20 = v4;
    [v14 _gkloadRemoteImageForURL:v17 queue:MEMORY[0x277D85CD0] withCompletionHandler:v19];
  }

  else if (v4)
  {
    if (GKApplicationLinkedOnOrAfter())
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0BA78] code:1 userInfo:0];
    }

    else
    {
      v12 = 0;
    }

    (v4)[2](v4, 0, v12);
    goto LABEL_12;
  }

LABEL_13:
}

- (void)loadImageWithTimeout:()UI completionHandler:
{
  v6 = a4;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__GKAchievementDescription_UI__loadImageWithTimeout_completionHandler___block_invoke;
  v13[3] = &unk_27966BEC8;
  v15 = v16;
  v7 = v6;
  v14 = v7;
  [self loadImageWithCompletionHandler:v13];
  v8 = dispatch_time(0, (a2 * 1000000000.0));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__GKAchievementDescription_UI__loadImageWithTimeout_completionHandler___block_invoke_3;
  v10[3] = &unk_27966BEF0;
  v11 = v7;
  v12 = v16;
  v9 = v7;
  dispatch_after(v8, MEMORY[0x277D85CD0], v10);

  _Block_object_dispose(v16, 8);
}

+ (id)incompleteAchievementImage
{
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  achievementsNotStartedIcon = [mEMORY[0x277D0C8C8] achievementsNotStartedIcon];

  return achievementsNotStartedIcon;
}

+ (id)placeholderCompletedAchievementImage
{
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  achievementsDefaultIcon = [mEMORY[0x277D0C8C8] achievementsDefaultIcon];

  return achievementsDefaultIcon;
}

@end