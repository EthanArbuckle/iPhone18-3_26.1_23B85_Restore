@interface FCPuzzleHistoryItem
- (CKRecord)asCKRecord;
- (FCPuzzleHistoryItem)initWithEntryID:(id)d puzzleID:(id)iD puzzleTypeID:(id)typeID progressData:(id)data progressLevel:(int64_t)level score:(id)score scoreType:(id)type rankID:(id)self0 usedReveal:(id)self1 playDuration:(int64_t)self2 lastPlayedDate:(id)self3 completedDate:(id)self4 firstCompletedDate:(id)self5 firstPlayDuration:(id)self6 bestScore:(id)self7 progressMovesDescription:(id)self8 difficulty:(id)self9 publishDate:(id)publishDate behaviorFlags:(id)flags;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initWithEntryID:(void *)d dictionaryRepresentation:;
@end

@implementation FCPuzzleHistoryItem

- (FCPuzzleHistoryItem)initWithEntryID:(id)d puzzleID:(id)iD puzzleTypeID:(id)typeID progressData:(id)data progressLevel:(int64_t)level score:(id)score scoreType:(id)type rankID:(id)self0 usedReveal:(id)self1 playDuration:(int64_t)self2 lastPlayedDate:(id)self3 completedDate:(id)self4 firstCompletedDate:(id)self5 firstPlayDuration:(id)self6 bestScore:(id)self7 progressMovesDescription:(id)self8 difficulty:(id)self9 publishDate:(id)publishDate behaviorFlags:(id)flags
{
  v70 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  typeIDCopy = typeID;
  obj = data;
  dataCopy = data;
  scoreCopy = score;
  scoreCopy2 = score;
  typeCopy = type;
  rankIDCopy = rankID;
  revealCopy = reveal;
  dateCopy = date;
  completedDateCopy = completedDate;
  firstCompletedDateCopy = firstCompletedDate;
  playDurationCopy = playDuration;
  bestScoreCopy = bestScore;
  descriptionCopy = description;
  difficultyCopy = difficulty;
  publishDateCopy = publishDate;
  flagsCopy = flags;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (iDCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDCopy)
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
  if (!typeIDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if (dCopy && iDCopy)
    {
      v34 = [dCopy copy];
      identifier = v33->_identifier;
      v33->_identifier = v34;

      v36 = [iDCopy copy];
      puzzleID = v33->_puzzleID;
      v33->_puzzleID = v36;

      v38 = [typeIDCopy copy];
      puzzleTypeID = v33->_puzzleTypeID;
      v33->_puzzleTypeID = v38;

      objc_storeStrong(&v33->_progressData, obj);
      v33->_progressLevel = level;
      objc_storeStrong(&v33->_score, scoreCopy);
      objc_storeStrong(&v33->_scoreType, type);
      v40 = [rankIDCopy copy];
      rankID = v33->_rankID;
      v33->_rankID = v40;

      objc_storeStrong(&v33->_usedReveal, reveal);
      v33->_playDuration = duration;
      objc_storeStrong(&v33->_lastPlayedDate, date);
      objc_storeStrong(&v33->_completedDate, completedDate);
      objc_storeStrong(&v33->_firstCompletedDate, firstCompletedDate);
      objc_storeStrong(&v33->_firstPlayDuration, playDuration);
      objc_storeStrong(&v33->_bestScore, bestScore);
      objc_storeStrong(&v33->_progressMovesDescription, description);
      objc_storeStrong(&v33->_scoreType, type);
      objc_storeStrong(&v33->_difficulty, difficulty);
      objc_storeStrong(&v33->_publishDate, publishDate);
      objc_storeStrong(&v33->_behaviorFlags, flags);
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
  identifier = [(FCPuzzleHistoryItem *)self identifier];
  v5 = [v3 initWithRecordName:identifier zoneID:_MergedGlobals_176];

  v6 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"PuzzleHistoryItem" recordID:v5];
  puzzleID = [(FCPuzzleHistoryItem *)self puzzleID];
  [v6 setObject:puzzleID forKeyedSubscript:@"puzzleID"];

  puzzleTypeID = [(FCPuzzleHistoryItem *)self puzzleTypeID];
  [v6 setObject:puzzleTypeID forKeyedSubscript:@"puzzleTypeID"];

  progressData = [(FCPuzzleHistoryItem *)self progressData];
  [v6 setObject:progressData forKeyedSubscript:@"progressData"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCPuzzleHistoryItem progressLevel](self, "progressLevel")}];
  [v6 setObject:v10 forKeyedSubscript:@"progressLevel"];

  score = [(FCPuzzleHistoryItem *)self score];
  [v6 setObject:score forKeyedSubscript:@"score"];

  scoreType = [(FCPuzzleHistoryItem *)self scoreType];
  [v6 setObject:scoreType forKeyedSubscript:@"scoreType"];

  rankID = [(FCPuzzleHistoryItem *)self rankID];
  [v6 setObject:rankID forKeyedSubscript:@"rankID"];

  usedReveal = [(FCPuzzleHistoryItem *)self usedReveal];
  [v6 setObject:usedReveal forKeyedSubscript:@"usedReveal"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCPuzzleHistoryItem playDuration](self, "playDuration")}];
  [v6 setObject:v15 forKeyedSubscript:@"playDuration"];

  lastPlayedDate = [(FCPuzzleHistoryItem *)self lastPlayedDate];
  [v6 setObject:lastPlayedDate forKeyedSubscript:@"lastPlayedDate"];

  completedDate = [(FCPuzzleHistoryItem *)self completedDate];
  [v6 setObject:completedDate forKeyedSubscript:@"completedDate"];

  firstCompletedDate = [(FCPuzzleHistoryItem *)self firstCompletedDate];
  [v6 setObject:firstCompletedDate forKeyedSubscript:@"firstCompletedDate"];

  firstPlayDuration = [(FCPuzzleHistoryItem *)self firstPlayDuration];
  [v6 setObject:firstPlayDuration forKeyedSubscript:@"firstPlayDuration"];

  bestScore = [(FCPuzzleHistoryItem *)self bestScore];
  [v6 setObject:bestScore forKeyedSubscript:@"bestScore"];

  progressMovesDescription = [(FCPuzzleHistoryItem *)self progressMovesDescription];
  [v6 setObject:progressMovesDescription forKeyedSubscript:@"progressMovesDescription"];

  scoreType2 = [(FCPuzzleHistoryItem *)self scoreType];
  [v6 setObject:scoreType2 forKeyedSubscript:@"scoreType"];

  difficulty = [(FCPuzzleHistoryItem *)self difficulty];
  [v6 setObject:difficulty forKeyedSubscript:@"difficulty"];

  publishDate = [(FCPuzzleHistoryItem *)self publishDate];
  [v6 setObject:publishDate forKeyedSubscript:@"publishDate"];

  behaviorFlags = [(FCPuzzleHistoryItem *)self behaviorFlags];
  [v6 setObject:behaviorFlags forKeyedSubscript:@"behaviorFlags"];

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
  progressData = [(FCPuzzleHistoryItem *)self progressData];
  v4 = @"(some)";
  if (!progressData)
  {
    v4 = @"(null)";
  }

  v19 = v4;

  v21 = MEMORY[0x1E696AEC0];
  puzzleID = [(FCPuzzleHistoryItem *)self puzzleID];
  puzzleTypeID = [(FCPuzzleHistoryItem *)self puzzleTypeID];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCPuzzleHistoryItem progressLevel](self, "progressLevel")}];
  score = [(FCPuzzleHistoryItem *)self score];
  scoreType = [(FCPuzzleHistoryItem *)self scoreType];
  rankID = [(FCPuzzleHistoryItem *)self rankID];
  usedReveal = [(FCPuzzleHistoryItem *)self usedReveal];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCPuzzleHistoryItem playDuration](self, "playDuration")}];
  lastPlayedDate = [(FCPuzzleHistoryItem *)self lastPlayedDate];
  completedDate = [(FCPuzzleHistoryItem *)self completedDate];
  firstCompletedDate = [(FCPuzzleHistoryItem *)self firstCompletedDate];
  firstPlayDuration = [(FCPuzzleHistoryItem *)self firstPlayDuration];
  bestScore = [(FCPuzzleHistoryItem *)self bestScore];
  progressMovesDescription = [(FCPuzzleHistoryItem *)self progressMovesDescription];
  difficulty = [(FCPuzzleHistoryItem *)self difficulty];
  publishDate = [(FCPuzzleHistoryItem *)self publishDate];
  behaviorFlags = [(FCPuzzleHistoryItem *)self behaviorFlags];
  v22 = [v21 stringWithFormat:@"{ puzzleID=%@, puzzleTypeID=%@, progressData=%@, progressLevel=%@, score=%@, scoreType=%@, rankID=%@, usedReveal=%@, playDuration=%@, lastPlayedDate=%@, completedDate=%@, firstCompletedDate=%@, firstPlayDuration=%@, bestScore=%@, progressMovesDescription=%@, difficulty=%@, publishDate=%@, behaviorFlags=%@ }", puzzleID, puzzleTypeID, v19, v18, score, scoreType, rankID, usedReveal, v15, lastPlayedDate, completedDate, firstCompletedDate, firstPlayDuration, bestScore, progressMovesDescription, difficulty, publishDate, behaviorFlags];

  return v22;
}

- (id)dictionaryRepresentation
{
  v49 = *MEMORY[0x1E69E9840];
  puzzleID = [self puzzleID];

  if (!puzzleID && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "progressLevel")}];
  [dictionary setObject:v4 forKey:@"progressLevel"];

  score = [self score];

  if (score)
  {
    score2 = [self score];
    [dictionary setObject:score2 forKey:@"score"];
  }

  scoreType = [self scoreType];

  if (scoreType)
  {
    scoreType2 = [self scoreType];
    [dictionary setObject:scoreType2 forKey:@"scoreType"];
  }

  rankID = [self rankID];

  if (rankID)
  {
    rankID2 = [self rankID];
    [dictionary setObject:rankID2 forKey:@"rankID"];
  }

  usedReveal = [self usedReveal];

  if (usedReveal)
  {
    usedReveal2 = [self usedReveal];
    [dictionary setObject:usedReveal2 forKey:@"usedReveal"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "playDuration")}];
  [dictionary setObject:v13 forKey:@"playDuration"];

  puzzleID2 = [self puzzleID];

  if (puzzleID2)
  {
    puzzleID3 = [self puzzleID];
    [dictionary setObject:puzzleID3 forKey:@"puzzleID"];
  }

  puzzleTypeID = [self puzzleTypeID];

  if (puzzleTypeID)
  {
    puzzleTypeID2 = [self puzzleTypeID];
    [dictionary setObject:puzzleTypeID2 forKey:@"puzzleTypeID"];
  }

  progressData = [self progressData];

  if (progressData)
  {
    progressData2 = [self progressData];
    [dictionary setObject:progressData2 forKey:@"progressData"];
  }

  lastPlayedDate = [self lastPlayedDate];

  if (lastPlayedDate)
  {
    lastPlayedDate2 = [self lastPlayedDate];
    [dictionary setObject:lastPlayedDate2 forKey:@"lastPlayedDate"];
  }

  completedDate = [self completedDate];

  if (completedDate)
  {
    completedDate2 = [self completedDate];
    [dictionary setObject:completedDate2 forKey:@"completedDate"];
  }

  firstCompletedDate = [self firstCompletedDate];

  if (firstCompletedDate)
  {
    firstCompletedDate2 = [self firstCompletedDate];
    [dictionary setObject:firstCompletedDate2 forKey:@"firstCompletedDate"];
  }

  firstPlayDuration = [self firstPlayDuration];

  if (firstPlayDuration)
  {
    firstPlayDuration2 = [self firstPlayDuration];
    [dictionary setObject:firstPlayDuration2 forKey:@"firstPlayDuration"];
  }

  bestScore = [self bestScore];

  if (bestScore)
  {
    bestScore2 = [self bestScore];
    [dictionary setObject:bestScore2 forKey:@"bestScore"];
  }

  progressMovesDescription = [self progressMovesDescription];

  if (progressMovesDescription)
  {
    progressMovesDescription2 = [self progressMovesDescription];
    [dictionary setObject:progressMovesDescription2 forKey:@"progressMovesDescription"];
  }

  difficulty = [self difficulty];

  if (difficulty)
  {
    difficulty2 = [self difficulty];
    [dictionary setObject:difficulty2 forKey:@"difficulty"];
  }

  publishDate = [self publishDate];

  if (publishDate)
  {
    publishDate2 = [self publishDate];
    [dictionary setObject:publishDate2 forKey:@"publishDate"];
  }

  behaviorFlags = [self behaviorFlags];

  if (behaviorFlags)
  {
    behaviorFlags2 = [self behaviorFlags];
    [dictionary setObject:behaviorFlags2 forKey:@"behaviorFlags"];
  }

  v38 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)initWithEntryID:(void *)d dictionaryRepresentation:
{
  if (!self)
  {
    return 0;
  }

  dCopy = d;
  v23 = a2;
  v25 = [dCopy objectForKeyedSubscript:@"puzzleID"];
  v24 = [dCopy objectForKeyedSubscript:@"puzzleTypeID"];
  v22 = [dCopy objectForKeyedSubscript:@"progressData"];
  v5 = [dCopy objectForKeyedSubscript:@"progressLevel"];
  intValue = [v5 intValue];

  v20 = [dCopy objectForKeyedSubscript:@"score"];
  v29 = [dCopy objectForKeyedSubscript:@"scoreType"];
  v28 = [dCopy objectForKeyedSubscript:@"rankID"];
  v27 = [dCopy objectForKeyedSubscript:@"usedReveal"];
  v6 = [dCopy objectForKeyedSubscript:@"playDuration"];
  intValue2 = [v6 intValue];

  v18 = [dCopy objectForKeyedSubscript:@"lastPlayedDate"];
  v17 = [dCopy objectForKeyedSubscript:@"completedDate"];
  v16 = [dCopy objectForKeyedSubscript:@"firstCompletedDate"];
  v15 = [dCopy objectForKeyedSubscript:@"firstPlayDuration"];
  v14 = [dCopy objectForKeyedSubscript:@"bestScore"];
  v7 = [dCopy objectForKeyedSubscript:@"progressMovesDescription"];
  v8 = [dCopy objectForKeyedSubscript:@"difficulty"];
  v9 = [dCopy objectForKeyedSubscript:@"publishDate"];
  v10 = [dCopy objectForKeyedSubscript:@"behaviorFlags"];

  v11 = [self initWithEntryID:v23 puzzleID:v25 puzzleTypeID:v24 progressData:v22 progressLevel:intValue score:v20 scoreType:v29 rankID:v28 usedReveal:v27 playDuration:intValue2 lastPlayedDate:v18 completedDate:v17 firstCompletedDate:v16 firstPlayDuration:v15 bestScore:v14 progressMovesDescription:v7 difficulty:v8 publishDate:v9 behaviorFlags:v10];
  v12 = v11;

  return v12;
}

@end