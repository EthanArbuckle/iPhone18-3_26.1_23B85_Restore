@interface FCModifyHistoryCommand
- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4;
@end

@implementation FCModifyHistoryCommand

id __53__FCModifyHistoryCommand_initWithHistoryItems_merge___block_invoke(uint64_t a1)
{
  v1 = _FCPruneHistoryForUpload(*(a1 + 32), &__block_literal_global_99, &__block_literal_global_11_1);
  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_62];

  return v2;
}

- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"lastVisited"];
  v65 = [v6 objectForKeyedSubscript:@"lastVisited"];
  v66 = v7;
  v8 = [v7 compare:v65];
  v9 = v8 == 1;
  if (v8 == 1)
  {
    v10 = [v5 objectForKeyedSubscript:@"lastVisited"];
    [v6 setObject:v10 forKeyedSubscript:@"lastVisited"];
  }

  v11 = [v5 objectForKeyedSubscript:@"lastListened"];
  v63 = [v6 objectForKeyedSubscript:@"lastListened"];
  v64 = v11;
  if ([v11 compare:v63] == 1)
  {
    v12 = [v5 objectForKeyedSubscript:@"lastListened"];
    [v6 setObject:v12 forKeyedSubscript:@"lastListened"];

    v9 = 1;
  }

  v13 = [v5 objectForKeyedSubscript:@"readingPositionLastSaved"];
  v14 = [v6 objectForKeyedSubscript:@"readingPositionLastSaved"];
  if ([v13 compare:v14] == 1)
  {
    v15 = [v5 objectForKeyedSubscript:@"readingPositionLastSaved"];
    [v6 setObject:v15 forKeyedSubscript:@"readingPositionLastSaved"];

    v16 = [v5 objectForKeyedSubscript:@"readingPosition"];
    [v6 setObject:v16 forKeyedSubscript:@"readingPosition"];

    v9 = 1;
  }

  v17 = [v5 objectForKeyedSubscript:@"listeningProgressLastSaved"];
  v18 = [v6 objectForKeyedSubscript:@"listeningProgressLastSaved"];
  if ([v17 compare:v18] == 1)
  {
    v19 = [v5 objectForKeyedSubscript:@"listeningProgressLastSaved"];
    [v6 setObject:v19 forKeyedSubscript:@"listeningProgressLastSaved"];

    v20 = [v5 objectForKeyedSubscript:@"listeningProgress"];
    [v6 setObject:v20 forKeyedSubscript:@"listeningProgress"];

    v9 = 1;
  }

  v21 = [v5 objectForKeyedSubscript:@"articleRead"];
  v22 = [v21 BOOLValue];

  if (v22 && [v5 fc_isDifferentFromRecord:v6 forKey:@"articleRead"])
  {
    v23 = [v5 objectForKeyedSubscript:@"articleRead"];
    [v6 setObject:v23 forKeyedSubscript:@"articleRead"];

    v9 = 1;
  }

  v24 = [v5 objectForKeyedSubscript:@"articleSeen"];
  v25 = [v24 BOOLValue];

  if (v25 && [v5 fc_isDifferentFromRecord:v6 forKey:@"articleSeen"])
  {
    v26 = [v5 objectForKeyedSubscript:@"articleSeen"];
    [v6 setObject:v26 forKeyedSubscript:@"articleSeen"];

    v9 = 1;
  }

  v27 = [v5 objectForKeyedSubscript:@"completedListening"];
  v28 = [v27 BOOLValue];

  if (v28 && [v5 fc_isDifferentFromRecord:v6 forKey:@"completedListening"])
  {
    v29 = [v5 objectForKeyedSubscript:@"completedListening"];
    [v6 setObject:v29 forKeyedSubscript:@"completedListening"];

    v9 = 1;
  }

  v30 = [v5 objectForKeyedSubscript:@"completedReading"];
  v31 = [v30 BOOLValue];

  if (v31 && [v5 fc_isDifferentFromRecord:v6 forKey:@"completedReading"])
  {
    v32 = [v5 objectForKeyedSubscript:@"completedReading"];
    [v6 setObject:v32 forKeyedSubscript:@"completedReading"];

    v9 = 1;
  }

  v33 = [v5 objectForKeyedSubscript:@"articleConsumed"];
  v34 = [v33 BOOLValue];

  if (v34 && [v5 fc_isDifferentFromRecord:v6 forKey:@"articleConsumed"])
  {
    v35 = [v5 objectForKeyedSubscript:@"articleConsumed"];
    [v6 setObject:v35 forKeyedSubscript:@"articleConsumed"];

    v36 = [v5 objectForKeyedSubscript:@"sourceChannelTagID"];
    if (v36)
    {
      v37 = v36;
      v38 = [v6 objectForKeyedSubscript:@"sourceChannelTagID"];

      if (!v38)
      {
        v39 = [v5 objectForKeyedSubscript:@"sourceChannelTagID"];
        [v6 setObject:v39 forKeyedSubscript:@"sourceChannelTagID"];

        v40 = [v5 objectForKeyedSubscript:@"deviceID"];
        [v6 setObject:v40 forKeyedSubscript:@"deviceID"];
      }
    }

    v9 = 1;
  }

  v41 = [v5 objectForKeyedSubscript:@"offensive"];
  v42 = [v41 BOOLValue];

  if (v42 && [v5 fc_isDifferentFromRecord:v6 forKey:@"offensive"])
  {
    v43 = [v5 objectForKeyedSubscript:@"offensive"];
    [v6 setObject:v43 forKeyedSubscript:@"offensive"];

    v9 = 1;
  }

  v44 = [v5 objectForKeyedSubscript:@"liked"];
  v45 = [v44 BOOLValue];

  if (v45 && [v5 fc_isDifferentFromRecord:v6 forKey:@"liked"])
  {
    v46 = [v5 objectForKeyedSubscript:@"liked"];
    [v6 setObject:v46 forKeyedSubscript:@"liked"];

    v9 = 1;
  }

  v47 = [v5 objectForKeyedSubscript:@"disliked"];
  v48 = [v47 BOOLValue];

  if (v48 && [v5 fc_isDifferentFromRecord:v6 forKey:@"disliked"])
  {
    v49 = [v5 objectForKeyedSubscript:@"disliked"];
    [v6 setObject:v49 forKeyedSubscript:@"disliked"];

    v9 = 1;
  }

  v50 = [v5 objectForKeyedSubscript:@"listenedCount"];
  v51 = [v50 intValue];

  if (v51 && [v5 fc_isDifferentFromRecord:v6 forKey:@"listenedCount"])
  {
    v52 = [v5 objectForKeyedSubscript:@"listenedCount"];
    [v6 setObject:v52 forKeyedSubscript:@"listenedCount"];

    v9 = 1;
  }

  v53 = [v5 objectForKeyedSubscript:@"readCount"];
  v54 = [v53 intValue];

  if (v54 && [v5 fc_isDifferentFromRecord:v6 forKey:@"readCount"])
  {
    v55 = [v5 objectForKeyedSubscript:@"readCount"];
    [v6 setObject:v55 forKeyedSubscript:@"readCount"];

    v9 = 1;
  }

  v56 = [v5 objectForKeyedSubscript:@"removedFromAudio"];
  v57 = [v56 BOOLValue];

  if (v57 && [v5 fc_isDifferentFromRecord:v6 forKey:@"removedFromAudio"])
  {
    v58 = [v5 objectForKeyedSubscript:@"removedFromAudio"];
    [v6 setObject:v58 forKeyedSubscript:@"removedFromAudio"];

    v9 = 1;
  }

  v59 = [v5 objectForKeyedSubscript:@"pruningDisabled"];
  v60 = [v59 BOOLValue];

  if (v60 && [v5 fc_isDifferentFromRecord:v6 forKey:@"pruningDisabled"])
  {
    v61 = [v5 objectForKeyedSubscript:@"pruningDisabled"];
    [v6 setObject:v61 forKeyedSubscript:@"pruningDisabled"];

    v9 = 1;
  }

  return v9;
}

@end