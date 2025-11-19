@interface GKScore
@end

@implementation GKScore

void __88__GKScore_GKChallenge__challengeComposeControllerWithMessage_players_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v7 = [a4 _gkPlayersIDsFromPlayers];
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, a3, v7);
  }
}

@end