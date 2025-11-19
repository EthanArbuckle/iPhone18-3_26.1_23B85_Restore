@interface UIImage(GKDashboardUtils)
+ (void)_gkMessageGroupImageWithIdentifier:()GKDashboardUtils handler:;
@end

@implementation UIImage(GKDashboardUtils)

+ (void)_gkMessageGroupImageWithIdentifier:()GKDashboardUtils handler:
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D0C020];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDashboardUtils.m", 497, "+[UIImage(GKDashboardUtils) _gkMessageGroupImageWithIdentifier:handler:]"];
  v9 = [v7 dispatchGroupWithName:v8];

  v10 = [MEMORY[0x277D0C8C8] sharedTheme];
  v11 = [v10 groupImageSourceWithDimension:128];

  v12 = GKAvatarSubdirectoryNameForPlayerID();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__UIImage_GKDashboardUtils___gkMessageGroupImageWithIdentifier_handler___block_invoke;
  v20[3] = &unk_27966D638;
  v13 = v11;
  v21 = v13;
  v14 = v12;
  v22 = v14;
  v15 = v9;
  v23 = v15;
  v16 = v5;
  v24 = v16;
  v25 = 128;
  [v15 perform:v20];
  if (v6)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__UIImage_GKDashboardUtils___gkMessageGroupImageWithIdentifier_handler___block_invoke_4;
    v17[3] = &unk_27966A480;
    v19 = v6;
    v18 = v15;
    [v18 notifyOnMainQueueWithBlock:v17];
  }
}

@end