@interface GKScore(GKChallenge)
+ (void)reportLeaderboardScores:()GKChallenge withEligibleChallenges:withCompletionHandler:;
- (id)challengeComposeControllerWithMessage:()GKChallenge players:completion:;
- (id)challengeComposeControllerWithMessage:()GKChallenge players:completionHandler:;
- (uint64_t)challengeComposeControllerWithPlayers:()GKChallenge message:completionHandler:;
- (void)issueChallengeToPlayers:()GKChallenge message:;
@end

@implementation GKScore(GKChallenge)

- (id)challengeComposeControllerWithMessage:()GKChallenge players:completionHandler:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  currentGame = [MEMORY[0x277D0C048] currentGame];
  internal = [currentGame internal];
  supportsChallenges = [internal supportsChallenges];

  if (supportsChallenges)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __88__GKScore_GKChallenge__challengeComposeControllerWithMessage_players_completionHandler___block_invoke;
    v19[3] = &unk_27966D7E0;
    v20 = v10;
    challengesNotSupportedAlertController = [self challengeComposeControllerWithMessage:v8 players:v9 completion:v19];
  }

  else
  {
    v15 = MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v16 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [GKScore(GKChallenge) challengeComposeControllerWithMessage:players:completionHandler:];
    }

    if (!*v15)
    {
      v17 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
    {
      [GKScore(GKChallenge) challengeComposeControllerWithMessage:players:completionHandler:];
    }

    challengesNotSupportedAlertController = [MEMORY[0x277D0BFF0] challengesNotSupportedAlertController];
    if (v10)
    {
      (*(v10 + 2))(v10, challengesNotSupportedAlertController, 0, 0);
    }
  }

  return challengesNotSupportedAlertController;
}

- (id)challengeComposeControllerWithMessage:()GKChallenge players:completion:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  currentGame = [MEMORY[0x277D0C048] currentGame];
  internal = [currentGame internal];
  supportsChallenges = [internal supportsChallenges];

  if (supportsChallenges)
  {
    v14 = MEMORY[0x277D0BFF0];
    game = [self game];
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
    v17 = [v14 challengeForGame:game andPlayer:localPlayer withScore:self];

    challengesNotSupportedAlertController = [GKHostedChallengeIssueController hostedIssueControllerWithChallenge:v17 players:v9 defaultMessage:v8 completionHandler:v10];
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

    challengesNotSupportedAlertController = [MEMORY[0x277D0BFF0] challengesNotSupportedAlertController];
    if (v10)
    {
      (*(v10 + 2))(v10, challengesNotSupportedAlertController, 0, 0);
    }
  }

  return challengesNotSupportedAlertController;
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
    [GKScore(GKChallenge) challengeComposeControllerWithPlayers:message:completionHandler:];
  }

  return 0;
}

+ (void)reportLeaderboardScores:()GKChallenge withEligibleChallenges:withCompletionHandler:
{
  v7 = MEMORY[0x277D0C120];
  v8 = a5;
  v9 = a4;
  v10 = [v7 convertToGKScore:a3];
  [objc_opt_class() reportScores:v10 withEligibleChallenges:v9 withCompletionHandler:v8];
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
    [GKScore(GKChallenge) issueChallengeToPlayers:message:];
  }
}

- (void)challengeComposeControllerWithMessage:()GKChallenge players:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)challengeComposeControllerWithMessage:()GKChallenge players:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
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

@end