@interface GKLeaderboardSet(UI)
- (id)imageURL;
- (id)miniImageURL;
- (void)loadImageWithCompletionHandler:()UI;
@end

@implementation GKLeaderboardSet(UI)

- (void)loadImageWithCompletionHandler:()UI
{
  v4 = a3;
  v5 = dispatch_group_create();
  v6 = [a1 imageURL];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__14;
  v18[4] = __Block_byref_object_dispose__14;
  v19 = 0;
  if (v6)
  {
    dispatch_group_enter(v5);
    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__GKLeaderboardSet_UI__loadImageWithCompletionHandler___block_invoke;
    v15[3] = &unk_27966DB98;
    v17 = v18;
    v16 = v5;
    [v7 _gkloadRemoteImageForURL:v8 queue:v9 withCompletionHandler:v15];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__GKLeaderboardSet_UI__loadImageWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_27966D7B8;
  v13 = v4;
  v14 = v18;
  v11 = v4;
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], v12);

  _Block_object_dispose(v18, 8);
}

- (id)imageURL
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  [v2 userInterfaceIdiom];

  v3 = [a1 internal];
  v4 = [v3 icons];
  v5 = [MEMORY[0x277D0C8A8] sharedController];
  [v5 greatestScreenScale];
  v6 = [v4 _gkImageURLForSize:335 scale:?];

  return v6;
}

- (id)miniImageURL
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  [v2 userInterfaceIdiom];

  v3 = [a1 internal];
  v4 = [v3 icons];
  v5 = [MEMORY[0x277D0C8A8] sharedController];
  [v5 greatestScreenScale];
  v6 = [v4 _gkImageURLForSize:335 scale:?];

  return v6;
}

@end