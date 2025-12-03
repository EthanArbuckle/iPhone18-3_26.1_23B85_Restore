@interface FCPuzzleTypeLeaderboard
- (FCPuzzleTypeLeaderboard)initWithDictionary:(id)dictionary;
@end

@implementation FCPuzzleTypeLeaderboard

- (FCPuzzleTypeLeaderboard)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = FCPuzzleTypeLeaderboard;
  v5 = [(FCPuzzleTypeLeaderboard *)&v19 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"leaderboards", 0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [[FCPuzzleLeaderboard alloc] initWithDictionary:*(*(&v15 + 1) + 8 * v11)];
          if (v12)
          {
            [array addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    [(FCPuzzleTypeLeaderboard *)v5 setLeaderboards:array];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

@end