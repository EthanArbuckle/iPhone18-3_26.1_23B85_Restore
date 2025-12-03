@interface FCModifyPuzzleHistoryCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
- (unint64_t)puzzleTypeTraitsForPuzzleTypeID:(id)d;
@end

@implementation FCModifyPuzzleHistoryCommand

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v8 = [recordCopy objectForKeyedSubscript:@"lastPlayedDate"];
  v48 = [remoteRecordCopy objectForKeyedSubscript:@"lastPlayedDate"];
  v49 = v8;
  v9 = [v8 compare:v48];
  v10 = v9 == 1;
  if (v9 == 1)
  {
    v11 = [recordCopy objectForKeyedSubscript:@"puzzleID"];
    [remoteRecordCopy setObject:v11 forKeyedSubscript:@"puzzleID"];

    v12 = [recordCopy objectForKeyedSubscript:@"puzzleTypeID"];
    [remoteRecordCopy setObject:v12 forKeyedSubscript:@"puzzleTypeID"];

    v13 = [recordCopy objectForKeyedSubscript:@"behaviorFlags"];
    [remoteRecordCopy setObject:v13 forKeyedSubscript:@"behaviorFlags"];

    v14 = [recordCopy objectForKeyedSubscript:@"progressData"];
    [remoteRecordCopy setObject:v14 forKeyedSubscript:@"progressData"];

    v15 = [recordCopy objectForKeyedSubscript:@"progressLevel"];
    [remoteRecordCopy setObject:v15 forKeyedSubscript:@"progressLevel"];

    v16 = [recordCopy objectForKeyedSubscript:@"score"];
    [remoteRecordCopy setObject:v16 forKeyedSubscript:@"score"];

    v17 = [recordCopy objectForKeyedSubscript:@"rankID"];
    [remoteRecordCopy setObject:v17 forKeyedSubscript:@"rankID"];

    v18 = [recordCopy objectForKeyedSubscript:@"usedReveal"];
    [remoteRecordCopy setObject:v18 forKeyedSubscript:@"usedReveal"];

    v19 = [recordCopy objectForKeyedSubscript:@"playDuration"];
    [remoteRecordCopy setObject:v19 forKeyedSubscript:@"playDuration"];

    v20 = [recordCopy objectForKeyedSubscript:@"lastPlayedDate"];
    [remoteRecordCopy setObject:v20 forKeyedSubscript:@"lastPlayedDate"];

    v21 = [recordCopy objectForKeyedSubscript:@"completedDate"];
    [remoteRecordCopy setObject:v21 forKeyedSubscript:@"completedDate"];

    v22 = [recordCopy objectForKeyedSubscript:@"progressMovesDescription"];
    [remoteRecordCopy setObject:v22 forKeyedSubscript:@"progressMovesDescription"];

    v23 = [recordCopy objectForKeyedSubscript:@"scoreType"];
    [remoteRecordCopy setObject:v23 forKeyedSubscript:@"scoreType"];
  }

  v24 = [recordCopy objectForKeyedSubscript:@"firstCompletedDate"];
  v25 = [remoteRecordCopy objectForKeyedSubscript:@"firstCompletedDate"];
  v26 = v25;
  v47 = v24;
  if (v24 && (!v25 || [v24 compare:v25] == -1))
  {
    [remoteRecordCopy setObject:v24 forKeyedSubscript:@"firstCompletedDate"];
    v27 = 0;
    v10 = 1;
  }

  else
  {
    v27 = 1;
  }

  v28 = [recordCopy objectForKeyedSubscript:@"firstPlayDuration"];
  v44 = [remoteRecordCopy objectForKeyedSubscript:@"firstPlayDuration"];
  if (v44)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  v46 = v26;
  if (v28 && (v29 & 1) == 0)
  {
    [remoteRecordCopy setObject:v28 forKeyedSubscript:@"firstPlayDuration"];
    v10 = 1;
  }

  v45 = v28;
  v30 = [recordCopy objectForKeyedSubscript:@"bestScore"];
  v31 = [remoteRecordCopy objectForKeyedSubscript:@"bestScore"];
  v43 = [recordCopy objectForKeyedSubscript:@"puzzleTypeID"];
  v32 = [(FCModifyPuzzleHistoryCommand *)self puzzleTypeTraitsForPuzzleTypeID:?];
  if (v30)
  {
    if (!v31 || ((v32 & 0x80000) != 0 ? (v33 = v31, v34 = v30) : (v33 = v30, v34 = v31), [v33 compare:v34] == 1))
    {
      [remoteRecordCopy setObject:v30 forKeyedSubscript:@"bestScore"];
      v10 = 1;
    }
  }

  v35 = [recordCopy objectForKeyedSubscript:@"difficulty"];
  v36 = [remoteRecordCopy objectForKeyedSubscript:@"difficulty"];
  v37 = v36;
  if (v35 && !v36)
  {
    [remoteRecordCopy setObject:v35 forKeyedSubscript:@"difficulty"];
    v10 = 1;
  }

  v38 = v10;
  v39 = [recordCopy objectForKeyedSubscript:@"publishDate"];
  v40 = [remoteRecordCopy objectForKeyedSubscript:@"publishDate"];
  v41 = v40;
  if (v39 && !v40)
  {
    [remoteRecordCopy setObject:v39 forKeyedSubscript:@"publishDate"];
    v38 = 1;
  }

  return v38;
}

- (unint64_t)puzzleTypeTraitsForPuzzleTypeID:(id)d
{
  dCopy = d;
  puzzleTypeTraitsDict = [(FCModifyPuzzleHistoryCommand *)self puzzleTypeTraitsDict];
  v6 = [puzzleTypeTraitsDict objectForKey:dCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

@end