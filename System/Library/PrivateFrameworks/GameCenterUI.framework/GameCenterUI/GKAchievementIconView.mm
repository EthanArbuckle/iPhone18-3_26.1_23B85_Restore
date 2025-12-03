@interface GKAchievementIconView
+ (id)progressSource;
+ (id)progressSourceDetail;
- (GKAchievementIconView)initWithFrame:(CGRect)frame;
- (double)progressForAchievement:(id)achievement;
- (id)processProgressImage:(id)image forAchievement:(id)achievement;
- (id)progressIdentifierForAchievement:(id)achievement;
- (void)configureImage;
- (void)loadAndProcessAchievementProgressImageForAchievement:(id)achievement withHandler:(id)handler;
- (void)setupForAchievement:(id)achievement localAchievement:(id)localAchievement;
@end

@implementation GKAchievementIconView

+ (id)progressSource
{
  if (progressSource_onceToken != -1)
  {
    +[GKAchievementIconView progressSource];
  }

  v3 = progressSource_sResult;

  return v3;
}

uint64_t __39__GKAchievementIconView_progressSource__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D0C880]) initWithName:@"progressSource" imageBrush:0];
  v1 = progressSource_sResult;
  progressSource_sResult = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)progressSourceDetail
{
  if (progressSourceDetail_onceToken != -1)
  {
    +[GKAchievementIconView progressSourceDetail];
  }

  v3 = progressSourceDetail_sResult;

  return v3;
}

uint64_t __45__GKAchievementIconView_progressSourceDetail__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D0C880]) initWithName:@"progressSourceDetail" imageBrush:0];
  v1 = progressSourceDetail_sResult;
  progressSourceDetail_sResult = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (GKAchievementIconView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = GKAchievementIconView;
  return [(GKAchievementIconView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setupForAchievement:(id)achievement localAchievement:(id)localAchievement
{
  v11 = self->_achievement;
  v7 = self->_localAchievement;
  localAchievementCopy = localAchievement;
  achievementCopy = achievement;
  [(GKAchievementIconView *)self setAchievement:achievementCopy];
  [(GKAchievementIconView *)self setLocalAchievement:localAchievementCopy];

  if (v11 != achievementCopy || v7 != localAchievementCopy)
  {
    [(GKAchievementIconView *)self configureImage];
  }
}

- (double)progressForAchievement:(id)achievement
{
  achievementCopy = achievement;
  internal = [achievementCopy internal];
  isHidden = [internal isHidden];

  v6 = 0.0;
  if ((isHidden & 1) == 0)
  {
    [achievementCopy percentComplete];
    v6 = v7 / 100.0;
  }

  return v6;
}

- (id)processProgressImage:(id)image forAchievement:(id)achievement
{
  achievementCopy = achievement;
  imageCopy = image;
  [(GKAchievementIconView *)self progressForAchievement:achievementCopy];
  v9 = [imageCopy _gkImageWithProgress:achievementCopy achievement:-[GKAchievementIconView isDetail](self isDetail:{"isDetail"), v8}];

  return v9;
}

- (id)progressIdentifierForAchievement:(id)achievement
{
  achievementCopy = achievement;
  [(GKAchievementIconView *)self progressForAchievement:achievementCopy];
  v6 = v5;
  v7 = MEMORY[0x277CCACA8];
  identifier = [achievementCopy identifier];

  v9 = [v7 stringWithFormat:@"%@~%g", identifier, v6];

  return v9;
}

- (void)loadAndProcessAchievementProgressImageForAchievement:(id)achievement withHandler:(id)handler
{
  achievementCopy = achievement;
  handlerCopy = handler;
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  v9 = mEMORY[0x277D0C8C8];
  if (self->_isDetail)
  {
    [mEMORY[0x277D0C8C8] untreatedAchievementImageDetailSource];
  }

  else
  {
    [mEMORY[0x277D0C8C8] untreatedAchievementImageSource];
  }
  v10 = ;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__GKAchievementIconView_loadAndProcessAchievementProgressImageForAchievement_withHandler___block_invoke;
  aBlock[3] = &unk_27966D450;
  aBlock[4] = self;
  v24 = v9;
  v11 = v10;
  v25 = v11;
  v26 = handlerCopy;
  v12 = handlerCopy;
  v13 = v9;
  v14 = _Block_copy(aBlock);
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__GKAchievementIconView_loadAndProcessAchievementProgressImageForAchievement_withHandler___block_invoke_3;
  block[3] = &unk_27966B380;
  v20 = v11;
  v21 = achievementCopy;
  v22 = v14;
  v16 = v14;
  v17 = achievementCopy;
  v18 = v11;
  dispatch_async(v15, block);
}

void __90__GKAchievementIconView_loadAndProcessAchievementProgressImageForAchievement_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  if (v5)
  {
    v9 = [*(a1 + 32) processProgressImage:v5 forAchievement:v6];
    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) progressIdentifierForAchievement:v6];
    v12 = [v10 processAndCacheImage:v9 forIdentifier:v11];
  }

  else
  {
    v11 = [*(a1 + 40) achievementsDefaultIcon];
    v9 = [v8 processProgressImage:v11 forAchievement:v6];
  }

LABEL_6:
  if (*(a1 + 56))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__GKAchievementIconView_loadAndProcessAchievementProgressImageForAchievement_withHandler___block_invoke_2;
    block[3] = &unk_279669D60;
    v16 = *(a1 + 56);
    v14 = v9;
    v15 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_autoreleasePoolPop(v7);
}

void __90__GKAchievementIconView_loadAndProcessAchievementProgressImageForAchievement_withHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) imageURL];
  v4 = [v2 cachedImageForIdentifier:v3];

  if (v4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) imageURL];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __90__GKAchievementIconView_loadAndProcessAchievementProgressImageForAchievement_withHandler___block_invoke_4;
    v11[3] = &unk_27966D4A0;
    v12 = *(a1 + 40);
    v7 = *(a1 + 40);
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __90__GKAchievementIconView_loadAndProcessAchievementProgressImageForAchievement_withHandler___block_invoke_6;
    v9[3] = &unk_27966AB40;
    v10 = *(a1 + 48);
    [v5 loadImageForURLString:v6 loader:v11 reference:v7 queue:v8 handler:v9];
  }
}

void __90__GKAchievementIconView_loadAndProcessAchievementProgressImageForAchievement_withHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__GKAchievementIconView_loadAndProcessAchievementProgressImageForAchievement_withHandler___block_invoke_5;
  v6[3] = &unk_27966D478;
  v7 = v3;
  v5 = v3;
  [v4 loadImageWithCompletionHandler:v6];
}

- (void)configureImage
{
  p_localAchievement = &self->_localAchievement;
  internal = [(GKAchievement *)self->_localAchievement internal];
  if (([internal isHidden] & 1) == 0)
  {
    p_localAchievement = &self->_achievement;
  }

  v5 = *p_localAchievement;

  isDetail = self->_isDetail;
  v7 = objc_opt_class();
  if (isDetail)
  {
    [v7 progressSourceDetail];
  }

  else
  {
    [v7 progressSource];
  }
  v8 = ;
  v9 = [(GKAchievementIconView *)self progressIdentifierForAchievement:v5];
  v10 = [v8 cachedImageForIdentifier:v9];

  if (v10)
  {
    [(GKAchievementIconView *)self setImage:v10];
  }

  else
  {
    [(GKAchievementIconView *)self setImage:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__GKAchievementIconView_configureImage__block_invoke;
    v11[3] = &unk_27966D4C8;
    v12 = v5;
    selfCopy = self;
    [(GKAchievementIconView *)self loadAndProcessAchievementProgressImageForAchievement:v12 withHandler:v11];
  }
}

uint64_t __39__GKAchievementIconView_configureImage__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == a3)
  {
    v4 = result;
    [*(result + 40) setImage:a2];
    v5 = *(v4 + 40);

    return [v5 _gkSetNeedsRender];
  }

  return result;
}

@end