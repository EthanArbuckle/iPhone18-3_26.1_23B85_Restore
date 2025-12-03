@interface GKLeaderboardEntry
+ (id)fromGKScore:(id)score;
- (GKLeaderboardEntry)initWithInternalRepresentation:(id)representation;
- (GKPlayer)player;
- (id)_gkScore;
- (id)description;
@end

@implementation GKLeaderboardEntry

- (GKLeaderboardEntry)initWithInternalRepresentation:(id)representation
{
  representationCopy = representation;
  v8.receiver = self;
  v8.super_class = GKLeaderboardEntry;
  v5 = [(GKLeaderboardEntry *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKLeaderboardEntry *)v5 setInternal:representationCopy];
  }

  return v6;
}

- (GKPlayer)player
{
  v3 = [GKPlayer alloc];
  internal = [(GKLeaderboardEntry *)self internal];
  player = [internal player];
  v6 = [(GKPlayer *)v3 initWithInternalRepresentation:player];

  return v6;
}

- (id)_gkScore
{
  v3 = objc_alloc_init(GKScoreInternal);
  [(GKScoreInternal *)v3 setRank:[(GKLeaderboardEntry *)self rank]];
  [(GKScoreInternal *)v3 setContext:[(GKLeaderboardEntry *)self context]];
  [(GKScoreInternal *)v3 setValue:[(GKLeaderboardEntry *)self score]];
  formattedScore = [(GKLeaderboardEntry *)self formattedScore];
  [(GKScoreInternal *)v3 setFormattedValue:formattedScore];

  player = [(GKLeaderboardEntry *)self player];
  internal = [player internal];
  [(GKScoreInternal *)v3 setPlayer:internal];

  internal2 = [(GKLeaderboardEntry *)self internal];
  baseLeaderboardID = [internal2 baseLeaderboardID];
  [(GKScoreInternal *)v3 setLeaderboardIdentifier:baseLeaderboardID];

  v9 = [[GKScore alloc] initWithInternalRepresentation:v3];

  return v9;
}

+ (id)fromGKScore:(id)score
{
  scoreCopy = score;
  v4 = objc_alloc_init(GKLeaderboardEntryInternal);
  internal = [scoreCopy internal];
  -[GKLeaderboardEntryInternal setRank:](v4, "setRank:", [internal rank]);

  v6 = MEMORY[0x277CCABB0];
  internal2 = [scoreCopy internal];
  -[GKLeaderboardEntryInternal setContext:](v4, "setContext:", [v6 _gkConvertUInt64ClampingValue:{objc_msgSend(internal2, "context")}]);

  v8 = MEMORY[0x277CCABB0];
  internal3 = [scoreCopy internal];
  -[GKLeaderboardEntryInternal setScore:](v4, "setScore:", [v8 _gkConvertInt64ClampingValue:{objc_msgSend(internal3, "value")}]);

  internal4 = [scoreCopy internal];
  formattedValue = [internal4 formattedValue];
  [(GKLeaderboardEntryInternal *)v4 setFormattedScore:formattedValue];

  internal5 = [scoreCopy internal];
  player = [internal5 player];
  [(GKLeaderboardEntryInternal *)v4 setPlayer:player];

  internal6 = [scoreCopy internal];

  leaderboardIdentifier = [internal6 leaderboardIdentifier];
  [(GKLeaderboardEntryInternal *)v4 setBaseLeaderboardID:leaderboardIdentifier];

  v16 = [[GKLeaderboardEntry alloc] initWithInternalRepresentation:v4];

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  player = [(GKLeaderboardEntry *)self player];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKLeaderboardEntry rank](self, "rank")}];
  formattedScore = [(GKLeaderboardEntry *)self formattedScore];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[GKLeaderboardEntry context](self, "context")}];
  date = [(GKLeaderboardEntry *)self date];
  v9 = [v3 stringWithFormat:@"Player: %@, Rank: %@, Formatted Score: %@, Context: %@, Date: %@", player, v5, formattedScore, v7, date];

  return v9;
}

@end