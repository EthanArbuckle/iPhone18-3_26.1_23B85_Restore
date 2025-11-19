@interface GKAchievement
@end

@implementation GKAchievement

void __94__GKAchievement_GKChallenge__challengeComposeControllerWithMessage_players_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v7 = [a4 _gkPlayersIDsFromPlayers];
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, a3, v7);
  }
}

void __79__GKAchievement_GKChallenge__selectChallengeablePlayers_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (v5 && !v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:*(a1 + 32)];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ([v13 isCompleted])
          {
            v14 = [v13 player];
            [v7 removeObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v15 = [v7 array];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __79__GKAchievement_GKChallenge__selectChallengeablePlayers_withCompletionHandler___block_invoke_2(void *a1)
{
  v1 = a1[4];
  if (!v1)
  {
    return;
  }

  v3 = *(*(a1[5] + 8) + 40);
  if (v3)
  {
    v4 = *(v1 + 16);
    v5 = a1[4];
    v6 = 0;
LABEL_7:

    v4(v5, v6, v3);
    return;
  }

  v6 = *(*(a1[6] + 8) + 40);
  if (v6)
  {
    v4 = *(v1 + 16);
    v5 = a1[4];
    v3 = 0;
    goto LABEL_7;
  }

  v7 = [MEMORY[0x277CBEA60] array];
  (*(v1 + 16))(v1, v7, *(*(a1[5] + 8) + 40));
}

@end