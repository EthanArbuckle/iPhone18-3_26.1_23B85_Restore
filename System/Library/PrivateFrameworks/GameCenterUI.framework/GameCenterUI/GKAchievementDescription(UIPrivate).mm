@interface GKAchievementDescription(UIPrivate)
- (id)imageURL;
- (uint64_t)showBanner;
@end

@implementation GKAchievementDescription(UIPrivate)

- (id)imageURL
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
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

  v5 = [a1 internal];
  v6 = [v5 icons];
  v7 = [MEMORY[0x277D0C8A8] sharedController];
  [v7 greatestScreenScale];
  v8 = [v6 _gkImageURLForSize:v4 scale:?];

  return v8;
}

- (uint64_t)showBanner
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__GKAchievementDescription_UIPrivate__showBanner__block_invoke;
  v2[3] = &unk_27966BF18;
  v2[4] = a1;
  return [a1 loadImageWithTimeout:v2 completionHandler:3.0];
}

@end