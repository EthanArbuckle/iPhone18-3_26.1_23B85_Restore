@interface GKAchievement(GKChallenge)
- (id)challengeComposeControllerWithMessage:()GKChallenge players:completion:;
- (id)challengeComposeControllerWithMessage:()GKChallenge players:completionHandler:;
- (uint64_t)challengeComposeControllerWithPlayers:()GKChallenge message:completionHandler:;
- (void)issueChallengeToPlayers:()GKChallenge message:;
- (void)selectChallengeablePlayerIDs:()GKChallenge withCompletionHandler:;
- (void)selectChallengeablePlayers:()GKChallenge withCompletionHandler:;
@end

@implementation GKAchievement(GKChallenge)

- (id)challengeComposeControllerWithMessage:()GKChallenge players:completionHandler:
{
  v8 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__GKAchievement_GKChallenge__challengeComposeControllerWithMessage_players_completionHandler___block_invoke;
  v12[3] = &unk_27966D7E0;
  v13 = v8;
  v9 = v8;
  v10 = [a1 challengeComposeControllerWithMessage:a3 players:a4 completion:v12];

  return v10;
}

- (id)challengeComposeControllerWithMessage:()GKChallenge players:completion:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D0C048] currentGame];
  v12 = [v11 internal];
  v13 = [v12 supportsChallenges];

  if (v13)
  {
    v14 = MEMORY[0x277D0BFF0];
    v15 = [a1 game];
    v16 = [MEMORY[0x277D0C138] localPlayer];
    v17 = [v14 challengeForGame:v15 andPlayer:v16 withAchievement:a1];

    v18 = [GKHostedChallengeIssueController hostedIssueControllerWithChallenge:v17 players:v9 defaultMessage:v8 completionHandler:v10];
  }

  else
  {
    v19 = MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v20 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [GKScore(GKChallenge) challengeComposeControllerWithMessage:players:completionHandler:];
    }

    if (!*v19)
    {
      v21 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
    {
      [GKScore(GKChallenge) challengeComposeControllerWithMessage:players:completionHandler:];
    }

    v18 = [MEMORY[0x277D0BFF0] challengesNotSupportedAlertController];
    if (v10)
    {
      (*(v10 + 2))(v10, v18, 0, 0);
    }
  }

  return v18;
}

- (uint64_t)challengeComposeControllerWithPlayers:()GKChallenge message:completionHandler:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!*MEMORY[0x277D0C2A0])
  {
    v10 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
  {
    [GKAchievement(GKChallenge) challengeComposeControllerWithPlayers:message:completionHandler:];
  }

  return 0;
}

- (void)issueChallengeToPlayers:()GKChallenge message:
{
  v5 = a3;
  v6 = a4;
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
  {
    [GKAchievement(GKChallenge) issueChallengeToPlayers:message:];
  }
}

- (void)selectChallengeablePlayerIDs:()GKChallenge withCompletionHandler:
{
  v5 = a3;
  v6 = a4;
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
  {
    [GKAchievement(GKChallenge) selectChallengeablePlayerIDs:withCompletionHandler:];
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v6)
  {
LABEL_5:
    v8 = [MEMORY[0x277CCA9B8] userErrorForCode:34 underlyingError:0];
    v6[2](v6, 0, v8);
  }

LABEL_6:
}

- (void)selectChallengeablePlayers:()GKChallenge withCompletionHandler:
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [GKAchievement(GKChallenge) selectChallengeablePlayers:a2 withCompletionHandler:a1];
  }

  v9 = dispatch_group_create();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__13;
  v31 = __Block_byref_object_dispose__13;
  v32 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__13;
  v25[4] = __Block_byref_object_dispose__13;
  v26 = 0;
  if ([a1 isReplayable])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v7];
    v11 = v28[5];
    v28[5] = v10;
  }

  else
  {
    dispatch_group_enter(v9);
    v12 = MEMORY[0x277D0BFB0];
    v13 = [a1 identifier];
    v14 = [a1 game];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __79__GKAchievement_GKChallenge__selectChallengeablePlayers_withCompletionHandler___block_invoke;
    v20[3] = &unk_27966D808;
    v23 = v25;
    v21 = v7;
    v24 = &v27;
    v22 = v9;
    [v12 loadAchievementWithID:v13 forGame:v14 players:v21 complete:v20];

    v11 = v21;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__GKAchievement_GKChallenge__selectChallengeablePlayers_withCompletionHandler___block_invoke_2;
  block[3] = &unk_27966A170;
  v17 = v8;
  v18 = v25;
  v19 = &v27;
  v15 = v8;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);
}

- (void)challengeComposeControllerWithPlayers:()GKChallenge message:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)issueChallengeToPlayers:()GKChallenge message:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)selectChallengeablePlayerIDs:()GKChallenge withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)selectChallengeablePlayers:()GKChallenge withCompletionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKChallenge+UI.m" lineNumber:462 description:{@"Invalid parameter not satisfying: %@", @"players"}];
}

@end