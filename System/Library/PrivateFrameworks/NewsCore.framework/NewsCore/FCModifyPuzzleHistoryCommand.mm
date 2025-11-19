@interface FCModifyPuzzleHistoryCommand
- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4;
- (unint64_t)puzzleTypeTraitsForPuzzleTypeID:(id)a3;
@end

@implementation FCModifyPuzzleHistoryCommand

- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"lastPlayedDate"];
  v48 = [v7 objectForKeyedSubscript:@"lastPlayedDate"];
  v49 = v8;
  v9 = [v8 compare:v48];
  v10 = v9 == 1;
  if (v9 == 1)
  {
    v11 = [v6 objectForKeyedSubscript:@"puzzleID"];
    [v7 setObject:v11 forKeyedSubscript:@"puzzleID"];

    v12 = [v6 objectForKeyedSubscript:@"puzzleTypeID"];
    [v7 setObject:v12 forKeyedSubscript:@"puzzleTypeID"];

    v13 = [v6 objectForKeyedSubscript:@"behaviorFlags"];
    [v7 setObject:v13 forKeyedSubscript:@"behaviorFlags"];

    v14 = [v6 objectForKeyedSubscript:@"progressData"];
    [v7 setObject:v14 forKeyedSubscript:@"progressData"];

    v15 = [v6 objectForKeyedSubscript:@"progressLevel"];
    [v7 setObject:v15 forKeyedSubscript:@"progressLevel"];

    v16 = [v6 objectForKeyedSubscript:@"score"];
    [v7 setObject:v16 forKeyedSubscript:@"score"];

    v17 = [v6 objectForKeyedSubscript:@"rankID"];
    [v7 setObject:v17 forKeyedSubscript:@"rankID"];

    v18 = [v6 objectForKeyedSubscript:@"usedReveal"];
    [v7 setObject:v18 forKeyedSubscript:@"usedReveal"];

    v19 = [v6 objectForKeyedSubscript:@"playDuration"];
    [v7 setObject:v19 forKeyedSubscript:@"playDuration"];

    v20 = [v6 objectForKeyedSubscript:@"lastPlayedDate"];
    [v7 setObject:v20 forKeyedSubscript:@"lastPlayedDate"];

    v21 = [v6 objectForKeyedSubscript:@"completedDate"];
    [v7 setObject:v21 forKeyedSubscript:@"completedDate"];

    v22 = [v6 objectForKeyedSubscript:@"progressMovesDescription"];
    [v7 setObject:v22 forKeyedSubscript:@"progressMovesDescription"];

    v23 = [v6 objectForKeyedSubscript:@"scoreType"];
    [v7 setObject:v23 forKeyedSubscript:@"scoreType"];
  }

  v24 = [v6 objectForKeyedSubscript:@"firstCompletedDate"];
  v25 = [v7 objectForKeyedSubscript:@"firstCompletedDate"];
  v26 = v25;
  v47 = v24;
  if (v24 && (!v25 || [v24 compare:v25] == -1))
  {
    [v7 setObject:v24 forKeyedSubscript:@"firstCompletedDate"];
    v27 = 0;
    v10 = 1;
  }

  else
  {
    v27 = 1;
  }

  v28 = [v6 objectForKeyedSubscript:@"firstPlayDuration"];
  v44 = [v7 objectForKeyedSubscript:@"firstPlayDuration"];
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
    [v7 setObject:v28 forKeyedSubscript:@"firstPlayDuration"];
    v10 = 1;
  }

  v45 = v28;
  v30 = [v6 objectForKeyedSubscript:@"bestScore"];
  v31 = [v7 objectForKeyedSubscript:@"bestScore"];
  v43 = [v6 objectForKeyedSubscript:@"puzzleTypeID"];
  v32 = [(FCModifyPuzzleHistoryCommand *)self puzzleTypeTraitsForPuzzleTypeID:?];
  if (v30)
  {
    if (!v31 || ((v32 & 0x80000) != 0 ? (v33 = v31, v34 = v30) : (v33 = v30, v34 = v31), [v33 compare:v34] == 1))
    {
      [v7 setObject:v30 forKeyedSubscript:@"bestScore"];
      v10 = 1;
    }
  }

  v35 = [v6 objectForKeyedSubscript:@"difficulty"];
  v36 = [v7 objectForKeyedSubscript:@"difficulty"];
  v37 = v36;
  if (v35 && !v36)
  {
    [v7 setObject:v35 forKeyedSubscript:@"difficulty"];
    v10 = 1;
  }

  v38 = v10;
  v39 = [v6 objectForKeyedSubscript:@"publishDate"];
  v40 = [v7 objectForKeyedSubscript:@"publishDate"];
  v41 = v40;
  if (v39 && !v40)
  {
    [v7 setObject:v39 forKeyedSubscript:@"publishDate"];
    v38 = 1;
  }

  return v38;
}

- (unint64_t)puzzleTypeTraitsForPuzzleTypeID:(id)a3
{
  v4 = a3;
  v5 = [(FCModifyPuzzleHistoryCommand *)self puzzleTypeTraitsDict];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 integerValue];
  return v7;
}

@end