@interface GKScoreChallenge
+ (BOOL)instancesRespondToSelector:(SEL)selector;
- (BOOL)detailsLoaded;
- (GKLeaderboard)leaderboard;
- (GKLeaderboardEntry)leaderboardEntry;
- (GKScoreChallenge)initWithInternalRepresentation:(id)representation;
- (id)description;
- (id)detailGoalTextForPlayer:(id)player withLeaderboard:(id)leaderboard;
- (id)titleText;
- (void)loadDetailsWithCompletionHandler:(id)handler;
- (void)setInternal:(id)internal;
@end

@implementation GKScoreChallenge

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  challengeID = [(GKScoreChallenge *)self challengeID];
  score = [(GKScoreChallenge *)self score];
  formattedValue = [score formattedValue];
  issueDate = [(GKScoreChallenge *)self issueDate];
  issuingPlayer = [(GKChallenge *)self issuingPlayer];
  internal = [issuingPlayer internal];
  conciseDescription = [internal conciseDescription];
  receivingPlayer = [(GKChallenge *)self receivingPlayer];
  internal2 = [receivingPlayer internal];
  conciseDescription2 = [internal2 conciseDescription];
  v9 = [GKChallenge stringForState:[(GKScoreChallenge *)self state]];
  completionDate = [(GKScoreChallenge *)self completionDate];
  v11 = [v15 stringWithFormat:@"%p GKScoreChallenge %@ score:%@ issueDate: %@ issuingPlayer: %@ receivingPlayer: %@ state: %@ completedDate: %@", self, challengeID, formattedValue, issueDate, conciseDescription, conciseDescription2, v9, completionDate];

  return v11;
}

- (GKScoreChallenge)initWithInternalRepresentation:(id)representation
{
  representationCopy = representation;
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

    if (!representationCopy)
    {
      representationCopy = +[GKScoreChallengeInternal internalRepresentation];
    }

    [(GKScoreChallenge *)v5 setInternal:representationCopy];
  }

  v6 = v5;
LABEL_8:

  return v6;
}

- (void)setInternal:(id)internal
{
  internalCopy = internal;
  internal = [(GKChallenge *)self internal];
  v12.receiver = self;
  v12.super_class = GKScoreChallenge;
  [(GKChallenge *)&v12 setInternal:internalCopy];
  if (internal != internalCopy)
  {
    score = [internalCopy score];

    if (score)
    {
      v7 = [GKScore alloc];
      score2 = [internalCopy score];
      score = [(GKScore *)v7 initWithInternalRepresentation:score2];

      v9 = [GKGame alloc];
      game = [internalCopy game];
      v11 = [(GKGame *)v9 initWithInternalRepresentation:game];
      [(GKScore *)score setGame:v11];
    }

    [(GKScoreChallenge *)self setScore:score];
  }
}

- (GKLeaderboard)leaderboard
{
  v3 = [GKLeaderboard alloc];
  internal = [(GKChallenge *)self internal];
  leaderboard = [internal leaderboard];
  v6 = [(GKLeaderboard *)v3 initWithInternalRepresentation:leaderboard];

  return v6;
}

- (GKLeaderboardEntry)leaderboardEntry
{
  score = [(GKScoreChallenge *)self score];
  if (score)
  {
    score2 = [(GKScoreChallenge *)self score];
    v5 = [GKLeaderboardEntry fromGKScore:score2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  if (selector)
  {
    if (class_respondsToSelector(self, selector))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = GKApplicationLinkedOnOrAfter(393216, 0);
      if (v4)
      {

        LOBYTE(v4) = [GKScoreChallengeInternal instancesRespondToSelector:selector];
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
  internal = [(GKChallenge *)self internal];
  leaderboard = [internal leaderboard];
  title = [leaderboard title];

  return title;
}

- (BOOL)detailsLoaded
{
  internal = [(GKChallenge *)self internal];
  leaderboard = [internal leaderboard];
  v4 = leaderboard != 0;

  return v4;
}

- (void)loadDetailsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (id)detailGoalTextForPlayer:(id)player withLeaderboard:(id)leaderboard
{
  v6 = MEMORY[0x277CCACA8];
  leaderboardCopy = leaderboard;
  playerCopy = player;
  v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_DETAIL_SCORE_GOAL_FORMAT];
  v10 = [playerCopy displayNameWithOptions:0];

  score = [(GKScoreChallenge *)self score];
  formattedValue = [score formattedValue];
  localizedTitle = [leaderboardCopy localizedTitle];

  v14 = [v6 stringWithFormat:v9, v10, formattedValue, localizedTitle];

  return v14;
}

@end