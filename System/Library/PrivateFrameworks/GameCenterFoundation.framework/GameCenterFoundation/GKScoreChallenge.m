@interface GKScoreChallenge
+ (BOOL)instancesRespondToSelector:(SEL)a3;
- (BOOL)detailsLoaded;
- (GKLeaderboard)leaderboard;
- (GKLeaderboardEntry)leaderboardEntry;
- (GKScoreChallenge)initWithInternalRepresentation:(id)a3;
- (id)description;
- (id)detailGoalTextForPlayer:(id)a3 withLeaderboard:(id)a4;
- (id)titleText;
- (void)loadDetailsWithCompletionHandler:(id)a3;
- (void)setInternal:(id)a3;
@end

@implementation GKScoreChallenge

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = [(GKScoreChallenge *)self challengeID];
  v17 = [(GKScoreChallenge *)self score];
  v13 = [v17 formattedValue];
  v3 = [(GKScoreChallenge *)self issueDate];
  v16 = [(GKChallenge *)self issuingPlayer];
  v4 = [v16 internal];
  v5 = [v4 conciseDescription];
  v6 = [(GKChallenge *)self receivingPlayer];
  v7 = [v6 internal];
  v8 = [v7 conciseDescription];
  v9 = [GKChallenge stringForState:[(GKScoreChallenge *)self state]];
  v10 = [(GKScoreChallenge *)self completionDate];
  v11 = [v15 stringWithFormat:@"%p GKScoreChallenge %@ score:%@ issueDate: %@ issuingPlayer: %@ receivingPlayer: %@ state: %@ completedDate: %@", self, v14, v13, v3, v5, v8, v9, v10];

  return v11;
}

- (GKScoreChallenge)initWithInternalRepresentation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKScoreChallenge;
  v5 = [(GKScoreChallenge *)&v8 init];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_8;
    }

    if (!v4)
    {
      v4 = +[GKScoreChallengeInternal internalRepresentation];
    }

    [(GKScoreChallenge *)v5 setInternal:v4];
  }

  v6 = v5;
LABEL_8:

  return v6;
}

- (void)setInternal:(id)a3
{
  v4 = a3;
  v5 = [(GKChallenge *)self internal];
  v12.receiver = self;
  v12.super_class = GKScoreChallenge;
  [(GKChallenge *)&v12 setInternal:v4];
  if (v5 != v4)
  {
    v6 = [v4 score];

    if (v6)
    {
      v7 = [GKScore alloc];
      v8 = [v4 score];
      v6 = [(GKScore *)v7 initWithInternalRepresentation:v8];

      v9 = [GKGame alloc];
      v10 = [v4 game];
      v11 = [(GKGame *)v9 initWithInternalRepresentation:v10];
      [(GKScore *)v6 setGame:v11];
    }

    [(GKScoreChallenge *)self setScore:v6];
  }
}

- (GKLeaderboard)leaderboard
{
  v3 = [GKLeaderboard alloc];
  v4 = [(GKChallenge *)self internal];
  v5 = [v4 leaderboard];
  v6 = [(GKLeaderboard *)v3 initWithInternalRepresentation:v5];

  return v6;
}

- (GKLeaderboardEntry)leaderboardEntry
{
  v3 = [(GKScoreChallenge *)self score];
  if (v3)
  {
    v4 = [(GKScoreChallenge *)self score];
    v5 = [GKLeaderboardEntry fromGKScore:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  if (a3)
  {
    if (class_respondsToSelector(a1, a3))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = GKApplicationLinkedOnOrAfter(393216, 0);
      if (v4)
      {

        LOBYTE(v4) = [GKScoreChallengeInternal instancesRespondToSelector:a3];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)titleText
{
  v2 = [(GKChallenge *)self internal];
  v3 = [v2 leaderboard];
  v4 = [v3 title];

  return v4;
}

- (BOOL)detailsLoaded
{
  v2 = [(GKChallenge *)self internal];
  v3 = [v2 leaderboard];
  v4 = v3 != 0;

  return v4;
}

- (void)loadDetailsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [GKDispatchGroup dispatchGroupWithName:@"ScoreChallengeDetails"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__GKScoreChallenge_loadDetailsWithCompletionHandler___block_invoke;
  v9[3] = &unk_2785DEC98;
  v9[4] = self;
  [v5 perform:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__GKScoreChallenge_loadDetailsWithCompletionHandler___block_invoke_4;
  v7[3] = &unk_2785DD710;
  v8 = v4;
  v6 = v4;
  [v5 notifyOnMainQueueWithBlock:v7];
}

void __53__GKScoreChallenge_loadDetailsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) score];
  v5 = [v4 leaderboardIdentifier];
  v6 = [*(a1 + 32) score];
  v7 = [v6 game];
  v8 = +[GKLocalPlayer localPlayer];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__GKScoreChallenge_loadDetailsWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_2785E0B50;
  v10[4] = *(a1 + 32);
  v11 = v3;
  v9 = v3;
  [GKLeaderboard loadLeaderboardWithIdentifier:v5 forGame:v7 withPlayer:v8 withCompletionHandler:v10];
}

void __53__GKScoreChallenge_loadDetailsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) internal];
  if (v3)
  {
    v5 = [v3 internal];
    [v4 setLeaderboard:v5];
  }

  v6 = [*(*(a1 + 32) + 16) formattedValue];

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = +[GKDaemonProxy proxyForLocalPlayer];
    v8 = [v7 gameStatServicePrivate];
    v9 = [*(*(a1 + 32) + 16) internal];
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v11 = [*(a1 + 32) game];
    v12 = [v11 gameDescriptor];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__GKScoreChallenge_loadDetailsWithCompletionHandler___block_invoke_3;
    v15[3] = &unk_2785DDC38;
    v13 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v13;
    [v8 getHypotheticalLeaderboardRanksForScores:v10 forGameDescriptor:v12 handler:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __53__GKScoreChallenge_loadDetailsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = [v5 lastObject];
    v4 = [v3 objectForKey:@"formatted-score-value"];
    [*(*(a1 + 32) + 16) setFormattedValue:v4];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __53__GKScoreChallenge_loadDetailsWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)detailGoalTextForPlayer:(id)a3 withLeaderboard:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_DETAIL_SCORE_GOAL_FORMAT];
  v10 = [v8 displayNameWithOptions:0];

  v11 = [(GKScoreChallenge *)self score];
  v12 = [v11 formattedValue];
  v13 = [v7 localizedTitle];

  v14 = [v6 stringWithFormat:v9, v10, v12, v13];

  return v14;
}

@end