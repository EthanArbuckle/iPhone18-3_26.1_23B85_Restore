@interface GKLeaderboard
@end

@implementation GKLeaderboard

void __52__GKLeaderboard_UI__loadImageWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__GKLeaderboard_UI__loadImageWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_27966B008;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v4 _gkloadRemoteImageForURL:v5 queue:MEMORY[0x277D85CD0] withCompletionHandler:v7];
}

uint64_t __52__GKLeaderboard_UI__loadImageWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __52__GKLeaderboard_UI__loadImageWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) result];

    v3 = *(a1 + 40);
    if (v2)
    {
      v4 = [*(a1 + 32) result];
      (*(v3 + 16))(v3, v4, 0);
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] userErrorForCode:3 userInfo:0];
      (*(v3 + 16))(v3, 0, v4);
    }
  }
}

@end