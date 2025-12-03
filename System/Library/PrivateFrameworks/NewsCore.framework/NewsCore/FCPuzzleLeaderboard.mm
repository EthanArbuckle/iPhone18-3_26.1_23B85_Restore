@interface FCPuzzleLeaderboard
- (FCPuzzleLeaderboard)initWithDictionary:(id)dictionary;
@end

@implementation FCPuzzleLeaderboard

- (FCPuzzleLeaderboard)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = FCPuzzleLeaderboard;
  v5 = [(FCPuzzleLeaderboard *)&v11 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = FCAppConfigurationStringValue(dictionaryCopy, @"identifier", 0);
  [(FCPuzzleLeaderboard *)v5 setLeaderboardID:v6];

  leaderboardID = [(FCPuzzleLeaderboard *)v5 leaderboardID];

  if (leaderboardID)
  {
    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"name", 0);
    [(FCPuzzleLeaderboard *)v5 setName:v8];

    v9 = FCAppConfigurationNumberValue(dictionaryCopy, @"difficulty", 0);
    [(FCPuzzleLeaderboard *)v5 setDifficulty:v9];

LABEL_4:
    leaderboardID = v5;
  }

  return leaderboardID;
}

@end