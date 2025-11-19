@interface GKAchievementDescription
@end

@implementation GKAchievementDescription

void __63__GKAchievementDescription_UI__loadImageWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) setImage:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    if (v5)
    {
      (*(v3 + 16))(v3, v5, 0);
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] userErrorForCode:3 userInfo:0];
      (*(v3 + 16))(v3, 0, v4);
    }
  }
}

void __71__GKAchievementDescription_UI__loadImageWithTimeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__GKAchievementDescription_UI__loadImageWithTimeout_completionHandler___block_invoke_2;
  block[3] = &unk_27966BEA0;
  v6 = *(a1 + 32);
  v4 = v6;
  v9 = v6;
  v8 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__71__GKAchievementDescription_UI__loadImageWithTimeout_completionHandler___block_invoke_2(void *result)
{
  v1 = *(result[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(result[5] + 16))(result[5], result[4]);
  }

  return result;
}

uint64_t __71__GKAchievementDescription_UI__loadImageWithTimeout_completionHandler___block_invoke_3(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __49__GKAchievementDescription_UIPrivate__showBanner__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 achievedDescription];

  if (v5)
  {
    v6 = [*(a1 + 32) achievedDescription];
    v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v14 = [v6 stringByTrimmingCharactersInSet:v7];
  }

  else
  {
    v14 = 0;
  }

  v8 = [*(a1 + 32) title];

  if (v8)
  {
    v9 = [*(a1 + 32) title];
    v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v9 stringByTrimmingCharactersInSet:v10];
  }

  v11 = MEMORY[0x277D0C138];
  v12 = [*(a1 + 32) internal];
  v13 = [v12 identifier];
  [v11 presentAchievementBannerInOverlayWithIdentifier:v13 title:v8 message:v14 image:v4];
}

@end