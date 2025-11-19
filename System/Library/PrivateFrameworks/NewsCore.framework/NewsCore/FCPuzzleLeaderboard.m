@interface FCPuzzleLeaderboard
- (FCPuzzleLeaderboard)initWithDictionary:(id)a3;
@end

@implementation FCPuzzleLeaderboard

- (FCPuzzleLeaderboard)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FCPuzzleLeaderboard;
  v5 = [(FCPuzzleLeaderboard *)&v11 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = FCAppConfigurationStringValue(v4, @"identifier", 0);
  [(FCPuzzleLeaderboard *)v5 setLeaderboardID:v6];

  v7 = [(FCPuzzleLeaderboard *)v5 leaderboardID];

  if (v7)
  {
    v8 = FCAppConfigurationStringValue(v4, @"name", 0);
    [(FCPuzzleLeaderboard *)v5 setName:v8];

    v9 = FCAppConfigurationNumberValue(v4, @"difficulty", 0);
    [(FCPuzzleLeaderboard *)v5 setDifficulty:v9];

LABEL_4:
    v7 = v5;
  }

  return v7;
}

@end