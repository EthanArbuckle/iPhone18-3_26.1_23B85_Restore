@interface GKAchievementDescription(UIPrivate)
- (id)imageURL;
- (uint64_t)showBanner;
@end

@implementation GKAchievementDescription(UIPrivate)

- (id)imageURL
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    if (*MEMORY[0x277D0C8F0] & 1 | ((*MEMORY[0x277D0C258] & 1) == 0))
    {
      v4 = 128;
    }

    else
    {
      v4 = 64;
    }
  }

  else
  {
    v4 = 64;
  }

  internal = [self internal];
  icons = [internal icons];
  mEMORY[0x277D0C8A8] = [MEMORY[0x277D0C8A8] sharedController];
  [mEMORY[0x277D0C8A8] greatestScreenScale];
  v8 = [icons _gkImageURLForSize:v4 scale:?];

  return v8;
}

- (uint64_t)showBanner
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__GKAchievementDescription_UIPrivate__showBanner__block_invoke;
  v2[3] = &unk_27966BF18;
  v2[4] = self;
  return [self loadImageWithTimeout:v2 completionHandler:3.0];
}

@end