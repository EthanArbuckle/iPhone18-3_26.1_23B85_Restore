@interface GKPlayer(UI)
- (void)_loadPhotoForSize:()UI withCompletionHandler:;
- (void)loadPhotoForSize:()UI withCompletionHandler:;
@end

@implementation GKPlayer(UI)

- (void)loadPhotoForSize:()UI withCompletionHandler:
{
  v6 = a4;
  if (v6)
  {
    v7 = [a1 internal];
    v8 = [v7 photos];

    if (v8)
    {
      [a1 _loadPhotoForSize:a3 withCompletionHandler:v6];
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __55__GKPlayer_UI__loadPhotoForSize_withCompletionHandler___block_invoke;
      v9[3] = &unk_27966D740;
      v9[4] = a1;
      v11 = a3;
      v10 = v6;
      [a1 loadProfileWithCompletionHandler:v9];
    }
  }
}

- (void)_loadPhotoForSize:()UI withCompletionHandler:
{
  v6 = a4;
  if (v6)
  {
    v7 = MEMORY[0x277D0C020];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer+UI.m", 661, "-[GKPlayer(UI) _loadPhotoForSize:withCompletionHandler:]"];
    v9 = [v7 dispatchGroupWithName:v8];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__GKPlayer_UI___loadPhotoForSize_withCompletionHandler___block_invoke;
    v15[3] = &unk_27966B2C0;
    v15[4] = a1;
    v17 = a3;
    v10 = v9;
    v16 = v10;
    [v10 perform:v15];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__GKPlayer_UI___loadPhotoForSize_withCompletionHandler___block_invoke_4;
    v12[3] = &unk_27966A958;
    v13 = v10;
    v14 = v6;
    v11 = v10;
    [v11 notifyOnMainQueueWithBlock:v12];
  }
}

@end