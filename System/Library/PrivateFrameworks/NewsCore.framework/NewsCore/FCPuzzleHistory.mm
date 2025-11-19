@interface FCPuzzleHistory
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4;
- (BOOL)hasPuzzleBeenCompleted:(id)a3;
- (BOOL)hasPuzzleEverBeenCompleted:(id)a3;
- (BOOL)isPuzzleInPuzzleHistory:(id)a3;
- (FCPuzzleHistory)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5;
- (id)_allItemsInPuzzleHistory;
- (id)_allSortedItemsInPuzzleHistory;
- (id)_puzzleHistoryItemForPuzzleID:(id *)a1;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3;
- (id)allPuzzleTypeTraits;
- (id)allSortedPuzzleIDsSinceLastPlayedDate:(id)a3;
- (id)datePuzzleWasLastPlayed:(id)a3;
- (id)newestNotCompletedPuzzleIDForPuzzleTypeID:(id)a3 excludingPuzzleIDs:(id)a4;
- (id)recordsForRestoringZoneName:(id)a3;
- (id)sortedPuzzleIDsForPuzzleTypeID:(id)a3 sinceLastPlayedDate:(id)a4;
- (uint64_t)puzzleTypeTraitsForPuzzleTypeID:(uint64_t)a1;
- (void)_addedPuzzleIDs:(void *)a3 modifiedPuzzleIDs:(void *)a4 removedPuzzleIDs:;
- (void)_updatePuzzle:(void *)a3 puzzleTypeID:(void *)a4 progressData:(void *)a5 progressLevel:(void *)a6 score:(void *)a7 scoreType:(void *)a8 rankID:(unsigned __int8)a9 usedReveal:(void *)a10 playDuration:(void *)a11 lastPlayedDate:(void *)a12 completedDate:(void *)a13 progressMovesDescription:(void *)a14 difficulty:(void *)a15 publishDate:(void *)a16 behaviorFlags:;
- (void)addObserver:(id)a3;
- (void)addPuzzleToPuzzleHistory:(id)a3 puzzleTypeID:(id)a4;
- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4;
- (void)loadLocalCachesFromStore;
- (void)removeObserver:(id)a3;
- (void)removePuzzleFromPuzzleHistory:(id)a3;
- (void)setFirstCompletedDate:(id)a3 forPuzzleID:(id)a4 puzzleTypeID:(id)a5;
- (void)setPuzzleTypeTraits:(id)a3;
- (void)updatePuzzle:(id)a3 difficulty:(id)a4 publishDate:(id)a5 behaviorFlags:(id)a6;
- (void)updatePuzzle:(id)a3 puzzleTypeID:(id)a4 progressData:(id)a5 progressLevel:(int64_t)a6 score:(id)a7 scoreType:(id)a8 rankID:(id)a9 usedReveal:(BOOL)a10 playDuration:(int64_t)a11 isSolved:(BOOL)a12 progressMovesDescription:(id)a13 difficulty:(id)a14 publishDate:(id)a15 behaviorFlags:(id)a16;
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
  if (a1)
  {
    v1 = [(FCPuzzleHistory *)a1 _allItemsInPuzzleHistory];
    v2 = [v1 sortedArrayUsingComparator:&__block_literal_global_53_0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_allItemsInPuzzleHistory
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__91;
    v9 = __Block_byref_object_dispose__91;
    v10 = 0;
    v2 = a1[15];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __43__FCPuzzleHistory__allItemsInPuzzleHistory__block_invoke;
    v4[3] = &unk_1E7C37160;
    v4[4] = v1;
    v4[5] = &v5;
    [v2 performReadSync:v4];

    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
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

- (FCPuzzleHistory)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5
{
  v9 = a3;
  v17.receiver = self;
  v17.super_class = FCPuzzleHistory;
  v10 = [(FCPrivateDataController *)&v17 initWithContext:v9 pushNotificationCenter:a4 storeDirectory:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_cloudContext, a3);
    v12 = objc_alloc_init(FCMTWriterLock);
    itemsLock = v11->_itemsLock;
    v11->_itemsLock = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    itemsByPuzzleID = v11->_itemsByPuzzleID;
    v11->_itemsByPuzzleID = v14;
  }

  return v11;
}

- (BOOL)isPuzzleInPuzzleHistory:(id)a3
{
  v3 = [(FCPuzzleHistory *)&self->super.super.isa _puzzleHistoryItemForPuzzleID:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)_puzzleHistoryItemForPuzzleID:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__91;
    v15 = __Block_byref_object_dispose__91;
    v16 = 0;
    if (v3)
    {
      v5 = a1[15];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __49__FCPuzzleHistory__puzzleHistoryItemForPuzzleID___block_invoke;
      v8[3] = &unk_1E7C37138;
      v10 = &v11;
      v8[4] = a1;
      v9 = v4;
      [v5 performReadSync:v8];

      v6 = v12[5];
    }

    else
    {
      v6 = 0;
    }

    a1 = v6;
    _Block_object_dispose(&v11, 8);
  }

  return a1;
}

- (void)addPuzzleToPuzzleHistory:(id)a3 puzzleTypeID:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  [(FCPuzzleHistory *)self _updatePuzzle:v8 puzzleTypeID:v7 progressData:0 progressLevel:0 score:0 scoreType:0 rankID:0 usedReveal:0 playDuration:0 lastPlayedDate:v9 completedDate:0 progressMovesDescription:0 difficulty:0 publishDate:0 behaviorFlags:0];
}

- (void)_updatePuzzle:(void *)a3 puzzleTypeID:(void *)a4 progressData:(void *)a5 progressLevel:(void *)a6 score:(void *)a7 scoreType:(void *)a8 rankID:(unsigned __int8)a9 usedReveal:(void *)a10 playDuration:(void *)a11 lastPlayedDate:(void *)a12 completedDate:(void *)a13 progressMovesDescription:(void *)a14 difficulty:(void *)a15 publishDate:(void *)a16 behaviorFlags:
{
  v149 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v134 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a1;
  v133 = v25;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a10;
  v132 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v131 = a15;
  v130 = a16;
  if (!v26)
  {
    goto LABEL_92;
  }

  [MEMORY[0x1E696AF00] isMainThread];
  if (v23)
  {
    v114 = v26;
    v34 = [*(v26 + 96) objectForKey:v23];
    v35 = v34;
    if (v134)
    {
      v36 = v134;
    }

    else
    {
      v36 = [v34 puzzleTypeID];
    }

    v129 = v36;
    if (v24)
    {
      v40 = v24;
    }

    else
    {
      v40 = [v35 progressData];
    }

    v125 = v40;
    v113 = v33;
    if (v133)
    {
      v124 = v133;
    }

    else
    {
      v41 = v32;
      v42 = v31;
      v43 = v29;
      v44 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v35, "progressLevel")}];
      v45 = v44;
      v46 = &unk_1F2E70ED8;
      if (v44)
      {
        v46 = v44;
      }

      v124 = v46;

      v29 = v43;
      v31 = v42;
      v32 = v41;
      v33 = v113;
    }

    v109 = v29;
    if (v29)
    {
      v47 = v29;
    }

    else
    {
      v47 = [v35 rankID];
    }

    v123 = v47;
    v48 = [v35 usedReveal];
    if ([v48 BOOLValue])
    {
      [v35 usedReveal];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithBool:a9];
    }
    v128 = ;

    if (v30)
    {
      v126 = v30;
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

    if (v132)
    {
      v122 = v132;
      if (v33)
      {
LABEL_29:
        v52 = v33;
        goto LABEL_35;
      }
    }

    else
    {
      v53 = [v35 lastPlayedDate];
      v54 = v53;
      if (v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = [MEMORY[0x1E695DF00] date];
      }

      v122 = v55;

      if (v33)
      {
        goto LABEL_29;
      }
    }

    v52 = [v35 difficulty];
LABEL_35:
    v121 = v52;
    if (v131)
    {
      v56 = v131;
    }

    else
    {
      v56 = [v35 publishDate];
    }

    v120 = v56;
    if (v130)
    {
      v57 = v130;
    }

    else
    {
      v57 = [v35 behaviorFlags];
    }

    v119 = v57;
    if (v32)
    {
      v58 = v32;
    }

    else
    {
      v58 = [v35 progressMovesDescription];
    }

    v118 = v58;
    v112 = v24;
    if (v27)
    {
      v59 = v27;
      v60 = v28;
    }

    else
    {
      v59 = [v35 score];
      v60 = [v35 scoreType];
    }

    v117 = v60;
    v108 = v30;
    if (v31)
    {
      v61 = [v35 completedDate];
      v62 = v61;
      if (v61)
      {
        v63 = v61;
      }

      else
      {
        v63 = v31;
      }

      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    v110 = v28;
    v65 = [v128 BOOLValue];
    v66 = [v35 firstCompletedDate];
    v67 = v66;
    v111 = v27;
    if (v65)
    {
      v127 = [v35 firstPlayDuration];
LABEL_68:
      v73 = [v35 bestScore];
      v74 = [(FCPuzzleHistory *)v114 puzzleTypeTraitsForPuzzleTypeID:v129];
      v107 = v31;
      v115 = v67;
      v116 = v64;
      if ((v74 & 0x80000) == 0)
      {
        goto LABEL_72;
      }

      if (![v73 intValue])
      {

        v73 = 0;
      }

      if (![v59 intValue])
      {

        if (v73)
        {
LABEL_79:
          v75 = v32;
          v78 = v73;
          v73 = v78;
          v79 = 0;
          goto LABEL_84;
        }

        v75 = v32;
        v59 = 0;
      }

      else
      {
LABEL_72:
        if (v73)
        {
          if (v59)
          {
            v75 = v32;
            if ((v74 & 0x80000) != 0)
            {
              v76 = v59;
              v77 = v73;
            }

            else
            {
              v76 = v73;
              v77 = v59;
            }

            if ([v76 compare:v77] == 1)
            {
              v78 = v73;
              v73 = v78;
              v79 = v59;
            }

            else
            {
              v78 = v59;
              v79 = v78;
            }

            goto LABEL_84;
          }

          goto LABEL_79;
        }

        v75 = v32;
      }

      v78 = v59;
      v79 = v78;
      v73 = 0;
LABEL_84:
      v80 = v78;
      v81 = [FCPuzzleHistoryItem alloc];
      v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ph-%@", v23];
      v106 = v80;
      v83 = -[FCPuzzleHistoryItem initWithEntryID:puzzleID:puzzleTypeID:progressData:progressLevel:score:scoreType:rankID:usedReveal:playDuration:lastPlayedDate:completedDate:firstCompletedDate:firstPlayDuration:bestScore:progressMovesDescription:difficulty:publishDate:behaviorFlags:](v81, "initWithEntryID:puzzleID:puzzleTypeID:progressData:progressLevel:score:scoreType:rankID:usedReveal:playDuration:lastPlayedDate:completedDate:firstCompletedDate:firstPlayDuration:bestScore:progressMovesDescription:difficulty:publishDate:behaviorFlags:", v82, v23, v129, v125, [v124 intValue], v79, v117, v123, v128, objc_msgSend(v126, "intValue"), v122, v64, v115, v127, v80, v118, v121, v120, v119);

      v84 = v79;
      if (v83)
      {
        v103 = v79;
        v104 = v75;
        v85 = [(FCPuzzleHistoryItem *)v83 dictionaryRepresentation];
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
        v89 = [v114 localStore];
        v90 = [(FCPuzzleHistoryItem *)v87 identifier];
        v91 = v85;
        [v89 setObject:v85 forKey:v90];

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

        v101 = [(FCPuzzleHistory *)v114 allPuzzleTypeTraits];
        [(FCModifyPuzzleHistoryCommand *)v100 setPuzzleTypeTraitsDict:v101];

        [v114 addCommandToCommandQueue:v100];
        v32 = v104;
        v23 = v105;
        v84 = v103;
      }

      else
      {
        v32 = v75;
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

      v27 = v111;
      v24 = v112;
      v29 = v109;
      v28 = v110;
      v31 = v107;
      v30 = v108;
      v33 = v113;
      goto LABEL_92;
    }

    if (v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = v64;
    }

    v69 = v68;

    v127 = [v35 firstPlayDuration];
    if (v69 && v64 && [v69 isEqualToDate:v64])
    {
      v70 = [v35 firstPlayDuration];

      if (v70)
      {
        v71 = [v35 firstPlayDuration];
LABEL_65:
        v72 = v71;

        v67 = v69;
        v127 = v72;
        goto LABEL_68;
      }

      if ([v126 integerValue] >= 1)
      {
        v71 = v126;
        goto LABEL_65;
      }

      v127 = 0;
    }

    v67 = v69;
    goto LABEL_68;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v37 = v31;
    v38 = v29;
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

    v29 = v38;
    v31 = v37;
  }

LABEL_92:

  v102 = *MEMORY[0x1E69E9840];
}

- (void)updatePuzzle:(id)a3 puzzleTypeID:(id)a4 progressData:(id)a5 progressLevel:(int64_t)a6 score:(id)a7 scoreType:(id)a8 rankID:(id)a9 usedReveal:(BOOL)a10 playDuration:(int64_t)a11 isSolved:(BOOL)a12 progressMovesDescription:(id)a13 difficulty:(id)a14 publishDate:(id)a15 behaviorFlags:(id)a16
{
  v36 = a3;
  v35 = a4;
  v34 = a5;
  v33 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:a11];
  v29 = [MEMORY[0x1E695DF00] date];
  v30 = v29;
  if (a12)
  {
    v31 = [MEMORY[0x1E695DF00] date];
    [(FCPuzzleHistory *)self _updatePuzzle:v36 puzzleTypeID:v35 progressData:v34 progressLevel:v27 score:v33 scoreType:v21 rankID:v22 usedReveal:a10 playDuration:v28 lastPlayedDate:v30 completedDate:v31 progressMovesDescription:v23 difficulty:v24 publishDate:v25 behaviorFlags:v26];
  }

  else
  {
    [(FCPuzzleHistory *)self _updatePuzzle:v36 puzzleTypeID:v35 progressData:v34 progressLevel:v27 score:v33 scoreType:v21 rankID:v22 usedReveal:a10 playDuration:v28 lastPlayedDate:v29 completedDate:0 progressMovesDescription:v23 difficulty:v24 publishDate:v25 behaviorFlags:v26];
  }
}

- (void)removePuzzleFromPuzzleHistory:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
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
    v7 = [(NSMutableDictionary *)v6 objectForKey:v4];

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
      v24 = v4;
      v30 = v4;
      [(FCMTWriterLock *)itemsLock performWriteSync:v29];
      v9 = [v7 identifier];
      v10 = [(FCPrivateDataController *)self localStore];
      [v10 removeObjectForKey:v9];

      v23 = v9;
      v22 = [[FCRemoveFromPuzzleHistoryCommand alloc] initWithEntryID:v9];
      [(FCPrivateDataController *)self addCommandToCommandQueue:?];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [(FCPrivateDataController *)self observers];
      v12 = [v11 copy];

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

      v4 = v24;
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

- (void)setFirstCompletedDate:(id)a3 forPuzzleID:(id)a4 puzzleTypeID:(id)a5
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [MEMORY[0x1E696AF00] isMainThread];
  v52 = v9;
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
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
  if (v9)
  {
    v50 = v10;
    v51 = v8;
    v37 = self;
    if (self)
    {
      itemsByPuzzleID = self->_itemsByPuzzleID;
    }

    else
    {
      itemsByPuzzleID = 0;
    }

    v12 = [(NSMutableDictionary *)itemsByPuzzleID objectForKey:v9];
    v47 = [FCPuzzleHistoryItem alloc];
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ph-%@", v52];
    v45 = [v12 progressData];
    v44 = [v12 progressLevel];
    v43 = [v12 score];
    v49 = [v12 scoreType];
    v48 = [v12 rankID];
    v41 = [v12 usedReveal];
    v42 = [v12 playDuration];
    v40 = [MEMORY[0x1E695DF00] now];
    v39 = [v12 completedDate];
    v38 = [v12 firstPlayDuration];
    v13 = [v12 bestScore];
    v14 = [v12 progressMovesDescription];
    v15 = [v12 difficulty];
    v16 = [v12 publishDate];
    v17 = [v12 behaviorFlags];
    v18 = [(FCPuzzleHistoryItem *)v47 initWithEntryID:v46 puzzleID:v52 puzzleTypeID:v50 progressData:v45 progressLevel:v44 score:v43 scoreType:v49 rankID:v48 usedReveal:v41 playDuration:v42 lastPlayedDate:v40 completedDate:v39 firstCompletedDate:v51 firstPlayDuration:v38 bestScore:v13 progressMovesDescription:v14 difficulty:v15 publishDate:v16 behaviorFlags:v17];

    if (v18)
    {
      v19 = [(FCPuzzleHistoryItem *)v18 dictionaryRepresentation];
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
      v23 = [(FCPrivateDataController *)self localStore];
      v24 = [(FCPuzzleHistoryItem *)v21 identifier];
      [v23 setObject:v19 forKey:v24];

      if (v12)
      {
        v58 = v22;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
        v26 = MEMORY[0x1E695E0F0];
        v27 = v37;
        v28 = v25;
      }

      else
      {
        v57 = v22;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
        v28 = MEMORY[0x1E695E0F0];
        v27 = v37;
        v26 = v25;
      }

      [(FCPuzzleHistory *)v27 _addedPuzzleIDs:v26 modifiedPuzzleIDs:v28 removedPuzzleIDs:MEMORY[0x1E695E0F0]];

      v30 = [FCModifyPuzzleHistoryCommand alloc];
      v56 = v21;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
      v32 = [(FCModifyPuzzleHistoryCommand *)v30 initWithPuzzleHistoryItems:v31 merge:0];

      v33 = [(FCPuzzleHistory *)&v37->super.super.isa allPuzzleTypeTraits];
      [(FCModifyPuzzleHistoryCommand *)v32 setPuzzleTypeTraitsDict:v33];

      [(FCPrivateDataController *)v37 addCommandToCommandQueue:v32];
      v8 = v51;
    }

    else
    {
      v8 = v51;
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

    v10 = v50;
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

- (void)_addedPuzzleIDs:(void *)a3 modifiedPuzzleIDs:(void *)a4 removedPuzzleIDs:
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
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

    if (!v8)
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

  else if (!v8)
  {
    goto LABEL_5;
  }

  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  v32[4] = a1;
  v25 = v7;
  v10 = [v7 fc_arrayByTransformingWithBlock:v32];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __70__FCPuzzleHistory__addedPuzzleIDs_modifiedPuzzleIDs_removedPuzzleIDs___block_invoke_2;
  v31[3] = &unk_1E7C38BD8;
  v31[4] = a1;
  v11 = v8;
  v12 = [v8 fc_arrayByTransformingWithBlock:v31];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __70__FCPuzzleHistory__addedPuzzleIDs_modifiedPuzzleIDs_removedPuzzleIDs___block_invoke_3;
  v30[3] = &unk_1E7C38BD8;
  v30[4] = a1;
  v13 = v9;
  v14 = [v9 fc_arrayByTransformingWithBlock:v30];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = [a1 observers];
  v16 = [v15 copy];

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

        [*(*(&v26 + 1) + 8 * v20++) puzzleHistory:a1 didAddPuzzleItems:v10 modifiedPuzzleItems:v12 removedPuzzleItems:v14];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v18);
  }

  v7 = v25;
  v8 = v11;
  v9 = v13;
LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
}

- (id)allPuzzleTypeTraits
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__91;
    v9 = __Block_byref_object_dispose__91;
    v10 = 0;
    v2 = a1[15];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __38__FCPuzzleHistory_allPuzzleTypeTraits__block_invoke;
    v4[3] = &unk_1E7C37160;
    v4[4] = v1;
    v4[5] = &v5;
    [v2 performReadSync:v4];

    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

- (void)updatePuzzle:(id)a3 difficulty:(id)a4 publishDate:(id)a5 behaviorFlags:(id)a6
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v10)
  {
    if (self)
    {
      itemsByPuzzleID = self->_itemsByPuzzleID;
    }

    else
    {
      itemsByPuzzleID = 0;
    }

    v15 = [(NSMutableDictionary *)itemsByPuzzleID objectForKey:v10];
    if (v15)
    {
      v39 = self;
      v48 = [FCPuzzleHistoryItem alloc];
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ph-%@", v10];
      v47 = [v15 puzzleTypeID];
      v46 = [v15 progressData];
      v45 = [v15 progressLevel];
      v44 = [v15 score];
      v53 = [v15 scoreType];
      v52 = [v15 rankID];
      v43 = [v15 usedReveal];
      v42 = [v15 playDuration];
      v41 = [v15 lastPlayedDate];
      v16 = [v15 completedDate];
      v40 = [v15 firstCompletedDate];
      v17 = [v15 firstPlayDuration];
      v18 = [v15 bestScore];
      v19 = [v15 progressMovesDescription];
      v20 = v13;
      v21 = v19;
      v49 = v20;
      v50 = v12;
      v51 = v11;
      v22 = [(FCPuzzleHistoryItem *)v48 initWithEntryID:v54 puzzleID:v10 puzzleTypeID:v47 progressData:v46 progressLevel:v45 score:v44 scoreType:v53 rankID:v52 usedReveal:v43 playDuration:v42 lastPlayedDate:v41 completedDate:v16 firstCompletedDate:v40 firstPlayDuration:v17 bestScore:v18 progressMovesDescription:v19 difficulty:v11 publishDate:v12 behaviorFlags:v20];

      v23 = v22;
      if (v22)
      {
        v24 = [(FCPuzzleHistoryItem *)v22 dictionaryRepresentation];
        if (v39)
        {
          itemsLock = v39->_itemsLock;
        }

        else
        {
          itemsLock = 0;
        }

        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __69__FCPuzzleHistory_updatePuzzle_difficulty_publishDate_behaviorFlags___block_invoke;
        v55[3] = &unk_1E7C376A0;
        v55[4] = v39;
        v26 = v22;
        v56 = v26;
        v27 = v10;
        v57 = v27;
        [(FCMTWriterLock *)itemsLock performWriteSync:v55];
        v28 = [(FCPrivateDataController *)v39 localStore];
        v29 = [(FCPuzzleHistoryItem *)v26 identifier];
        [v28 setObject:v24 forKey:v29];

        v59 = v27;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        [(FCPuzzleHistory *)v39 _addedPuzzleIDs:v30 modifiedPuzzleIDs:MEMORY[0x1E695E0F0] removedPuzzleIDs:?];

        v31 = [FCModifyPuzzleHistoryCommand alloc];
        v58 = v26;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
        v33 = [(FCModifyPuzzleHistoryCommand *)v31 initWithPuzzleHistoryItems:v32 merge:0];

        v34 = [(FCPuzzleHistory *)&v39->super.super.isa allPuzzleTypeTraits];
        [(FCModifyPuzzleHistoryCommand *)v33 setPuzzleTypeTraitsDict:v34];

        [(FCPrivateDataController *)v39 addCommandToCommandQueue:v33];
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

      v12 = v50;
      v11 = v51;
      v13 = v49;
    }

    else
    {
      v36 = FCPuzzleLog;
      if (os_log_type_enabled(FCPuzzleLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v61 = v10;
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

- (uint64_t)puzzleTypeTraitsForPuzzleTypeID:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v4 = *(a1 + 120);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__FCPuzzleHistory_puzzleTypeTraitsForPuzzleTypeID___block_invoke;
    v6[3] = &unk_1E7C37138;
    v8 = &v9;
    v6[4] = a1;
    v7 = v3;
    [v4 performReadSync:v6];

    a1 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  return a1;
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

- (id)datePuzzleWasLastPlayed:(id)a3
{
  v3 = [(FCPuzzleHistory *)&self->super.super.isa _puzzleHistoryItemForPuzzleID:a3];
  v4 = [v3 lastPlayedDate];

  return v4;
}

- (id)allSortedPuzzleIDsSinceLastPlayedDate:(id)a3
{
  v4 = a3;
  v5 = [(FCPuzzleHistory *)&self->super.super.isa _allSortedItemsInPuzzleHistory];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__FCPuzzleHistory_allSortedPuzzleIDsSinceLastPlayedDate___block_invoke;
  v9[3] = &unk_1E7C47738;
  v10 = v4;
  v6 = v4;
  v7 = [v5 fc_arrayByTransformingWithBlock:v9];

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

- (id)sortedPuzzleIDsForPuzzleTypeID:(id)a3 sinceLastPlayedDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FCPuzzleHistory *)&self->super.super.isa _allSortedItemsInPuzzleHistory];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__FCPuzzleHistory_sortedPuzzleIDsForPuzzleTypeID_sinceLastPlayedDate___block_invoke;
  v13[3] = &unk_1E7C47760;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 fc_arrayByTransformingWithBlock:v13];

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

- (id)newestNotCompletedPuzzleIDForPuzzleTypeID:(id)a3 excludingPuzzleIDs:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  if (self)
  {
    v9 = [(FCPuzzleHistory *)&self->super.super.isa _allItemsInPuzzleHistory];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_55_1];
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
  v18 = v6;
  v19 = self;
  v11 = v6;
  v12 = v8;
  v13 = [v10 fc_firstObjectPassingTest:v16];

  v14 = [v13 puzzleID];

  return v14;
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

- (BOOL)hasPuzzleBeenCompleted:(id)a3
{
  v3 = [(FCPuzzleHistory *)&self->super.super.isa _puzzleHistoryItemForPuzzleID:a3];
  v4 = [v3 completedDate];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)hasPuzzleEverBeenCompleted:(id)a3
{
  v3 = [(FCPuzzleHistory *)&self->super.super.isa _puzzleHistoryItemForPuzzleID:a3];
  v4 = [v3 completedDate];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 firstCompletedDate];
    v5 = v6 != 0;
  }

  return v5;
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCPuzzleHistory;
  [(FCPrivateDataController *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCPuzzleHistory;
  [(FCPrivateDataController *)&v3 removeObserver:a3];
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

- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = [(FCPrivateDataController *)self localStore];
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
  v21 = v6;
  v22 = v8;
  v23 = self;
  v24 = v9;
  v25 = v11;
  v26 = v7;
  v27 = v10;
  v14 = v10;
  v15 = v7;
  v16 = v12;
  v17 = v9;
  v18 = v8;
  v19 = v6;
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

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3
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

  v5 = [(NSMutableDictionary *)itemsByPuzzleID allValues];
  v6 = [v5 fc_arrayByTransformingWithBlock:&__block_literal_global_179];

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

+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (([a1 isLocalStoreKeyInternal:v12] & 1) == 0)
        {
          v13 = [v5 objectForKey:v12];
          v14 = [[FCPuzzleHistoryItem alloc] initWithEntryID:v12 dictionaryRepresentation:v13];
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = [[FCModifyPuzzleHistoryCommand alloc] initWithPuzzleHistoryItems:v6 merge:1];
  v23 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)recordsForRestoringZoneName:(id)a3
{
  v3 = [(FCPuzzleHistory *)&self->super.super.isa _allItemsInPuzzleHistory];
  v4 = [v3 fc_arrayByTransformingWithBlock:&__block_literal_global_46_2];

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

- (void)setPuzzleTypeTraits:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
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