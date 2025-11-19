@interface GKLeaderboardEntry
+ (id)fromGKScore:(id)a3;
- (GKLeaderboardEntry)initWithInternalRepresentation:(id)a3;
- (GKPlayer)player;
- (id)_gkScore;
- (id)description;
@end

@implementation GKLeaderboardEntry

- (GKLeaderboardEntry)initWithInternalRepresentation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKLeaderboardEntry;
  v5 = [(GKLeaderboardEntry *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKLeaderboardEntry *)v5 setInternal:v4];
  }

  return v6;
}

- (GKPlayer)player
{
  v3 = [GKPlayer alloc];
  v4 = [(GKLeaderboardEntry *)self internal];
  v5 = [v4 player];
  v6 = [(GKPlayer *)v3 initWithInternalRepresentation:v5];

  return v6;
}

- (id)_gkScore
{
  v3 = objc_alloc_init(GKScoreInternal);
  [(GKScoreInternal *)v3 setRank:[(GKLeaderboardEntry *)self rank]];
  [(GKScoreInternal *)v3 setContext:[(GKLeaderboardEntry *)self context]];
  [(GKScoreInternal *)v3 setValue:[(GKLeaderboardEntry *)self score]];
  v4 = [(GKLeaderboardEntry *)self formattedScore];
  [(GKScoreInternal *)v3 setFormattedValue:v4];

  v5 = [(GKLeaderboardEntry *)self player];
  v6 = [v5 internal];
  [(GKScoreInternal *)v3 setPlayer:v6];

  v7 = [(GKLeaderboardEntry *)self internal];
  v8 = [v7 baseLeaderboardID];
  [(GKScoreInternal *)v3 setLeaderboardIdentifier:v8];

  v9 = [[GKScore alloc] initWithInternalRepresentation:v3];

  return v9;
}

+ (id)fromGKScore:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GKLeaderboardEntryInternal);
  v5 = [v3 internal];
  -[GKLeaderboardEntryInternal setRank:](v4, "setRank:", [v5 rank]);

  v6 = MEMORY[0x277CCABB0];
  v7 = [v3 internal];
  -[GKLeaderboardEntryInternal setContext:](v4, "setContext:", [v6 _gkConvertUInt64ClampingValue:{objc_msgSend(v7, "context")}]);

  v8 = MEMORY[0x277CCABB0];
  v9 = [v3 internal];
  -[GKLeaderboardEntryInternal setScore:](v4, "setScore:", [v8 _gkConvertInt64ClampingValue:{objc_msgSend(v9, "value")}]);

  v10 = [v3 internal];
  v11 = [v10 formattedValue];
  [(GKLeaderboardEntryInternal *)v4 setFormattedScore:v11];

  v12 = [v3 internal];
  v13 = [v12 player];
  [(GKLeaderboardEntryInternal *)v4 setPlayer:v13];

  v14 = [v3 internal];

  v15 = [v14 leaderboardIdentifier];
  [(GKLeaderboardEntryInternal *)v4 setBaseLeaderboardID:v15];

  v16 = [[GKLeaderboardEntry alloc] initWithInternalRepresentation:v4];

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(GKLeaderboardEntry *)self player];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKLeaderboardEntry rank](self, "rank")}];
  v6 = [(GKLeaderboardEntry *)self formattedScore];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[GKLeaderboardEntry context](self, "context")}];
  v8 = [(GKLeaderboardEntry *)self date];
  v9 = [v3 stringWithFormat:@"Player: %@, Rank: %@, Formatted Score: %@, Context: %@, Date: %@", v4, v5, v6, v7, v8];

  return v9;
}

@end