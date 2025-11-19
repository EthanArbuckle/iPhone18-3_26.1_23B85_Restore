@interface FCPuzzleHistoryItem
- (CKRecord)asCKRecord;
- (FCPuzzleHistoryItem)initWithEntryID:(id)a3 puzzleID:(id)a4 puzzleTypeID:(id)a5 progressData:(id)a6 progressLevel:(int64_t)a7 score:(id)a8 scoreType:(id)a9 rankID:(id)a10 usedReveal:(id)a11 playDuration:(int64_t)a12 lastPlayedDate:(id)a13 completedDate:(id)a14 firstCompletedDate:(id)a15 firstPlayDuration:(id)a16 bestScore:(id)a17 progressMovesDescription:(id)a18 difficulty:(id)a19 publishDate:(id)a20 behaviorFlags:(id)a21;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initWithEntryID:(void *)a3 dictionaryRepresentation:;
@end

@implementation FCPuzzleHistoryItem

- (FCPuzzleHistoryItem)initWithEntryID:(id)a3 puzzleID:(id)a4 puzzleTypeID:(id)a5 progressData:(id)a6 progressLevel:(int64_t)a7 score:(id)a8 scoreType:(id)a9 rankID:(id)a10 usedReveal:(id)a11 playDuration:(int64_t)a12 lastPlayedDate:(id)a13 completedDate:(id)a14 firstCompletedDate:(id)a15 firstPlayDuration:(id)a16 bestScore:(id)a17 progressMovesDescription:(id)a18 difficulty:(id)a19 publishDate:(id)a20 behaviorFlags:(id)a21
{
  v70 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v25 = a4;
  v26 = a5;
  obj = a6;
  v60 = a6;
  v49 = a8;
  v59 = a8;
  v58 = a9;
  v27 = a10;
  v28 = a11;
  v57 = a13;
  v56 = a14;
  v55 = a15;
  v54 = a16;
  v29 = a17;
  v30 = a18;
  v31 = a19;
  v53 = a20;
  v52 = a21;
  if (!v50 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"puzzle history item must have an identifier"];
    *buf = 136315906;
    v63 = "[FCPuzzleHistoryItem initWithEntryID:puzzleID:puzzleTypeID:progressData:progressLevel:score:scoreType:rankID:usedReveal:playDuration:lastPlayedDate:completedDate:firstCompletedDate:firstPlayDuration:bestScore:progressMovesDescription:difficulty:publishDate:behaviorFlags:]";
    v64 = 2080;
    v65 = "FCPuzzleHistoryItem.m";
    v66 = 1024;
    v67 = 33;
    v68 = 2114;
    v69 = v44;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v25)
    {
      goto LABEL_6;
    }
  }

  else if (v25)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"puzzle history item must have a puzzle ID"];
    *buf = 136315906;
    v63 = "[FCPuzzleHistoryItem initWithEntryID:puzzleID:puzzleTypeID:progressData:progressLevel:score:scoreType:rankID:usedReveal:playDuration:lastPlayedDate:completedDate:firstCompletedDate:firstPlayDuration:bestScore:progressMovesDescription:difficulty:publishDate:behaviorFlags:]";
    v64 = 2080;
    v65 = "FCPuzzleHistoryItem.m";
    v66 = 1024;
    v67 = 34;
    v68 = 2114;
    v69 = v45;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v26 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"puzzle history item must have a puzzleType ID"];
    *buf = 136315906;
    v63 = "[FCPuzzleHistoryItem initWithEntryID:puzzleID:puzzleTypeID:progressData:progressLevel:score:scoreType:rankID:usedReveal:playDuration:lastPlayedDate:completedDate:firstCompletedDate:firstPlayDuration:bestScore:progressMovesDescription:difficulty:publishDate:behaviorFlags:]";
    v64 = 2080;
    v65 = "FCPuzzleHistoryItem.m";
    v66 = 1024;
    v67 = 35;
    v68 = 2114;
    v69 = v46;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v61.receiver = self;
  v61.super_class = FCPuzzleHistoryItem;
  v32 = [(FCPuzzleHistoryItem *)&v61 init];
  v33 = v32;
  if (v32)
  {
    if (v50 && v25)
    {
      v34 = [v50 copy];
      identifier = v33->_identifier;
      v33->_identifier = v34;

      v36 = [v25 copy];
      puzzleID = v33->_puzzleID;
      v33->_puzzleID = v36;

      v38 = [v26 copy];
      puzzleTypeID = v33->_puzzleTypeID;
      v33->_puzzleTypeID = v38;

      objc_storeStrong(&v33->_progressData, obj);
      v33->_progressLevel = a7;
      objc_storeStrong(&v33->_score, v49);
      objc_storeStrong(&v33->_scoreType, a9);
      v40 = [v27 copy];
      rankID = v33->_rankID;
      v33->_rankID = v40;

      objc_storeStrong(&v33->_usedReveal, a11);
      v33->_playDuration = a12;
      objc_storeStrong(&v33->_lastPlayedDate, a13);
      objc_storeStrong(&v33->_completedDate, a14);
      objc_storeStrong(&v33->_firstCompletedDate, a15);
      objc_storeStrong(&v33->_firstPlayDuration, a16);
      objc_storeStrong(&v33->_bestScore, a17);
      objc_storeStrong(&v33->_progressMovesDescription, a18);
      objc_storeStrong(&v33->_scoreType, a9);
      objc_storeStrong(&v33->_difficulty, a19);
      objc_storeStrong(&v33->_publishDate, a20);
      objc_storeStrong(&v33->_behaviorFlags, a21);
    }

    else
    {

      v33 = 0;
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return v33;
}

- (CKRecord)asCKRecord
{
  if (qword_1EDB275E0 != -1)
  {
    dispatch_once(&qword_1EDB275E0, &__block_literal_global_105);
  }

  v3 = objc_alloc(MEMORY[0x1E695BA70]);
  v4 = [(FCPuzzleHistoryItem *)self identifier];
  v5 = [v3 initWithRecordName:v4 zoneID:_MergedGlobals_176];

  v6 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"PuzzleHistoryItem" recordID:v5];
  v7 = [(FCPuzzleHistoryItem *)self puzzleID];
  [v6 setObject:v7 forKeyedSubscript:@"puzzleID"];

  v8 = [(FCPuzzleHistoryItem *)self puzzleTypeID];
  [v6 setObject:v8 forKeyedSubscript:@"puzzleTypeID"];

  v9 = [(FCPuzzleHistoryItem *)self progressData];
  [v6 setObject:v9 forKeyedSubscript:@"progressData"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCPuzzleHistoryItem progressLevel](self, "progressLevel")}];
  [v6 setObject:v10 forKeyedSubscript:@"progressLevel"];

  v11 = [(FCPuzzleHistoryItem *)self score];
  [v6 setObject:v11 forKeyedSubscript:@"score"];

  v12 = [(FCPuzzleHistoryItem *)self scoreType];
  [v6 setObject:v12 forKeyedSubscript:@"scoreType"];

  v13 = [(FCPuzzleHistoryItem *)self rankID];
  [v6 setObject:v13 forKeyedSubscript:@"rankID"];

  v14 = [(FCPuzzleHistoryItem *)self usedReveal];
  [v6 setObject:v14 forKeyedSubscript:@"usedReveal"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCPuzzleHistoryItem playDuration](self, "playDuration")}];
  [v6 setObject:v15 forKeyedSubscript:@"playDuration"];

  v16 = [(FCPuzzleHistoryItem *)self lastPlayedDate];
  [v6 setObject:v16 forKeyedSubscript:@"lastPlayedDate"];

  v17 = [(FCPuzzleHistoryItem *)self completedDate];
  [v6 setObject:v17 forKeyedSubscript:@"completedDate"];

  v18 = [(FCPuzzleHistoryItem *)self firstCompletedDate];
  [v6 setObject:v18 forKeyedSubscript:@"firstCompletedDate"];

  v19 = [(FCPuzzleHistoryItem *)self firstPlayDuration];
  [v6 setObject:v19 forKeyedSubscript:@"firstPlayDuration"];

  v20 = [(FCPuzzleHistoryItem *)self bestScore];
  [v6 setObject:v20 forKeyedSubscript:@"bestScore"];

  v21 = [(FCPuzzleHistoryItem *)self progressMovesDescription];
  [v6 setObject:v21 forKeyedSubscript:@"progressMovesDescription"];

  v22 = [(FCPuzzleHistoryItem *)self scoreType];
  [v6 setObject:v22 forKeyedSubscript:@"scoreType"];

  v23 = [(FCPuzzleHistoryItem *)self difficulty];
  [v6 setObject:v23 forKeyedSubscript:@"difficulty"];

  v24 = [(FCPuzzleHistoryItem *)self publishDate];
  [v6 setObject:v24 forKeyedSubscript:@"publishDate"];

  v25 = [(FCPuzzleHistoryItem *)self behaviorFlags];
  [v6 setObject:v25 forKeyedSubscript:@"behaviorFlags"];

  return v6;
}

uint64_t __33__FCPuzzleHistoryItem_asCKRecord__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = [v0 initWithZoneName:@"PuzzleHistory" ownerName:*MEMORY[0x1E695B728]];
  v2 = _MergedGlobals_176;
  _MergedGlobals_176 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)description
{
  v3 = [(FCPuzzleHistoryItem *)self progressData];
  v4 = @"(some)";
  if (!v3)
  {
    v4 = @"(null)";
  }

  v19 = v4;

  v21 = MEMORY[0x1E696AEC0];
  v20 = [(FCPuzzleHistoryItem *)self puzzleID];
  v25 = [(FCPuzzleHistoryItem *)self puzzleTypeID];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCPuzzleHistoryItem progressLevel](self, "progressLevel")}];
  v17 = [(FCPuzzleHistoryItem *)self score];
  v24 = [(FCPuzzleHistoryItem *)self scoreType];
  v16 = [(FCPuzzleHistoryItem *)self rankID];
  v23 = [(FCPuzzleHistoryItem *)self usedReveal];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCPuzzleHistoryItem playDuration](self, "playDuration")}];
  v14 = [(FCPuzzleHistoryItem *)self lastPlayedDate];
  v13 = [(FCPuzzleHistoryItem *)self completedDate];
  v12 = [(FCPuzzleHistoryItem *)self firstCompletedDate];
  v5 = [(FCPuzzleHistoryItem *)self firstPlayDuration];
  v11 = [(FCPuzzleHistoryItem *)self bestScore];
  v6 = [(FCPuzzleHistoryItem *)self progressMovesDescription];
  v7 = [(FCPuzzleHistoryItem *)self difficulty];
  v8 = [(FCPuzzleHistoryItem *)self publishDate];
  v9 = [(FCPuzzleHistoryItem *)self behaviorFlags];
  v22 = [v21 stringWithFormat:@"{ puzzleID=%@, puzzleTypeID=%@, progressData=%@, progressLevel=%@, score=%@, scoreType=%@, rankID=%@, usedReveal=%@, playDuration=%@, lastPlayedDate=%@, completedDate=%@, firstCompletedDate=%@, firstPlayDuration=%@, bestScore=%@, progressMovesDescription=%@, difficulty=%@, publishDate=%@, behaviorFlags=%@ }", v20, v25, v19, v18, v17, v24, v16, v23, v15, v14, v13, v12, v5, v11, v6, v7, v8, v9];

  return v22;
}

- (id)dictionaryRepresentation
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = [a1 puzzleID];

  if (!v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"puzzleHistoryItem must have a puzzleID"];
    v41 = 136315906;
    v42 = "[FCPuzzleHistoryItem(PuzzleHistory) dictionaryRepresentation]";
    v43 = 2080;
    v44 = "FCPuzzleHistory.m";
    v45 = 1024;
    v46 = 1123;
    v47 = 2114;
    v48 = v40;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v41, 0x26u);
  }

  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "progressLevel")}];
  [v3 setObject:v4 forKey:@"progressLevel"];

  v5 = [a1 score];

  if (v5)
  {
    v6 = [a1 score];
    [v3 setObject:v6 forKey:@"score"];
  }

  v7 = [a1 scoreType];

  if (v7)
  {
    v8 = [a1 scoreType];
    [v3 setObject:v8 forKey:@"scoreType"];
  }

  v9 = [a1 rankID];

  if (v9)
  {
    v10 = [a1 rankID];
    [v3 setObject:v10 forKey:@"rankID"];
  }

  v11 = [a1 usedReveal];

  if (v11)
  {
    v12 = [a1 usedReveal];
    [v3 setObject:v12 forKey:@"usedReveal"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "playDuration")}];
  [v3 setObject:v13 forKey:@"playDuration"];

  v14 = [a1 puzzleID];

  if (v14)
  {
    v15 = [a1 puzzleID];
    [v3 setObject:v15 forKey:@"puzzleID"];
  }

  v16 = [a1 puzzleTypeID];

  if (v16)
  {
    v17 = [a1 puzzleTypeID];
    [v3 setObject:v17 forKey:@"puzzleTypeID"];
  }

  v18 = [a1 progressData];

  if (v18)
  {
    v19 = [a1 progressData];
    [v3 setObject:v19 forKey:@"progressData"];
  }

  v20 = [a1 lastPlayedDate];

  if (v20)
  {
    v21 = [a1 lastPlayedDate];
    [v3 setObject:v21 forKey:@"lastPlayedDate"];
  }

  v22 = [a1 completedDate];

  if (v22)
  {
    v23 = [a1 completedDate];
    [v3 setObject:v23 forKey:@"completedDate"];
  }

  v24 = [a1 firstCompletedDate];

  if (v24)
  {
    v25 = [a1 firstCompletedDate];
    [v3 setObject:v25 forKey:@"firstCompletedDate"];
  }

  v26 = [a1 firstPlayDuration];

  if (v26)
  {
    v27 = [a1 firstPlayDuration];
    [v3 setObject:v27 forKey:@"firstPlayDuration"];
  }

  v28 = [a1 bestScore];

  if (v28)
  {
    v29 = [a1 bestScore];
    [v3 setObject:v29 forKey:@"bestScore"];
  }

  v30 = [a1 progressMovesDescription];

  if (v30)
  {
    v31 = [a1 progressMovesDescription];
    [v3 setObject:v31 forKey:@"progressMovesDescription"];
  }

  v32 = [a1 difficulty];

  if (v32)
  {
    v33 = [a1 difficulty];
    [v3 setObject:v33 forKey:@"difficulty"];
  }

  v34 = [a1 publishDate];

  if (v34)
  {
    v35 = [a1 publishDate];
    [v3 setObject:v35 forKey:@"publishDate"];
  }

  v36 = [a1 behaviorFlags];

  if (v36)
  {
    v37 = [a1 behaviorFlags];
    [v3 setObject:v37 forKey:@"behaviorFlags"];
  }

  v38 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)initWithEntryID:(void *)a3 dictionaryRepresentation:
{
  if (!a1)
  {
    return 0;
  }

  v4 = a3;
  v23 = a2;
  v25 = [v4 objectForKeyedSubscript:@"puzzleID"];
  v24 = [v4 objectForKeyedSubscript:@"puzzleTypeID"];
  v22 = [v4 objectForKeyedSubscript:@"progressData"];
  v5 = [v4 objectForKeyedSubscript:@"progressLevel"];
  v21 = [v5 intValue];

  v20 = [v4 objectForKeyedSubscript:@"score"];
  v29 = [v4 objectForKeyedSubscript:@"scoreType"];
  v28 = [v4 objectForKeyedSubscript:@"rankID"];
  v27 = [v4 objectForKeyedSubscript:@"usedReveal"];
  v6 = [v4 objectForKeyedSubscript:@"playDuration"];
  v19 = [v6 intValue];

  v18 = [v4 objectForKeyedSubscript:@"lastPlayedDate"];
  v17 = [v4 objectForKeyedSubscript:@"completedDate"];
  v16 = [v4 objectForKeyedSubscript:@"firstCompletedDate"];
  v15 = [v4 objectForKeyedSubscript:@"firstPlayDuration"];
  v14 = [v4 objectForKeyedSubscript:@"bestScore"];
  v7 = [v4 objectForKeyedSubscript:@"progressMovesDescription"];
  v8 = [v4 objectForKeyedSubscript:@"difficulty"];
  v9 = [v4 objectForKeyedSubscript:@"publishDate"];
  v10 = [v4 objectForKeyedSubscript:@"behaviorFlags"];

  v11 = [a1 initWithEntryID:v23 puzzleID:v25 puzzleTypeID:v24 progressData:v22 progressLevel:v21 score:v20 scoreType:v29 rankID:v28 usedReveal:v27 playDuration:v19 lastPlayedDate:v18 completedDate:v17 firstCompletedDate:v16 firstPlayDuration:v15 bestScore:v14 progressMovesDescription:v7 difficulty:v8 publishDate:v9 behaviorFlags:v10];
  v12 = v11;

  return v12;
}

@end