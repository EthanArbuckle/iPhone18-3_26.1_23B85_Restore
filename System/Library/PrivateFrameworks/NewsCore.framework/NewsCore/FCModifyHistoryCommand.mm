@interface FCModifyHistoryCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
@end

@implementation FCModifyHistoryCommand

id __53__FCModifyHistoryCommand_initWithHistoryItems_merge___block_invoke(uint64_t a1)
{
  v1 = _FCPruneHistoryForUpload(*(a1 + 32), &__block_literal_global_99, &__block_literal_global_11_1);
  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_62];

  return v2;
}

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"lastVisited"];
  v65 = [remoteRecordCopy objectForKeyedSubscript:@"lastVisited"];
  v66 = v7;
  v8 = [v7 compare:v65];
  v9 = v8 == 1;
  if (v8 == 1)
  {
    v10 = [recordCopy objectForKeyedSubscript:@"lastVisited"];
    [remoteRecordCopy setObject:v10 forKeyedSubscript:@"lastVisited"];
  }

  v11 = [recordCopy objectForKeyedSubscript:@"lastListened"];
  v63 = [remoteRecordCopy objectForKeyedSubscript:@"lastListened"];
  v64 = v11;
  if ([v11 compare:v63] == 1)
  {
    v12 = [recordCopy objectForKeyedSubscript:@"lastListened"];
    [remoteRecordCopy setObject:v12 forKeyedSubscript:@"lastListened"];

    v9 = 1;
  }

  v13 = [recordCopy objectForKeyedSubscript:@"readingPositionLastSaved"];
  v14 = [remoteRecordCopy objectForKeyedSubscript:@"readingPositionLastSaved"];
  if ([v13 compare:v14] == 1)
  {
    v15 = [recordCopy objectForKeyedSubscript:@"readingPositionLastSaved"];
    [remoteRecordCopy setObject:v15 forKeyedSubscript:@"readingPositionLastSaved"];

    v16 = [recordCopy objectForKeyedSubscript:@"readingPosition"];
    [remoteRecordCopy setObject:v16 forKeyedSubscript:@"readingPosition"];

    v9 = 1;
  }

  v17 = [recordCopy objectForKeyedSubscript:@"listeningProgressLastSaved"];
  v18 = [remoteRecordCopy objectForKeyedSubscript:@"listeningProgressLastSaved"];
  if ([v17 compare:v18] == 1)
  {
    v19 = [recordCopy objectForKeyedSubscript:@"listeningProgressLastSaved"];
    [remoteRecordCopy setObject:v19 forKeyedSubscript:@"listeningProgressLastSaved"];

    v20 = [recordCopy objectForKeyedSubscript:@"listeningProgress"];
    [remoteRecordCopy setObject:v20 forKeyedSubscript:@"listeningProgress"];

    v9 = 1;
  }

  v21 = [recordCopy objectForKeyedSubscript:@"articleRead"];
  bOOLValue = [v21 BOOLValue];

  if (bOOLValue && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"articleRead"])
  {
    v23 = [recordCopy objectForKeyedSubscript:@"articleRead"];
    [remoteRecordCopy setObject:v23 forKeyedSubscript:@"articleRead"];

    v9 = 1;
  }

  v24 = [recordCopy objectForKeyedSubscript:@"articleSeen"];
  bOOLValue2 = [v24 BOOLValue];

  if (bOOLValue2 && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"articleSeen"])
  {
    v26 = [recordCopy objectForKeyedSubscript:@"articleSeen"];
    [remoteRecordCopy setObject:v26 forKeyedSubscript:@"articleSeen"];

    v9 = 1;
  }

  v27 = [recordCopy objectForKeyedSubscript:@"completedListening"];
  bOOLValue3 = [v27 BOOLValue];

  if (bOOLValue3 && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"completedListening"])
  {
    v29 = [recordCopy objectForKeyedSubscript:@"completedListening"];
    [remoteRecordCopy setObject:v29 forKeyedSubscript:@"completedListening"];

    v9 = 1;
  }

  v30 = [recordCopy objectForKeyedSubscript:@"completedReading"];
  bOOLValue4 = [v30 BOOLValue];

  if (bOOLValue4 && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"completedReading"])
  {
    v32 = [recordCopy objectForKeyedSubscript:@"completedReading"];
    [remoteRecordCopy setObject:v32 forKeyedSubscript:@"completedReading"];

    v9 = 1;
  }

  v33 = [recordCopy objectForKeyedSubscript:@"articleConsumed"];
  bOOLValue5 = [v33 BOOLValue];

  if (bOOLValue5 && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"articleConsumed"])
  {
    v35 = [recordCopy objectForKeyedSubscript:@"articleConsumed"];
    [remoteRecordCopy setObject:v35 forKeyedSubscript:@"articleConsumed"];

    v36 = [recordCopy objectForKeyedSubscript:@"sourceChannelTagID"];
    if (v36)
    {
      v37 = v36;
      v38 = [remoteRecordCopy objectForKeyedSubscript:@"sourceChannelTagID"];

      if (!v38)
      {
        v39 = [recordCopy objectForKeyedSubscript:@"sourceChannelTagID"];
        [remoteRecordCopy setObject:v39 forKeyedSubscript:@"sourceChannelTagID"];

        v40 = [recordCopy objectForKeyedSubscript:@"deviceID"];
        [remoteRecordCopy setObject:v40 forKeyedSubscript:@"deviceID"];
      }
    }

    v9 = 1;
  }

  v41 = [recordCopy objectForKeyedSubscript:@"offensive"];
  bOOLValue6 = [v41 BOOLValue];

  if (bOOLValue6 && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"offensive"])
  {
    v43 = [recordCopy objectForKeyedSubscript:@"offensive"];
    [remoteRecordCopy setObject:v43 forKeyedSubscript:@"offensive"];

    v9 = 1;
  }

  v44 = [recordCopy objectForKeyedSubscript:@"liked"];
  bOOLValue7 = [v44 BOOLValue];

  if (bOOLValue7 && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"liked"])
  {
    v46 = [recordCopy objectForKeyedSubscript:@"liked"];
    [remoteRecordCopy setObject:v46 forKeyedSubscript:@"liked"];

    v9 = 1;
  }

  v47 = [recordCopy objectForKeyedSubscript:@"disliked"];
  bOOLValue8 = [v47 BOOLValue];

  if (bOOLValue8 && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"disliked"])
  {
    v49 = [recordCopy objectForKeyedSubscript:@"disliked"];
    [remoteRecordCopy setObject:v49 forKeyedSubscript:@"disliked"];

    v9 = 1;
  }

  v50 = [recordCopy objectForKeyedSubscript:@"listenedCount"];
  intValue = [v50 intValue];

  if (intValue && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"listenedCount"])
  {
    v52 = [recordCopy objectForKeyedSubscript:@"listenedCount"];
    [remoteRecordCopy setObject:v52 forKeyedSubscript:@"listenedCount"];

    v9 = 1;
  }

  v53 = [recordCopy objectForKeyedSubscript:@"readCount"];
  intValue2 = [v53 intValue];

  if (intValue2 && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"readCount"])
  {
    v55 = [recordCopy objectForKeyedSubscript:@"readCount"];
    [remoteRecordCopy setObject:v55 forKeyedSubscript:@"readCount"];

    v9 = 1;
  }

  v56 = [recordCopy objectForKeyedSubscript:@"removedFromAudio"];
  bOOLValue9 = [v56 BOOLValue];

  if (bOOLValue9 && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"removedFromAudio"])
  {
    v58 = [recordCopy objectForKeyedSubscript:@"removedFromAudio"];
    [remoteRecordCopy setObject:v58 forKeyedSubscript:@"removedFromAudio"];

    v9 = 1;
  }

  v59 = [recordCopy objectForKeyedSubscript:@"pruningDisabled"];
  bOOLValue10 = [v59 BOOLValue];

  if (bOOLValue10 && [recordCopy fc_isDifferentFromRecord:remoteRecordCopy forKey:@"pruningDisabled"])
  {
    v61 = [recordCopy objectForKeyedSubscript:@"pruningDisabled"];
    [remoteRecordCopy setObject:v61 forKeyedSubscript:@"pruningDisabled"];

    v9 = 1;
  }

  return v9;
}

@end