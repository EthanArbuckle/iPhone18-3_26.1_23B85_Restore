@interface MADChangeRequest
+ (id)changeRequestWithManagedObjectContext:(id)context;
- (MADChangeRequest)initWithManagedObjectContext:(id)context;
- (id)_fetchEarliestNthTransaction:(unint64_t)transaction;
- (int)_fetchOrCreateManagedProcessingStatusWithTaskID:(unint64_t)d localIdentifier:(id)identifier managedProcessingStatus:(id *)status;
- (int)_hardFailAllRunningProcessingStatusForTaskID:(unint64_t)d additionalPredicates:(id)predicates;
- (int)_hardFailAllRunningProcessingStatusWithPredicate:(id)predicate;
- (int)_prunePersistentHistoryBeforeTransaction:(id)transaction;
- (int)_removeAssetsWithPredicate:(id)predicate;
- (int)_removeBackgroundAnalysisProgressHistoryImmediatelyWithPredicate:(id)predicate;
- (int)_removeChangeTokenImmediatelyWithPredicate:(id)predicate;
- (int)_removeChangeTokenWithPredicate:(id)predicate;
- (int)_removeMomentsScheduledAssetImmediatelyWithPredicate:(id)predicate;
- (int)_removeMomentsScheduledAssetWithPredicate:(id)predicate;
- (int)_removeProcessingStatusImmediatelyWithPredicate:(id)predicate;
- (int)_removeProcessingStatusWithPredicate:(id)predicate;
- (int)_setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes errorCode:(unint64_t)self0 errorLine:(unint64_t)self1;
- (int)_updateProcessingStatus:(unint64_t)status nextAttemptDate:(id)date errorCode:(unint64_t)code errorLine:(unint64_t)line localIdentifier:(id)identifier taskID:(unint64_t)d;
- (unint64_t)_queryTransactionRecordCount;
- (void)assetWithPhotosAsset:(id)asset analysis:(id)analysis;
- (void)deleteAnalysisResultsImmediatelyWithType:(unint64_t)type;
- (void)hardFailAllRunningProcessingStatusForTaskID:(unint64_t)d;
- (void)hardFailAllRunningProcessingStatusForTaskID:(unint64_t)d additionalPredicates:(id)predicates;
- (void)prunePersistentHistoryWithCancelBlock:(id)block extendTimeoutBlock:(id)timeoutBlock;
- (void)removeAllBackgroundAnalysisProgressHistoryImmediately;
- (void)removeAllChangeTokensImmediately;
- (void)removeAllChangeTokensImmediatelyForTaskID:(unint64_t)d;
- (void)removeAllDataStoreKeyValuePairsImmediately;
- (void)removeAllMomentsScheduledAssetsImmediately;
- (void)removeAllProcessingStatusImmediately;
- (void)removeAllProcessingStatusImmediatelyForTaskID:(unint64_t)d;
- (void)removeAssetsWithLocalIdentifiers:(id)identifiers;
- (void)removeChangeTokenForTaskID:(unint64_t)d changeTokenType:(unint64_t)type;
- (void)removeDataStoreKey:(id)key;
- (void)removeMomentsScheduledAssetWithLocalIdentifier:(id)identifier taskID:(unint64_t)d;
- (void)removeProcessingStatusForLocalIdentifier:(id)identifier taskID:(unint64_t)d;
- (void)removeProcessingStatusForLocalIdentifiers:(id)identifiers taskID:(unint64_t)d;
- (void)removeProcessingStatusImmediatelyForTaskID:(unint64_t)d mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes;
- (void)removeProgressEntriesBeyondLimits;
- (void)setAnalysisVersion:(int)version forLocalIdentifier:(id)identifier;
- (void)setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date;
- (void)setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes errorCode:(unint64_t)self0 errorLine:(unint64_t)self1;
- (void)setChangeToken:(id)token taskID:(unint64_t)d changeTokenType:(unint64_t)type date:(id)date;
- (void)setDataStoreValue:(int64_t)value forKey:(id)key;
- (void)setDataStoreValueIfNotExist:(int64_t)exist forKey:(id)key;
- (void)setDeletePendingFlag:(BOOL)flag forLocalIdentifier:(id)identifier;
- (void)setMomentsScheduledAssetWithLocalIdentifier:(id)identifier taskID:(unint64_t)d requestDate:(id)date;
- (void)storeProgressForActivityID:(unint64_t)d analysisSubtype:(unint64_t)subtype version:(unint64_t)version processedAssetCount:(unint64_t)count totalAssetCount:(unint64_t)assetCount storeDate:(id)date;
- (void)storeStatsFlags:(unint64_t)flags forLocalIdentifier:(id)identifier;
- (void)updateChangeToken:(id)token taskID:(unint64_t)d changeTokenType:(unint64_t)type;
- (void)updateProcessingStatus:(unint64_t)status nextAttemptDate:(id)date errorCode:(unint64_t)code errorLine:(unint64_t)line localIdentifier:(id)identifier taskID:(unint64_t)d;
- (void)updateProcessingStatus:(unint64_t)status nextAttemptDate:(id)date localIdentifier:(id)identifier taskID:(unint64_t)d;
@end

@implementation MADChangeRequest

- (void)storeProgressForActivityID:(unint64_t)d analysisSubtype:(unint64_t)subtype version:(unint64_t)version processedAssetCount:(unint64_t)count totalAssetCount:(unint64_t)assetCount storeDate:(id)date
{
  v29[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (!self->_error)
  {
    v15 = [[MADManagedBackgroundAnalysisProgressHistory alloc] initWithContext:self->_moc];
    v16 = v15;
    if (v15)
    {
      [(MADManagedBackgroundAnalysisProgressHistory *)v15 setActivityID:d];
      [(MADManagedBackgroundAnalysisProgressHistory *)v16 setAnalysisSubtype:subtype];
      [(MADManagedBackgroundAnalysisProgressHistory *)v16 setVersion:version];
      [(MADManagedBackgroundAnalysisProgressHistory *)v16 setProcessedAssetCount:count];
      [(MADManagedBackgroundAnalysisProgressHistory *)v16 setTotalAssetCount:assetCount];
      [(MADManagedBackgroundAnalysisProgressHistory *)v16 setStoreDate:dateCopy];
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v18 = MEMORY[0x1E696AEC0];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|ProgressHistory] Failed to create managed progress history object for activity %@"];
      v20 = VCPTaskIDDescription(d);
      v21 = [v18 stringWithFormat:v19, v20];
      v29[0] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v23 = [v17 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v22];
      error = self->_error;
      self->_error = v23;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = VCPTaskIDDescription(d);
        *buf = 138412290;
        v27 = v25;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ProgressHistory] Failed to create managed progress history object for activity %@", buf, 0xCu);
      }
    }
  }
}

- (void)removeProgressEntriesBeyondLimits
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    v23 = +[MADManagedBackgroundAnalysisProgressHistory fetchRequest];
    v3 = MEMORY[0x1E696AEB0];
    v4 = +[MADManagedBackgroundAnalysisProgressHistory storeDateColumnName];
    v5 = [v3 sortDescriptorWithKey:v4 ascending:1];
    v29[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [v23 setSortDescriptors:v6];

    moc = self->_moc;
    v24 = 0;
    v8 = [(NSManagedObjectContext *)moc executeFetchRequest:v23 error:&v24];
    v9 = v24;
    if (v9)
    {
      v10 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|ProgressHistory] Error during fetch from CoreData Analysis Store progress history - %@"];
      v13 = [v11 stringWithFormat:v12, v9];
      v28 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v15 = [v10 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];
      error = self->_error;
      self->_error = v15;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ProgressHistory] Error during fetch from CoreData Analysis Store progress history - %@", buf, 0xCu);
      }
    }

    else
    {
      v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2592000.0];
      v18 = 0;
      for (i = 0; [v8 count] > i; ++i)
      {
        v20 = [v8 objectAtIndexedSubscript:i];
        storeDate = [v20 storeDate];
        v22 = [storeDate compare:v17] == -1;

        if (!v22 && (v18 + [v8 count]) < 0x1F5)
        {

          break;
        }

        [(NSManagedObjectContext *)self->_moc deleteObject:v20];

        --v18;
      }
    }
  }
}

- (int)_removeBackgroundAnalysisProgressHistoryImmediatelyWithPredicate:(id)predicate
{
  v16 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = +[MADManagedBackgroundAnalysisProgressHistory fetchRequest];
  v6 = v5;
  if (predicateCopy)
  {
    [v5 setPredicate:predicateCopy];
  }

  v13 = 0;
  v7 = [(NSManagedObjectContext *)self->_moc mad_batchDeleteAndSync:v6 deleteCount:&v13];
  if (v7)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = predicateCopy;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "[MACD|ProgressHistory] Failed to batch delete background analysis progress history with predicate %@";
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
LABEL_10:
      _os_log_impl(&dword_1C9B70000, v8, v10, v9, buf, v11);
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v15) = v13;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "[MACD|ProgressHistory] Batch deleted %d background analysis progress history records";
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 8;
    goto LABEL_10;
  }

  return v7;
}

- (void)removeAllBackgroundAnalysisProgressHistoryImmediately
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    if ([(MADChangeRequest *)self _removeBackgroundAnalysisProgressHistoryImmediatelyWithPredicate:0])
    {
      v3 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A578];
      v4 = MEMORY[0x1E696AEC0];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|ProgressHistory] Failed to remove all background analysis process history"];
      v6 = [v4 stringWithFormat:v5];
      v12[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v8 = [v3 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v7];
      error = self->_error;
      self->_error = v8;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ProgressHistory] Failed to remove all background analysis process history", v10, 2u);
      }
    }
  }
}

- (void)setMomentsScheduledAssetWithLocalIdentifier:(id)identifier taskID:(unint64_t)d requestDate:(id)date
{
  v25[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dateCopy = date;
  if (!self->_error)
  {
    v10 = [[MADManagedMomentsScheduledAsset alloc] initWithContext:self->_moc];
    v11 = v10;
    if (v10)
    {
      [(MADManagedMomentsScheduledAsset *)v10 setTaskID:d];
      [(MADManagedMomentsScheduledAsset *)v11 setLocalIdentifier:identifierCopy];
      [(MADManagedMomentsScheduledAsset *)v11 setRequestDate:dateCopy];
      if (MediaAnalysisLogLevel() < 7)
      {
        goto LABEL_10;
      }

      v12 = OS_LOG_TYPE_DEBUG;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      *buf = 138412290;
      v23 = v11;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "[MACD|Moments] Setting moments scheduled asset: %@";
    }

    else
    {
      v15 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v16 = MEMORY[0x1E696AEC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|Moments][%@] Failed to create managed moments scheduled asset object"];
      identifierCopy = [v16 stringWithFormat:v17, identifierCopy];
      v25[0] = identifierCopy;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v20 = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v19];
      error = self->_error;
      self->_error = v20;

      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_10;
      }

      v12 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 138412290;
      v23 = identifierCopy;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "[MACD|Moments][%@] Failed to create managed moments scheduled asset object";
    }

    _os_log_impl(&dword_1C9B70000, v13, v12, v14, buf, 0xCu);
LABEL_10:
  }
}

- (int)_removeMomentsScheduledAssetWithPredicate:(id)predicate
{
  v32 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v21 = predicateCopy;
  v5 = +[MADManagedMomentsScheduledAsset fetchRequest];
  v6 = v5;
  if (predicateCopy)
  {
    [v5 setPredicate:predicateCopy];
  }

  moc = self->_moc;
  v26 = 0;
  v8 = [(NSManagedObjectContext *)moc executeFetchRequest:v6 error:&v26];
  v9 = v26;
  if (!v9)
  {
    v20 = v8;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v12 = [v8 count];
      *buf = 67109120;
      LODWORD(v29) = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|Moments] Deleting %d moments scheduled asset records", buf, 8u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          [(NSManagedObjectContext *)self->_moc deleteObject:v17];
          objc_autoreleasePoolPop(v18);
        }

        v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    v11 = 0;
    goto LABEL_19;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = v8;
    v10 = [v6 debugDescription];
    *buf = 138412546;
    v29 = v10;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|Moments] Failed to execute fetch request %@: %@", buf, 0x16u);

    v11 = -18;
LABEL_19:
    v8 = v20;
    goto LABEL_20;
  }

  v11 = -18;
LABEL_20:

  return v11;
}

- (void)removeMomentsScheduledAssetWithLocalIdentifier:(id)identifier taskID:(unint64_t)d
{
  v25[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!self->_error)
  {
    v7 = MEMORY[0x1E696AE18];
    v8 = +[MADManagedMomentsScheduledAsset taskIDColumnName];
    v9 = +[MADManagedMomentsScheduledAsset localIdentifierColumnName];
    identifierCopy = [v7 predicateWithFormat:@"(%K == %ld) AND (%K == %@)", v8, d, v9, identifierCopy];

    if ([(MADChangeRequest *)self _removeMomentsScheduledAssetWithPredicate:identifierCopy])
    {
      v11 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v12 = MEMORY[0x1E696AEC0];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Failed to remove moments scheduled asset %@ for task %@"];
      v14 = VCPTaskIDDescription(d);
      v15 = [v12 stringWithFormat:v13, identifierCopy, v14];
      v25[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v17 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v16];
      error = self->_error;
      self->_error = v17;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = VCPTaskIDDescription(d);
        *buf = 138412546;
        v21 = identifierCopy;
        v22 = 2112;
        v23 = v19;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to remove moments scheduled asset %@ for task %@", buf, 0x16u);
      }
    }
  }
}

- (int)_removeMomentsScheduledAssetImmediatelyWithPredicate:(id)predicate
{
  v16 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = +[MADManagedMomentsScheduledAsset fetchRequest];
  v6 = v5;
  if (predicateCopy)
  {
    [v5 setPredicate:predicateCopy];
  }

  v13 = 0;
  v7 = [(NSManagedObjectContext *)self->_moc mad_batchDeleteAndSync:v6 deleteCount:&v13];
  if (v7)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = predicateCopy;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "[MACD|Moments] Failed to batch delete moments scheduled asset with predicate %@";
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
LABEL_10:
      _os_log_impl(&dword_1C9B70000, v8, v10, v9, buf, v11);
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v15) = v13;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "[MACD|Moments] Batch deleted %d moments scheduled asset records";
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 8;
    goto LABEL_10;
  }

  return v7;
}

- (void)removeAllMomentsScheduledAssetsImmediately
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    if ([(MADChangeRequest *)self _removeMomentsScheduledAssetImmediatelyWithPredicate:0])
    {
      v3 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A578];
      v4 = MEMORY[0x1E696AEC0];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Failed to remove all moments scheduled assets"];
      v6 = [v4 stringWithFormat:v5];
      v12[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v8 = [v3 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v7];
      error = self->_error;
      self->_error = v8;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to remove all moments scheduled assets", v10, 2u);
      }
    }
  }
}

- (unint64_t)_queryTransactionRecordCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  moc = self->_moc;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__MADChangeRequest_PersistentHistory___queryTransactionRecordCount__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)moc performBlockAndWait:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __67__MADChangeRequest_PersistentHistory___queryTransactionRecordCount__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D6B0] fetchRequest];
  v3 = [MEMORY[0x1E695D698] fetchHistoryWithFetchRequest:v2];
  [v3 setResultType:2];
  v4 = *(*(a1 + 32) + 8);
  v8 = 0;
  v5 = [v4 executeRequest:v3 error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = [v5 result];
    *(*(*(a1 + 40) + 8) + 24) = [v7 unsignedIntegerValue];
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|PersistentHistory] Failed to query persistent history count: %@", buf, 0xCu);
  }
}

- (id)_fetchEarliestNthTransaction:(unint64_t)transaction
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__42;
  moc = self->_moc;
  v11 = __Block_byref_object_dispose__42;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__MADChangeRequest_PersistentHistory___fetchEarliestNthTransaction___block_invoke;
  v6[3] = &unk_1E8350110;
  v6[5] = &v7;
  v6[6] = transaction;
  v6[4] = self;
  [(NSManagedObjectContext *)moc performBlockAndWait:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __68__MADChangeRequest_PersistentHistory___fetchEarliestNthTransaction___block_invoke(void *a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D6B0] fetchRequest];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v32[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [v2 setSortDescriptors:v4];

  v5 = [MEMORY[0x1E695D698] fetchHistoryWithFetchRequest:v2];
  [v5 setResultType:3];
  [v5 setFetchLimit:a1[6]];
  v6 = *(a1[4] + 8);
  v21 = 0;
  v7 = [v6 executeRequest:v5 error:&v21];
  v8 = v21;
  if (v7)
  {
    v9 = [v7 result];
    if ([v9 count])
    {
      v10 = [v9 firstObject];
      v11 = [v9 lastObject];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v19 = [v9 count];
        v18 = [v10 transactionNumber];
        v20 = [v10 timestamp];
        v17 = [v11 transactionNumber];
        v12 = [v11 timestamp];
        *buf = 67110146;
        v23 = v19;
        v24 = 2048;
        v25 = v18;
        v26 = 2112;
        v27 = v20;
        v28 = 2048;
        v29 = v17;
        v30 = 2112;
        v31 = v12;
        v13 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|PersistentHistory] Fetched %d transactions, earliest <#%lld at %@>, latest <#%lld at %@>", buf, 0x30u);
      }

      v14 = *(a1[5] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v11;
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|PersistentHistory] Fetched persistent history result is empty", buf, 2u);
    }
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = a1[6];
    *buf = 67109378;
    v23 = v16;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|PersistentHistory] Failed to fetch earliest %d persistent history transactions: %@", buf, 0x12u);
  }
}

- (int)_prunePersistentHistoryBeforeTransaction:(id)transaction
{
  transactionCopy = transaction;
  moc = self->_moc;
  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__MADChangeRequest_PersistentHistory___prunePersistentHistoryBeforeTransaction___block_invoke;
  v11[3] = &unk_1E8350138;
  v12 = transactionCopy;
  selfCopy = self;
  v6 = transactionCopy;
  [(NSManagedObjectContext *)moc mad_performAndSaveChanges:v11 error:&v10];
  v7 = v10;
  code = [v7 code];

  return code;
}

BOOL __80__MADChangeRequest_PersistentHistory___prunePersistentHistoryBeforeTransaction___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) transactionNumber];
    v5 = [*(a1 + 32) timestamp];
    *buf = 134218242;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MACD|PersistentHistory] Pruning history before transaction <#%lld at %@>", buf, 0x16u);
  }

  v6 = [MEMORY[0x1E695D698] deleteHistoryBeforeTransaction:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v15 = 0;
  v8 = [v7 executeRequest:v6 error:&v15];
  v9 = v15;
  if (!v8)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|PersistentHistory] Failed to prune persistent history: %@", buf, 0xCu);
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A768];
    v16 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MACD|PersistentHistory] Failed to prune persistent history: %@", v9];
    v17 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *a2 = [v10 errorWithDomain:v11 code:-18 userInfo:v13];
  }

  return v8 != 0;
}

- (void)prunePersistentHistoryWithCancelBlock:(id)block extendTimeoutBlock:(id)timeoutBlock
{
  v81[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  timeoutBlockCopy = timeoutBlock;
  if (!self->_error)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__MADChangeRequest_PersistentHistory__prunePersistentHistoryWithCancelBlock_extendTimeoutBlock___block_invoke;
    aBlock[3] = &unk_1E8350160;
    v70 = blockCopy;
    v68 = timeoutBlockCopy;
    v71 = timeoutBlockCopy;
    v8 = _Block_copy(aBlock);
    if ((v8[2])())
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A768];
      v80 = *MEMORY[0x1E696A578];
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|PersistentHistory] Cancelled during pruning history"];
      v13 = [v11 stringWithFormat:v12];
      v81[0] = v13;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
      v15 = v14 = blockCopy;
      v16 = [v9 errorWithDomain:v10 code:-128 userInfo:v15];
      error = self->_error;
      self->_error = v16;

      blockCopy = v14;
      timeoutBlockCopy = v68;
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "[MACD|PersistentHistory] Cancelled during pruning history";
LABEL_6:
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 2;
    }

    else
    {
      v22 = VCPSignPostLog();
      v23 = os_signpost_id_generate(v22);

      v24 = VCPSignPostLog();
      v25 = v24;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "MADChangeRequest_PersistentHistory_QueryCount", "", buf, 2u);
      }

      _queryTransactionRecordCount = [(MADChangeRequest *)self _queryTransactionRecordCount];
      v27 = VCPSignPostLog();
      v28 = v27;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v23, "MADChangeRequest_PersistentHistory_QueryCount", "", buf, 2u);
      }

      if (_queryTransactionRecordCount >= 0x186A1)
      {
        v67 = blockCopy;
        v29 = VCPSignPostLog();
        v30 = os_signpost_id_generate(v29);

        v31 = VCPSignPostLog();
        v32 = v31;
        v65 = v30 - 1;
        spid = v30;
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "MADChangeRequest_PersistentHistory_Prune", "", buf, 2u);
        }

        while (!v8[2](v8))
        {
          if (_queryTransactionRecordCount - 100000 >= 0x2710)
          {
            v33 = 10000;
          }

          else
          {
            v33 = _queryTransactionRecordCount - 100000;
          }

          v34 = VCPSignPostLog();
          v35 = os_signpost_id_generate(v34);

          v36 = VCPSignPostLog();
          v37 = v36;
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "MADChangeRequest_PersistentHistory_FetchPruneDivision", "", buf, 2u);
          }

          v38 = [(MADChangeRequest *)self _fetchEarliestNthTransaction:v33 + 1];
          v39 = VCPSignPostLog();
          v40 = v39;
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v40, OS_SIGNPOST_INTERVAL_END, v35, "MADChangeRequest_PersistentHistory_FetchPruneDivision", "", buf, 2u);
          }

          v41 = VCPSignPostLog();
          v42 = os_signpost_id_generate(v41);

          v43 = VCPSignPostLog();
          v44 = v43;
          if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v44, OS_SIGNPOST_INTERVAL_BEGIN, v42, "MADChangeRequest_PersistentHistory_PruneStep", "", buf, 2u);
          }

          if ([(MADChangeRequest *)self _prunePersistentHistoryBeforeTransaction:v38])
          {
            v57 = MEMORY[0x1E696ABC0];
            v58 = *MEMORY[0x1E696A768];
            v72 = *MEMORY[0x1E696A578];
            v59 = MEMORY[0x1E696AEC0];
            v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Failed to prune persistent history before transaction"];
            v61 = [v59 stringWithFormat:v60];
            v73 = v61;
            v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
            v63 = [v57 errorWithDomain:v58 code:-18 userInfo:v62];
            v64 = self->_error;
            self->_error = v63;

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prune persistent history before transaction", buf, 2u);
            }

            blockCopy = v67;
            goto LABEL_51;
          }

          v45 = VCPSignPostLog();
          v46 = v45;
          if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v46, OS_SIGNPOST_INTERVAL_END, v42, "MADChangeRequest_PersistentHistory_PruneStep", "", buf, 2u);
          }

          _queryTransactionRecordCount -= v33;
          if (_queryTransactionRecordCount <= 0x186A0)
          {
            v47 = VCPSignPostLog();
            v48 = v47;
            if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v48, OS_SIGNPOST_INTERVAL_END, spid, "MADChangeRequest_PersistentHistory_Prune", "", buf, 2u);
            }

            blockCopy = v67;
            goto LABEL_51;
          }
        }

        v49 = MEMORY[0x1E696ABC0];
        v50 = *MEMORY[0x1E696A768];
        v74 = *MEMORY[0x1E696A578];
        v51 = MEMORY[0x1E696AEC0];
        v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|PersistentHistory] Cancelled during pruning history"];
        v53 = [v51 stringWithFormat:v52];
        v75 = v53;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v55 = [v49 errorWithDomain:v50 code:-128 userInfo:v54];
        v56 = self->_error;
        self->_error = v55;

        blockCopy = v67;
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v18 = MEMORY[0x1E69E9C10];
          v19 = "[MACD|PersistentHistory] Cancelled during pruning history";
          goto LABEL_6;
        }

        goto LABEL_51;
      }

      if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
LABEL_51:

        goto LABEL_52;
      }

      *buf = 67109376;
      v77 = _queryTransactionRecordCount;
      v78 = 1024;
      v79 = 100000;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "[MACD|PersistentHistory] Persistent history transaction count %d below threshold %d, skip pruning";
      v20 = OS_LOG_TYPE_INFO;
      v21 = 14;
    }

    _os_log_impl(&dword_1C9B70000, v18, v20, v19, buf, v21);
    goto LABEL_51;
  }

LABEL_52:
}

uint64_t __96__MADChangeRequest_PersistentHistory__prunePersistentHistoryWithCancelBlock_extendTimeoutBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ((*(v2 + 16))() & 1) != 0)
  {
    return 4294967168;
  }

  result = *(a1 + 40);
  if (result)
  {
    (*(result + 16))();
    return 0;
  }

  return result;
}

- (void)deleteAnalysisResultsImmediatelyWithType:(unint64_t)type
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    v5 = +[MADManagedPhotosResult fetchRequest];
    v6 = MEMORY[0x1E696AE18];
    v7 = +[MADManagedPhotosResult resultsTypeColumnName];
    type = [v6 predicateWithFormat:@"%K == %ld", v7, type];
    [v5 setPredicate:type];

    v28 = 0;
    v9 = mach_continuous_time();
    if ([(NSManagedObjectContext *)self->_moc mad_batchDeleteAndSync:v5 deleteCount:&v28])
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A768];
      v37 = *MEMORY[0x1E696A578];
      v12 = MEMORY[0x1E696AEC0];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|Result] Failed to batch delete managed results"];
      v14 = [v12 stringWithFormat:v13];
      v38[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v16 = [v10 errorWithDomain:v11 code:-18 userInfo:v15];
      error = self->_error;
      self->_error = v16;

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "[MACD|Result] Failed to batch delete managed results";
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 2;
    }

    else
    {
      v22 = VCPSignPostPersistentLog();
      v23 = VCPSignPostPersistentLog();
      v24 = os_signpost_id_generate(v23);

      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        v25 = qos_class_self();
        v26 = VCPMAQoSDescription(v25);
        uTF8String = [v26 UTF8String];
        *buf = 134349826;
        v30 = v9;
        v31 = 2082;
        v32 = "DeleteResult";
        v33 = 2082;
        v34 = uTF8String;
        v35 = 2050;
        v36 = v28;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_EVENT, v24, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", buf, 0x2Au);
      }

      if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      *buf = 67109120;
      LODWORD(v30) = v28;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "[MACD|Result] Batch deleted %d managed results";
      v20 = OS_LOG_TYPE_DEBUG;
      v21 = 8;
    }

    _os_log_impl(&dword_1C9B70000, v18, v20, v19, buf, v21);
LABEL_13:
  }
}

- (void)setDataStoreValue:(int64_t)value forKey:(id)key
{
  keyCopy = key;
  if (!self->_error)
  {
    v8 = keyCopy;
    v7 = [MADManagedKeyValueStore fetchOrCreateKeyValueStoreByKey:keyCopy managedObjectContext:self->_moc];
    [v7 setValue:value];

    keyCopy = v8;
  }
}

- (void)setDataStoreValueIfNotExist:(int64_t)exist forKey:(id)key
{
  v18[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!self->_error)
  {
    v7 = [MADManagedKeyValueStore fetchKeyValueStoreByKey:keyCopy managedObjectContext:self->_moc];
    if (!v7)
    {
      v8 = [[MADManagedKeyValueStore alloc] initWithContext:self->_moc];
      v7 = v8;
      if (v8)
      {
        [(MADManagedKeyValueStore *)v8 setKey:keyCopy];
        [v7 setValue:exist];
      }

      else
      {
        v9 = MEMORY[0x1E696ABC0];
        v17 = *MEMORY[0x1E696A578];
        v10 = MEMORY[0x1E696AEC0];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|KeyValueStore] Failed to create key value store record"];
        v12 = [v10 stringWithFormat:v11];
        v18[0] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        v14 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];
        error = self->_error;
        self->_error = v14;

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v16 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|KeyValueStore] Failed to create key value store record", v16, 2u);
        }

        v7 = 0;
      }
    }
  }
}

- (void)removeDataStoreKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!self->_error)
  {
    v5 = [MADManagedKeyValueStore fetchKeyValueStoreByKey:keyCopy managedObjectContext:self->_moc];
    if (v5)
    {
      [(NSManagedObjectContext *)self->_moc deleteObject:v5];
    }

    else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = keyCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|KeyValueStore] Store does not contain value for key %@", &v6, 0xCu);
    }
  }
}

- (void)removeAllDataStoreKeyValuePairsImmediately
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    v3 = +[MADManagedKeyValueStore fetchRequest];
    v15 = 0;
    if ([(NSManagedObjectContext *)self->_moc mad_batchDeleteAndSync:v3 deleteCount:&v15])
    {
      v4 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v5 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|KeyValueStore] Failed to batch delete all key value pairs"];
      v7 = [v5 stringWithFormat:v6];
      v19[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v9 = [v4 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v8];
      error = self->_error;
      self->_error = v9;

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "[MACD|KeyValueStore] Failed to batch delete all key value pairs";
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 2;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      *buf = 67109120;
      v17 = v15;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "[MACD|KeyValueStore] Batch deleted %d key value records";
      v13 = OS_LOG_TYPE_DEBUG;
      v14 = 8;
    }

    _os_log_impl(&dword_1C9B70000, v11, v13, v12, buf, v14);
LABEL_10:
  }
}

- (int)_fetchOrCreateManagedProcessingStatusWithTaskID:(unint64_t)d localIdentifier:(id)identifier managedProcessingStatus:(id *)status
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (status)
  {
    v28 = 0;
    v9 = [MADManagedProcessingStatus fetchManagedProcessingStatus:&v28 taskID:d localIdentifier:identifierCopy managedObjectContext:self->_moc];
    v10 = v28;
    v11 = v10;
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (!v12)
    {
      v24 = MediaAnalysisLogLevel();
      if (v24 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        objectID = [(MADManagedProcessingStatus *)v11 objectID];
        *buf = 138412546;
        v30 = identifierCopy;
        v31 = 2112;
        v32 = objectID;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|ProcessingStatus][%@] Fetched managed asset %@", buf, 0x16u);
      }

      v14 = v11;
LABEL_22:
      v26 = v14;
      *status = v14;

      v23 = 0;
      goto LABEL_23;
    }

    v13 = mach_continuous_time();
    v14 = [[MADManagedProcessingStatus alloc] initWithContext:self->_moc];

    if (v14)
    {
      v15 = VCPSignPostPersistentLog();
      v16 = VCPSignPostPersistentLog();
      v17 = os_signpost_id_generate(v16);

      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        v18 = qos_class_self();
        v19 = VCPMAQoSDescription(v18);
        v20 = v19;
        uTF8String = [v19 UTF8String];
        *buf = 134349826;
        v30 = v13;
        v31 = 2082;
        v32 = "CreateProcessingStatus";
        v33 = 2082;
        v34 = uTF8String;
        v35 = 2050;
        v36 = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_EVENT, v17, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", buf, 0x2Au);
      }

      [(MADManagedProcessingStatus *)v14 setLocalIdentifier:identifierCopy];
      [(MADManagedProcessingStatus *)v14 setTaskID:d];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        objectID2 = [(MADManagedProcessingStatus *)v14 objectID];
        *buf = 138412546;
        v30 = identifierCopy;
        v31 = 2112;
        v32 = objectID2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|ProcessingStatus][%@] Created new managed processing status %@", buf, 0x16u);
      }

      goto LABEL_22;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = identifierCopy;
      v31 = 1024;
      LODWORD(v32) = d;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ProcessingStatus][%@] Failed to create managed processing status object for task %d", buf, 0x12u);
    }

    v23 = -18;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Nil return object for managedProcessingStatus", buf, 2u);
    }

    v23 = -50;
  }

LABEL_23:

  return v23;
}

- (int)_setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes errorCode:(unint64_t)self0 errorLine:(unint64_t)self1
{
  v47 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  dateCopy = date;
  localIdentifier = [assetCopy localIdentifier];
  v36 = 0;
  v20 = [(MADChangeRequest *)self _fetchOrCreateManagedProcessingStatusWithTaskID:d localIdentifier:localIdentifier managedProcessingStatus:&v36];
  v21 = v36;

  if (v20)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier2 = [assetCopy localIdentifier];
      v23 = VCPTaskIDDescription(d);
      *buf = 138412546;
      v38 = localIdentifier2;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to fetch or create managed processing status of asset %@ for task %@", buf, 0x16u);
    }

    v24 = -18;
  }

  else
  {
    v25 = [assetCopy mad_nextAttemptDateForStatus:status currentAttemptDate:dateCopy attemptCount:attempts];
    v26 = mach_continuous_time();
    localIdentifier3 = [assetCopy localIdentifier];
    [v21 setLocalIdentifier:localIdentifier3];

    [v21 setTaskID:d];
    [v21 setLastAttemptDate:dateCopy];
    [v21 setNextAttemptDate:v25];
    [v21 setErrorCode:code];
    [v21 setErrorLine:line];
    [v21 setMediaType:type];
    [v21 setMediaSubtypes:subtypes];
    [v21 setAttemptCount:attempts];
    [v21 setStatus:status];
    v28 = VCPSignPostPersistentLog();
    v29 = VCPSignPostPersistentLog();
    v30 = os_signpost_id_generate(v29);

    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      v31 = qos_class_self();
      v32 = VCPMAQoSDescription(v31);
      v33 = v32;
      uTF8String = [v32 UTF8String];
      *buf = 134350082;
      v38 = v26;
      v39 = 2082;
      v40 = "ModifyProcessingStatus";
      v41 = 2082;
      v42 = uTF8String;
      v43 = 2050;
      v44 = 1;
      v45 = 2050;
      v46 = 10;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_EVENT, v30, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld ColumnsPerRow=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x34u);
    }

    v24 = 0;
  }

  return v24;
}

- (void)setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes errorCode:(unint64_t)self0 errorLine:(unint64_t)self1
{
  v35[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  dateCopy = date;
  if (!self->_error)
  {
    if ([(MADChangeRequest *)self _setAttempts:attempts asset:assetCopy taskID:d status:status lastAttemptDate:dateCopy mediaType:type mediaSubtypes:subtypes errorCode:code errorLine:line])
    {
      v19 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A578];
      v20 = MEMORY[0x1E696AEC0];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Failed to set attempts for asset %@ for task %@"];
      localIdentifier = [assetCopy localIdentifier];
      v22 = VCPTaskIDDescription(d);
      v23 = [v20 stringWithFormat:v29, localIdentifier, v22];
      v35[0] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v25 = [v19 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v24];
      error = self->_error;
      self->_error = v25;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier2 = [assetCopy localIdentifier];
        v28 = VCPTaskIDDescription(d);
        *buf = 138412546;
        v31 = localIdentifier2;
        v32 = 2112;
        v33 = v28;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set attempts for asset %@ for task %@", buf, 0x16u);
      }
    }
  }
}

- (void)setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date
{
  v30[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  dateCopy = date;
  if (!self->_error)
  {
    if ([(MADChangeRequest *)self _setAttempts:attempts asset:assetCopy taskID:d status:status lastAttemptDate:dateCopy mediaType:0 mediaSubtypes:0 errorCode:1 errorLine:0])
    {
      v14 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v15 = MEMORY[0x1E696AEC0];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Failed to set attempts for asset %@ for task %@"];
      localIdentifier = [assetCopy localIdentifier];
      v17 = VCPTaskIDDescription(d);
      v18 = [v15 stringWithFormat:v24, localIdentifier, v17];
      v30[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v20 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v19];
      error = self->_error;
      self->_error = v20;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier2 = [assetCopy localIdentifier];
        v23 = VCPTaskIDDescription(d);
        *buf = 138412546;
        v26 = localIdentifier2;
        v27 = 2112;
        v28 = v23;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set attempts for asset %@ for task %@", buf, 0x16u);
      }
    }
  }
}

- (int)_removeProcessingStatusWithPredicate:(id)predicate
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v4 = [MADManagedProcessingStatus fetchManagedProcessingStatusBatch:&v28 predicate:predicate fetchLimit:0 sortDescriptors:0 managedObjectContext:self->_moc];
  v5 = v28;
  v6 = v5;
  if (!v4)
  {
    v7 = [v5 count];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v30) = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|ProcessingStatus] Deleting %d processing status", buf, 8u);
    }

    v8 = mach_continuous_time();
    v23 = v7;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v37 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          [(NSManagedObjectContext *)self->_moc deleteObject:v13];
          objc_autoreleasePoolPop(v14);
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v37 count:16];
      }

      while (v10);
    }

    v15 = VCPSignPostPersistentLog();
    v16 = VCPSignPostPersistentLog();
    v17 = os_signpost_id_generate(v16);

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = qos_class_self();
      v19 = VCPMAQoSDescription(v18);
      v20 = v19;
      uTF8String = [v19 UTF8String];
      *buf = 134349826;
      v30 = v8;
      v31 = 2082;
      v32 = "DeleteProcessingStatus";
      v33 = 2082;
      v34 = uTF8String;
      v35 = 2050;
      v36 = v23;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_EVENT, v17, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", buf, 0x2Au);
    }

    v4 = 0;
  }

  return v4;
}

- (void)removeProcessingStatusForLocalIdentifiers:(id)identifiers taskID:(unint64_t)d
{
  v26[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if (!self->_error)
  {
    v7 = MEMORY[0x1E696AE18];
    v8 = +[MADManagedProcessingStatus localIdentifierColumnName];
    v9 = +[MADManagedProcessingStatus taskIDColumnName];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
    v11 = [v7 predicateWithFormat:@"%K IN %@ && %K == %@", v8, identifiersCopy, v9, v10];

    if ([(MADChangeRequest *)self _removeProcessingStatusWithPredicate:v11])
    {
      v12 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v13 = MEMORY[0x1E696AEC0];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Unable to remove processing status with local identifiers %@ for task %@"];
      v15 = VCPTaskIDDescription(d);
      v16 = [v13 stringWithFormat:v14, identifiersCopy, v15];
      v26[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v18 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v17];
      error = self->_error;
      self->_error = v18;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = VCPTaskIDDescription(d);
        *buf = 138412546;
        v22 = identifiersCopy;
        v23 = 2112;
        v24 = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to remove processing status with local identifiers %@ for task %@", buf, 0x16u);
      }
    }
  }
}

- (void)removeProcessingStatusForLocalIdentifier:(id)identifier taskID:(unint64_t)d
{
  v26[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!self->_error)
  {
    v7 = MEMORY[0x1E696AE18];
    v8 = +[MADManagedProcessingStatus localIdentifierColumnName];
    v9 = +[MADManagedProcessingStatus taskIDColumnName];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
    v11 = [v7 predicateWithFormat:@"%K == %@ && %K == %@", v8, identifierCopy, v9, v10];

    if ([(MADChangeRequest *)self _removeProcessingStatusWithPredicate:v11])
    {
      v12 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v13 = MEMORY[0x1E696AEC0];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Unable to remove processing status with local identifier %@ for task %@"];
      v15 = VCPTaskIDDescription(d);
      v16 = [v13 stringWithFormat:v14, identifierCopy, v15];
      v26[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v18 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v17];
      error = self->_error;
      self->_error = v18;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = VCPTaskIDDescription(d);
        *buf = 138412546;
        v22 = identifierCopy;
        v23 = 2112;
        v24 = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to remove processing status with local identifier %@ for task %@", buf, 0x16u);
      }
    }
  }
}

- (int)_removeProcessingStatusImmediatelyWithPredicate:(id)predicate
{
  v30 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = +[MADManagedProcessingStatus fetchRequest];
  v6 = v5;
  if (predicateCopy)
  {
    [v5 setPredicate:predicateCopy];
  }

  v21 = 0;
  v7 = mach_continuous_time();
  v8 = [(NSManagedObjectContext *)self->_moc mad_batchDeleteAndSync:v6 deleteCount:&v21];
  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = predicateCopy;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "[MACD|ProcessingStatus] Failed to batch delete processing status with predicate %@";
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
LABEL_13:
      _os_log_impl(&dword_1C9B70000, v9, v11, v10, buf, v12);
    }
  }

  else
  {
    v13 = VCPSignPostPersistentLog();
    v14 = VCPSignPostPersistentLog();
    v15 = os_signpost_id_generate(v14);

    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v16 = qos_class_self();
      v17 = VCPMAQoSDescription(v16);
      v18 = v17;
      uTF8String = [v17 UTF8String];
      *buf = 134349826;
      v23 = v7;
      v24 = 2082;
      v25 = "DeleteProcessingStatus";
      v26 = 2082;
      v27 = uTF8String;
      v28 = 2050;
      v29 = v21;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_EVENT, v15, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", buf, 0x2Au);
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v23) = v21;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "[MACD|ProcessingStatus] Batch deleted %d processing status records";
      v11 = OS_LOG_TYPE_DEBUG;
      v12 = 8;
      goto LABEL_13;
    }
  }

  return v8;
}

- (void)removeAllProcessingStatusImmediatelyForTaskID:(unint64_t)d
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    v5 = MEMORY[0x1E696AE18];
    v6 = +[MADManagedProcessingStatus taskIDColumnName];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
    v8 = [v5 predicateWithFormat:@"%K == %@", v6, v7];

    if ([(MADChangeRequest *)self _removeProcessingStatusImmediatelyWithPredicate:v8])
    {
      v9 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v10 = MEMORY[0x1E696AEC0];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Unable to remove all processing status for task %@"];
      v12 = VCPTaskIDDescription(d);
      v13 = [v10 stringWithFormat:v11, v12];
      v21[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v15 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];
      error = self->_error;
      self->_error = v15;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = VCPTaskIDDescription(d);
        *buf = 138412290;
        v19 = v17;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to remove all processing status for task %@", buf, 0xCu);
      }
    }
  }
}

- (void)removeAllProcessingStatusImmediately
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    if ([(MADChangeRequest *)self _removeProcessingStatusImmediatelyWithPredicate:0])
    {
      v3 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A578];
      v4 = MEMORY[0x1E696AEC0];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Unable to remove all processing status"];
      v6 = [v4 stringWithFormat:v5];
      v12[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v8 = [v3 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v7];
      error = self->_error;
      self->_error = v8;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to remove all processing status", v10, 2u);
      }
    }
  }
}

- (void)removeProcessingStatusImmediatelyForTaskID:(unint64_t)d mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    v7 = MEMORY[0x1E696AE18];
    v23 = +[MADManagedProcessingStatus taskIDColumnName];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v9 = +[MADManagedProcessingStatus mediaTypeColumnName];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v11 = +[MADManagedProcessingStatus mediaSubtypesColumnName];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:subtypes];
    v13 = [v7 predicateWithFormat:@"%K == %@ && %K == %@ && %K == %@", v23, v8, v9, v10, v11, v12];

    if ([(MADChangeRequest *)self _removeProcessingStatusImmediatelyWithPredicate:v13])
    {
      v14 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v15 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Unable to remove all processing status with media type %d and media subtypes %d for task %@"];
      v17 = VCPTaskIDDescription(d);
      v18 = [v15 stringWithFormat:v16, type, subtypes, v17];
      v33[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v20 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v19];
      error = self->_error;
      self->_error = v20;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = VCPTaskIDDescription(d);
        *buf = 67109634;
        typeCopy = type;
        v28 = 1024;
        subtypesCopy = subtypes;
        v30 = 2112;
        v31 = v22;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to remove all processing status with media type %d and media subtypes %d for task %@", buf, 0x18u);
      }
    }
  }
}

- (int)_updateProcessingStatus:(unint64_t)status nextAttemptDate:(id)date errorCode:(unint64_t)code errorLine:(unint64_t)line localIdentifier:(id)identifier taskID:(unint64_t)d
{
  v40 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  identifierCopy = identifier;
  v29 = 0;
  v16 = [(MADChangeRequest *)self _fetchOrCreateManagedProcessingStatusWithTaskID:d localIdentifier:identifierCopy managedProcessingStatus:&v29];
  v17 = v29;
  if (v16)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = VCPTaskIDDescription(d);
      *buf = 138412546;
      v31 = identifierCopy;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to fetch or create managed processing status with local identifier %@ for task %@", buf, 0x16u);
    }

    v19 = -18;
  }

  else
  {
    v20 = mach_continuous_time();
    [v17 setStatus:status];
    [v17 setNextAttemptDate:dateCopy];
    [v17 setErrorCode:code];
    [v17 setErrorLine:line];
    v21 = VCPSignPostPersistentLog();
    v22 = VCPSignPostPersistentLog();
    v23 = os_signpost_id_generate(v22);

    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = qos_class_self();
      v25 = VCPMAQoSDescription(v24);
      v26 = v25;
      uTF8String = [v25 UTF8String];
      *buf = 134350082;
      v31 = v20;
      v32 = 2082;
      v33 = "ModifyProcessingStatus";
      v34 = 2082;
      v35 = uTF8String;
      v36 = 2050;
      v37 = 1;
      v38 = 2050;
      v39 = 4;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_EVENT, v23, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld ColumnsPerRow=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x34u);
    }

    v19 = 0;
  }

  return v19;
}

- (void)updateProcessingStatus:(unint64_t)status nextAttemptDate:(id)date errorCode:(unint64_t)code errorLine:(unint64_t)line localIdentifier:(id)identifier taskID:(unint64_t)d
{
  v30[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  identifierCopy = identifier;
  if (!self->_error)
  {
    if ([(MADChangeRequest *)self _updateProcessingStatus:status nextAttemptDate:dateCopy errorCode:code errorLine:line localIdentifier:identifierCopy taskID:d])
    {
      v16 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v17 = MEMORY[0x1E696AEC0];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Unable to update processing status of asset %@ for task %@"];
      v19 = VCPTaskIDDescription(d);
      v20 = [v17 stringWithFormat:v18, identifierCopy, v19];
      v30[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v22 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v21];
      error = self->_error;
      self->_error = v22;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = VCPTaskIDDescription(d);
        *buf = 138412546;
        v26 = identifierCopy;
        v27 = 2112;
        v28 = v24;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to update processing status of asset %@ for task %@", buf, 0x16u);
      }
    }
  }
}

- (void)updateProcessingStatus:(unint64_t)status nextAttemptDate:(id)date localIdentifier:(id)identifier taskID:(unint64_t)d
{
  v26[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  identifierCopy = identifier;
  if (!self->_error)
  {
    if ([(MADChangeRequest *)self _updateProcessingStatus:status nextAttemptDate:dateCopy errorCode:1 errorLine:0 localIdentifier:identifierCopy taskID:d])
    {
      v12 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v13 = MEMORY[0x1E696AEC0];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Unable to update processing status of asset %@ for task %@"];
      v15 = VCPTaskIDDescription(d);
      v16 = [v13 stringWithFormat:v14, identifierCopy, v15];
      v26[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v18 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v17];
      error = self->_error;
      self->_error = v18;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = VCPTaskIDDescription(d);
        *buf = 138412546;
        v22 = identifierCopy;
        v23 = 2112;
        v24 = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to update processing status of asset %@ for task %@", buf, 0x16u);
      }
    }
  }
}

- (int)_hardFailAllRunningProcessingStatusWithPredicate:(id)predicate
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v3 = [MADManagedProcessingStatus fetchManagedProcessingStatusBatch:&v23 predicate:predicate fetchLimit:0 sortDescriptors:0 managedObjectContext:self->_moc];
  v4 = v23;
  if (!v3)
  {
    v5 = mach_continuous_time();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v34 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v19 + 1) + 8 * i) setStatus:{4, v19}];
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v34 count:16];
      }

      while (v7);
    }

    v10 = VCPSignPostPersistentLog();
    v11 = VCPSignPostPersistentLog();
    v12 = os_signpost_id_generate(v11);

    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v13 = qos_class_self();
      v14 = VCPMAQoSDescription(v13);
      v15 = v14;
      uTF8String = [v14 UTF8String];
      v17 = [v6 count];
      *buf = 134350082;
      v25 = v5;
      v26 = 2082;
      v27 = "ModifyProcessingStatus";
      v28 = 2082;
      v29 = uTF8String;
      v30 = 2050;
      v31 = v17;
      v32 = 2050;
      v33 = 4;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_EVENT, v12, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld ColumnsPerRow=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x34u);
    }

    v3 = 0;
  }

  return v3;
}

- (int)_hardFailAllRunningProcessingStatusForTaskID:(unint64_t)d additionalPredicates:(id)predicates
{
  v18[2] = *MEMORY[0x1E69E9840];
  predicatesCopy = predicates;
  v7 = MEMORY[0x1E696AE18];
  v8 = +[MADManagedProcessingStatus taskIDColumnName];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
  v10 = +[MADManagedProcessingStatus statusColumnName];
  v11 = [v7 predicateWithFormat:@"%K == %@ && %K == %@", v8, v9, v10, &unk_1F49BE338];

  if (predicatesCopy)
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:predicatesCopy];
    v13 = MEMORY[0x1E696AB28];
    v18[0] = v11;
    v18[1] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v15 = [v13 andPredicateWithSubpredicates:v14];

    v11 = v15;
  }

  if ([(MADChangeRequest *)self _hardFailAllRunningProcessingStatusWithPredicate:v11])
  {
    v16 = -18;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)hardFailAllRunningProcessingStatusForTaskID:(unint64_t)d additionalPredicates:(id)predicates
{
  v21[1] = *MEMORY[0x1E69E9840];
  predicatesCopy = predicates;
  if (!self->_error)
  {
    if ([(MADChangeRequest *)self _hardFailAllRunningProcessingStatusForTaskID:d additionalPredicates:predicatesCopy])
    {
      v7 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v8 = MEMORY[0x1E696AEC0];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Failed to hard fail all running processing status for task %@ with addtional predicates %@"];
      v10 = VCPTaskIDDescription(d);
      predicatesCopy = [v8 stringWithFormat:v9, v10, predicatesCopy];
      v21[0] = predicatesCopy;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v13 = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v12];
      error = self->_error;
      self->_error = v13;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = VCPTaskIDDescription(d);
        *buf = 138412546;
        v17 = v15;
        v18 = 2112;
        v19 = predicatesCopy;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to hard fail all running processing status for task %@ with addtional predicates %@", buf, 0x16u);
      }
    }
  }
}

- (void)hardFailAllRunningProcessingStatusForTaskID:(unint64_t)d
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    if ([(MADChangeRequest *)self _hardFailAllRunningProcessingStatusForTaskID:d additionalPredicates:0])
    {
      v5 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      v6 = MEMORY[0x1E696AEC0];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Failed to hard fail all running processing status for task %@"];
      v8 = VCPTaskIDDescription(d);
      v9 = [v6 stringWithFormat:v7, v8];
      v17[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v11 = [v5 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v10];
      error = self->_error;
      self->_error = v11;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = VCPTaskIDDescription(d);
        *buf = 138412290;
        v15 = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to hard fail all running processing status for task %@", buf, 0xCu);
      }
    }
  }
}

- (MADChangeRequest)initWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = MADChangeRequest;
  v6 = [(MADChangeRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_moc, context);
  }

  return v7;
}

+ (id)changeRequestWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v4 = [objc_alloc(objc_opt_class()) initWithManagedObjectContext:contextCopy];

  return v4;
}

- (int)_removeAssetsWithPredicate:(id)predicate
{
  v45 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v30 = predicateCopy;
  v5 = +[MADManagedPhotosAsset fetchRequest];
  v6 = v5;
  if (predicateCopy)
  {
    [v5 setPredicate:predicateCopy];
  }

  moc = self->_moc;
  v35 = 0;
  v8 = [(NSManagedObjectContext *)moc executeFetchRequest:v6 error:&v35];
  v9 = v35;
  if (!v9)
  {
    v29 = v8;
    v12 = [v8 count];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v37) = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|Asset] Deleting %d asset records", buf, 8u);
    }

    v28 = v12;
    v27 = mach_continuous_time();
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v44 count:16];
    if (v14)
    {
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          [(NSManagedObjectContext *)self->_moc deleteObject:v17];
          objc_autoreleasePoolPop(v18);
        }

        v14 = [v13 countByEnumeratingWithState:&v31 objects:v44 count:16];
      }

      while (v14);
    }

    v19 = VCPSignPostPersistentLog();
    v20 = VCPSignPostPersistentLog();
    v21 = os_signpost_id_generate(v20);

    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = qos_class_self();
      v23 = VCPMAQoSDescription(v22);
      v24 = v23;
      uTF8String = [v23 UTF8String];
      *buf = 134349826;
      v37 = v27;
      v38 = 2082;
      v39 = "DeleteAsset";
      v40 = 2082;
      v41 = uTF8String;
      v42 = 2050;
      v43 = v28;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_EVENT, v21, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", buf, 0x2Au);
    }

    v11 = 0;
    goto LABEL_22;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = v8;
    v10 = [v6 debugDescription];
    *buf = 138412546;
    v37 = v10;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|Asset] Failed to execute fetch request %@: %@", buf, 0x16u);

    v11 = -18;
LABEL_22:
    v8 = v29;
    goto LABEL_23;
  }

  v11 = -18;
LABEL_23:

  return v11;
}

- (void)removeAssetsWithLocalIdentifiers:(id)identifiers
{
  v19[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  if (!self->_error)
  {
    if (identifiersCopy)
    {
      v6 = MEMORY[0x1E696AE18];
      v7 = +[MADManagedPhotosAsset localIdentifierColumnName];
      v8 = [v6 predicateWithFormat:@"%K IN %@", v7, v5];
    }

    else
    {
      v8 = 0;
    }

    if ([(MADChangeRequest *)self _removeAssetsWithPredicate:v8])
    {
      v9 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v10 = MEMORY[0x1E696AEC0];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|Asset] Failed to remove assets with local identifiers: %@"];
      v12 = [v10 stringWithFormat:v11, v5];
      v19[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v14 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];
      error = self->_error;
      self->_error = v14;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|Asset] Failed to remove assets with local identifiers: %@", buf, 0xCu);
      }
    }
  }
}

- (void)assetWithPhotosAsset:(id)asset analysis:(id)analysis
{
  v162[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  analysisCopy = analysis;
  if (self->_error)
  {
    goto LABEL_108;
  }

  v121 = analysisCopy;
  v7 = MEMORY[0x1E696AEC0];
  localIdentifier = [assetCopy localIdentifier];
  v120 = [v7 stringWithFormat:@"[MACD|Asset][%@]", localIdentifier];

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v150 = v120;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Storing analysis ...", buf, 0xCu);
  }

  if (!v121)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v150 = v120;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ No analysis results; skipping", buf, 0xCu);
    }

    goto LABEL_107;
  }

  v119 = +[MADManagedPhotosAsset fetchRequest];
  v9 = MEMORY[0x1E696AE18];
  v10 = +[MADManagedPhotosAsset localIdentifierColumnName];
  localIdentifier2 = [assetCopy localIdentifier];
  v12 = [v9 predicateWithFormat:@"%K = %@", v10, localIdentifier2];
  selfCopy = self;
  [v119 setPredicate:v12];

  moc = self->_moc;
  v144 = 0;
  v14 = [(NSManagedObjectContext *)moc executeFetchRequest:v119 error:&v144];
  v118 = v144;
  firstObject = [v14 firstObject];

  if (v118)
  {
    v15 = MEMORY[0x1E696ABC0];
    v161 = *MEMORY[0x1E696A578];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"%@ Failed to fetch managed asset - %@"];
    v118 = [v16 stringWithFormat:v17, v120, v118];
    v162[0] = v118;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v162 forKeys:&v161 count:1];
    v20 = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v19];
    error = self->_error;
    self->_error = v20;

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v150 = v120;
      v151 = 2112;
      v152 = v118;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to fetch managed asset - %@", buf, 0x16u);
    }

    goto LABEL_105;
  }

  if (firstObject)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      objectID = [(MADManagedPhotosAsset *)firstObject objectID];
      *buf = 138412546;
      v150 = v120;
      v151 = 2112;
      v152 = objectID;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Fetched managed asset %@", buf, 0x16u);
    }
  }

  else
  {
    v23 = mach_continuous_time();
    firstObject = [[MADManagedPhotosAsset alloc] initWithContext:self->_moc];
    v24 = VCPSignPostPersistentLog();
    v25 = VCPSignPostPersistentLog();
    v26 = os_signpost_id_generate(v25);

    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      v27 = qos_class_self();
      v28 = VCPMAQoSDescription(v27);
      v29 = v28;
      uTF8String = [v28 UTF8String];
      *buf = 134349826;
      v150 = v23;
      v151 = 2082;
      v152 = "CreateAsset";
      v153 = 2082;
      v154 = uTF8String;
      v155 = 2050;
      v156 = 1;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_EVENT, v26, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", buf, 0x2Au);
    }

    if (!firstObject)
    {
      v100 = MEMORY[0x1E696ABC0];
      v159 = *MEMORY[0x1E696A578];
      v101 = MEMORY[0x1E696AEC0];
      v129 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"%@ Failed to create managed asset object"];
      v102 = [v101 stringWithFormat:v120];
      v160 = v102;
      v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
      v104 = [v100 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v103];
      v105 = self->_error;
      self->_error = v104;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v150 = v120;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to create managed asset object", buf, 0xCu);
      }

      goto LABEL_106;
    }

    localIdentifier3 = [assetCopy localIdentifier];
    [(MADManagedPhotosAsset *)firstObject setLocalIdentifier:localIdentifier3];

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      objectID2 = [(MADManagedPhotosAsset *)firstObject objectID];
      *buf = 138412546;
      v150 = v120;
      v151 = 2112;
      v152 = objectID2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Creating new managed asset %@", buf, 0x16u);
    }
  }

  v33 = mach_continuous_time();
  -[MADManagedPhotosAsset setVersion:](firstObject, "setVersion:", [v121 vcp_version]);
  vcp_dateModified = [v121 vcp_dateModified];
  [(MADManagedPhotosAsset *)firstObject setDateModified:vcp_dateModified];

  vcp_dateAnalyzed = [v121 vcp_dateAnalyzed];
  [(MADManagedPhotosAsset *)firstObject setDateAnalyzed:vcp_dateAnalyzed];

  -[MADManagedPhotosAsset setFlags:](firstObject, "setFlags:", [v121 vcp_flags]);
  [v121 vcp_quality];
  *&v36 = v36;
  [(MADManagedPhotosAsset *)firstObject setQuality:v36];
  -[MADManagedPhotosAsset setStatsFlags:](firstObject, "setStatsFlags:", [v121 vcp_statsFlags]);
  -[MADManagedPhotosAsset setAnalysisTypes:](firstObject, "setAnalysisTypes:", [v121 vcp_types]);
  v37 = VCPSignPostPersistentLog();
  v38 = VCPSignPostPersistentLog();
  v39 = os_signpost_id_generate(v38);

  if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    v40 = qos_class_self();
    v41 = VCPMAQoSDescription(v40);
    v42 = v41;
    uTF8String2 = [v41 UTF8String];
    *buf = 134350082;
    v150 = v33;
    v151 = 2082;
    v152 = "ModifyAsset";
    v153 = 2082;
    v154 = uTF8String2;
    v155 = 2050;
    v156 = 1;
    v157 = 2050;
    v158 = 8;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v37, OS_SIGNPOST_EVENT, v39, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld ColumnsPerRow=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x34u);
  }

  vcp_results = [v121 vcp_results];
  v111 = [MEMORY[0x1E695DFA8] set];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  results = [(MADManagedPhotosAsset *)firstObject results];
  v139[0] = MEMORY[0x1E69E9820];
  v139[1] = 3221225472;
  v139[2] = __57__MADChangeRequest_Asset__assetWithPhotosAsset_analysis___block_invoke;
  v139[3] = &unk_1E83515A0;
  v126 = v120;
  v140 = v126;
  v124 = vcp_results;
  v141 = v124;
  v115 = dictionary;
  v142 = v115;
  v45 = v111;
  v143 = v45;
  [results enumerateObjectsUsingBlock:v139];

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = v45;
  v46 = [obj countByEnumeratingWithState:&v135 objects:v148 count:16];
  if (v46)
  {
    v47 = *v136;
    v48 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v136 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v135 + 1) + 8 * i);
        v51 = objc_autoreleasePoolPush();
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v150 = v126;
          v151 = 2112;
          v152 = v50;
          _os_log_impl(&dword_1C9B70000, v48, OS_LOG_TYPE_DEBUG, "%@ Deleting managed result %@", buf, 0x16u);
        }

        [(MADManagedPhotosAsset *)firstObject removeResult:v50];
        objc_autoreleasePoolPop(v51);
      }

      v46 = [obj countByEnumeratingWithState:&v135 objects:v148 count:16];
    }

    while (v46);
  }

  vcp_types = [v121 vcp_types];
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v122 = v124;
  v53 = [v122 countByEnumeratingWithState:&v131 objects:v147 count:16];
  if (!v53)
  {
    goto LABEL_100;
  }

  v125 = *v132;
  v106 = *MEMORY[0x1E696A768];
  v107 = *MEMORY[0x1E696A578];
  v54 = MEMORY[0x1E69E9C10];
  do
  {
    v55 = 0;
    do
    {
      if (*v132 != v125)
      {
        objc_enumerationMutation(v122);
      }

      v56 = *(*(&v131 + 1) + 8 * v55);
      v57 = objc_autoreleasePoolPush();
      v58 = MediaAnalysisResultsKeyToType(v56);
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v150 = v126;
        v151 = 2112;
        v152 = v56;
        v153 = 2048;
        v154 = v58;
        _os_log_impl(&dword_1C9B70000, v54, OS_LOG_TYPE_DEBUG, "%@ Checking result %@ - %lu", buf, 0x20u);
      }

      v59 = MediaAnalysisResultsKeyToAnalysisType(v56);
      if ((v59 & vcp_types) == 0 && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v150 = v126;
        v151 = 2112;
        v152 = v56;
        v153 = 2048;
        v154 = v59;
        _os_log_impl(&dword_1C9B70000, v54, OS_LOG_TYPE_DEBUG, "%@ Found undeclared results %@ (expecting analysisType %llu)", buf, 0x20u);
      }

      if ((![v56 isEqualToString:@"AudioEmbeddingResults"] || +[VCPMovieAnalyzer persistAudioEmbedding](VCPMovieAnalyzer, "persistAudioEmbedding")) && (objc_msgSend(v56, "isEqualToString:", @"KeyFrameResourceResults") & 1) == 0 && (objc_msgSend(v56, "isEqualToString:", @"ImageEmbeddingResults") & 1) == 0 && !objc_msgSend(v56, "isEqualToString:", @"VideoThumbnailResourcesResults"))
      {
        if (!v58)
        {
          if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          *buf = 138412546;
          v150 = v126;
          v151 = 2112;
          v152 = v56;
          v60 = v54;
          v61 = OS_LOG_TYPE_DEFAULT;
          v62 = "%@ No results type for %@; dropping result";
          goto LABEL_57;
        }

        v64 = [v122 objectForKeyedSubscript:v56];
        v116 = v64;
        if (v64)
        {
          v130 = 0;
          v65 = [MEMORY[0x1E696AE40] dataWithPropertyList:v64 format:200 options:0 error:&v130];
          v113 = v130;
          v114 = v65;
          if (v65)
          {
            v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v58];
            v67 = [v115 objectForKeyedSubscript:v66];
            v68 = v67 == 0;

            if (!v68)
            {
              v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v58];
              v70 = [v115 objectForKeyedSubscript:v69];
              [v70 setResults:v114];

              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v58];
                v72 = [v115 objectForKeyedSubscript:v71];
                *buf = 138412546;
                v150 = v126;
                v151 = 2112;
                v152 = v72;
                _os_log_impl(&dword_1C9B70000, v54, OS_LOG_TYPE_DEBUG, "%@ Updated managed result %@", buf, 0x16u);
              }

              goto LABEL_92;
            }

            v73 = mach_continuous_time();
            v108 = [[MADManagedPhotosResult alloc] initWithContext:selfCopy->_moc];
            log = VCPSignPostPersistentLog();
            v74 = VCPSignPostPersistentLog();
            v75 = os_signpost_id_generate(v74);

            if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
            {
              v76 = qos_class_self();
              v77 = VCPMAQoSDescription(v76);
              v78 = v77;
              uTF8String3 = [v77 UTF8String];
              *buf = 134349826;
              v150 = v73;
              v151 = 2082;
              v152 = "CreateResult";
              v153 = 2082;
              v154 = uTF8String3;
              v155 = 2050;
              v156 = 1;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, log, OS_SIGNPOST_EVENT, v75, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", buf, 0x2Au);
            }

            if (v108)
            {
              v80 = mach_continuous_time();
              [(MADManagedPhotosResult *)v108 setAsset:firstObject];
              [(MADManagedPhotosResult *)v108 setResultsType:v58];
              [(MADManagedPhotosResult *)v108 setResults:v114];
              v81 = VCPSignPostPersistentLog();
              v82 = v80;
              v83 = VCPSignPostPersistentLog();
              v84 = os_signpost_id_generate(v83);

              if (v84 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
              {
                v85 = qos_class_self();
                v86 = VCPMAQoSDescription(v85);
                v87 = v86;
                uTF8String4 = [v86 UTF8String];
                *buf = 134350082;
                v150 = v82;
                v151 = 2082;
                v152 = "ModifyResult";
                v153 = 2082;
                v154 = uTF8String4;
                v155 = 2050;
                v156 = 1;
                v157 = 2050;
                v158 = 2;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v81, OS_SIGNPOST_EVENT, v84, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld ColumnsPerRow=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x34u);
              }

              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v150 = v126;
                v151 = 2112;
                v152 = v108;
                _os_log_impl(&dword_1C9B70000, v54, OS_LOG_TYPE_DEBUG, "%@ Inserted managed result %@", buf, 0x16u);
              }

LABEL_92:
              v63 = 0;
            }

            else
            {
              v89 = MEMORY[0x1E696ABC0];
              v145 = v107;
              v90 = MEMORY[0x1E696AEC0];
              v91 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"%@ Failed to created managed result object"];
              v126 = [v90 stringWithFormat:v91, v126];
              v146 = v126;
              v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
              v94 = [v89 errorWithDomain:v106 code:-18 userInfo:v93];
              v95 = selfCopy->_error;
              selfCopy->_error = v94;

              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v150 = v126;
                _os_log_impl(&dword_1C9B70000, v54, OS_LOG_TYPE_ERROR, "%@ Failed to created managed result object", buf, 0xCu);
              }

              v63 = 1;
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v150 = v126;
              v151 = 2112;
              v152 = v56;
              v153 = 2112;
              v154 = v113;
              _os_log_impl(&dword_1C9B70000, v54, OS_LOG_TYPE_ERROR, "%@ Failed to convert results for %@ - %@; skipping result", buf, 0x20u);
            }

            v63 = 29;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v150 = v126;
            v151 = 2112;
            v152 = v56;
            _os_log_impl(&dword_1C9B70000, v54, OS_LOG_TYPE_DEFAULT, "%@ No result content for %@; skipping result", buf, 0x16u);
          }

          v63 = 29;
        }

        goto LABEL_59;
      }

      if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        goto LABEL_58;
      }

      *buf = 138412546;
      v150 = v126;
      v151 = 2112;
      v152 = v56;
      v60 = v54;
      v61 = OS_LOG_TYPE_INFO;
      v62 = "%@ Skip not-allowed results for %@";
LABEL_57:
      _os_log_impl(&dword_1C9B70000, v60, v61, v62, buf, 0x16u);
LABEL_58:
      v63 = 29;
LABEL_59:
      objc_autoreleasePoolPop(v57);
      if (v63 != 29 && v63)
      {

        goto LABEL_104;
      }

      ++v55;
    }

    while (v53 != v55);
    v96 = [v122 countByEnumeratingWithState:&v131 objects:v147 count:16];
    v53 = v96;
  }

  while (v96);
LABEL_100:

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    objectID3 = [(MADManagedPhotosAsset *)firstObject objectID];
    results2 = [(MADManagedPhotosAsset *)firstObject results];
    v99 = [results2 count];
    *buf = 138412802;
    v150 = v126;
    v151 = 2112;
    v152 = objectID3;
    v153 = 1024;
    LODWORD(v154) = v99;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Updated managed asset %@ with %d results", buf, 0x1Cu);
  }

LABEL_104:

LABEL_105:
LABEL_106:

LABEL_107:
  analysisCopy = v121;
LABEL_108:
}

void __57__MADChangeRequest_Asset__assetWithPhotosAsset_analysis___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MediaAnalysisResultsTypeToKey([v3 resultsType]);
  if (v4)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:v4];

    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "resultsType")}];
      [v6 setObject:v3 forKeyedSubscript:v7];
    }

    else
    {
      [*(a1 + 56) addObject:v3];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    __57__MADChangeRequest_Asset__assetWithPhotosAsset_analysis___block_invoke_cold_1(*(a1 + 32), v8, [v3 resultsType]);
  }
}

- (void)storeStatsFlags:(unint64_t)flags forLocalIdentifier:(id)identifier
{
  v42[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!self->_error)
  {
    v7 = +[MADManagedPhotosAsset fetchRequest];
    v8 = MEMORY[0x1E696AE18];
    v9 = +[MADManagedPhotosAsset localIdentifierColumnName];
    identifierCopy = [v8 predicateWithFormat:@"%K = %@", v9, identifierCopy];
    [v7 setPredicate:identifierCopy];

    moc = self->_moc;
    v30 = 0;
    v12 = [(NSManagedObjectContext *)moc executeFetchRequest:v7 error:&v30];
    v13 = v30;
    firstObject = [v12 firstObject];

    if (v13)
    {
      v15 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v16 = MEMORY[0x1E696AEC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Failed to fetch asset with local identifier: %@ - %@"];
      v18 = [v16 stringWithFormat:v17, identifierCopy, v13];
      v42[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
      v20 = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v19];
      error = self->_error;
      self->_error = v20;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v32 = identifierCopy;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to fetch asset with local identifier: %@ - %@", buf, 0x16u);
      }
    }

    else
    {
      v22 = mach_continuous_time();
      [firstObject setStatsFlags:flags];
      v23 = VCPSignPostPersistentLog();
      v24 = VCPSignPostPersistentLog();
      v25 = os_signpost_id_generate(v24);

      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        v26 = qos_class_self();
        v27 = VCPMAQoSDescription(v26);
        v28 = v27;
        uTF8String = [v27 UTF8String];
        *buf = 134350082;
        v32 = v22;
        v33 = 2082;
        v34 = "ModifyAsset";
        v35 = 2082;
        v36 = uTF8String;
        v37 = 2050;
        v38 = 1;
        v39 = 2050;
        v40 = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_EVENT, v25, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld ColumnsPerRow=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x34u);
      }
    }
  }
}

- (void)setDeletePendingFlag:(BOOL)flag forLocalIdentifier:(id)identifier
{
  flagCopy = flag;
  v44[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!self->_error)
  {
    v7 = +[MADManagedPhotosAsset fetchRequest];
    v8 = MEMORY[0x1E696AE18];
    v9 = +[MADManagedPhotosAsset localIdentifierColumnName];
    identifierCopy = [v8 predicateWithFormat:@"%K = %@", v9, identifierCopy];
    [v7 setPredicate:identifierCopy];

    moc = self->_moc;
    v32 = 0;
    v12 = [(NSManagedObjectContext *)moc executeFetchRequest:v7 error:&v32];
    v13 = v32;
    firstObject = [v12 firstObject];

    if (v13)
    {
      v15 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v16 = MEMORY[0x1E696AEC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Failed to fetch asset with local identifier: %@ - %@"];
      v18 = [v16 stringWithFormat:v17, identifierCopy, v13];
      v44[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v20 = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v19];
      error = self->_error;
      self->_error = v20;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v34 = identifierCopy;
        v35 = 2112;
        v36 = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to fetch asset with local identifier: %@ - %@", buf, 0x16u);
      }
    }

    else
    {
      v22 = mach_continuous_time();
      if (flagCopy)
      {
        v23 = [firstObject flags] | 0x40000000;
      }

      else
      {
        v23 = [firstObject flags] & 0xFFFFFFFFBFFFFFFFLL;
      }

      [firstObject setFlags:v23];
      date = [MEMORY[0x1E695DF00] date];
      [firstObject setDateAnalyzed:date];

      v25 = VCPSignPostPersistentLog();
      v26 = VCPSignPostPersistentLog();
      v27 = os_signpost_id_generate(v26);

      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        v28 = qos_class_self();
        v29 = VCPMAQoSDescription(v28);
        v30 = v29;
        uTF8String = [v29 UTF8String];
        *buf = 134350082;
        v34 = v22;
        v35 = 2082;
        v36 = "ModifyAsset";
        v37 = 2082;
        v38 = uTF8String;
        v39 = 2050;
        v40 = 1;
        v41 = 2050;
        v42 = 2;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_EVENT, v27, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld ColumnsPerRow=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x34u);
      }
    }
  }
}

- (void)setAnalysisVersion:(int)version forLocalIdentifier:(id)identifier
{
  v4 = *&version;
  v42[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!self->_error)
  {
    v7 = +[MADManagedPhotosAsset fetchRequest];
    v8 = MEMORY[0x1E696AE18];
    v9 = +[MADManagedPhotosAsset localIdentifierColumnName];
    identifierCopy = [v8 predicateWithFormat:@"%K == %@", v9, identifierCopy];
    [v7 setPredicate:identifierCopy];

    moc = self->_moc;
    v30 = 0;
    v12 = [(NSManagedObjectContext *)moc executeFetchRequest:v7 error:&v30];
    v13 = v30;
    firstObject = [v12 firstObject];

    if (firstObject)
    {
      v15 = mach_continuous_time();
      [firstObject setVersion:v4];
      v16 = VCPSignPostPersistentLog();
      v17 = VCPSignPostPersistentLog();
      v18 = os_signpost_id_generate(v17);

      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        v19 = qos_class_self();
        v20 = VCPMAQoSDescription(v19);
        v21 = v20;
        uTF8String = [v20 UTF8String];
        *buf = 134350082;
        v32 = v15;
        v33 = 2082;
        v34 = "ModifyAsset";
        v35 = 2082;
        v36 = uTF8String;
        v37 = 2050;
        v38 = 1;
        v39 = 2050;
        v40 = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_EVENT, v18, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld ColumnsPerRow=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x34u);
      }
    }

    else
    {
      v23 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v24 = MEMORY[0x1E696AEC0];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|Asset][%@] Failed to fetch managed asset - %@"];
      v26 = [v24 stringWithFormat:v25, identifierCopy, v13];
      v42[0] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
      v28 = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v27];
      error = self->_error;
      self->_error = v28;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v32 = identifierCopy;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|Asset][%@] Failed to fetch managed asset - %@", buf, 0x16u);
      }
    }
  }
}

- (void)setChangeToken:(id)token taskID:(unint64_t)d changeTokenType:(unint64_t)type date:(id)date
{
  v46[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  dateCopy = date;
  if (!self->_error)
  {
    v33 = dateCopy;
    v36 = 0;
    v34 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v36];
    v35 = v36;
    if (v34)
    {
      v12 = [[MADManagedChangeToken alloc] initWithContext:self->_moc];
      v13 = v12;
      if (v12)
      {
        [(MADManagedChangeToken *)v12 setTokenID:d];
        [(MADManagedChangeToken *)v13 setTokenType:type];
        [(MADManagedChangeToken *)v13 setTokenData:v34];
        [(MADManagedChangeToken *)v13 setDate:v33];
        [(MADManagedChangeToken *)v13 setVersion:VCPVersionForTask(d)];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v14 = VCPTaskIDDescription(d);
          *buf = 138412546;
          v40 = v14;
          v41 = 1024;
          typeCopy3 = type;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|ChangeToken] Successfully set change token for taskID %@ and changeTokenType %d", buf, 0x12u);
        }
      }

      else
      {
        v24 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A578];
        v25 = MEMORY[0x1E696AEC0];
        v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|ChangeToken] Failed to create managed change token object for task %@ and changeTokenType %d"];
        v26 = VCPTaskIDDescription(d);
        type = [v25 stringWithFormat:v32, v26, type];
        v38 = type;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v29 = [v24 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v28];
        error = self->_error;
        self->_error = v29;

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v31 = VCPTaskIDDescription(d);
          *buf = 138412546;
          v40 = v31;
          v41 = 1024;
          typeCopy3 = type;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ChangeToken] Failed to create managed change token object for task %@ and changeTokenType %d", buf, 0x12u);
        }
      }
    }

    else
    {
      v15 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v16 = MEMORY[0x1E696AEC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|ChangeToken] Failed to encode data from changeToken content for taskID %@ and changeTokenType %d (error:%@)"];
      v18 = VCPTaskIDDescription(d);
      v19 = [v16 stringWithFormat:v17, v18, type, v35];
      v46[0] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v21 = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v20];
      v22 = self->_error;
      self->_error = v21;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = VCPTaskIDDescription(d);
        *buf = 138412802;
        v40 = v23;
        v41 = 1024;
        typeCopy3 = type;
        v43 = 2112;
        v44 = v35;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ChangeToken] Failed to encode data from changeToken content for taskID %@ and changeTokenType %d (error:%@)", buf, 0x1Cu);
      }
    }

    dateCopy = v33;
  }
}

- (void)updateChangeToken:(id)token taskID:(unint64_t)d changeTokenType:(unint64_t)type
{
  v51[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (!self->_error)
  {
    v41 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v41];
    v37 = v41;
    v38 = v9;
    if (v9)
    {
      v39 = +[MADManagedChangeToken fetchRequest];
      v10 = MEMORY[0x1E696AE18];
      v11 = +[MADManagedChangeToken tokenIDColumnName];
      v12 = +[MADManagedChangeToken tokenTypeColumnName];
      type = [v10 predicateWithFormat:@"(%K == %ld) AND (%K == %ld)", v11, d, v12, type];
      [v39 setPredicate:type];

      moc = self->_moc;
      v40 = 0;
      v15 = [(NSManagedObjectContext *)moc executeFetchRequest:v39 error:&v40];
      v36 = v40;
      firstObject = [v15 firstObject];

      if (firstObject)
      {
        [firstObject setTokenData:v38];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v17 = VCPTaskIDDescription(d);
          *buf = 138412546;
          v43 = v17;
          v44 = 1024;
          typeCopy3 = type;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|ChangeToken] Successfully update change token for taskID %@ and changeTokenType %d", buf, 0x12u);
        }
      }

      else
      {
        v27 = MEMORY[0x1E696ABC0];
        v48 = *MEMORY[0x1E696A578];
        v28 = MEMORY[0x1E696AEC0];
        v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|ChangeToken] Failed to query change token for taskID %@ and changeTokenType %d with error %@"];
        v29 = VCPTaskIDDescription(d);
        v30 = [v28 stringWithFormat:v35, v29, type, v36];
        v49 = v30;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v32 = [v27 errorWithDomain:*MEMORY[0x1E696A768] code:-19 userInfo:v31];
        error = self->_error;
        self->_error = v32;

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v34 = VCPTaskIDDescription(d);
          *buf = 138412802;
          v43 = v34;
          v44 = 1024;
          typeCopy3 = type;
          v46 = 2112;
          v47 = v36;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ChangeToken] Failed to query change token for taskID %@ and changeTokenType %d with error %@", buf, 0x1Cu);
        }
      }
    }

    else
    {
      v18 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696A578];
      v19 = MEMORY[0x1E696AEC0];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|ChangeToken] Failed to encode data from changeToken content for taskID %@ and changeTokenType %d"];
      v21 = VCPTaskIDDescription(d);
      type2 = [v19 stringWithFormat:v20, v21, type];
      v51[0] = type2;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      v24 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v23];
      v25 = self->_error;
      self->_error = v24;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = VCPTaskIDDescription(d);
        *buf = 138412546;
        v43 = v26;
        v44 = 1024;
        typeCopy3 = type;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ChangeToken] Failed to encode data from changeToken content for taskID %@ and changeTokenType %d", buf, 0x12u);
      }
    }
  }
}

- (int)_removeChangeTokenWithPredicate:(id)predicate
{
  v32 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v21 = predicateCopy;
  v5 = +[MADManagedChangeToken fetchRequest];
  v6 = v5;
  if (predicateCopy)
  {
    [v5 setPredicate:predicateCopy];
  }

  moc = self->_moc;
  v26 = 0;
  v8 = [(NSManagedObjectContext *)moc executeFetchRequest:v6 error:&v26];
  v9 = v26;
  if (!v9)
  {
    v20 = v8;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v12 = [v8 count];
      *buf = 67109120;
      LODWORD(v29) = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|ChangeToken] Deleting %d change token records", buf, 8u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          [(NSManagedObjectContext *)self->_moc deleteObject:v17];
          objc_autoreleasePoolPop(v18);
        }

        v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    v11 = 0;
    goto LABEL_19;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = v8;
    v10 = [v6 debugDescription];
    *buf = 138412546;
    v29 = v10;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ChangeToken] Failed to execute fetch request %@: %@", buf, 0x16u);

    v11 = -18;
LABEL_19:
    v8 = v20;
    goto LABEL_20;
  }

  v11 = -18;
LABEL_20:

  return v11;
}

- (void)removeChangeTokenForTaskID:(unint64_t)d changeTokenType:(unint64_t)type
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    v7 = MEMORY[0x1E696AE18];
    v8 = +[MADManagedChangeToken tokenIDColumnName];
    v9 = +[MADManagedChangeToken tokenTypeColumnName];
    type = [v7 predicateWithFormat:@"(%K == %ld) AND (%K == %ld)", v8, d, v9, type];

    if ([(MADChangeRequest *)self _removeChangeTokenWithPredicate:type])
    {
      v11 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v12 = MEMORY[0x1E696AEC0];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|ChangeToken] Failed to remove change token with type %d for task %@"];
      v14 = VCPTaskIDDescription(d);
      v15 = [v12 stringWithFormat:v13, type, v14];
      v25[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v17 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v16];
      error = self->_error;
      self->_error = v17;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = VCPTaskIDDescription(d);
        *buf = 67109378;
        typeCopy = type;
        v22 = 2112;
        v23 = v19;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ChangeToken] Failed to remove change token with type %d for task %@", buf, 0x12u);
      }
    }
  }
}

- (int)_removeChangeTokenImmediatelyWithPredicate:(id)predicate
{
  v16 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = +[MADManagedChangeToken fetchRequest];
  v6 = v5;
  if (predicateCopy)
  {
    [v5 setPredicate:predicateCopy];
  }

  v13 = 0;
  v7 = [(NSManagedObjectContext *)self->_moc mad_batchDeleteAndSync:v6 deleteCount:&v13];
  if (v7)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = predicateCopy;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "[MACD|ChangeToken] Failed to batch delete change token with predicate %@";
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
LABEL_10:
      _os_log_impl(&dword_1C9B70000, v8, v10, v9, buf, v11);
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v15) = v13;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "[MACD|ChangeToken] Batch deleted %d change token records";
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 8;
    goto LABEL_10;
  }

  return v7;
}

- (void)removeAllChangeTokensImmediatelyForTaskID:(unint64_t)d
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    v5 = MEMORY[0x1E696AE18];
    v6 = +[MADManagedChangeToken tokenIDColumnName];
    v7 = [v5 predicateWithFormat:@"%K == %ld", v6, d];

    if ([(MADChangeRequest *)self _removeChangeTokenImmediatelyWithPredicate:v7])
    {
      v8 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v9 = MEMORY[0x1E696AEC0];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|ChangeToken] Failed to remove all change tokens for task %@"];
      v11 = VCPTaskIDDescription(d);
      v12 = [v9 stringWithFormat:v10, v11];
      v20[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v14 = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];
      error = self->_error;
      self->_error = v14;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = VCPTaskIDDescription(d);
        *buf = 138412290;
        v18 = v16;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ChangeToken] Failed to remove all change tokens for task %@", buf, 0xCu);
      }
    }
  }
}

- (void)removeAllChangeTokensImmediately
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!self->_error)
  {
    if ([(MADChangeRequest *)self _removeChangeTokenImmediatelyWithPredicate:0])
    {
      v3 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A578];
      v4 = MEMORY[0x1E696AEC0];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"[MACD|ChangeToken] Failed to remove all change tokens"];
      v6 = [v4 stringWithFormat:v5];
      v12[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v8 = [v3 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v7];
      error = self->_error;
      self->_error = v8;

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ChangeToken] Failed to remove all change tokens", v10, 2u);
      }
    }
  }
}

void __57__MADChangeRequest_Asset__assetWithPhotosAsset_analysis___block_invoke_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%@ Unknown results key for type %lld", buf, 0x16u);
}

@end