@interface FCPuzzleHistory
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory;
- (BOOL)hasPuzzleBeenCompleted:(id)completed;
- (BOOL)hasPuzzleEverBeenCompleted:(id)completed;
- (BOOL)isPuzzleInPuzzleHistory:(id)history;
- (FCPuzzleHistory)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (id)_allItemsInPuzzleHistory;
- (id)_allSortedItemsInPuzzleHistory;
- (id)_puzzleHistoryItemForPuzzleID:(id *)d;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (id)allPuzzleTypeTraits;
- (id)allSortedPuzzleIDsSinceLastPlayedDate:(id)date;
- (id)datePuzzleWasLastPlayed:(id)played;
- (id)newestNotCompletedPuzzleIDForPuzzleTypeID:(id)d excludingPuzzleIDs:(id)ds;
- (id)recordsForRestoringZoneName:(id)name;
- (id)sortedPuzzleIDsForPuzzleTypeID:(id)d sinceLastPlayedDate:(id)date;
- (uint64_t)puzzleTypeTraitsForPuzzleTypeID:(uint64_t)d;
- (void)_addedPuzzleIDs:(void *)ds modifiedPuzzleIDs:(void *)iDs removedPuzzleIDs:;
- (void)_updatePuzzle:(void *)puzzle puzzleTypeID:(void *)d progressData:(void *)data progressLevel:(void *)level score:(void *)score scoreType:(void *)type rankID:(unsigned __int8)iD usedReveal:(void *)self0 playDuration:(void *)self1 lastPlayedDate:(void *)self2 completedDate:(void *)self3 progressMovesDescription:(void *)self4 difficulty:(void *)self5 publishDate:(void *)self6 behaviorFlags:;
- (void)addObserver:(id)observer;
- (void)addPuzzleToPuzzleHistory:(id)history puzzleTypeID:(id)d;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)loadLocalCachesFromStore;
- (void)removeObserver:(id)observer;
- (void)removePuzzleFromPuzzleHistory:(id)history;
- (void)setFirstCompletedDate:(id)date forPuzzleID:(id)d puzzleTypeID:(id)iD;
- (void)setPuzzleTypeTraits:(id)traits;
- (void)updatePuzzle:(id)puzzle difficulty:(id)difficulty publishDate:(id)date behaviorFlags:(id)flags;
- (void)updatePuzzle:(id)puzzle puzzleTypeID:(id)d progressData:(id)data progressLevel:(int64_t)level score:(id)score scoreType:(id)type rankID:(id)iD usedReveal:(BOOL)self0 playDuration:(int64_t)self1 isSolved:(BOOL)self2 progressMovesDescription:(id)self3 difficulty:(id)self4 publishDate:(id)self5 behaviorFlags:(id)self6;
@end

@implementation FCPuzzleHistory

- (void)loadLocalCachesFromStore
{
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__FCPuzzleHistory_loadLocalCachesFromStore__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(FCMTWriterLock *)itemsLock performWriteSync:v3];
}

void __43__FCPuzzleHistory_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_storeStrong((v3 + 96), v2);
  }

  v4 = [*(a1 + 32) localStore];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v9 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = *(a1 + 32);
        if (([objc_opt_class() isLocalStoreKeyInternal:v11] & 1) == 0)
        {
          v13 = *(v9 + 3872);
          objc_opt_class();
          v14 = [v4 objectForKey:v11];
          if (v14)
          {
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v16)
          {
            v17 = [[FCPuzzleHistoryItem alloc] initWithEntryID:v11 dictionaryRepresentation:v16];
            if (v17)
            {
              v18 = *(a1 + 32);
              if (v18)
              {
                v18 = v18[12];
              }

              v19 = v18;
              v20 = [v17 puzzleID];
              [v19 setObject:v17 forKey:v20];

              v9 = 0x1E695D000;
            }

            else
            {
              v25 = FCPuzzleLog;
              if (os_log_type_enabled(FCPuzzleLog, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v33 = v16;
                _os_log_error_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_ERROR, "FCPuzzleHistory: Failed to load item from cache for %{public}@", buf, 0xCu);
              }
            }
          }

          else
          {
            v21 = FCPuzzleLog;
            if (os_log_type_enabled(FCPuzzleLog, OS_LOG_TYPE_ERROR))
            {
              v22 = v21;
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              *buf = 138412546;
              v33 = v24;
              v34 = 2114;
              v35 = v11;
              _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "ERROR: Object of type %@ is not dictionary for key %{public}@", buf, 0x16u);

              v9 = 0x1E695D000;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v7);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __43__FCPuzzleHistory_loadLocalCachesFromStore__block_invoke_35;
  v27[3] = &unk_1E7C36EA0;
  v27[4] = *(a1 + 32);
  [FCTaskScheduler scheduleLowPriorityBlockForMainThread:v27];

  v26 = *MEMORY[0x1E69E9840];
}

- (id)_allSortedItemsInPuzzleHistory
{
  if (self)
  {
    _allItemsInPuzzleHistory = [(FCPuzzleHistory *)self _allItemsInPuzzleHistory];
    v2 = [_allItemsInPuzzleHistory sortedArrayUsingComparator:&__block_literal_global_53_0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_allItemsInPuzzleHistory
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__91;
    v9 = __Block_byref_object_dispose__91;
    v10 = 0;
    v2 = self[15];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __43__FCPuzzleHistory__allItemsInPuzzleHistory__block_invoke;
    v4[3] = &unk_1E7C37160;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadSync:v4];

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

void __43__FCPuzzleHistory__allItemsInPuzzleHistory__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (FCPuzzleHistory)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = FCPuzzleHistory;
  v10 = [(FCPrivateDataController *)&v17 initWithContext:contextCopy pushNotificationCenter:center storeDirectory:directory];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_cloudContext, context);
    v12 = objc_alloc_init(FCMTWriterLock);
    itemsLock = v11->_itemsLock;
    v11->_itemsLock = v12;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    itemsByPuzzleID = v11->_itemsByPuzzleID;
    v11->_itemsByPuzzleID = dictionary;
  }

  return v11;
}

- (BOOL)isPuzzleInPuzzleHistory:(id)history
{
  v3 = [(FCPuzzleHistory *)&self->super.super.isa _puzzleHistoryItemForPuzzleID:history];
  v4 = v3 != 0;

  return v4;
}

- (id)_puzzleHistoryItemForPuzzleID:(id *)d
{
  v3 = a2;
  v4 = v3;
  if (d)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__91;
    v15 = __Block_byref_object_dispose__91;
    v16 = 0;
    if (v3)
    {
      v5 = d[15];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __49__FCPuzzleHistory__puzzleHistoryItemForPuzzleID___block_invoke;
      v8[3] = &unk_1E7C37138;
      v10 = &v11;
      v8[4] = d;
      v9 = v4;
      [v5 performReadSync:v8];

      v6 = v12[5];
    }

    else
    {
      v6 = 0;
    }

    d = v6;
    _Block_object_dispose(&v11, 8);
  }

  return d;
}

- (void)addPuzzleToPuzzleHistory:(id)history puzzleTypeID:(id)d
{
  v6 = MEMORY[0x1E695DF00];
  dCopy = d;
  historyCopy = history;
  date = [v6 date];
  [(FCPuzzleHistory *)self _updatePuzzle:historyCopy puzzleTypeID:dCopy progressData:0 progressLevel:0 score:0 scoreType:0 rankID:0 usedReveal:0 playDuration:0 lastPlayedDate:date completedDate:0 progressMovesDescription:0 difficulty:0 publishDate:0 behaviorFlags:0];
}

- (void)_updatePuzzle:(void *)puzzle puzzleTypeID:(void *)d progressData:(void *)data progressLevel:(void *)level score:(void *)score scoreType:(void *)type rankID:(unsigned __int8)iD usedReveal:(void *)self0 playDuration:(void *)self1 lastPlayedDate:(void *)self2 completedDate:(void *)self3 progressMovesDescription:(void *)self4 difficulty:(void *)self5 publishDate:(void *)self6 behaviorFlags:
{
  v149 = *MEMORY[0x1E69E9840];
  v23 = a2;
  puzzleCopy = puzzle;
  dCopy = d;
  dataCopy = data;
  selfCopy = self;
  v133 = dataCopy;
  levelCopy = level;
  scoreCopy = score;
  typeCopy = type;
  revealCopy = reveal;
  durationCopy = duration;
  dateCopy = date;
  completedDateCopy = completedDate;
  descriptionCopy = description;
  difficultyCopy = difficulty;
  publishDateCopy = publishDate;
  if (!selfCopy)
  {
    goto LABEL_92;
  }

  [MEMORY[0x1E696AF00] isMainThread];
  if (v23)
  {
    v114 = selfCopy;
    v34 = [*(selfCopy + 96) objectForKey:v23];
    v35 = v34;
    if (puzzleCopy)
    {
      puzzleTypeID = puzzleCopy;
    }

    else
    {
      puzzleTypeID = [v34 puzzleTypeID];
    }

    v129 = puzzleTypeID;
    if (dCopy)
    {
      progressData = dCopy;
    }

    else
    {
      progressData = [v35 progressData];
    }

    v125 = progressData;
    v113 = descriptionCopy;
    if (v133)
    {
      v124 = v133;
    }

    else
    {
      v41 = completedDateCopy;
      v42 = dateCopy;
      v43 = typeCopy;
      v44 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v35, "progressLevel")}];
      v45 = v44;
      v46 = &unk_1F2E70ED8;
      if (v44)
      {
        v46 = v44;
      }

      v124 = v46;

      typeCopy = v43;
      dateCopy = v42;
      completedDateCopy = v41;
      descriptionCopy = v113;
    }

    v109 = typeCopy;
    if (typeCopy)
    {
      rankID = typeCopy;
    }

    else
    {
      rankID = [v35 rankID];
    }

    v123 = rankID;
    usedReveal = [v35 usedReveal];
    if ([usedReveal BOOLValue])
    {
      [v35 usedReveal];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithBool:iD];
    }
    v128 = ;

    if (revealCopy)
    {
      v126 = revealCopy;
    }

    else
    {
      v49 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v35, "playDuration")}];
      v50 = v49;
      v51 = &unk_1F2E70ED8;
      if (v49)
      {
        v51 = v49;
      }

      v126 = v51;
    }

    if (durationCopy)
    {
      v122 = durationCopy;
      if (descriptionCopy)
      {
LABEL_29:
        difficulty = descriptionCopy;
        goto LABEL_35;
      }
    }

    else
    {
      lastPlayedDate = [v35 lastPlayedDate];
      v54 = lastPlayedDate;
      if (lastPlayedDate)
      {
        date = lastPlayedDate;
      }

      else
      {
        date = [MEMORY[0x1E695DF00] date];
      }

      v122 = date;

      if (descriptionCopy)
      {
        goto LABEL_29;
      }
    }

    difficulty = [v35 difficulty];
LABEL_35:
    v121 = difficulty;
    if (difficultyCopy)
    {
      publishDate = difficultyCopy;
    }

    else
    {
      publishDate = [v35 publishDate];
    }

    v120 = publishDate;
    if (publishDateCopy)
    {
      behaviorFlags = publishDateCopy;
    }

    else
    {
      behaviorFlags = [v35 behaviorFlags];
    }

    v119 = behaviorFlags;
    if (completedDateCopy)
    {
      progressMovesDescription = completedDateCopy;
    }

    else
    {
      progressMovesDescription = [v35 progressMovesDescription];
    }

    v118 = progressMovesDescription;
    v112 = dCopy;
    if (levelCopy)
    {
      score = levelCopy;
      scoreType = scoreCopy;
    }

    else
    {
      score = [v35 score];
      scoreType = [v35 scoreType];
    }

    v117 = scoreType;
    v108 = revealCopy;
    if (dateCopy)
    {
      completedDate = [v35 completedDate];
      v62 = completedDate;
      if (completedDate)
      {
        v63 = completedDate;
      }

      else
      {
        v63 = dateCopy;
      }

      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    v110 = scoreCopy;
    bOOLValue = [v128 BOOLValue];
    firstCompletedDate = [v35 firstCompletedDate];
    v67 = firstCompletedDate;
    v111 = levelCopy;
    if (bOOLValue)
    {
      firstPlayDuration = [v35 firstPlayDuration];
LABEL_68:
      bestScore = [v35 bestScore];
      v74 = [(FCPuzzleHistory *)v114 puzzleTypeTraitsForPuzzleTypeID:v129];
      v107 = dateCopy;
      v115 = v67;
      v116 = v64;
      if ((v74 & 0x80000) == 0)
      {
        goto LABEL_72;
      }

      if (![bestScore intValue])
      {

        bestScore = 0;
      }

      if (![score intValue])
      {

        if (bestScore)
        {
LABEL_79:
          v75 = completedDateCopy;
          v78 = bestScore;
          bestScore = v78;
          v79 = 0;
          goto LABEL_84;
        }

        v75 = completedDateCopy;
        score = 0;
      }

      else
      {
LABEL_72:
        if (bestScore)
        {
          if (score)
          {
            v75 = completedDateCopy;
            if ((v74 & 0x80000) != 0)
            {
              v76 = score;
              v77 = bestScore;
            }

            else
            {
              v76 = bestScore;
              v77 = score;
            }

            if ([v76 compare:v77] == 1)
            {
              v78 = bestScore;
              bestScore = v78;
              v79 = score;
            }

            else
            {
              v78 = score;
              v79 = v78;
            }

            goto LABEL_84;
          }

          goto LABEL_79;
        }

        v75 = completedDateCopy;
      }

      v78 = score;
      v79 = v78;
      bestScore = 0;
LABEL_84:
      v80 = v78;
      v81 = [FCPuzzleHistoryItem alloc];
      v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ph-%@", v23];
      v106 = v80;
      v83 = -[FCPuzzleHistoryItem initWithEntryID:puzzleID:puzzleTypeID:progressData:progressLevel:score:scoreType:rankID:usedReveal:playDuration:lastPlayedDate:completedDate:firstCompletedDate:firstPlayDuration:bestScore:progressMovesDescription:difficulty:publishDate:behaviorFlags:](v81, "initWithEntryID:puzzleID:puzzleTypeID:progressData:progressLevel:score:scoreType:rankID:usedReveal:playDuration:lastPlayedDate:completedDate:firstCompletedDate:firstPlayDuration:bestScore:progressMovesDescription:difficulty:publishDate:behaviorFlags:", v82, v23, v129, v125, [v124 intValue], v79, v117, v123, v128, objc_msgSend(v126, "intValue"), v122, v64, v115, firstPlayDuration, v80, v118, v121, v120, v119);

      v84 = v79;
      if (v83)
      {
        v103 = v79;
        v104 = v75;
        dictionaryRepresentation = [(FCPuzzleHistoryItem *)v83 dictionaryRepresentation];
        v86 = v114[15];
        v135[0] = MEMORY[0x1E69E9820];
        v135[1] = 3221225472;
        v135[2] = __211__FCPuzzleHistory__updatePuzzle_puzzleTypeID_progressData_progressLevel_score_scoreType_rankID_usedReveal_playDuration_lastPlayedDate_completedDate_progressMovesDescription_difficulty_publishDate_behaviorFlags___block_invoke;
        v135[3] = &unk_1E7C376A0;
        v135[4] = v114;
        v87 = v83;
        v136 = v87;
        v105 = v23;
        v88 = v23;
        v137 = v88;
        [v86 performWriteSync:v135];
        localStore = [v114 localStore];
        identifier = [(FCPuzzleHistoryItem *)v87 identifier];
        v91 = dictionaryRepresentation;
        [localStore setObject:dictionaryRepresentation forKey:identifier];

        if (v35)
        {
          v140 = v88;
          v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v140 count:1];
          v93 = MEMORY[0x1E695E0F0];
          v94 = v114;
          v95 = v92;
        }

        else
        {
          v139 = v88;
          v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v139 count:1];
          v95 = MEMORY[0x1E695E0F0];
          v94 = v114;
          v93 = v92;
        }

        [(FCPuzzleHistory *)v94 _addedPuzzleIDs:v93 modifiedPuzzleIDs:v95 removedPuzzleIDs:MEMORY[0x1E695E0F0]];
        v96 = v115;

        v98 = [FCModifyPuzzleHistoryCommand alloc];
        v138 = v87;
        v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v138 count:1];
        v100 = [(FCModifyPuzzleHistoryCommand *)v98 initWithPuzzleHistoryItems:v99 merge:0];

        allPuzzleTypeTraits = [(FCPuzzleHistory *)v114 allPuzzleTypeTraits];
        [(FCModifyPuzzleHistoryCommand *)v100 setPuzzleTypeTraitsDict:allPuzzleTypeTraits];

        [v114 addCommandToCommandQueue:v100];
        completedDateCopy = v104;
        v23 = v105;
        v84 = v103;
      }

      else
      {
        completedDateCopy = v75;
        v96 = v115;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "updatedItem"];
          *buf = 136315906;
          v142 = "[FCPuzzleHistory _updatePuzzle:puzzleTypeID:progressData:progressLevel:score:scoreType:rankID:usedReveal:playDuration:lastPlayedDate:completedDate:progressMovesDescription:difficulty:publishDate:behaviorFlags:]";
          v143 = 2080;
          v144 = "FCPuzzleHistory.m";
          v145 = 1024;
          v146 = 448;
          v147 = 2114;
          v148 = v97;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }

      levelCopy = v111;
      dCopy = v112;
      typeCopy = v109;
      scoreCopy = v110;
      dateCopy = v107;
      revealCopy = v108;
      descriptionCopy = v113;
      goto LABEL_92;
    }

    if (firstCompletedDate)
    {
      v68 = firstCompletedDate;
    }

    else
    {
      v68 = v64;
    }

    v69 = v68;

    firstPlayDuration = [v35 firstPlayDuration];
    if (v69 && v64 && [v69 isEqualToDate:v64])
    {
      firstPlayDuration2 = [v35 firstPlayDuration];

      if (firstPlayDuration2)
      {
        firstPlayDuration3 = [v35 firstPlayDuration];
LABEL_65:
        v72 = firstPlayDuration3;

        v67 = v69;
        firstPlayDuration = v72;
        goto LABEL_68;
      }

      if ([v126 integerValue] >= 1)
      {
        firstPlayDuration3 = v126;
        goto LABEL_65;
      }

      firstPlayDuration = 0;
    }

    v67 = v69;
    goto LABEL_68;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v37 = dateCopy;
    v38 = typeCopy;
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleID != nil"];
    *buf = 136315906;
    v142 = "[FCPuzzleHistory _updatePuzzle:puzzleTypeID:progressData:progressLevel:score:scoreType:rankID:usedReveal:playDuration:lastPlayedDate:completedDate:progressMovesDescription:difficulty:publishDate:behaviorFlags:]";
    v143 = 2080;
    v144 = "FCPuzzleHistory.m";
    v145 = 1024;
    v146 = 330;
    v147 = 2114;
    v148 = v39;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    typeCopy = v38;
    dateCopy = v37;
  }

LABEL_92:

  v102 = *MEMORY[0x1E69E9840];
}

- (void)updatePuzzle:(id)puzzle puzzleTypeID:(id)d progressData:(id)data progressLevel:(int64_t)level score:(id)score scoreType:(id)type rankID:(id)iD usedReveal:(BOOL)self0 playDuration:(int64_t)self1 isSolved:(BOOL)self2 progressMovesDescription:(id)self3 difficulty:(id)self4 publishDate:(id)self5 behaviorFlags:(id)self6
{
  puzzleCopy = puzzle;
  dCopy = d;
  dataCopy = data;
  scoreCopy = score;
  typeCopy = type;
  iDCopy = iD;
  descriptionCopy = description;
  difficultyCopy = difficulty;
  dateCopy = date;
  flagsCopy = flags;
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:level];
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:duration];
  date = [MEMORY[0x1E695DF00] date];
  v30 = date;
  if (solved)
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [(FCPuzzleHistory *)self _updatePuzzle:puzzleCopy puzzleTypeID:dCopy progressData:dataCopy progressLevel:v27 score:scoreCopy scoreType:typeCopy rankID:iDCopy usedReveal:reveal playDuration:v28 lastPlayedDate:v30 completedDate:date2 progressMovesDescription:descriptionCopy difficulty:difficultyCopy publishDate:dateCopy behaviorFlags:flagsCopy];
  }

  else
  {
    [(FCPuzzleHistory *)self _updatePuzzle:puzzleCopy puzzleTypeID:dCopy progressData:dataCopy progressLevel:v27 score:scoreCopy scoreType:typeCopy rankID:iDCopy usedReveal:reveal playDuration:v28 lastPlayedDate:date completedDate:0 progressMovesDescription:descriptionCopy difficulty:difficultyCopy publishDate:dateCopy behaviorFlags:flagsCopy];
  }
}

- (void)removePuzzleFromPuzzleHistory:(id)history
{
  v41 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  [MEMORY[0x1E696AF00] isMainThread];
  if (historyCopy)
  {
    if (self)
    {
      itemsByPuzzleID = self->_itemsByPuzzleID;
    }

    else
    {
      itemsByPuzzleID = 0;
    }

    v6 = itemsByPuzzleID;
    v7 = [(NSMutableDictionary *)v6 objectForKey:historyCopy];

    if (v7)
    {
      if (self)
      {
        itemsLock = self->_itemsLock;
      }

      else
      {
        itemsLock = 0;
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __49__FCPuzzleHistory_removePuzzleFromPuzzleHistory___block_invoke;
      v29[3] = &unk_1E7C36C58;
      v29[4] = self;
      v24 = historyCopy;
      v30 = historyCopy;
      [(FCMTWriterLock *)itemsLock performWriteSync:v29];
      identifier = [v7 identifier];
      localStore = [(FCPrivateDataController *)self localStore];
      [localStore removeObjectForKey:identifier];

      v23 = identifier;
      v22 = [[FCRemoveFromPuzzleHistoryCommand alloc] initWithEntryID:identifier];
      [(FCPrivateDataController *)self addCommandToCommandQueue:?];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      observers = [(FCPrivateDataController *)self observers];
      v12 = [observers copy];

      v13 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        v16 = MEMORY[0x1E695E0F0];
        do
        {
          v17 = 0;
          do
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v25 + 1) + 8 * v17);
            v31 = v7;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
            [v18 puzzleHistory:self didAddPuzzleItems:v16 modifiedPuzzleItems:v16 removedPuzzleItems:v19];

            ++v17;
          }

          while (v14 != v17);
          v14 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
        }

        while (v14);
      }

      historyCopy = v24;
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "item"];
      *buf = 136315906;
      v34 = "[FCPuzzleHistory removePuzzleFromPuzzleHistory:]";
      v35 = 2080;
      v36 = "FCPuzzleHistory.m";
      v37 = 1024;
      v38 = 162;
      v39 = 2114;
      v40 = v21;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleID != nil"];
    *buf = 136315906;
    v34 = "[FCPuzzleHistory removePuzzleFromPuzzleHistory:]";
    v35 = 2080;
    v36 = "FCPuzzleHistory.m";
    v37 = 1024;
    v38 = 158;
    v39 = 2114;
    v40 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_19:
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __49__FCPuzzleHistory_removePuzzleFromPuzzleHistory___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[12];
  }

  return [v1 removeObjectForKey:*(a1 + 40)];
}

- (void)setFirstCompletedDate:(id)date forPuzzleID:(id)d puzzleTypeID:(id)iD
{
  v67 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  [MEMORY[0x1E696AF00] isMainThread];
  v52 = dCopy;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleID != nil"];
    *buf = 136315906;
    v60 = "[FCPuzzleHistory setFirstCompletedDate:forPuzzleID:puzzleTypeID:]";
    v61 = 2080;
    v62 = "FCPuzzleHistory.m";
    v63 = 1024;
    v64 = 192;
    v65 = 2114;
    v66 = v35;
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
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeID != nil"];
    *buf = 136315906;
    v60 = "[FCPuzzleHistory setFirstCompletedDate:forPuzzleID:puzzleTypeID:]";
    v61 = 2080;
    v62 = "FCPuzzleHistory.m";
    v63 = 1024;
    v64 = 193;
    v65 = 2114;
    v66 = v36;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (dCopy)
  {
    v50 = iDCopy;
    v51 = dateCopy;
    selfCopy = self;
    if (self)
    {
      itemsByPuzzleID = self->_itemsByPuzzleID;
    }

    else
    {
      itemsByPuzzleID = 0;
    }

    v12 = [(NSMutableDictionary *)itemsByPuzzleID objectForKey:dCopy];
    v47 = [FCPuzzleHistoryItem alloc];
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ph-%@", v52];
    progressData = [v12 progressData];
    progressLevel = [v12 progressLevel];
    score = [v12 score];
    scoreType = [v12 scoreType];
    rankID = [v12 rankID];
    usedReveal = [v12 usedReveal];
    playDuration = [v12 playDuration];
    v40 = [MEMORY[0x1E695DF00] now];
    completedDate = [v12 completedDate];
    firstPlayDuration = [v12 firstPlayDuration];
    bestScore = [v12 bestScore];
    progressMovesDescription = [v12 progressMovesDescription];
    difficulty = [v12 difficulty];
    publishDate = [v12 publishDate];
    behaviorFlags = [v12 behaviorFlags];
    v18 = [(FCPuzzleHistoryItem *)v47 initWithEntryID:v46 puzzleID:v52 puzzleTypeID:v50 progressData:progressData progressLevel:progressLevel score:score scoreType:scoreType rankID:rankID usedReveal:usedReveal playDuration:playDuration lastPlayedDate:v40 completedDate:completedDate firstCompletedDate:v51 firstPlayDuration:firstPlayDuration bestScore:bestScore progressMovesDescription:progressMovesDescription difficulty:difficulty publishDate:publishDate behaviorFlags:behaviorFlags];

    if (v18)
    {
      dictionaryRepresentation = [(FCPuzzleHistoryItem *)v18 dictionaryRepresentation];
      if (self)
      {
        itemsLock = self->_itemsLock;
      }

      else
      {
        itemsLock = 0;
      }

      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __66__FCPuzzleHistory_setFirstCompletedDate_forPuzzleID_puzzleTypeID___block_invoke;
      v53[3] = &unk_1E7C376A0;
      v53[4] = self;
      v21 = v18;
      v54 = v21;
      v22 = v52;
      v55 = v22;
      [(FCMTWriterLock *)itemsLock performWriteSync:v53];
      localStore = [(FCPrivateDataController *)self localStore];
      identifier = [(FCPuzzleHistoryItem *)v21 identifier];
      [localStore setObject:dictionaryRepresentation forKey:identifier];

      if (v12)
      {
        v58 = v22;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
        v26 = MEMORY[0x1E695E0F0];
        v27 = selfCopy;
        v28 = v25;
      }

      else
      {
        v57 = v22;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
        v28 = MEMORY[0x1E695E0F0];
        v27 = selfCopy;
        v26 = v25;
      }

      [(FCPuzzleHistory *)v27 _addedPuzzleIDs:v26 modifiedPuzzleIDs:v28 removedPuzzleIDs:MEMORY[0x1E695E0F0]];

      v30 = [FCModifyPuzzleHistoryCommand alloc];
      v56 = v21;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
      v32 = [(FCModifyPuzzleHistoryCommand *)v30 initWithPuzzleHistoryItems:v31 merge:0];

      allPuzzleTypeTraits = [(FCPuzzleHistory *)&selfCopy->super.super.isa allPuzzleTypeTraits];
      [(FCModifyPuzzleHistoryCommand *)v32 setPuzzleTypeTraitsDict:allPuzzleTypeTraits];

      [(FCPrivateDataController *)selfCopy addCommandToCommandQueue:v32];
      dateCopy = v51;
    }

    else
    {
      dateCopy = v51;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "updatedItem"];
        *buf = 136315906;
        v60 = "[FCPuzzleHistory setFirstCompletedDate:forPuzzleID:puzzleTypeID:]";
        v61 = 2080;
        v62 = "FCPuzzleHistory.m";
        v63 = 1024;
        v64 = 220;
        v65 = 2114;
        v66 = v29;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }

    iDCopy = v50;
  }

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __66__FCPuzzleHistory_setFirstCompletedDate_forPuzzleID_puzzleTypeID___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[12];
  }

  return [v1 setObject:a1[5] forKey:a1[6]];
}

- (void)_addedPuzzleIDs:(void *)ds modifiedPuzzleIDs:(void *)iDs removedPuzzleIDs:
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  dsCopy = ds;
  iDsCopy = iDs;
  if (!self)
  {
    goto LABEL_18;
  }

  [MEMORY[0x1E696AF00] isMainThread];
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "addedPuzzleIDs"];
    *buf = 136315906;
    v35 = "[FCPuzzleHistory _addedPuzzleIDs:modifiedPuzzleIDs:removedPuzzleIDs:]";
    v36 = 2080;
    v37 = "FCPuzzleHistory.m";
    v38 = 1024;
    v39 = 937;
    v40 = 2114;
    v41 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!dsCopy)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "modifiedPuzzleIDs"];
        *buf = 136315906;
        v35 = "[FCPuzzleHistory _addedPuzzleIDs:modifiedPuzzleIDs:removedPuzzleIDs:]";
        v36 = 2080;
        v37 = "FCPuzzleHistory.m";
        v38 = 1024;
        v39 = 938;
        v40 = 2114;
        v41 = v23;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!dsCopy)
  {
    goto LABEL_5;
  }

  if (!iDsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "removedPuzzleIDs"];
    *buf = 136315906;
    v35 = "[FCPuzzleHistory _addedPuzzleIDs:modifiedPuzzleIDs:removedPuzzleIDs:]";
    v36 = 2080;
    v37 = "FCPuzzleHistory.m";
    v38 = 1024;
    v39 = 939;
    v40 = 2114;
    v41 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __70__FCPuzzleHistory__addedPuzzleIDs_modifiedPuzzleIDs_removedPuzzleIDs___block_invoke;
  v32[3] = &unk_1E7C38BD8;
  v32[4] = self;
  v25 = v7;
  v10 = [v7 fc_arrayByTransformingWithBlock:v32];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __70__FCPuzzleHistory__addedPuzzleIDs_modifiedPuzzleIDs_removedPuzzleIDs___block_invoke_2;
  v31[3] = &unk_1E7C38BD8;
  v31[4] = self;
  v11 = dsCopy;
  v12 = [dsCopy fc_arrayByTransformingWithBlock:v31];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __70__FCPuzzleHistory__addedPuzzleIDs_modifiedPuzzleIDs_removedPuzzleIDs___block_invoke_3;
  v30[3] = &unk_1E7C38BD8;
  v30[4] = self;
  v13 = iDsCopy;
  v14 = [iDsCopy fc_arrayByTransformingWithBlock:v30];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  observers = [self observers];
  v16 = [observers copy];

  v17 = [v16 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v26 + 1) + 8 * v20++) puzzleHistory:self didAddPuzzleItems:v10 modifiedPuzzleItems:v12 removedPuzzleItems:v14];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v18);
  }

  v7 = v25;
  dsCopy = v11;
  iDsCopy = v13;
LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
}

- (id)allPuzzleTypeTraits
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__91;
    v9 = __Block_byref_object_dispose__91;
    v10 = 0;
    v2 = self[15];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __38__FCPuzzleHistory_allPuzzleTypeTraits__block_invoke;
    v4[3] = &unk_1E7C37160;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadSync:v4];

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

- (void)updatePuzzle:(id)puzzle difficulty:(id)difficulty publishDate:(id)date behaviorFlags:(id)flags
{
  v68 = *MEMORY[0x1E69E9840];
  puzzleCopy = puzzle;
  difficultyCopy = difficulty;
  dateCopy = date;
  flagsCopy = flags;
  [MEMORY[0x1E696AF00] isMainThread];
  if (puzzleCopy)
  {
    if (self)
    {
      itemsByPuzzleID = self->_itemsByPuzzleID;
    }

    else
    {
      itemsByPuzzleID = 0;
    }

    v15 = [(NSMutableDictionary *)itemsByPuzzleID objectForKey:puzzleCopy];
    if (v15)
    {
      selfCopy = self;
      v48 = [FCPuzzleHistoryItem alloc];
      puzzleCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ph-%@", puzzleCopy];
      puzzleTypeID = [v15 puzzleTypeID];
      progressData = [v15 progressData];
      progressLevel = [v15 progressLevel];
      score = [v15 score];
      scoreType = [v15 scoreType];
      rankID = [v15 rankID];
      usedReveal = [v15 usedReveal];
      playDuration = [v15 playDuration];
      lastPlayedDate = [v15 lastPlayedDate];
      completedDate = [v15 completedDate];
      firstCompletedDate = [v15 firstCompletedDate];
      firstPlayDuration = [v15 firstPlayDuration];
      bestScore = [v15 bestScore];
      progressMovesDescription = [v15 progressMovesDescription];
      v20 = flagsCopy;
      v21 = progressMovesDescription;
      v49 = v20;
      v50 = dateCopy;
      v51 = difficultyCopy;
      v22 = [(FCPuzzleHistoryItem *)v48 initWithEntryID:puzzleCopy puzzleID:puzzleCopy puzzleTypeID:puzzleTypeID progressData:progressData progressLevel:progressLevel score:score scoreType:scoreType rankID:rankID usedReveal:usedReveal playDuration:playDuration lastPlayedDate:lastPlayedDate completedDate:completedDate firstCompletedDate:firstCompletedDate firstPlayDuration:firstPlayDuration bestScore:bestScore progressMovesDescription:progressMovesDescription difficulty:difficultyCopy publishDate:dateCopy behaviorFlags:v20];

      v23 = v22;
      if (v22)
      {
        dictionaryRepresentation = [(FCPuzzleHistoryItem *)v22 dictionaryRepresentation];
        if (selfCopy)
        {
          itemsLock = selfCopy->_itemsLock;
        }

        else
        {
          itemsLock = 0;
        }

        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __69__FCPuzzleHistory_updatePuzzle_difficulty_publishDate_behaviorFlags___block_invoke;
        v55[3] = &unk_1E7C376A0;
        v55[4] = selfCopy;
        v26 = v22;
        v56 = v26;
        v27 = puzzleCopy;
        v57 = v27;
        [(FCMTWriterLock *)itemsLock performWriteSync:v55];
        localStore = [(FCPrivateDataController *)selfCopy localStore];
        identifier = [(FCPuzzleHistoryItem *)v26 identifier];
        [localStore setObject:dictionaryRepresentation forKey:identifier];

        v59 = v27;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        [(FCPuzzleHistory *)selfCopy _addedPuzzleIDs:v30 modifiedPuzzleIDs:MEMORY[0x1E695E0F0] removedPuzzleIDs:?];

        v31 = [FCModifyPuzzleHistoryCommand alloc];
        v58 = v26;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
        v33 = [(FCModifyPuzzleHistoryCommand *)v31 initWithPuzzleHistoryItems:v32 merge:0];

        allPuzzleTypeTraits = [(FCPuzzleHistory *)&selfCopy->super.super.isa allPuzzleTypeTraits];
        [(FCModifyPuzzleHistoryCommand *)v33 setPuzzleTypeTraitsDict:allPuzzleTypeTraits];

        [(FCPrivateDataController *)selfCopy addCommandToCommandQueue:v33];
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "updatedItem"];
        *buf = 136315906;
        v61 = "[FCPuzzleHistory updatePuzzle:difficulty:publishDate:behaviorFlags:]";
        v62 = 2080;
        v63 = "FCPuzzleHistory.m";
        v64 = 1024;
        v65 = 286;
        v66 = 2114;
        v67 = v38;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      dateCopy = v50;
      difficultyCopy = v51;
      flagsCopy = v49;
    }

    else
    {
      v36 = FCPuzzleLog;
      if (os_log_type_enabled(FCPuzzleLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v61 = puzzleCopy;
        _os_log_error_impl(&dword_1B63EF000, v36, OS_LOG_TYPE_ERROR, "FCPuzzleHistory: Failed to update stats info: history item for %{public}@ not found", buf, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleID != nil"];
    *buf = 136315906;
    v61 = "[FCPuzzleHistory updatePuzzle:difficulty:publishDate:behaviorFlags:]";
    v62 = 2080;
    v63 = "FCPuzzleHistory.m";
    v64 = 1024;
    v65 = 253;
    v66 = 2114;
    v67 = v35;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v37 = *MEMORY[0x1E69E9840];
}

uint64_t __69__FCPuzzleHistory_updatePuzzle_difficulty_publishDate_behaviorFlags___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[12];
  }

  return [v1 setObject:a1[5] forKey:a1[6]];
}

- (uint64_t)puzzleTypeTraitsForPuzzleTypeID:(uint64_t)d
{
  v3 = a2;
  if (d)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v4 = *(d + 120);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__FCPuzzleHistory_puzzleTypeTraitsForPuzzleTypeID___block_invoke;
    v6[3] = &unk_1E7C37138;
    v8 = &v9;
    v6[4] = d;
    v7 = v3;
    [v4 performReadSync:v6];

    d = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  return d;
}

uint64_t __211__FCPuzzleHistory__updatePuzzle_puzzleTypeID_progressData_progressLevel_score_scoreType_rankID_usedReveal_playDuration_lastPlayedDate_completedDate_progressMovesDescription_difficulty_publishDate_behaviorFlags___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[12];
  }

  return [v1 setObject:a1[5] forKey:a1[6]];
}

- (id)datePuzzleWasLastPlayed:(id)played
{
  v3 = [(FCPuzzleHistory *)&self->super.super.isa _puzzleHistoryItemForPuzzleID:played];
  lastPlayedDate = [v3 lastPlayedDate];

  return lastPlayedDate;
}

- (id)allSortedPuzzleIDsSinceLastPlayedDate:(id)date
{
  dateCopy = date;
  _allSortedItemsInPuzzleHistory = [(FCPuzzleHistory *)&self->super.super.isa _allSortedItemsInPuzzleHistory];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__FCPuzzleHistory_allSortedPuzzleIDsSinceLastPlayedDate___block_invoke;
  v9[3] = &unk_1E7C47738;
  v10 = dateCopy;
  v6 = dateCopy;
  v7 = [_allSortedItemsInPuzzleHistory fc_arrayByTransformingWithBlock:v9];

  return v7;
}

id __57__FCPuzzleHistory_allSortedPuzzleIDsSinceLastPlayedDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastPlayedDate];
  LODWORD(a1) = [v4 fc_isLaterThan:*(a1 + 32)];

  if (a1)
  {
    v5 = [v3 puzzleID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sortedPuzzleIDsForPuzzleTypeID:(id)d sinceLastPlayedDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  _allSortedItemsInPuzzleHistory = [(FCPuzzleHistory *)&self->super.super.isa _allSortedItemsInPuzzleHistory];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__FCPuzzleHistory_sortedPuzzleIDsForPuzzleTypeID_sinceLastPlayedDate___block_invoke;
  v13[3] = &unk_1E7C47760;
  v14 = dCopy;
  v15 = dateCopy;
  v9 = dateCopy;
  v10 = dCopy;
  v11 = [_allSortedItemsInPuzzleHistory fc_arrayByTransformingWithBlock:v13];

  return v11;
}

id __70__FCPuzzleHistory_sortedPuzzleIDsForPuzzleTypeID_sinceLastPlayedDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 puzzleTypeID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 lastPlayedDate];
    v6 = [v5 fc_isLaterThan:*(a1 + 40)];

    if (v6)
    {
      v7 = [v3 puzzleID];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)newestNotCompletedPuzzleIDForPuzzleTypeID:(id)d excludingPuzzleIDs:(id)ds
{
  dCopy = d;
  if (ds)
  {
    dsCopy = ds;
  }

  else
  {
    dsCopy = MEMORY[0x1E695E0F0];
  }

  v8 = [MEMORY[0x1E695DFD8] setWithArray:dsCopy];
  if (self)
  {
    _allItemsInPuzzleHistory = [(FCPuzzleHistory *)&self->super.super.isa _allItemsInPuzzleHistory];
    v10 = [_allItemsInPuzzleHistory sortedArrayUsingComparator:&__block_literal_global_55_1];
  }

  else
  {
    v10 = 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__FCPuzzleHistory_newestNotCompletedPuzzleIDForPuzzleTypeID_excludingPuzzleIDs___block_invoke;
  v16[3] = &unk_1E7C47788;
  v17 = v8;
  v18 = dCopy;
  selfCopy = self;
  v11 = dCopy;
  v12 = v8;
  v13 = [v10 fc_firstObjectPassingTest:v16];

  puzzleID = [v13 puzzleID];

  return puzzleID;
}

uint64_t __80__FCPuzzleHistory_newestNotCompletedPuzzleIDForPuzzleTypeID_excludingPuzzleIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 puzzleID];
  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 puzzleTypeID];
    if ([v6 isEqualToString:*(a1 + 40)])
    {
      v5 = [*(a1 + 48) hasPuzzleEverBeenCompleted:v4] ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)hasPuzzleBeenCompleted:(id)completed
{
  v3 = [(FCPuzzleHistory *)&self->super.super.isa _puzzleHistoryItemForPuzzleID:completed];
  completedDate = [v3 completedDate];
  v5 = completedDate != 0;

  return v5;
}

- (BOOL)hasPuzzleEverBeenCompleted:(id)completed
{
  v3 = [(FCPuzzleHistory *)&self->super.super.isa _puzzleHistoryItemForPuzzleID:completed];
  completedDate = [v3 completedDate];
  if (completedDate)
  {
    v5 = 1;
  }

  else
  {
    firstCompletedDate = [v3 firstCompletedDate];
    v5 = firstCompletedDate != 0;
  }

  return v5;
}

- (void)addObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCPuzzleHistory;
  [(FCPrivateDataController *)&v3 addObserver:observer];
}

- (void)removeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCPuzzleHistory;
  [(FCPrivateDataController *)&v3 removeObserver:observer];
}

uint64_t __43__FCPuzzleHistory_loadLocalCachesFromStore__block_invoke_35(uint64_t a1)
{
  v2 = FCPuzzleLog;
  if (os_log_type_enabled(FCPuzzleLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "FCPuzzleHistory: Forcing CK sync", v4, 2u);
  }

  return [*(a1 + 32) forceSyncWithCompletion:0];
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  recordsCopy = records;
  namesCopy = names;
  [MEMORY[0x1E696AF00] isMainThread];
  localStore = [(FCPrivateDataController *)self localStore];
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = v11;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__FCPuzzleHistory_handleSyncWithChangedRecords_deletedRecordNames___block_invoke;
  v20[3] = &unk_1E7C37E08;
  v21 = recordsCopy;
  v22 = localStore;
  selfCopy = self;
  v24 = v9;
  v25 = v11;
  v26 = namesCopy;
  v27 = v10;
  v14 = v10;
  v15 = namesCopy;
  v16 = v12;
  v17 = v9;
  v18 = localStore;
  v19 = recordsCopy;
  [(FCMTWriterLock *)itemsLock performWriteSync:v20];
  [(FCPuzzleHistory *)self _addedPuzzleIDs:v17 modifiedPuzzleIDs:v16 removedPuzzleIDs:v14];
}

void __67__FCPuzzleHistory_handleSyncWithChangedRecords_deletedRecordNames___block_invoke(uint64_t a1)
{
  v1 = a1;
  v142 = *MEMORY[0x1E69E9840];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = *(a1 + 32);
  v102 = [obj countByEnumeratingWithState:&v128 objects:v141 count:16];
  if (v102)
  {
    v101 = *v129;
    *&v2 = 138543618;
    v97 = v2;
    v99 = v1;
    do
    {
      v3 = 0;
      do
      {
        if (*v129 != v101)
        {
          objc_enumerationMutation(obj);
        }

        v108 = v3;
        v4 = *(*(&v128 + 1) + 8 * v3);
        v5 = [v4 recordID];
        v6 = [v5 recordName];

        v107 = v6;
        v7 = [*(v1 + 40) objectForKey:v6];
        v8 = [v4 objectForKeyedSubscript:@"puzzleID"];
        v105 = [v4 objectForKeyedSubscript:@"puzzleTypeID"];
        v120 = [v4 objectForKeyedSubscript:@"progressData"];
        v9 = [v4 objectForKeyedSubscript:@"progressLevel"];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = &unk_1F2E70ED8;
        }

        v119 = v11;

        v12 = [v4 objectForKeyedSubscript:@"score"];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = &unk_1F2E70ED8;
        }

        v118 = v14;

        v117 = [v4 objectForKeyedSubscript:@"scoreType"];
        v116 = [v4 objectForKeyedSubscript:@"rankID"];
        v15 = [v4 objectForKeyedSubscript:@"usedReveal"];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = &unk_1F2E70ED8;
        }

        v115 = v17;

        v18 = [v4 objectForKeyedSubscript:@"playDuration"];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = &unk_1F2E70ED8;
        }

        v121 = v20;

        v21 = v7;
        v123 = [v4 objectForKeyedSubscript:@"lastPlayedDate"];
        v114 = [v4 objectForKeyedSubscript:@"completedDate"];
        v113 = [v4 objectForKeyedSubscript:@"firstCompletedDate"];
        v112 = [v4 objectForKeyedSubscript:@"firstPlayDuration"];
        v22 = [v4 objectForKeyedSubscript:@"bestScore"];
        v122 = [v4 objectForKeyedSubscript:@"difficulty"];
        v111 = [v4 objectForKeyedSubscript:@"publishDate"];
        v110 = [v4 objectForKeyedSubscript:@"behaviorFlags"];
        v109 = [v4 objectForKeyedSubscript:@"progressMovesDescription"];
        v106 = v7;
        if (v7)
        {
          v103 = v22;
          v104 = v8;
          v23 = [v7 mutableCopy];
          v24 = *(v1 + 48);
          v25 = v21;
          if (!v24)
          {
            goto LABEL_62;
          }

          v26 = v4;
          v27 = [v25 objectForKeyedSubscript:@"puzzleTypeID"];
          v28 = [(FCPuzzleHistory *)v24 puzzleTypeTraitsForPuzzleTypeID:v27];
          v29 = [v25 objectForKeyedSubscript:@"progressLevel"];
          v100 = [v29 intValue];

          v30 = [v25 objectForKeyedSubscript:@"score"];
          v31 = [v30 intValue];

          v32 = [v26 objectForKeyedSubscript:@"progressLevel"];
          v33 = [v32 intValue];

          v34 = [v26 objectForKeyedSubscript:@"score"];

          v35 = [v34 intValue];
          if ((v28 & 0x40000) == 0)
          {
            goto LABEL_21;
          }

          if ((v28 & 0x80000) != 0)
          {
            if (v31 && (!v35 || v35 > v31))
            {
              v45 = FCPuzzleLog;
              v1 = v99;
              if (os_log_type_enabled(FCPuzzleLog, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_60;
              }

              goto LABEL_61;
            }

LABEL_21:
            v36 = [v24 allowLowerProgressOnCompletedPuzzles];
            v37 = v104;
            if ((v36 & 1) != 0 || ([v25 objectForKeyedSubscript:@"completedDate"], (v38 = objc_claimAutoreleasedReturnValue()) == 0))
            {

              v1 = v99;
            }

            else
            {
              if (v33 < v100)
              {

                v1 = v99;
                goto LABEL_61;
              }

              v1 = v99;
              if ((v28 & 0x80000) != 0)
              {

                if (!v35 || v35 > v31)
                {
                  goto LABEL_63;
                }
              }

              else
              {

                if (v35 < v31)
                {
                  goto LABEL_63;
                }
              }
            }

            v39 = v105;
            v40 = v121;
            if (v104)
            {
              [v23 setObject:v104 forKeyedSubscript:@"puzzleID"];
            }

            if (v105)
            {
              [v23 setObject:v105 forKeyedSubscript:@"puzzleTypeID"];
            }

            if (v120)
            {
              [v23 setObject:v120 forKeyedSubscript:@"progressData"];
            }

            if (([v119 intValue] & 0x80000000) == 0)
            {
              [v23 setObject:v119 forKeyedSubscript:@"progressLevel"];
            }

            if (([v118 intValue] & 0x80000000) == 0)
            {
              [v23 setObject:v118 forKeyedSubscript:@"score"];
            }

            if (([v121 intValue] & 0x80000000) == 0)
            {
              [v23 setObject:v121 forKeyedSubscript:@"playDuration"];
            }

            if (v116)
            {
              [v23 setObject:v116 forKeyedSubscript:@"rankID"];
            }

            if (v109)
            {
              [v23 setObject:v109 forKeyedSubscript:@"progressMovesDescription"];
            }

            if (v117)
            {
              [v23 setObject:v117 forKeyedSubscript:@"scoreType"];
            }

            [v23 setObject:v123 forKeyedSubscript:@"lastPlayedDate"];
            [v23 setObject:v114 forKeyedSubscript:@"completedDate"];
            [v23 setObject:v115 forKeyedSubscript:@"usedReveal"];
            if (v113)
            {
              v53 = [v23 objectForKeyedSubscript:@"firstCompletedDate"];
              if (v53)
              {
                v54 = [v113 earlierDate:v53];
                [v23 setObject:v54 forKeyedSubscript:@"firstCompletedDate"];

                v55 = [v23 objectForKeyedSubscript:@"firstCompletedDate"];
                v56 = [v53 isEqualToDate:v55] ^ 1;
              }

              else
              {
                [v23 setObject:v113 forKeyedSubscript:@"firstCompletedDate"];
                v56 = 1;
              }
            }

            else
            {
              v56 = 0;
            }

            if (v112)
            {
              v57 = [v23 objectForKeyedSubscript:@"firstPlayDuration"];
              v58 = v57;
              if (v57)
              {
                v59 = v56;
              }

              else
              {
                v59 = 1;
              }

              if (v59)
              {
                v60 = v112;
              }

              else
              {
                v60 = v57;
              }

              [v23 setObject:v60 forKeyedSubscript:@"firstPlayDuration"];
            }

            if (v110)
            {
              v61 = [v23 objectForKeyedSubscript:@"behaviorFlags"];
              if ([v61 integerValue])
              {
                v62 = v61;
              }

              else
              {
                v62 = v110;
              }

              [v23 setObject:v62 forKeyedSubscript:@"behaviorFlags"];
            }

            v22 = v103;
            v63 = v122;
            if (v103)
            {
              v64 = [v23 objectForKeyedSubscript:@"bestScore"];
              v65 = [(FCPuzzleHistory *)*(v1 + 48) puzzleTypeTraitsForPuzzleTypeID:v105];
              if (v64)
              {
                v66 = v65;
                v67 = [v103 integerValue];
                v68 = [v64 integerValue];
                if (v67 >= v68)
                {
                  v69 = v68;
                }

                else
                {
                  v69 = v67;
                }

                if (v67 <= v68)
                {
                  v70 = v68;
                }

                else
                {
                  v70 = v67;
                }

                if ((*&v66 & 0x80000) != 0)
                {
                  v71 = v69;
                }

                else
                {
                  v71 = v70;
                }

                v72 = [MEMORY[0x1E696AD98] numberWithInteger:v71];
                [v23 setObject:v72 forKeyedSubscript:@"bestScore"];
              }

              else
              {
                [v23 setObject:v103 forKeyedSubscript:@"bestScore"];
              }

              v40 = v121;
              v63 = v122;
            }

            if (v63)
            {
              v73 = [v23 objectForKeyedSubscript:@"difficulty"];
              v74 = v73;
              if (v73)
              {
                v75 = v73;
              }

              else
              {
                v75 = v63;
              }

              [v23 setObject:v75 forKeyedSubscript:@"difficulty"];
            }

            if (v111)
            {
              v76 = [v23 objectForKeyedSubscript:@"publishDate"];
              v77 = v76;
              if (v76)
              {
                v78 = v76;
              }

              else
              {
                v78 = v111;
              }

              [v23 setObject:v78 forKeyedSubscript:@"publishDate"];
            }

            v6 = v107;
            [*(v1 + 40) setObject:v23 forKey:v107];
            if (v104)
            {
              v47 = [[FCPuzzleHistoryItem alloc] initWithEntryID:v107 dictionaryRepresentation:v23];
              v79 = *(v1 + 48);
              if (v79)
              {
                v80 = *(v79 + 96);
              }

              else
              {
                v80 = 0;
              }

              [v80 setObject:v47 forKey:v104];
              [*(v1 + 64) addObject:v104];
              goto LABEL_141;
            }
          }

          else
          {
            if (v35 >= v31)
            {
              goto LABEL_21;
            }

            v45 = FCPuzzleLog;
            v1 = v99;
            if (os_log_type_enabled(FCPuzzleLog, OS_LOG_TYPE_DEFAULT))
            {
LABEL_60:
              *buf = 67109376;
              *v135 = v31;
              *&v135[4] = 1024;
              *&v135[6] = v35;
              _os_log_impl(&dword_1B63EF000, v45, OS_LOG_TYPE_DEFAULT, "FCPuzzleHistory: Invalid progress update localScore=%d, remoteScore=%d.", buf, 0xEu);
            }

LABEL_61:

LABEL_62:
            v37 = v104;
LABEL_63:
            v46 = FCPuzzleLog;
            v39 = v105;
            v40 = v121;
            if (os_log_type_enabled(FCPuzzleLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *v135 = v37;
              _os_log_impl(&dword_1B63EF000, v46, OS_LOG_TYPE_DEFAULT, "FCPuzzleHistory: Received update with a lower score/progress for %{public}@. Replacing with local record.", buf, 0xCu);
            }

            v47 = [*(v1 + 48) puzzleHistoryItemForPuzzleID:v37];
            if (v47)
            {
              v48 = [FCModifyPuzzleHistoryCommand alloc];
              v133 = v47;
              v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v133 count:1];
              v50 = [(FCModifyPuzzleHistoryCommand *)v48 initWithPuzzleHistoryItems:v49 merge:0];

              v51 = [(FCPuzzleHistory *)*(v1 + 48) allPuzzleTypeTraits];
              [(FCModifyPuzzleHistoryCommand *)v50 setPuzzleTypeTraitsDict:v51];

              [*(v1 + 48) addCommandToCommandQueue:v50];
            }

            v6 = v107;
            v22 = v103;
LABEL_141:
          }

          goto LABEL_143;
        }

        v37 = v8;
        if (v8)
        {
          v39 = v105;
          v40 = v121;
          if (v123)
          {
            v41 = [MEMORY[0x1E695DF90] dictionary];
            [v41 fc_safelySetObject:v37 forKey:@"puzzleID"];
            [v41 fc_safelySetObject:v105 forKey:@"puzzleTypeID"];
            if (v120)
            {
              [v41 fc_safelySetObject:v120 forKey:@"progressData"];
            }

            [v41 fc_safelySetObject:v119 forKey:@"progressLevel"];
            [v41 fc_safelySetObject:v118 forKey:@"score"];
            [v41 fc_safelySetObject:v115 forKey:@"usedReveal"];
            [v41 fc_safelySetObject:v121 forKey:@"playDuration"];
            [v41 fc_safelySetObject:v123 forKey:@"lastPlayedDate"];
            if (v116)
            {
              [v41 fc_safelySetObject:v116 forKey:@"rankID"];
            }

            if (v114)
            {
              [v41 fc_safelySetObject:v114 forKey:@"completedDate"];
            }

            if (v113)
            {
              [v41 fc_safelySetObject:v113 forKey:@"firstCompletedDate"];
            }

            if (v112)
            {
              [v41 fc_safelySetObject:v112 forKey:@"firstPlayDuration"];
            }

            if (v22)
            {
              [v41 fc_safelySetObject:v22 forKey:@"bestScore"];
            }

            if (v122)
            {
              [v41 fc_safelySetObject:v122 forKey:@"difficulty"];
            }

            if (v111)
            {
              [v41 fc_safelySetObject:v111 forKey:@"publishDate"];
            }

            if (v110)
            {
              [v41 fc_safelySetObject:v110 forKey:@"behaviorFlags"];
            }

            if (v109)
            {
              [v41 fc_safelySetObject:v109 forKey:@"progressMovesDescription"];
            }

            if (v117)
            {
              [v41 fc_safelySetObject:v117 forKey:@"scoreType"];
            }

            v42 = [[FCPuzzleHistoryItem alloc] initWithEntryID:v6 dictionaryRepresentation:v41];
            v43 = *(v1 + 48);
            if (v43)
            {
              v44 = *(v43 + 96);
            }

            else
            {
              v44 = 0;
            }

            [v44 setObject:v42 forKey:v37];
            [*(v1 + 40) setObject:v41 forKey:v6];
            [*(v1 + 56) addObject:v37];

            v40 = v121;
            goto LABEL_143;
          }
        }

        else
        {
          v39 = v105;
          v40 = v121;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a puzzleHistoryItem without a puzzleID"];
            *buf = 136315906;
            *v135 = "[FCPuzzleHistory handleSyncWithChangedRecords:deletedRecordNames:]_block_invoke";
            *&v135[8] = 2080;
            v136 = "FCPuzzleHistory.m";
            v137 = 1024;
            v138 = 621;
            v139 = 2114;
            v140 = v81;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

            v40 = v121;
          }

          if (v123)
          {
            goto LABEL_73;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a puzzleHistoryItem without a lastPlayedDate"];
          *buf = 136315906;
          *v135 = "[FCPuzzleHistory handleSyncWithChangedRecords:deletedRecordNames:]_block_invoke";
          *&v135[8] = 2080;
          v136 = "FCPuzzleHistory.m";
          v137 = 1024;
          v138 = 622;
          v139 = 2114;
          v140 = v82;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          v40 = v121;
        }

LABEL_73:
        v52 = FCPuzzleLog;
        if (os_log_type_enabled(FCPuzzleLog, OS_LOG_TYPE_ERROR))
        {
          *buf = v97;
          *v135 = v37;
          *&v135[8] = 2114;
          v136 = v123;
          _os_log_error_impl(&dword_1B63EF000, v52, OS_LOG_TYPE_ERROR, "FCPuzzleHistory: Received invalid new changed record puzzleID=%{public}@ lastPlayedDate=%{public}@", buf, 0x16u);
        }

LABEL_143:

        v3 = v108 + 1;
      }

      while (v102 != v108 + 1);
      v83 = [obj countByEnumeratingWithState:&v128 objects:v141 count:16];
      v102 = v83;
    }

    while (v83);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v84 = *(v1 + 72);
  v85 = [v84 countByEnumeratingWithState:&v124 objects:v132 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v125;
    do
    {
      v88 = 0;
      do
      {
        if (*v125 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = *(*(&v124 + 1) + 8 * v88);
        v90 = [*(v1 + 40) objectForKey:v89];
        v91 = v90;
        if (v90)
        {
          v92 = [v90 objectForKeyedSubscript:@"puzzleID"];
          v93 = *(v1 + 48);
          if (v93)
          {
            v94 = *(v93 + 96);
          }

          else
          {
            v94 = 0;
          }

          [v94 removeObjectForKey:v92];
          [*(v1 + 40) removeObjectForKey:v89];
          [*(v1 + 80) addObject:v92];
        }

        ++v88;
      }

      while (v86 != v88);
      v95 = [v84 countByEnumeratingWithState:&v124 objects:v132 count:16];
      v86 = v95;
    }

    while (v95);
  }

  v96 = *MEMORY[0x1E69E9840];
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    itemsByPuzzleID = self->_itemsByPuzzleID;
  }

  else
  {
    itemsByPuzzleID = 0;
  }

  allValues = [(NSMutableDictionary *)itemsByPuzzleID allValues];
  v6 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_179];

  return v6;
}

+ (id)backingRecordZoneIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = [v2 initWithZoneName:@"PuzzleHistory" ownerName:*MEMORY[0x1E695B728]];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory
{
  v25 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [cloudCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (([self isLocalStoreKeyInternal:v12] & 1) == 0)
        {
          v13 = [cloudCopy objectForKey:v12];
          v14 = [[FCPuzzleHistoryItem alloc] initWithEntryID:v12 dictionaryRepresentation:v13];
          [array addObject:v14];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = [[FCModifyPuzzleHistoryCommand alloc] initWithPuzzleHistoryItems:array merge:1];
  v23 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)recordsForRestoringZoneName:(id)name
{
  _allItemsInPuzzleHistory = [(FCPuzzleHistory *)&self->super.super.isa _allItemsInPuzzleHistory];
  v4 = [_allItemsInPuzzleHistory fc_arrayByTransformingWithBlock:&__block_literal_global_46_2];

  return v4;
}

void __49__FCPuzzleHistory__puzzleHistoryItemForPuzzleID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKey:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __49__FCPuzzleHistory__allSortedItemsInPuzzleHistory__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastPlayedDate];
  v6 = [v4 lastPlayedDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __64__FCPuzzleHistory__allSortedItemsByPublishedDateInPuzzleHistory__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 publishDate];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF00] distantPast];
  }

  v8 = v7;

  v9 = [v4 publishDate];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] distantPast];
  }

  v11 = v10;

  v12 = [v11 compare:v8];
  return v12;
}

- (void)setPuzzleTypeTraits:(id)traits
{
  traitsCopy = traits;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__FCPuzzleHistory_setPuzzleTypeTraits___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = traitsCopy;
  v6 = traitsCopy;
  [(FCMTWriterLock *)itemsLock performWriteSync:v7];
}

void __39__FCPuzzleHistory_setPuzzleTypeTraits___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, a2, *(a1 + 40), 112);
  }
}

void __51__FCPuzzleHistory_puzzleTypeTraitsForPuzzleTypeID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[14];
  }

  v3 = a1[5];
  v4 = v2;
  v5 = [v4 objectForKey:v3];
  *(*(a1[6] + 8) + 24) = [v5 integerValue];
}

void __38__FCPuzzleHistory_allPuzzleTypeTraits__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[14];
  }

  v6 = v2;
  v3 = [v6 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end