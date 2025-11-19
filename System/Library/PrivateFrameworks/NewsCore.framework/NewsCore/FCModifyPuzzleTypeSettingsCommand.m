@interface FCModifyPuzzleTypeSettingsCommand
- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4;
@end

@implementation FCModifyPuzzleTypeSettingsCommand

- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"puzzleTypeID"];
  v8 = [v6 objectForKeyedSubscript:@"puzzleTypeID"];
  if ([v7 isEqualToString:v8])
  {
    v9 = [v5 objectForKeyedSubscript:@"settingsData"];
    v10 = [v6 objectForKeyedSubscript:@"settingsData"];
    v11 = v9 != v10;
    if (v9 != v10)
    {
      [v6 setObject:v9 forKeyedSubscript:@"settingsData"];
    }

    v12 = [v5 objectForKeyedSubscript:@"lastSeenPuzzleIDs"];
    v13 = [v6 objectForKeyedSubscript:@"lastSeenPuzzleIDs"];
    if (([v12 fc_isEqualToArray:v13] & 1) == 0)
    {
      [v6 setObject:v12 forKeyedSubscript:@"lastSeenPuzzleIDs"];
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end