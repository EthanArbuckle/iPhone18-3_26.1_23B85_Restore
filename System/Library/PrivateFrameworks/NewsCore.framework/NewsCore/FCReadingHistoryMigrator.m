@interface FCReadingHistoryMigrator
- (id)keyValueStore:(id)a3 migrateObject:(id)a4 forKey:(id)a5 fromVersion:(unint64_t)a6;
@end

@implementation FCReadingHistoryMigrator

- (id)keyValueStore:(id)a3 migrateObject:(id)a4 forKey:(id)a5 fromVersion:(unint64_t)a6
{
  v7 = a4;
  v8 = [(FCPrivateDataController *)FCReadingHistory isLocalStoreKeyInternal:a5];
  v9 = v7;
  if (!v8)
  {
    v10 = v7;
    v9 = objc_alloc_init(MEMORY[0x1E69B6F78]);
    v11 = [v10 objectForKeyedSubscript:@"articleID"];
    [v9 setArticleID:v11];

    v12 = [v10 objectForKeyedSubscript:@"sourceChannelTagID"];
    [v9 setSourceChannelTagID:v12];

    v13 = [v10 objectForKeyedSubscript:@"deviceID"];
    [v9 setDeviceID:v13];

    v14 = [v10 objectForKeyedSubscript:@"lastVisited"];
    [v9 setLastVisitedAt:v14];

    v15 = [v10 objectForKeyedSubscript:@"articleRead"];
    [v9 setHasArticleBeenRead:{objc_msgSend(v15, "BOOLValue")}];

    v16 = [v10 objectForKeyedSubscript:@"articleSeen"];
    [v9 setHasArticleBeenSeen:{objc_msgSend(v16, "BOOLValue")}];

    v17 = [v10 objectForKeyedSubscript:@"completedListening"];
    [v9 setHasArticleCompletedListening:{objc_msgSend(v17, "BOOLValue")}];

    v18 = [v10 objectForKeyedSubscript:@"completedReading"];
    [v9 setHasArticleCompletedReading:{objc_msgSend(v18, "BOOLValue")}];

    v19 = [v10 objectForKeyedSubscript:@"articleConsumed"];
    [v9 setHasArticleBeenConsumed:{objc_msgSend(v19, "BOOLValue")}];

    v20 = [v10 objectForKeyedSubscript:@"offensive"];
    [v9 setHasArticleBeenMarkedOffensive:{objc_msgSend(v20, "BOOLValue")}];

    v21 = [v10 objectForKeyedSubscript:@"removedFromAudio"];
    [v9 setHasArticleBeenRemovedFromAudio:{objc_msgSend(v21, "BOOLValue")}];

    v22 = [v10 objectForKeyedSubscript:@"listenedCount"];
    [v9 setListenedCount:{objc_msgSend(v22, "intValue")}];

    v23 = [v10 objectForKeyedSubscript:@"listeningProgress"];
    [v23 doubleValue];
    [v9 setListeningProgress:?];

    v24 = [v10 objectForKeyedSubscript:@"listeningProgressLastSaved"];
    [v9 setListeningProgressSavedAt:v24];

    v25 = [v10 objectForKeyedSubscript:@"lastListened"];
    [v9 setLastListenedAt:v25];

    v26 = [v10 objectForKeyedSubscript:@"readingPosition"];
    [v9 setReadingPosition:v26];

    v27 = [v10 objectForKeyedSubscript:@"readingPositionLastSaved"];
    [v9 setReadingPositionSavedAt:v27];

    v28 = [v10 objectForKeyedSubscript:@"readCount"];
    [v9 setReadCount:{objc_msgSend(v28, "intValue")}];

    v29 = [v10 objectForKeyedSubscript:@"pruningDisabled"];
    [v9 setPruningDisabled:{objc_msgSend(v29, "BOOLValue")}];

    v30 = [v10 objectForKeyedSubscript:@"liked"];
    v31 = [v30 BOOLValue];

    if (v31)
    {
      v32 = 1;
    }

    else
    {
      v33 = [v10 objectForKeyedSubscript:@"disliked"];
      v34 = [v33 BOOLValue];

      if (!v34)
      {
LABEL_7:

        goto LABEL_8;
      }

      v32 = 2;
    }

    [v9 setArticleLikingStatus:v32];
    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

@end