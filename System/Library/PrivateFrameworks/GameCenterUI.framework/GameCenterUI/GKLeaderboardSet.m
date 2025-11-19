@interface GKLeaderboardSet
@end

@implementation GKLeaderboardSet

void __55__GKLeaderboardSet_UI__loadImageWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __55__GKLeaderboardSet_UI__loadImageWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v2 = *(v1 + 16);
      v3 = *(a1 + 32);

      v2(v3);
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] userErrorForCode:3 userInfo:0];
      (*(v1 + 16))(v1, 0, v4);
    }
  }
}

@end