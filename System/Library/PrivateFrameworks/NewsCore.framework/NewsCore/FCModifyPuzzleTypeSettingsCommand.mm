@interface FCModifyPuzzleTypeSettingsCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
@end

@implementation FCModifyPuzzleTypeSettingsCommand

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"puzzleTypeID"];
  v8 = [remoteRecordCopy objectForKeyedSubscript:@"puzzleTypeID"];
  if ([v7 isEqualToString:v8])
  {
    v9 = [recordCopy objectForKeyedSubscript:@"settingsData"];
    v10 = [remoteRecordCopy objectForKeyedSubscript:@"settingsData"];
    v11 = v9 != v10;
    if (v9 != v10)
    {
      [remoteRecordCopy setObject:v9 forKeyedSubscript:@"settingsData"];
    }

    v12 = [recordCopy objectForKeyedSubscript:@"lastSeenPuzzleIDs"];
    v13 = [remoteRecordCopy objectForKeyedSubscript:@"lastSeenPuzzleIDs"];
    if (([v12 fc_isEqualToArray:v13] & 1) == 0)
    {
      [remoteRecordCopy setObject:v12 forKeyedSubscript:@"lastSeenPuzzleIDs"];
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