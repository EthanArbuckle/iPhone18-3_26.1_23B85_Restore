@interface DKKnowledgeStorage
@end

@implementation DKKnowledgeStorage

BOOL __40___DKKnowledgeStorage_removeBadObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 UUID];
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void __64___DKKnowledgeStorage_saveObjects_responseQueue_withCompletion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v16 = 0;
  v4 = [(_DKKnowledgeStorage *)v2 _saveObjects:v3 error:&v16];
  v5 = v16;
  v6 = a1[8];
  if (v6)
  {
    v7 = a1[6];
    if (!v7)
    {
      v7 = *(a1[4] + 32);
    }

    v8 = a1[7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64___DKKnowledgeStorage_saveObjects_responseQueue_withCompletion___block_invoke_2;
    v12[3] = &unk_1E73690A0;
    v14 = v6;
    v15 = v4;
    v13 = v5;
    v9 = v8;
    v10 = v12;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
    block[3] = &unk_1E7367818;
    v18 = v9;
    v19 = v10;
    v11 = v9;
    dispatch_async(v7, block);
  }
}

void __72___DKKnowledgeStorage_saveObjects_tracker_responseQueue_withCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 64);
  if (v3)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72___DKKnowledgeStorage_saveObjects_tracker_responseQueue_withCompletion___block_invoke_2;
    v22[3] = &unk_1E73690C8;
    v4 = &v23 + 1;
    v5 = &v25;
    v6 = &v24;
    v7 = &v24 + 1;
    v16 = *(a1 + 32);
    v8 = *(&v16 + 1);
    v25 = *(a1 + 72);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v23 = v16;
    v24 = v11;
    (*(v3 + 16))(v3, v22);
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72___DKKnowledgeStorage_saveObjects_tracker_responseQueue_withCompletion___block_invoke_4;
    v18[3] = &unk_1E73690C8;
    v4 = &v19 + 1;
    v5 = &v21;
    v6 = &v20;
    v7 = &v20 + 1;
    v17 = *(a1 + 32);
    v12 = *(&v17 + 1);
    v21 = *(a1 + 72);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v19 = v17;
    v20 = v15;
    __72___DKKnowledgeStorage_saveObjects_tracker_responseQueue_withCompletion___block_invoke_4(v18);
  }

  objc_autoreleasePoolPop(v2);
}

void __72___DKKnowledgeStorage_saveObjects_tracker_responseQueue_withCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v16 = 0;
  v4 = [(_DKKnowledgeStorage *)v2 _saveObjects:v3 error:&v16];
  v5 = v16;
  v6 = a1[8];
  if (v6)
  {
    v7 = a1[6];
    if (!v7)
    {
      v7 = *(a1[4] + 32);
    }

    v8 = a1[7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72___DKKnowledgeStorage_saveObjects_tracker_responseQueue_withCompletion___block_invoke_3;
    v12[3] = &unk_1E73690A0;
    v14 = v6;
    v15 = v4;
    v13 = v5;
    v9 = v8;
    v10 = v12;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
    block[3] = &unk_1E7367818;
    v18 = v9;
    v19 = v10;
    v11 = v9;
    dispatch_async(v7, block);
  }
}

void __72___DKKnowledgeStorage_saveObjects_tracker_responseQueue_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v16 = 0;
  v4 = [(_DKKnowledgeStorage *)v2 _saveObjects:v3 error:&v16];
  v5 = v16;
  v6 = a1[8];
  if (v6)
  {
    v7 = a1[6];
    if (!v7)
    {
      v7 = *(a1[4] + 32);
    }

    v8 = a1[7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72___DKKnowledgeStorage_saveObjects_tracker_responseQueue_withCompletion___block_invoke_5;
    v12[3] = &unk_1E73690A0;
    v14 = v6;
    v15 = v4;
    v13 = v5;
    v9 = v8;
    v10 = v12;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
    block[3] = &unk_1E7367818;
    v18 = v9;
    v19 = v10;
    v11 = v9;
    dispatch_async(v7, block);
  }
}

void __41___DKKnowledgeStorage_saveObjects_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [(_DKKnowledgeStorage *)v2 _saveObjects:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

void __42___DKKnowledgeStorage__saveObjects_error___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v47 = objc_alloc_init(_DKObjectMOConverter);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v50 = a1;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v2)
  {
    v43 = 0;
    v46 = 0;
    v49 = *v53;
    v45 = *MEMORY[0x1E696A578];
    v42 = *MEMORY[0x1E696A388];
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v52 + 1) + 8 * i);
        v5 = [v4 stream];
        v6 = [v5 name];

        v7 = _os_feature_enabled_impl();
        LODWORD(v5) = _os_feature_enabled_impl();
        v8 = [_DKBiomeQuery canShimDuetStreamNamed:v6];
        if ((v8 & v5 & 1) == 0)
        {
          v9 = [(_DKObjectMOConverter *)v47 insertObject:v4 inManagedObjectContext:*(v50 + 40)];
          if (v9)
          {
            [*(v50 + 40) refreshObject:v9 mergeChanges:1];
          }

          else
          {
            v10 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v61 = v4;
              _os_log_fault_impl(&dword_191750000, v10, OS_LOG_TYPE_FAULT, "Unable to convert to MO for saving: %@", buf, 0xCu);
            }

            v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to convert _DKObject to MO for saving: %@", v4];
            v12 = MEMORY[0x1E696ABC0];
            v58 = v45;
            v59 = v11;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
            v14 = [v12 errorWithDomain:@"com.apple.coreduet.knowledge" code:3 userInfo:v13];
            v15 = *(*(v50 + 56) + 8);
            v16 = *(v15 + 40);
            *(v15 + 40) = v14;

            *(*(*(v50 + 64) + 8) + 24) = 0;
            ++v46;
          }
        }

        if ((v8 & v7) != 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v4;
            v18 = [v17 creationDate];
            v19 = v18 == 0;

            if (v19)
            {
              v20 = [MEMORY[0x1E695DF00] date];
              [v17 setCreationDate:v20];
            }

            v21 = [v17 localCreationDate];
            v22 = v21 == 0;

            if (v22)
            {
              v23 = [v17 creationDate];
              [v17 setLocalCreationDate:v23];
            }

            v24 = [v17 stream];
            v25 = [v24 name];

            if (v25 && [v25 length])
            {
              v26 = +[_DKBiomeStreamCache sharedCache];
              v27 = [v26 objectForKey:v25];
              v28 = [v27 source];

              if (!v28)
              {
                v29 = [objc_alloc(getBMDKEventStreamClass()) initWithDKStreamIdentifier:v25 contentProtection:v42];
                v28 = [v29 source];
                if (v29)
                {
                  [v26 setObject:v29 forKey:v25];
                }

                else
                {
                  v30 = +[_CDLogging knowledgeChannel];
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v61 = v25;
                    _os_log_error_impl(&dword_191750000, v30, OS_LOG_TYPE_ERROR, "nil BMDKEventStream for DK stream %@", buf, 0xCu);
                  }
                }

                if (AnalyticsIsEventUsed())
                {
                  v31 = v43;
                  if (!v43)
                  {
                    v32 = _CDCurrentOrXPCProcessName();
                    v33 = v32;
                    v34 = @"unknown";
                    if (v32)
                    {
                      v34 = v32;
                    }

                    v44 = v34;

                    v31 = v44;
                  }

                  v56[0] = @"client";
                  v56[1] = @"stream";
                  v43 = v31;
                  v57[0] = v31;
                  v57[1] = v25;
                  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
                  AnalyticsSendEvent();
                }
              }

              v36 = [objc_alloc(getBMDKEventClass()) initWithDKEvent:v17];
              if (objc_opt_respondsToSelector())
              {
                [v28 sendEvent:v36 timestampNumber:0 notifyCompute:0];
              }

              else
              {
                [v28 sendEvent:v36];
              }
            }
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v2);
  }

  else
  {
    v43 = 0;
  }

  if ([*(v50 + 40) hasChanges])
  {
    v37 = *(v50 + 40);
    v38 = *(*(v50 + 56) + 8);
    v51 = *(v38 + 40);
    v39 = [v37 save:&v51];
    objc_storeStrong((v38 + 40), v51);
    *(*(*(v50 + 64) + 8) + 24) = v39;
  }

  _cdknowledge_signpost_save_end([*(*(*(v50 + 56) + 8) + 40) code]);
  v40 = *(*(*(v50 + 64) + 8) + 24);
  [*(*(*(v50 + 56) + 8) + 40) code];
  kdebug_trace();
  if (*(*(*(v50 + 64) + 8) + 24) == 1)
  {
    [(_DKKnowledgeStorage *)*(v50 + 48) _sendInsertEventsNotificationWithObjects:?];
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __66___DKKnowledgeStorage_deleteObjects_responseQueue_withCompletion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v16 = 0;
  v4 = [(_DKKnowledgeStorage *)v2 _deleteObjects:v3 error:&v16];
  v5 = v16;
  v6 = a1[8];
  if (v6)
  {
    v7 = a1[6];
    if (!v7)
    {
      v7 = *(a1[4] + 32);
    }

    v8 = a1[7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66___DKKnowledgeStorage_deleteObjects_responseQueue_withCompletion___block_invoke_2;
    v12[3] = &unk_1E73690A0;
    v14 = v6;
    v15 = v4;
    v13 = v5;
    v9 = v8;
    v10 = v12;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
    block[3] = &unk_1E7367818;
    v18 = v9;
    v19 = v10;
    v11 = v9;
    dispatch_async(v7, block);
  }
}

void __74___DKKnowledgeStorage__tombstoneObjectsMatchingPredicate_batchSize_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[_DKEventMO entity];
  v4 = [v3 name];
  v5 = [v2 fetchRequestWithEntityName:v4];

  [v5 setPredicate:*(a1 + 32)];
  [v5 setFetchOffset:*(a1 + 104)];
  [v5 setFetchLimit:*(a1 + 112)];
  [v5 setSortDescriptors:*(a1 + 40)];
  v6 = [*(a1 + 48) tombstonePolicy];
  v7 = [v6 propertiesToFetchForTombstones];
  [v5 setPropertiesToFetch:v7];

  [v5 setResultType:2];
  [v5 setAllocationType:1];
  v8 = *(a1 + 56);
  v9 = *(*(a1 + 72) + 8);
  obj = *(v9 + 40);
  v10 = [v8 executeFetchRequest:v5 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10 && [v10 count])
  {
    v11 = *(a1 + 64);
    v12 = [v10 valueForKey:@"objectID"];
    [v11 addObjectsFromArray:v12];

    v13 = [*(a1 + 48) tombstonePolicy];
    v14 = [v13 predicateForEventsRequiredToBeTombstoned];
    v15 = [v10 filteredArrayUsingPredicate:v14];

    if ([v15 count])
    {
      v16 = [*(a1 + 48) tombstonePolicy];
      v17 = *(*(a1 + 88) + 8);
      v21 = *(v17 + 40);
      v18 = [v16 tombstonesForPartialEvents:v10 resultingFromRequirementsWithIdentifiers:&v21];
      objc_storeStrong((v17 + 40), v21);
      v19 = *(*(a1 + 80) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }

  *(*(*(a1 + 96) + 8) + 24) = [v10 count];
}

uint64_t __47___DKKnowledgeStorage__tombstoneObjects_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __85___DKKnowledgeStorage_deleteAllEventsMatchingPredicate_responseQueue_withCompletion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v16 = 0;
  v4 = [(_DKKnowledgeStorage *)v2 _deleteAllEventsMatchingPredicate:v3 error:&v16];
  v5 = v16;
  v6 = a1[8];
  if (v6)
  {
    v7 = a1[6];
    if (!v7)
    {
      v7 = *(a1[4] + 32);
    }

    v8 = a1[7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85___DKKnowledgeStorage_deleteAllEventsMatchingPredicate_responseQueue_withCompletion___block_invoke_2;
    v12[3] = &unk_1E73691B0;
    v14 = v6;
    v15 = v4;
    v13 = v5;
    v9 = v8;
    v10 = v12;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
    block[3] = &unk_1E7367818;
    v18 = v9;
    v19 = v10;
    v11 = v9;
    dispatch_async(v7, block);
  }
}

void __65___DKKnowledgeStorage_executeQuery_responseQueue_withCompletion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v16 = 0;
  v4 = [(_DKKnowledgeStorage *)v2 _executeQuery:v3 error:&v16];
  v5 = v16;
  v6 = a1[8];
  if (v6)
  {
    v7 = a1[6];
    if (!v7)
    {
      v7 = *(a1[4] + 32);
    }

    v8 = a1[7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65___DKKnowledgeStorage_executeQuery_responseQueue_withCompletion___block_invoke_2;
    v12[3] = &unk_1E73691D8;
    v15 = v6;
    v13 = v4;
    v14 = v5;
    v9 = v8;
    v10 = v12;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
    block[3] = &unk_1E7367818;
    v18 = v9;
    v19 = v10;
    v11 = v9;
    dispatch_async(v7, block);
  }
}

void __42___DKKnowledgeStorage_executeQuery_error___block_invoke(void *a1)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    dispatch_queue_set_specific(*(a1[4] + 88), (a1[4] + 88), (a1[4] + 88), 0);
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [(_DKKnowledgeStorage *)v2 _executeQuery:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    dispatch_queue_set_specific(*(a1[4] + 88), (a1[4] + 88), 0, 0);
  }
}

void __43___DKKnowledgeStorage__executeQuery_error___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [_CDMemoryUsageInterval alloc];
  v3 = [*(a1 + 32) clientName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = [(_CDMemoryUsageInterval *)v2 initWithName:@"executeQuery" client:v5];

  [(_CDMemoryUsageInterval *)v6 begin];
  v7 = _DKQueryLoggingEnabled();
  v8 = +[_CDLogging knowledgeChannel];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = [*(a1 + 32) clientName];
    v11 = *(a1 + 32);
    *buf = 138543618;
    v45 = v10;
    v46 = 2112;
    *v47 = v11;
    _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "[Storage] Starting executeQuery for '%{public}@' with query %@.", buf, 0x16u);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = [*(a1 + 32) clientName];
    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = *(a1 + 32);
    v15 = objc_opt_respondsToSelector();
    if (v15)
    {
      v16 = [*(a1 + 32) explicitEventStreamsOrEventStreamsInPredicate];
    }

    else
    {
      v16 = @"n/a";
    }

    *buf = 138543874;
    v45 = v10;
    v46 = 2114;
    *v47 = v13;
    *&v47[8] = 2114;
    *&v47[10] = v16;
    _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "[Storage] Starting executeQuery for '%{public}@' with query type %{public}@ over streams %{public}@.", buf, 0x20u);
    if (v15)
    {
    }
  }

LABEL_14:
  v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v18 = *(a1 + 40);
  v19 = *(*(a1 + 48) + 96);
  v43 = 0;
  v20 = [v18 executeUsingCoreDataStorage:v19 error:&v43];
  v21 = v43;
  v22 = v43;
  v23 = [*(a1 + 40) handleResults:v20 error:v22];
  v24 = *(*(a1 + 56) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
  v26 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  if (*(a1 + 72))
  {
    **(a1 + 72) = *(*(*(a1 + 64) + 8) + 40);
  }

  [(_CDMemoryUsageInterval *)v6 end];
  v27 = (v26 - v17) / 1000000000.0;
  v28 = *(*(*(a1 + 56) + 8) + 40);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = *(*(*(a1 + 56) + 8) + 40);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = *(*(*(a1 + 56) + 8) + 40);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = +[_CDLogging knowledgeChannel];
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v32 = [*(a1 + 32) clientName];
        v41 = *(*(*(a1 + 56) + 8) + 40) != 0;
        v42 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138544130;
        v45 = v32;
        v46 = 1024;
        *v47 = v41;
        *&v47[4] = 2112;
        *&v47[6] = v42;
        *&v47[14] = 2048;
        *&v47[16] = v27;
        v37 = "[Storage] Completed executeQuery for '%{public}@' with success=%d. Error: %@. Elapsed: %.3fs.";
        v38 = v31;
        v39 = 38;
        goto LABEL_21;
      }
    }
  }

  v31 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [*(a1 + 32) clientName];
    v33 = *(*(*(a1 + 56) + 8) + 40);
    v34 = v33 != 0;
    v35 = [v33 count];
    v36 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138544386;
    v45 = v32;
    v46 = 1024;
    *v47 = v34;
    *&v47[4] = 2048;
    *&v47[6] = v35;
    *&v47[14] = 2112;
    *&v47[16] = v36;
    v48 = 2048;
    v49 = v27;
    v37 = "[Storage] Completed executeQuery for '%{public}@' with success=%d, count=%lu. Error: %@. Elapsed: %.3fs.";
    v38 = v31;
    v39 = 48;
LABEL_21:
    _os_log_impl(&dword_191750000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
  }

LABEL_22:

  v40 = *MEMORY[0x1E69E9840];
}

void __46___DKKnowledgeStorage_eventCountPerStreamName__block_invoke(uint64_t a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = MEMORY[0x1E695D5B8];
  v4 = +[_DKEvent entityName];
  v5 = [v3 entityForName:v4 inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v5];

  [v2 setIncludesSubentities:0];
  [v2 setIncludesPendingChanges:0];
  [v2 setResultType:2];
  v6 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v6 setName:@"eventCount"];
  v7 = MEMORY[0x1E696ABC8];
  v8 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  v45[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  v10 = [v7 expressionForFunction:@"count:" arguments:v9];
  [v6 setExpression:v10];

  [v6 setExpressionResultType:200];
  v44[0] = @"streamName";
  v44[1] = v6;
  v36 = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  [v2 setPropertiesToFetch:v11];

  v43 = @"streamName";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  [v2 setPropertiesToGroupBy:v12];

  v13 = *(a1 + 32);
  v41 = 0;
  v14 = [v13 executeFetchRequest:v2 error:&v41];
  v15 = v41;
  if (v15)
  {
    obj = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      __46___DKKnowledgeStorage_eventCountPerStreamName__block_invoke_cold_1();
    }
  }

  else
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v14;
    v19 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v34 = v14;
      v21 = a1;
      v22 = *v38;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v37 + 1) + 8 * i);
          v25 = [v36 name];
          v26 = [v24 objectForKeyedSubscript:v25];
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = &unk_1F05EEA48;
          }

          v29 = *(*(*(v21 + 40) + 8) + 40);
          v30 = [v24 objectForKeyedSubscript:@"streamName"];
          v31 = v30;
          if (v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = @"nil";
          }

          [v29 setObject:v28 forKeyedSubscript:v32];
        }

        v20 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v20);
      v14 = v34;
      v15 = 0;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t __47___DKKnowledgeStorage_migrationStreamsWithMOC___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) executeFetchRequest:*(a1 + 40) error:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

id __47___DKKnowledgeStorage_migrationStreamsWithMOC___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"streamName"];
  if ([_DKBiomeQuery canShimDuetStreamNamed:v2])
  {
    v3 = [_DKEventStream eventStreamWithName:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __115___DKKnowledgeStorage_migrateEventBatchToBiomeStream_fetchRequest_managedObjectContex_converter_eventCount_offset___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v12];
  v5 = v12;
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  v9 = [*(a1 + 48) objectsFromManagedObjects:v4];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void __66___DKKnowledgeStorage_saveHistogram_responseQueue_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) managedObjectContextFor:*MEMORY[0x1E696A388] identifier:*(*(a1 + 32) + 72)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66___DKKnowledgeStorage_saveHistogram_responseQueue_withCompletion___block_invoke_2;
  v6[3] = &unk_1E73690C8;
  v7 = *(a1 + 40);
  v8 = v2;
  v11 = *(a1 + 56);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v5 = v2;
  [v5 performWithOptions:4 andBlock:v6];
}

void __66___DKKnowledgeStorage_saveHistogram_responseQueue_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) insertInManagedObjectContext:*(a1 + 40)];

  if (v2)
  {
    if ([*(a1 + 40) hasChanges])
    {
      v3 = *(a1 + 40);
      v22 = 0;
      v4 = [v3 save:&v22];
      v5 = v22;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      v13 = *(a1 + 48);
      if (!v13)
      {
        v13 = *(*(a1 + 56) + 32);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __66___DKKnowledgeStorage_saveHistogram_responseQueue_withCompletion___block_invoke_704;
      v18[3] = &unk_1E73690A0;
      v20 = v12;
      v21 = v4;
      v5 = v5;
      v19 = v5;
      v14 = v18;
      v15 = v13;
      v16 = os_transaction_create();
      v17 = v14;
      block = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __cd_dispatch_async_capture_tx_block_invoke_5;
      v28 = &unk_1E7367818;
      v29 = v16;
      v30 = v17;
      dispatch_async(v15, &block);
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if (!v6)
    {
      return;
    }

    v7 = *(a1 + 48);
    if (!v7)
    {
      v7 = *(*(a1 + 56) + 32);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __66___DKKnowledgeStorage_saveHistogram_responseQueue_withCompletion___block_invoke_3;
    v23[3] = &unk_1E7367840;
    v24 = v6;
    v8 = v23;
    v9 = v7;
    v10 = os_transaction_create();
    v11 = v8;
    block = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __cd_dispatch_async_capture_tx_block_invoke_5;
    v28 = &unk_1E7367818;
    v29 = v10;
    v30 = v11;
    dispatch_async(v9, &block);

    v5 = v24;
  }
}

uint64_t __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke()
{
  v0 = [_DKEventStatsTimerCounter counterInCollection:@"fetchLocalChanges" withEventName:?];
  v1 = fetchLocalChangesSinceDate_error__fetchLocalChangesTimerCounter;
  fetchLocalChangesSinceDate_error__fetchLocalChangesTimerCounter = v0;

  v2 = [_DKEventStatsTimerCounter counterInCollection:@"fetchLocalChangesExecuteRequest" withEventName:?];
  v3 = fetchLocalChangesSinceDate_error__executeRequestTimerCounter;
  fetchLocalChangesSinceDate_error__executeRequestTimerCounter = v2;

  v4 = [_DKEventStatsTimerCounter counterInCollection:@"fetchLocalChangesExistingObjectWithID" withEventName:?];
  v5 = fetchLocalChangesSinceDate_error__executeFetchRequestTimerCounter;
  fetchLocalChangesSinceDate_error__executeFetchRequestTimerCounter = v4;

  v6 = [_DKEventStatsTimerCounter counterInCollection:@"fetchLocalChangesObjectsFromManagedObjects" withEventName:?];
  v7 = fetchLocalChangesSinceDate_error__objectsFromManagedObjectsTimerCounter;
  fetchLocalChangesSinceDate_error__objectsFromManagedObjectsTimerCounter = v6;

  return MEMORY[0x1EEE66BB8](v6, v7);
}

void __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733(uint64_t a1)
{
  v117 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v106 = 0;
  v5 = [v3 executeRequest:v4 error:&v106];
  v6 = v106;
  if (v6)
  {
    v7 = v6;
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_1();
    }

    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;
    v11 = v7;

    goto LABEL_56;
  }

  if (v5)
  {
    v12 = fetchLocalChangesSinceDate_error__executeRequestTimerCounter;
    v13 = [MEMORY[0x1E695DF00] date];
    [(_DKEventStatsTimerCounter *)v12 addTimingWithStartDate:v2 endDate:v13];

    v14 = [MEMORY[0x1E695DF00] date];
    v15 = [v5 performSelector:sel_result];
    LOBYTE(v13) = [v15 conformsToProtocol:&unk_1F06199A8];
    v16 = +[_CDLogging syncChannel];
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
        *buf = 138412290;
        v108 = v18;
        _os_log_impl(&dword_191750000, v17, OS_LOG_TYPE_INFO, "Processing %@ persistent history change transactions", buf, 0xCu);
      }

      if ([v15 count] <= 5)
      {
        v19 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_3();
        }
      }

      v87 = v2;
      v88 = v14;
      v84 = a1;
      v86 = v5;
      v95 = objc_opt_new();
      v94 = objc_opt_new();
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v85 = v15;
      obj = v15;
      v91 = [obj countByEnumeratingWithState:&v102 objects:v116 count:16];
      if (v91)
      {
        v90 = *v103;
        do
        {
          v20 = 0;
          do
          {
            if (*v103 != v90)
            {
              objc_enumerationMutation(obj);
            }

            v93 = v20;
            v21 = *(*(&v102 + 1) + 8 * v20);
            context = objc_autoreleasePoolPush();
            v98 = 0u;
            v99 = 0u;
            v100 = 0u;
            v101 = 0u;
            v96 = [v21 changes];
            v22 = [v96 countByEnumeratingWithState:&v98 objects:v115 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v99;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v99 != v24)
                  {
                    objc_enumerationMutation(v96);
                  }

                  v26 = *(*(&v98 + 1) + 8 * i);
                  v27 = objc_autoreleasePoolPush();
                  v28 = [v26 changedObjectID];
                  v29 = [v28 URIRepresentation];
                  v30 = [v29 absoluteString];

                  if (![v26 changeType])
                  {
                    v36 = [v26 changedObjectID];
                    v37 = [v36 entity];
                    v32 = [v37 name];

                    v38 = +[_DKEvent entityName];
                    LODWORD(v37) = [v32 isEqualToString:v38];

                    if (v37)
                    {
                      v39 = +[_CDLogging syncChannel];
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412546;
                        v108 = v30;
                        v109 = 2112;
                        v110 = v26;
                        _os_log_debug_impl(&dword_191750000, v39, OS_LOG_TYPE_DEBUG, "May fetch insertion change %@: %@", buf, 0x16u);
                      }

                      v34 = [v26 changedObjectID];
                      [v95 addObject:v34];
LABEL_39:
                    }

                    goto LABEL_41;
                  }

                  if ([v26 changeType] == 2)
                  {
                    v31 = [v26 tombstone];
                    if (v31)
                    {
                      v32 = v31;
                      v33 = [v31 objectForKeyedSubscript:@"shouldSync"];
                      v34 = v33;
                      if (v33)
                      {
                        v35 = [v33 BOOLValue];
                      }

                      else
                      {
                        v35 = 0;
                      }

                      v40 = [v32 objectForKeyedSubscript:@"uuid"];
                      v41 = v40;
                      if (v35 && v40)
                      {
                        v42 = +[_CDLogging syncChannel];
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412546;
                          v108 = v30;
                          v109 = 2112;
                          v110 = v26;
                          _os_log_debug_impl(&dword_191750000, v42, OS_LOG_TYPE_DEBUG, "Fetched tombstone %@: %@", buf, 0x16u);
                        }

                        [v94 addObject:v32];
                      }

                      goto LABEL_39;
                    }
                  }

LABEL_41:

                  objc_autoreleasePoolPop(v27);
                }

                v23 = [v96 countByEnumeratingWithState:&v98 objects:v115 count:16];
              }

              while (v23);
            }

            objc_autoreleasePoolPop(context);
            v20 = v93 + 1;
          }

          while (v93 + 1 != v91);
          v91 = [obj countByEnumeratingWithState:&v102 objects:v116 count:16];
        }

        while (v91);
      }

      v43 = v95;
      if ([v95 count] || objc_msgSend(v94, "count"))
      {
        v50 = v84[7];
        if (v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = [MEMORY[0x1E695DF00] distantPast];
        }

        if ([v95 count])
        {
          v53 = objc_alloc_init(MEMORY[0x1E695D5E0]);
          v54 = MEMORY[0x1E695D5B8];
          v55 = +[_DKEvent entityName];
          v56 = [v54 entityForName:v55 inManagedObjectContext:v84[5]];
          [v53 setEntity:v56];

          v57 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@ AND shouldSync == YES", v95];
          [v53 setPredicate:v57];

          v58 = [MEMORY[0x1E695DF00] date];
          v59 = v84[5];
          v97 = 0;
          v60 = [v59 executeFetchRequest:v53 error:&v97];
          v61 = v97;
          v11 = v61;
          if (!v60 || v61)
          {
            v65 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
            {
              __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_5();
            }

            v52 = 0;
          }

          else
          {
            v62 = fetchLocalChangesSinceDate_error__executeFetchRequestTimerCounter;
            v63 = [MEMORY[0x1E695DF00] date];
            [(_DKEventStatsTimerCounter *)v62 addTimingWithStartDate:v58 endDate:v63];

            v64 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_4(v60, v95);
            }

            v65 = [MEMORY[0x1E695DF00] date];
            v66 = objc_alloc_init(_DKObjectMOConverter);
            v52 = [(_DKObjectMOConverter *)v66 objectsFromManagedObjects:v60];

            v67 = fetchLocalChangesSinceDate_error__objectsFromManagedObjectsTimerCounter;
            v68 = [MEMORY[0x1E695DF00] date];
            [(_DKEventStatsTimerCounter *)v67 addTimingWithStartDate:v65 endDate:v68];

            v69 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
            {
              v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v52, "count")}];
              v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v60, "count")}];
              *buf = 138412546;
              v108 = v70;
              v109 = 2112;
              v110 = v71;
              _os_log_impl(&dword_191750000, v69, OS_LOG_TYPE_INFO, "Converted %@ of %@ insertion changes", buf, 0x16u);
            }
          }
        }

        else
        {
          v52 = 0;
          v11 = 0;
        }

        v72 = [_DKLocalChanges initWithInsertedObjects:v52 tombstones:? startDate:? endDate:?];
        v73 = *(v84[9] + 8);
        v74 = *(v73 + 40);
        *(v73 + 40) = v72;

        v75 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          v76 = MEMORY[0x1E696AD98];
          v77 = [*(*(v84[9] + 8) + 40) insertedObjects];
          v78 = [v76 numberWithUnsignedInteger:{objc_msgSend(v77, "count")}];
          v79 = MEMORY[0x1E696AD98];
          v80 = [*(*(v84[9] + 8) + 40) tombstones];
          v81 = [v79 numberWithUnsignedInteger:{objc_msgSend(v80, "count")}];
          v82 = [*(*(v84[9] + 8) + 40) startDate];
          v83 = [*(*(v84[9] + 8) + 40) endDate];
          *buf = 138413058;
          v108 = v78;
          v109 = 2112;
          v110 = v81;
          v111 = 2112;
          v112 = v82;
          v113 = 2112;
          v114 = v83;
          _os_log_impl(&dword_191750000, v75, OS_LOG_TYPE_INFO, "Created local changes object with %@ inserted objects, %@ tombstones for period %@ to %@", buf, 0x2Au);
        }

        v43 = v95;
      }

      else
      {
        v11 = 0;
      }

      v5 = v86;
      v2 = v87;
      v14 = v88;
      v15 = v85;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_2();
      }

      v47 = +[_DKSyncErrors failedToFetchChanges];
      v11 = 0;
      v48 = *(*(a1 + 64) + 8);
      v43 = *(v48 + 40);
      *(v48 + 40) = v47;
    }

    goto LABEL_56;
  }

  v44 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_6();
  }

  v45 = +[_DKSyncErrors failedToFetchChanges];
  v46 = *(*(a1 + 64) + 8);
  v11 = *(v46 + 40);
  *(v46 + 40) = v45;
LABEL_56:

  v49 = *MEMORY[0x1E69E9840];
}

uint64_t __55___DKKnowledgeStorage_fetchSyncChangesSinceDate_error___block_invoke()
{
  v0 = [_DKEventStatsTimerCounter counterInCollection:@"fetchSyncChanges" withEventName:?];
  v1 = fetchSyncChangesSinceDate_error__fetchSyncChangesTimerCounter;
  fetchSyncChangesSinceDate_error__fetchSyncChangesTimerCounter = v0;

  v2 = [_DKEventStatsTimerCounter counterInCollection:@"fetchSyncChangesExecuteRequest" withEventName:?];
  v3 = fetchSyncChangesSinceDate_error__executeRequestTimerCounter;
  fetchSyncChangesSinceDate_error__executeRequestTimerCounter = v2;

  v4 = [_DKEventStatsTimerCounter counterInCollection:@"fetchSyncChangesExistingObjectWithID" withEventName:?];
  v5 = fetchSyncChangesSinceDate_error__executeFetchRequestTimerCounter;
  fetchSyncChangesSinceDate_error__executeFetchRequestTimerCounter = v4;

  v6 = [_DKEventStatsTimerCounter counterInCollection:@"fetchSyncChangesObjectsFromManagedObjects" withEventName:?];
  v7 = fetchSyncChangesSinceDate_error__objectsFromManagedObjectsTimerCounter;
  fetchSyncChangesSinceDate_error__objectsFromManagedObjectsTimerCounter = v6;

  return MEMORY[0x1EEE66BB8](v6, v7);
}

void __55___DKKnowledgeStorage_fetchSyncChangesSinceDate_error___block_invoke_758(uint64_t a1)
{
  v166 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v151 = 0;
  v5 = [v3 executeRequest:v4 error:&v151];
  v6 = v151;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v13 = fetchSyncChangesSinceDate_error__executeRequestTimerCounter;
    v14 = [MEMORY[0x1E695DF00] date];
    [(_DKEventStatsTimerCounter *)v13 addTimingWithStartDate:v2 endDate:v14];

    v12 = [MEMORY[0x1E695DF00] date];
    v15 = [v5 performSelector:sel_result];
    LOBYTE(v14) = [v15 conformsToProtocol:&unk_1F06199A8];
    v16 = +[_CDLogging syncChannel];
    v17 = v16;
    if ((v14 & 1) == 0)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __55___DKKnowledgeStorage_fetchSyncChangesSinceDate_error___block_invoke_758_cold_1();
      }

      v43 = +[_DKSyncErrors failedToFetchChanges];
      v8 = 0;
      v44 = *(*(a1 + 72) + 8);
      v39 = *(v44 + 40);
      *(v44 + 40) = v43;
      goto LABEL_66;
    }

    v118 = a1;
    v114 = v12;
    v115 = v5;
    v116 = v2;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
      *buf = 138412290;
      v153 = v18;
      _os_log_impl(&dword_191750000, v17, OS_LOG_TYPE_INFO, "Processing %@ sync change transactions", buf, 0xCu);
    }

    v130 = objc_opt_new();
    v126 = objc_opt_new();
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v113 = v15;
    obj = v15;
    v125 = [obj countByEnumeratingWithState:&v147 objects:v165 count:16];
    if (v125)
    {
      v123 = *v148;
      do
      {
        v19 = 0;
        do
        {
          if (*v148 != v123)
          {
            objc_enumerationMutation(obj);
          }

          v127 = v19;
          v20 = *(*(&v147 + 1) + 8 * v19);
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          v131 = [v20 changes];
          v21 = [v131 countByEnumeratingWithState:&v143 objects:v164 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v144;
            do
            {
              v24 = 0;
              do
              {
                if (*v144 != v23)
                {
                  objc_enumerationMutation(v131);
                }

                v25 = *(*(&v143 + 1) + 8 * v24);
                v26 = objc_autoreleasePoolPush();
                v27 = [v25 changedObjectID];
                v28 = [v27 URIRepresentation];
                v29 = [v28 absoluteString];

                if ([v25 changeType])
                {
                  [v25 changeType];
                  goto LABEL_33;
                }

                v30 = [v25 changedObjectID];
                v31 = [v30 entity];
                v32 = [v31 name];

                v33 = +[_DKChangeSet additionChangeSetEntityName];
                LODWORD(v31) = [v32 isEqualToString:v33];

                if (v31)
                {
                  v34 = +[_CDLogging syncChannel];
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v153 = v29;
                    v154 = 2112;
                    v155 = v25;
                    _os_log_debug_impl(&dword_191750000, v34, OS_LOG_TYPE_DEBUG, "May fetch inserted addition change set %@: %@", buf, 0x16u);
                  }

                  v35 = v130;
LABEL_31:

                  v38 = [v25 changedObjectID];
                  [v35 addObject:v38];

                  goto LABEL_32;
                }

                v36 = +[_DKChangeSet deletionChangeSetEntityName];
                v37 = [v32 isEqualToString:v36];

                if (v37)
                {
                  v34 = +[_CDLogging syncChannel];
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v153 = v29;
                    v154 = 2112;
                    v155 = v25;
                    _os_log_debug_impl(&dword_191750000, v34, OS_LOG_TYPE_DEBUG, "May fetch inserted deletion change set %@: %@", buf, 0x16u);
                  }

                  v35 = v126;
                  goto LABEL_31;
                }

LABEL_32:

LABEL_33:
                objc_autoreleasePoolPop(v26);
                ++v24;
              }

              while (v22 != v24);
              v22 = [v131 countByEnumeratingWithState:&v143 objects:v164 count:16];
            }

            while (v22);
          }

          ++v19;
        }

        while (v127 + 1 != v125);
        v125 = [obj countByEnumeratingWithState:&v147 objects:v165 count:16];
      }

      while (v125);
    }

    v39 = v130;
    if (![v130 count] && !objc_msgSend(v126, "count"))
    {
      v8 = 0;
      v5 = v115;
      v2 = v116;
      v15 = v113;
      v12 = v114;
      v65 = v126;
LABEL_65:

LABEL_66:
      goto LABEL_67;
    }

    v40 = v118;
    v41 = *(v118 + 56);
    v15 = v113;
    v12 = v114;
    if (v41)
    {
      v112 = v41;
      v42 = 0x1E695D000;
    }

    else
    {
      v42 = 0x1E695D000uLL;
      v112 = [MEMORY[0x1E695DF00] distantPast];
    }

    v117 = [*(v42 + 3840) date];
    if ([v130 count])
    {
      v45 = objc_alloc_init(MEMORY[0x1E695D5E0]);
      v46 = MEMORY[0x1E695D5B8];
      v47 = +[_DKChangeSet additionChangeSetEntityName];
      v48 = [v46 entityForName:v47 inManagedObjectContext:*(v118 + 40)];
      [v45 setEntity:v48];

      v49 = MEMORY[0x1E696AE18];
      v50 = [*(v118 + 64) deviceUUID];
      v51 = [v50 UUIDString];
      v52 = [v49 predicateWithFormat:@"SELF IN %@ AND deviceIdentifier != %@", v130, v51];
      [v45 setPredicate:v52];

      v40 = v118;
      v53 = *(v118 + 40);
      v142 = 0;
      v54 = [v53 executeFetchRequest:v45 error:&v142];
      v8 = v142;

      if (v8)
      {
        v132 = 0;
        v5 = v115;
        v2 = v116;
        goto LABEL_52;
      }
    }

    else
    {
      v54 = 0;
    }

    if ([v126 count])
    {
      v110 = v54;
      v55 = objc_alloc_init(MEMORY[0x1E695D5E0]);
      v56 = MEMORY[0x1E695D5B8];
      v57 = +[_DKChangeSet deletionChangeSetEntityName];
      v58 = [v56 entityForName:v57 inManagedObjectContext:*(v40 + 40)];
      [v55 setEntity:v58];

      v59 = MEMORY[0x1E696AE18];
      v60 = [*(v40 + 64) deviceUUID];
      v61 = [v60 UUIDString];
      v62 = [v59 predicateWithFormat:@"SELF IN %@ AND deviceIdentifier != %@", v126, v61];
      [v55 setPredicate:v62];

      v63 = *(v118 + 40);
      v141 = 0;
      v132 = [v63 executeFetchRequest:v55 error:&v141];
      v8 = v141;

      if (v8)
      {
        v5 = v115;
        v2 = v116;
        v54 = v110;
LABEL_52:
        v64 = +[_CDLogging syncChannel];
        v65 = v126;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_5();
        }

LABEL_64:

        goto LABEL_65;
      }

      v5 = v115;
      v2 = v116;
      v54 = v110;
    }

    else
    {
      v132 = 0;
      v5 = v115;
      v2 = v116;
    }

    v66 = fetchSyncChangesSinceDate_error__executeFetchRequestTimerCounter;
    v67 = [MEMORY[0x1E695DF00] date];
    [(_DKEventStatsTimerCounter *)v66 addTimingWithStartDate:v117 endDate:v67];

    v68 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v69 = v54;
      v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v132, "count") + objc_msgSend(v54, "count")}];
      v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v126, "count") + objc_msgSend(v130, "count")}];
      *buf = 138412546;
      v153 = v70;
      v154 = 2112;
      v155 = v71;
      _os_log_impl(&dword_191750000, v68, OS_LOG_TYPE_INFO, "Fetched %@ of %@ insertion changes", buf, 0x16u);

      v54 = v69;
    }

    if ([v54 count] || objc_msgSend(v132, "count"))
    {
      v73 = [MEMORY[0x1E695DF70] array];
      v129 = [MEMORY[0x1E695DF70] array];
      v74 = objc_opt_new();
      if ([v54 count])
      {
        [v74 addObject:v54];
      }

      v128 = v73;
      v111 = v54;
      v75 = 0x1E7366000uLL;
      if ([v132 count])
      {
        [v74 addObject:v132];
      }

      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v119 = v74;
      obja = [v119 countByEnumeratingWithState:&v137 objects:v163 count:16];
      if (obja)
      {
        v120 = *v138;
        do
        {
          v76 = 0;
          do
          {
            if (*v138 != v120)
            {
              objc_enumerationMutation(v119);
            }

            v124 = v76;
            v77 = *(*(&v137 + 1) + 8 * v76);
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            v78 = v77;
            v79 = [v78 countByEnumeratingWithState:&v133 objects:v162 count:16];
            if (v79)
            {
              v80 = v79;
              v81 = *v134;
              do
              {
                v82 = 0;
                do
                {
                  if (*v134 != v81)
                  {
                    objc_enumerationMutation(v78);
                  }

                  v83 = *(*(&v133 + 1) + 8 * v82);
                  v84 = [MEMORY[0x1E695DF00] date];
                  v85 = [objc_alloc(*(v75 + 1376)) initWithManagedObject:v83];
                  if (v85)
                  {
                    v86 = fetchSyncChangesSinceDate_error__objectsFromManagedObjectsTimerCounter;
                    v87 = [MEMORY[0x1E695DF00] date];
                    [(_DKEventStatsTimerCounter *)v86 addTimingWithStartDate:v84 endDate:v87];

                    v88 = +[_CDLogging syncChannel];
                    v89 = os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG);
                    if (v77 == v132)
                    {
                      if (v89)
                      {
                        v94 = [v83 objectID];
                        *buf = 138412546;
                        v153 = v94;
                        v154 = 2112;
                        v155 = v85;
                        _os_log_debug_impl(&dword_191750000, v88, OS_LOG_TYPE_DEBUG, "Fetched inserted deletion change set %@: %@", buf, 0x16u);
                      }

                      v90 = v128;
                    }

                    else
                    {
                      if (v89)
                      {
                        v93 = [v83 objectID];
                        *buf = 138412546;
                        v153 = v93;
                        v154 = 2112;
                        v155 = v85;
                        _os_log_debug_impl(&dword_191750000, v88, OS_LOG_TYPE_DEBUG, "Fetched inserted addition change set %@: %@", buf, 0x16u);
                      }

                      v90 = v129;
                    }

                    [v90 addObject:v85];
                  }

                  else
                  {
                    v91 = +[_CDLogging syncChannel];
                    v92 = os_log_type_enabled(v91, OS_LOG_TYPE_ERROR);
                    if (v77 == v132)
                    {
                      if (v92)
                      {
                        __55___DKKnowledgeStorage_fetchSyncChangesSinceDate_error___block_invoke_758_cold_4(v161, v83);
                      }
                    }

                    else if (v92)
                    {
                      __55___DKKnowledgeStorage_fetchSyncChangesSinceDate_error___block_invoke_758_cold_3(v160, v83);
                    }
                  }

                  ++v82;
                  v75 = 0x1E7366000;
                }

                while (v80 != v82);
                v80 = [v78 countByEnumeratingWithState:&v133 objects:v162 count:16];
              }

              while (v80);
            }

            v76 = v124 + 1;
          }

          while ((v124 + 1) != obja);
          obja = [v119 countByEnumeratingWithState:&v137 objects:v163 count:16];
        }

        while (obja);
      }

      v95 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject count](v128, "count") + -[NSObject count](v129, "count")}];
        v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v132, "count") + objc_msgSend(v111, "count")}];
        *buf = 138412546;
        v153 = v96;
        v154 = 2112;
        v155 = v97;
        _os_log_impl(&dword_191750000, v95, OS_LOG_TYPE_INFO, "Converted %@ of %@ inserted change sets", buf, 0x16u);
      }

      v64 = v128;
      v12 = v114;
      v98 = [_DKSyncChanges initWithAdditionChangeSets:v129 deletionChangeSets:? startDate:? endDate:?];
      v99 = *(*(v118 + 80) + 8);
      v100 = *(v99 + 40);
      *(v99 + 40) = v98;

      v101 = +[_CDLogging syncChannel];
      v15 = v113;
      v39 = v130;
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v102 = MEMORY[0x1E696AD98];
        v103 = [*(*(*(v118 + 80) + 8) + 40) additionChangeSets];
        v104 = [v102 numberWithUnsignedInteger:{objc_msgSend(v103, "count")}];
        v105 = MEMORY[0x1E696AD98];
        v106 = [*(*(*(v118 + 80) + 8) + 40) deletionChangeSets];
        v107 = [v105 numberWithUnsignedInteger:{objc_msgSend(v106, "count")}];
        v108 = [*(*(*(v118 + 80) + 8) + 40) startDate];
        v109 = [*(*(*(v118 + 80) + 8) + 40) endDate];
        *buf = 138413058;
        v153 = v104;
        v154 = 2112;
        v155 = v107;
        v156 = 2112;
        v157 = v108;
        v158 = 2112;
        v159 = v109;
        _os_log_impl(&dword_191750000, v101, OS_LOG_TYPE_INFO, "Created sync changes object with %@ addition change sets, and %@ deletion change sets for period %@ to %@", buf, 0x2Au);

        v64 = v128;
      }

      v8 = 0;
      v5 = v115;
      v2 = v116;
      v65 = v126;
      v54 = v111;
    }

    else
    {
      v64 = +[_CDLogging syncChannel];
      v65 = v126;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_191750000, v64, OS_LOG_TYPE_INFO, "No inserted remote change sets to process", buf, 2u);
      }

      v8 = 0;
    }

    goto LABEL_64;
  }

  v8 = v6;
  v9 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __55___DKKnowledgeStorage_fetchSyncChangesSinceDate_error___block_invoke_758_cold_5();
  }

  v10 = +[_DKSyncErrors failedToFetchChanges];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
LABEL_67:

  v72 = *MEMORY[0x1E69E9840];
}

void __51___DKKnowledgeStorage_saveChangeSetsForSync_error___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = *v16;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v15 + 1) + 8 * v5) insertInManagedObjectContext:*(a1 + 40)];
        v7 = v6 == 0;

        if (v7)
        {
          v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:3 userInfo:MEMORY[0x1E695E0F8]];
          v11 = *(*(a1 + 56) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;

          goto LABEL_12;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  if ([*(a1 + 40) hasChanges])
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 56) + 8);
    obj = *(v9 + 40);
    [v8 save:&obj];
    objc_storeStrong((v9 + 40), obj);
  }

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
}

void __74___DKKnowledgeStorage_lastSequenceNumberForChangeSetWithEntityName_error___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v11 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v11];
  v5 = v11;
  if ([v4 count] == 1)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [v6 sequenceNumber];
    *(*(a1[6] + 8) + 24) = [v7 integerValue];

LABEL_7:
    goto LABEL_8;
  }

  if (!v4)
  {
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74___DKKnowledgeStorage_lastSequenceNumberForChangeSetWithEntityName_error___block_invoke_2_cold_1();
    }

    v9 = *(a1[7] + 8);
    v10 = v5;
    v6 = *(v9 + 40);
    *(v9 + 40) = v10;
    goto LABEL_7;
  }

LABEL_8:
}

void __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setQualityOfService:25];
  v3 = objc_alloc(MEMORY[0x1E695D588]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke_3;
  v11[3] = &unk_1E7369310;
  v14 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12 = v4;
  v13 = v5;
  v6 = [v3 initWithOptions:v2 completionBlock:v11];
  v7 = *(a1 + 48);
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = [v7 executeRequest:v6 error:&obj];
  objc_storeStrong((v8 + 40), obj);
}

void __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 success];
  v5 = +[_CDLogging syncChannel];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "Finished sync down from the cloud", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke_3_cold_1(v3, v6);
  }

  v7 = a1[6];
  if (v7)
  {
    v8 = a1[4];
    if (!v8)
    {
      v8 = *(a1[5] + 32);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke_777;
    v13[3] = &unk_1E7367818;
    v15 = v7;
    v14 = v3;
    v9 = v13;
    v10 = v8;
    v11 = os_transaction_create();
    v12 = v9;
    *buf = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __cd_dispatch_async_capture_tx_block_invoke_5;
    v19 = &unk_1E7367818;
    v20 = v11;
    v21 = v12;
    dispatch_async(v10, buf);
  }
}

void __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke_777(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) success];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);
}

void __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setQualityOfService:25];
  v3 = objc_alloc(MEMORY[0x1E695D580]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke_3;
  v11[3] = &unk_1E7369310;
  v14 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12 = v4;
  v13 = v5;
  v6 = [v3 initWithOptions:v2 completionBlock:v11];
  v7 = *(a1 + 48);
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = [v7 executeRequest:v6 error:&obj];
  objc_storeStrong((v8 + 40), obj);
}

void __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 success];
  v5 = +[_CDLogging syncChannel];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "Finished sync up to the cloud", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke_3_cold_1(v3, v6);
  }

  v7 = a1[6];
  if (v7)
  {
    v8 = a1[4];
    if (!v8)
    {
      v8 = *(a1[5] + 32);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke_785;
    v13[3] = &unk_1E7367818;
    v15 = v7;
    v14 = v3;
    v9 = v13;
    v10 = v8;
    v11 = os_transaction_create();
    v12 = v9;
    *buf = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __cd_dispatch_async_capture_tx_block_invoke_5;
    v19 = &unk_1E7367818;
    v20 = v11;
    v21 = v12;
    dispatch_async(v10, buf);
  }
}

void __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke_785(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) success];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);
}

void __57___DKKnowledgeStorage_lastChangeSetWithEntityName_error___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v13 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v13];
  v5 = v13;
  if ([v4 count] == 1)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [[_DKChangeSet alloc] initWithManagedObject:v6];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

LABEL_7:
    goto LABEL_8;
  }

  if (!v4)
  {
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __74___DKKnowledgeStorage_lastSequenceNumberForChangeSetWithEntityName_error___block_invoke_2_cold_1();
    }

    v11 = *(a1[7] + 8);
    v12 = v5;
    v6 = *(v11 + 40);
    *(v11 + 40) = v12;
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke()
{
  v0 = [_DKEventStatsTimerCounter counterInCollection:@"databaseChangedObjectsFromManagedObjects" withEventName:?];
  v1 = _databaseChangedWithNotification__objectsFromManagedObjectsTimerCounter;
  _databaseChangedWithNotification__objectsFromManagedObjectsTimerCounter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:*MEMORY[0x1E695D328]];
  v4 = [v2 valueForKey:*MEMORY[0x1E695D2F8]];
  if ([v3 count] && objc_msgSend(*(a1 + 40), "count"))
  {
    v5 = MEMORY[0x1E696AE18];
    v6 = [objc_opt_class() entityName];
    v7 = [v5 predicateWithFormat:@"entity.name == %@ && shouldSync == %@", v6, MEMORY[0x1E695E118]];

    v8 = [v3 filteredSetUsingPredicate:v7];
    v9 = [v8 allObjects];

    if ([*(a1 + 40) count] && objc_msgSend(v9, "count"))
    {
      v10 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_2_cold_1(v9);
      }

      v11 = objc_opt_new();
      v12 = [MEMORY[0x1E695DF00] date];
      v38 = v11;
      v13 = [v11 objectsFromManagedObjects:v9];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v16 = _databaseChangedWithNotification__objectsFromManagedObjectsTimerCounter;
      v17 = [MEMORY[0x1E695DF00] date];
      [(_DKEventStatsTimerCounter *)v16 addTimingWithStartDate:v12 endDate:v17];

      v18 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")}];
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        *buf = 138412546;
        v40 = v19;
        v41 = 2112;
        v42 = v20;
        _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "Converted %@ of %@ inserted synced event objects", buf, 0x16u);
      }
    }
  }

  if ([v4 count] && objc_msgSend(*(a1 + 48), "count"))
  {
    v21 = MEMORY[0x1E696AE18];
    v22 = [objc_opt_class() entityName];
    v23 = [v21 predicateWithFormat:@"entity.name == %@ && shouldSync == %@", v22, MEMORY[0x1E695E118]];

    v24 = [v4 filteredSetUsingPredicate:v23];
    v25 = [v24 allObjects];

    if ([*(a1 + 48) count] && objc_msgSend(v25, "count"))
    {
      v26 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_2_cold_2(v25);
      }

      v27 = objc_opt_new();
      v28 = [MEMORY[0x1E695DF00] date];
      v29 = [v27 objectsFromManagedObjects:v25];
      v30 = *(*(a1 + 64) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      v32 = _databaseChangedWithNotification__objectsFromManagedObjectsTimerCounter;
      v33 = [MEMORY[0x1E695DF00] date];
      [(_DKEventStatsTimerCounter *)v32 addTimingWithStartDate:v28 endDate:v33];

      v34 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count")}];
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
        *buf = 138412546;
        v40 = v35;
        v41 = 2112;
        v42 = v36;
        _os_log_impl(&dword_191750000, v34, OS_LOG_TYPE_INFO, "Converted %@ of %@ deleted synced event objects", buf, 0x16u);
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_799(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v33 = *(*(a1 + 32) + 56);
  objc_sync_enter(v33);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = *(*(a1 + 32) + 56);
  v2 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v2)
  {
    v3 = *v51;
    v34 = v49;
    do
    {
      v4 = 0;
      do
      {
        if (*v51 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v50 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v6 = *(a1 + 32);
          v7 = *(v6 + 32);
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v49[0] = __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_2_802;
          v49[1] = &unk_1E73693D8;
          v49[2] = v5;
          v49[3] = v6;
          v49[4] = *(a1 + 72);
          v8 = v48;
          v9 = v7;
          v10 = os_transaction_create();
          block = MEMORY[0x1E69E9820];
          v55 = 3221225472;
          v56 = __cd_dispatch_async_capture_tx_block_invoke_5;
          v57 = &unk_1E7367818;
          v58 = v10;
          v59 = v8;
          v11 = v10;
          dispatch_async(v9, &block);
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v2);
  }

  objc_sync_exit(v33);
  if ([*(a1 + 40) count] && objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count"))
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obja = *(a1 + 40);
    v12 = [obja countByEnumeratingWithState:&v44 objects:v61 count:16];
    if (v12)
    {
      v13 = *v45;
      do
      {
        v14 = 0;
        do
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(obja);
          }

          v15 = *(*(&v44 + 1) + 8 * v14);
          v16 = *(a1 + 32);
          v17 = *(v16 + 32);
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_3;
          v43[3] = &unk_1E7368808;
          v43[4] = v15;
          v43[5] = v16;
          v43[6] = *(a1 + 56);
          v18 = v43;
          v19 = v17;
          v20 = os_transaction_create();
          block = MEMORY[0x1E69E9820];
          v55 = 3221225472;
          v56 = __cd_dispatch_async_capture_tx_block_invoke_5;
          v57 = &unk_1E7367818;
          v58 = v20;
          v59 = v18;
          v21 = v20;
          dispatch_async(v19, &block);

          ++v14;
        }

        while (v12 != v14);
        v12 = [obja countByEnumeratingWithState:&v44 objects:v61 count:16];
      }

      while (v12);
    }
  }

  if ([*(a1 + 48) count] && objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count"))
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    objb = *(a1 + 48);
    v22 = [objb countByEnumeratingWithState:&v39 objects:v60 count:16];
    if (v22)
    {
      v23 = *v40;
      do
      {
        v24 = 0;
        do
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(objb);
          }

          v25 = *(*(&v39 + 1) + 8 * v24);
          v26 = *(a1 + 32);
          v27 = *(v26 + 32);
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_4;
          v38[3] = &unk_1E7368808;
          v38[4] = v25;
          v38[5] = v26;
          v38[6] = *(a1 + 64);
          v28 = v38;
          v29 = v27;
          v30 = os_transaction_create();
          block = MEMORY[0x1E69E9820];
          v55 = 3221225472;
          v56 = __cd_dispatch_async_capture_tx_block_invoke_5;
          v57 = &unk_1E7367818;
          v58 = v30;
          v59 = v28;
          v31 = v30;
          dispatch_async(v29, &block);

          ++v24;
        }

        while (v22 != v24);
        v22 = [objb countByEnumeratingWithState:&v39 objects:v60 count:16];
      }

      while (v22);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __62___DKKnowledgeStorage_incrementInsertsAndDeletesObserverCount__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  if (!v2)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:sel__databaseChangedWithNotification_ name:*MEMORY[0x1E695D350] object:0];

    v1 = *(a1 + 32);
    v2 = *(v1 + 64);
  }

  *(v1 + 64) = v2 + 1;
}

void __62___DKKnowledgeStorage_decrementInsertsAndDeletesObserverCount__block_invoke(uint64_t a1)
{
  if (!--*(*(a1 + 32) + 64))
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:*(a1 + 32) name:*MEMORY[0x1E695D350] object:0];
  }
}

void __55___DKKnowledgeStorage__DKSyncPeer__syncPeersWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  v3 = [v2 managedObjectContextFor:*MEMORY[0x1E696A388]];

  if (v3)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55___DKKnowledgeStorage__DKSyncPeer__syncPeersWithError___block_invoke_2;
    v10[3] = &unk_1E7368B88;
    v11 = v3;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v11 performWithOptions:4 andBlock:v10];

    v4 = v11;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:6 userInfo:MEMORY[0x1E695E0F8]];
    v7 = *(a1 + 56);
    v6 = a1 + 56;
    v8 = *(v7 + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v5;

    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55___DKKnowledgeStorage__DKSyncPeer__syncPeersWithError___block_invoke_cold_1(v6, v4);
    }
  }
}

void __55___DKKnowledgeStorage__DKSyncPeer__syncPeersWithError___block_invoke_2(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v32 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v32];
  v5 = v32;
  if ([v4 count])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v27 = v5;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v15 = objc_opt_new();
          v16 = [v14 cloudID];
          [v15 setZoneName:v16];

          v17 = [v14 deviceID];
          [v15 setSourceDeviceID:v17];

          v18 = [v14 rapportID];
          [v15 setIdsDeviceIdentifier:v18];

          v19 = [v14 lastSeenDate];
          [v15 setLastSeenDate:v19];

          v20 = [v14 model];
          [v15 setModel:v20];

          v21 = [v14 uuid];
          [v15 setUuid:v21];

          v22 = [v14 version];
          [v15 setVersion:v22];

          [*(*(a1[6] + 8) + 40) addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v11);
      v5 = v27;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v5)
  {
    v23 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __55___DKKnowledgeStorage__DKSyncPeer__syncPeersWithError___block_invoke_2_cold_1();
    }

    v24 = *(a1[7] + 8);
    v25 = v5;
    v9 = *(v24 + 40);
    *(v24 + 40) = v25;
    goto LABEL_14;
  }

LABEL_15:

  v26 = *MEMORY[0x1E69E9840];
}

void __55___DKKnowledgeStorage__DKSyncPeer__saveSyncPeer_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  v3 = [v2 managedObjectContextFor:*MEMORY[0x1E696A388]];

  if (v3)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55___DKKnowledgeStorage__DKSyncPeer__saveSyncPeer_error___block_invoke_2;
    v10[3] = &unk_1E7367F20;
    v11 = v3;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v12 = v4;
    v13 = v5;
    v14 = *(a1 + 48);
    [v11 performWithOptions:4 andBlock:v10];

    v6 = v11;
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:6 userInfo:MEMORY[0x1E695E0F8]];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55___DKKnowledgeStorage__DKSyncPeer__saveSyncPeer_error___block_invoke_cold_1(a1, a1 + 48);
    }
  }
}

void __55___DKKnowledgeStorage__DKSyncPeer__saveSyncPeer_error___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"SyncPeer" inManagedObjectContext:*(a1 + 32)];
  v3 = [*(a1 + 40) zoneName];
  [v2 setCloudID:v3];

  v4 = [*(a1 + 40) sourceDeviceID];
  [v2 setDeviceID:v4];

  v5 = [*(a1 + 40) lastSeenDate];
  [v2 setLastSeenDate:v5];

  v6 = [*(a1 + 40) model];
  [v2 setModel:v6];

  v7 = [*(a1 + 40) idsDeviceIdentifier];
  [v2 setRapportID:v7];

  v8 = [*(a1 + 40) uuid];
  [v2 setUuid:v8];

  v9 = [*(a1 + 40) version];
  [v2 setVersion:v9];

  if ([*(a1 + 32) hasChanges])
  {
    v10 = *(a1 + 32);
    v16 = 0;
    [v10 save:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __55___DKKnowledgeStorage__DKSyncPeer__saveSyncPeer_error___block_invoke_2_cold_2((a1 + 40));
      }

      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v11;
      v15 = v11;
    }
  }
}

void __51___DKKnowledgeStorage__DKSyncPeer__removeSyncPeer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  v3 = [v2 managedObjectContextFor:*MEMORY[0x1E696A388]];

  if (v3)
  {
    LOBYTE(v5) = 1;
    [_DKCoreDataStorage deleteObjectsInContext:v3 entityName:@"SyncPeer" predicate:*(a1 + 40) sortDescriptors:0 fetchLimit:0x7FFFFFFFFFFFFFFFLL includeSubentities:1 includePendingChanges:v5];
  }

  else
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51___DKKnowledgeStorage__DKSyncPeer__removeSyncPeer___block_invoke_cold_1(a1);
    }
  }
}

void __69___DKKnowledgeStorage__DKKeyValueStore__keyValueObjectForKey_domain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  v3 = [v2 managedObjectContextFor:*MEMORY[0x1E696A388]];

  if (v3)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69___DKKnowledgeStorage__DKKeyValueStore__keyValueObjectForKey_domain___block_invoke_2;
    v10[3] = &unk_1E736A410;
    v11 = v3;
    v4 = *(a1 + 40);
    v5 = *(a1 + 64);
    v6 = *(a1 + 48);
    *&v7 = *(a1 + 56);
    *(&v7 + 1) = v5;
    *&v8 = v4;
    *(&v8 + 1) = v6;
    v12 = v8;
    v13 = v7;
    [v11 performWithOptions:4 andBlock:v10];

    v9 = v11;
  }

  else
  {
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __69___DKKnowledgeStorage__DKKeyValueStore__keyValueObjectForKey_domain___block_invoke_cold_1(a1);
    }
  }
}

void __69___DKKnowledgeStorage__DKKeyValueStore__keyValueObjectForKey_domain___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v10];
  v5 = v10;
  if ([v4 count] == 1)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [v6 value];
    v8 = *(a1[8] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

LABEL_6:
    goto LABEL_7;
  }

  if (v5)
  {
    v6 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69___DKKnowledgeStorage__DKKeyValueStore__keyValueObjectForKey_domain___block_invoke_2_cold_1(a1);
    }

    goto LABEL_6;
  }

LABEL_7:
}

void __73___DKKnowledgeStorage__DKKeyValueStore__setKeyValueObject_forKey_domain___block_invoke(id *a1)
{
  v2 = [a1[4] storage];
  v3 = [v2 managedObjectContextFor:*MEMORY[0x1E696A388]];

  if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73___DKKnowledgeStorage__DKKeyValueStore__setKeyValueObject_forKey_domain___block_invoke_2;
    v9[3] = &unk_1E7368B60;
    v10 = v3;
    v4 = a1[5];
    v5 = a1[6];
    *&v6 = a1[7];
    *(&v6 + 1) = a1[4];
    *&v7 = v4;
    *(&v7 + 1) = v5;
    v11 = v7;
    v12 = v6;
    [v10 performWithOptions:4 andBlock:v9];

    v8 = v10;
  }

  else
  {
    v8 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73___DKKnowledgeStorage__DKKeyValueStore__setKeyValueObject_forKey_domain___block_invoke_cold_1(a1);
    }
  }
}

void __73___DKKnowledgeStorage__DKKeyValueStore__setKeyValueObject_forKey_domain___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"KeyValue" inManagedObjectContext:*(a1 + 32)];
  [v2 setDomain:*(a1 + 40)];
  [v2 setKey:*(a1 + 48)];
  [v2 setValue:*(a1 + 56)];
  if ([*(a1 + 32) hasChanges])
  {
    v3 = *(a1 + 32);
    v9 = 0;
    [v3 save:&v9];
    v4 = v9;
    if (v4)
    {
      v5 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        v7 = *(a1 + 48);
        *buf = 138412802;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        v14 = 2112;
        v15 = v4;
        _os_log_error_impl(&dword_191750000, v5, OS_LOG_TYPE_ERROR, "Failed to save '%@' in domain '%@': %@", buf, 0x20u);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __75___DKKnowledgeStorage__DKKeyValueStore__removeKeyValueObjectForKey_domain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  v3 = [v2 managedObjectContextFor:*MEMORY[0x1E696A388]];

  if (v3)
  {
    LOBYTE(v5) = 1;
    [_DKCoreDataStorage deleteObjectsInContext:v3 entityName:@"KeyValue" predicate:*(a1 + 40) sortDescriptors:0 fetchLimit:0x7FFFFFFFFFFFFFFFLL includeSubentities:1 includePendingChanges:v5];
  }

  else
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75___DKKnowledgeStorage__DKKeyValueStore__removeKeyValueObjectForKey_domain___block_invoke_cold_1(a1);
    }
  }
}

void __60___DKKnowledgeStorage_DataMigration__updateToFinalMetadata___block_invoke()
{
  v17[10] = *MEMORY[0x1E69E9840];
  v16[0] = @"serializedInteraction";
  v14 = +[_DKIntentMetadataKey serializedInteraction];
  v17[0] = v14;
  v16[1] = @"decayRate";
  v0 = +[_CDPortraitMetadataKey decayRate];
  v17[1] = v0;
  v16[2] = @"algorithm";
  v1 = +[_CDPortraitMetadataKey algorithm];
  v17[2] = v1;
  v16[3] = @"score";
  v2 = +[_CDPortraitMetadataKey score];
  v17[3] = v2;
  v16[4] = @"sentimentScore";
  v3 = +[_CDPortraitMetadataKey sentimentScore];
  v17[4] = v3;
  v16[5] = @"osBuild";
  v4 = +[_CDPortraitMetadataKey osBuild];
  v17[5] = v4;
  v16[6] = @"assetVersion";
  v5 = +[_CDPortraitMetadataKey assetVersion];
  v17[6] = v5;
  v16[7] = @"compatibilityVersion";
  v6 = +[_CDPortraitMetadataKey compatibilityVersion];
  v17[7] = v6;
  v16[8] = @"name";
  v7 = +[_CDEntityMetadataKey name];
  v17[8] = v7;
  v16[9] = @"bestLanguage";
  v8 = +[_CDEntityMetadataKey bestLanguage];
  v17[9] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:10];
  v10 = _MergedGlobals_4;
  _MergedGlobals_4 = v9;

  v15[0] = @"_DKGlanceLaunchMetadataKey-deviceIdentifier";
  v15[1] = @"_DKSunriseSunsetMetadataKey__previousSunset";
  v15[2] = @"_DKSunriseSunsetMetadataKey__previousSunrise";
  v15[3] = @"_DKSunriseSunsetMetadataKey__currentSunset";
  v15[4] = @"_DKSunriseSunsetMetadataKey__currentSunrise";
  v15[5] = @"_DKSunriseSunsetMetadataKey__nextSunset";
  v15[6] = @"_DKSunriseSunsetMetadataKey__nextSunrise";
  v15[7] = @"_DKSunriseSunsetMetadataKey__isDaylight";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:8];
  v12 = qword_1EADBD618;
  qword_1EADBD618 = v11;

  v13 = *MEMORY[0x1E69E9840];
}

id __98___DKKnowledgeStorage_DataMigration__updateDataBeforeAutoMigrationFromVersion_inStoreAtURL_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);

  return v4;
}

uint64_t __100___DKKnowledgeStorage_DataMigration__updateDataAfterAutoMigrationToVersion_inPersistentStore_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  ++*(*(a1[7] + 8) + 24);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [(_DKKnowledgeStorage *)a1[6] copyValueToManagedObject:v6];
      v10 = 1;
      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v7 customMetadata];
      v9 = [v8 count];

      if (v9)
      {
        __100___DKKnowledgeStorage_DataMigration__updateDataAfterAutoMigrationToVersion_inPersistentStore_error___block_invoke_cold_1(a1, v7, &v29);
        v10 = v29;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    v12 = [v6 valueForKey:@"metadata"];
    if (!v12)
    {
      v13 = 1;
      goto LABEL_22;
    }

    v27 = v10;
    v26 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v23 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v26 setWithObjects:{v25, v24, v23, v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
    v28 = 0;
    v21 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v20 fromData:v12 error:&v28];
    v22 = v28;
    if (v22)
    {
      if ([v12 length] != 135 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __100___DKKnowledgeStorage_DataMigration__updateDataAfterAutoMigrationToVersion_inPersistentStore_error___block_invoke_cold_2();
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        __100___DKKnowledgeStorage_DataMigration__updateDataAfterAutoMigrationToVersion_inPersistentStore_error___block_invoke_cold_3(v21, a1, v6, &v30);
        v13 = v30;
LABEL_21:
        [v6 setValue:0 forKey:@"metadata"];

        v10 = v27;
LABEL_22:

        v11 = [(_DKKnowledgeStorage *)a1[6] copyValueToManagedObject:v6];
        if (!v13)
        {
          v4 = 0;
          goto LABEL_25;
        }

LABEL_23:
        v4 = v11 & v10;
LABEL_25:

        goto LABEL_3;
      }
    }

    v13 = 1;
    goto LABEL_21;
  }

  v4 = 0;
LABEL_3:

  return v4;
}

void __43___DKKnowledgeStorage_deleteObjects_error___block_invoke(void *a1)
{
  v3 = OUTLINED_FUNCTION_9_4(a1);
  v6 = [(_DKKnowledgeStorage *)v3 _deleteObjects:v4 error:v5];
  objc_storeStrong(v2, obj);
  *(*(*(v1 + 48) + 8) + 24) = v6;
}

void __62___DKKnowledgeStorage_deleteAllEventsMatchingPredicate_error___block_invoke(void *a1)
{
  v3 = OUTLINED_FUNCTION_9_4(a1);
  v6 = [(_DKKnowledgeStorage *)v3 _deleteAllEventsMatchingPredicate:v4 error:v5];
  objc_storeStrong(v2, obj);
  *(*(*(v1 + 48) + 8) + 24) = v6;
}

void __51___DKKnowledgeStorage_saveChangeSetsForSync_error___block_invoke(uint64_t a1)
{
  v2 = [(_DKKnowledgeStorage *)*(a1 + 32) syncStorageIfAvailable];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 managedObjectContextFor:*MEMORY[0x1E696A388] identifier:*(*(a1 + 32) + 72)];
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_15_3();
    v7[2] = __51___DKKnowledgeStorage_saveChangeSetsForSync_error___block_invoke_2;
    v7[3] = &unk_1E73692E8;
    v8 = *(a1 + 40);
    v9 = v4;
    v5 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = v5;
    v6 = v4;
    [v6 performWithOptions:4 andBlock:v7];
  }
}

void __74___DKKnowledgeStorage_lastSequenceNumberForChangeSetWithEntityName_error___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_21_3(a1);
  v3 = [(_DKKnowledgeStorage *)v2 syncStorageIfAvailable];
  v4 = [v3 managedObjectContextFor:*MEMORY[0x1E696A388] identifier:*(*(v1 + 32) + 72)];
  v5 = v4;
  if (v3 && v4)
  {
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_15_3();
    v17 = v5;
    v6 = *(v1 + 40);
    OUTLINED_FUNCTION_14_3(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, __74___DKKnowledgeStorage_lastSequenceNumberForChangeSetWithEntityName_error___block_invoke_2, &unk_1E7368B88, v17, v19, v21);
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:6 userInfo:MEMORY[0x1E695E0F8]];
    OUTLINED_FUNCTION_17_4(v14, *(v1 + 56));
  }
}

void __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke(uint64_t a1)
{
  [OUTLINED_FUNCTION_21_3(a1) begin];
  v2 = [(_DKKnowledgeStorage *)*(v1 + 40) syncStorageIfAvailable];
  v3 = [v2 managedObjectContextFor:*MEMORY[0x1E696A388] identifier:*(*(v1 + 40) + 72)];
  v4 = +[_CDLogging syncChannel];
  v5 = v4;
  if (!v2 || !v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_20_3();
      _os_log_error_impl(v34, v35, OS_LOG_TYPE_ERROR, v36, v37, 2u);
    }

    v25 = +[_DKSyncErrors unavailableForCurrentUser];
    OUTLINED_FUNCTION_19_4(v25);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    block = 0;
    OUTLINED_FUNCTION_20_3();
    _os_log_impl(v6, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
  }

  if (!+[_DKCloudUtilities isUnitTesting])
  {
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_15_3();
    v50 = *(v1 + 56);
    v43 = *(v1 + 48);
    v46 = *(v1 + 40);
    v26 = v3;
    OUTLINED_FUNCTION_25_1(v26, v27, v28, v29, v30, v31, v32, v33, v38, v39, __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke_2, &unk_1E7369338, v43, v46, v47, v50, v52);

    v24 = v51;
LABEL_14:

    goto LABEL_15;
  }

  if (*(v1 + 56))
  {
    v10 = *(v1 + 48);
    if (!v10)
    {
      v10 = *(*(v1 + 40) + 32);
    }

    OUTLINED_FUNCTION_4_12();
    v54 = v11;
    v12 = v1;
    v13 = v10;
    v14 = os_transaction_create();
    v15 = v12;
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_5_8(v16, v17, v18, v19, v20, v21, v22, v23, v38, v39, v40, v41, v42, v45, v47, v49, v52, v53, 3221225472, __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke_774, &unk_1E7367840, v54, block, v57, v58, v59, v60, v62);

    v24 = v55;
    goto LABEL_14;
  }

LABEL_15:
}

void __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke(uint64_t a1)
{
  [OUTLINED_FUNCTION_21_3(a1) begin];
  v2 = [(_DKKnowledgeStorage *)*(v1 + 40) syncStorageIfAvailable];
  v3 = [v2 managedObjectContextFor:*MEMORY[0x1E696A388] identifier:*(*(v1 + 40) + 72)];
  v4 = +[_CDLogging syncChannel];
  v5 = v4;
  if (!v2 || !v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_20_3();
      _os_log_error_impl(v34, v35, OS_LOG_TYPE_ERROR, v36, v37, 2u);
    }

    v25 = +[_DKSyncErrors unavailableForCurrentUser];
    OUTLINED_FUNCTION_19_4(v25);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    block = 0;
    OUTLINED_FUNCTION_20_3();
    _os_log_impl(v6, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
  }

  if (!+[_DKCloudUtilities isUnitTesting])
  {
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_15_3();
    v50 = *(v1 + 56);
    v43 = *(v1 + 48);
    v46 = *(v1 + 40);
    v26 = v3;
    OUTLINED_FUNCTION_25_1(v26, v27, v28, v29, v30, v31, v32, v33, v38, v39, __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke_2, &unk_1E7369338, v43, v46, v47, v50, v52);

    v24 = v51;
LABEL_14:

    goto LABEL_15;
  }

  if (*(v1 + 56))
  {
    v10 = *(v1 + 48);
    if (!v10)
    {
      v10 = *(*(v1 + 40) + 32);
    }

    OUTLINED_FUNCTION_4_12();
    v54 = v11;
    v12 = v1;
    v13 = v10;
    v14 = os_transaction_create();
    v15 = v12;
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_5_8(v16, v17, v18, v19, v20, v21, v22, v23, v38, v39, v40, v41, v42, v45, v47, v49, v52, v53, 3221225472, __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke_783, &unk_1E7367840, v54, block, v57, v58, v59, v60, v62);

    v24 = v55;
    goto LABEL_14;
  }

LABEL_15:
}

void __57___DKKnowledgeStorage_lastChangeSetWithEntityName_error___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_21_3(a1);
  v3 = [(_DKKnowledgeStorage *)v2 syncStorageIfAvailable];
  v4 = [v3 managedObjectContextFor:*MEMORY[0x1E696A388] identifier:*(*(v1 + 32) + 72)];
  v5 = v4;
  if (v3 && v4)
  {
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_15_3();
    v17 = v5;
    v6 = *(v1 + 40);
    OUTLINED_FUNCTION_14_3(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, __57___DKKnowledgeStorage_lastChangeSetWithEntityName_error___block_invoke_2, &unk_1E7368B88, v17, v19, v21);
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:6 userInfo:MEMORY[0x1E695E0F8]];
    OUTLINED_FUNCTION_17_4(v14, *(v1 + 56));
  }
}

void __42___DKKnowledgeStorage__saveObjects_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "saveObjects caught %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42___DKKnowledgeStorage__saveObjects_error___block_invoke_cold_2(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_17_4(a1, *a2);
  *(*(*(a3 + 64) + 8) + 24) = 0;

  objc_end_catch();
}

void __46___DKKnowledgeStorage_eventCountPerStreamName__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __66___DKKnowledgeStorage_saveHistogram_responseQueue_withCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "saveHistogram caught %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_4(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733_cold_6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55___DKKnowledgeStorage_fetchSyncChangesSinceDate_error___block_invoke_758_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55___DKKnowledgeStorage_fetchSyncChangesSinceDate_error___block_invoke_758_cold_3(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_24(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_26_2(&dword_191750000, v5, v6, "Unable to instatiate addition change set %@");
}

void __55___DKKnowledgeStorage_fetchSyncChangesSinceDate_error___block_invoke_758_cold_4(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_24(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_26_2(&dword_191750000, v5, v6, "Unable to instatiate deletion change set %@");
}

void __55___DKKnowledgeStorage_fetchSyncChangesSinceDate_error___block_invoke_758_cold_5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51___DKKnowledgeStorage_saveChangeSetsForSync_error___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "saveChangesForSync caught %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74___DKKnowledgeStorage_lastSequenceNumberForChangeSetWithEntityName_error___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke_3_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10(&dword_191750000, a2, v4, "Failed to sync down from the cloud: %@", v6);

  v5 = *MEMORY[0x1E69E9840];
}

void __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke_3_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10(&dword_191750000, a2, v4, "Failed to sync up to the cloud: %@", v6);

  v5 = *MEMORY[0x1E69E9840];
}

void __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_2_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_2_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __55___DKKnowledgeStorage__DKSyncPeer__syncPeersWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch sync peers: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __55___DKKnowledgeStorage__DKSyncPeer__syncPeersWithError___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_191750000, v0, OS_LOG_TYPE_ERROR, "Failed to fetch sync peers: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __55___DKKnowledgeStorage__DKSyncPeer__saveSyncPeer_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 40) identifier];
  v4 = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __55___DKKnowledgeStorage__DKSyncPeer__saveSyncPeer_error___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_191750000, v0, OS_LOG_TYPE_FAULT, "saveSyncPeer caught %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __55___DKKnowledgeStorage__DKSyncPeer__saveSyncPeer_error___block_invoke_2_cold_2(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __51___DKKnowledgeStorage__DKSyncPeer__removeSyncPeer___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 48) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __69___DKKnowledgeStorage__DKKeyValueStore__keyValueObjectForKey_domain___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_0_30();
  OUTLINED_FUNCTION_1_24(&dword_191750000, v3, v4, "Failed to fetch '%@' in domain '%@' due to unavailable store", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void __69___DKKnowledgeStorage__DKKeyValueStore__keyValueObjectForKey_domain___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_0_30();
  v8 = v3;
  v9 = v4;
  _os_log_error_impl(&dword_191750000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch '%@' in domain '%@': %@", v7, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __73___DKKnowledgeStorage__DKKeyValueStore__setKeyValueObject_forKey_domain___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_0_30();
  OUTLINED_FUNCTION_1_24(&dword_191750000, v3, v4, "Failed to save '%@' in domain '%@' due to unavailable store", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void __73___DKKnowledgeStorage__DKKeyValueStore__setKeyValueObject_forKey_domain___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_191750000, a2, OS_LOG_TYPE_FAULT, "setKeyValueObject caught %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __75___DKKnowledgeStorage__DKKeyValueStore__removeKeyValueObjectForKey_domain___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_0_30();
  OUTLINED_FUNCTION_1_24(&dword_191750000, v3, v4, "Failed to remove '%@' in domain '%@' due to unavailable store", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void __100___DKKnowledgeStorage_DataMigration__updateDataAfterAutoMigrationToVersion_inPersistentStore_error___block_invoke_cold_1(void *a1, void *a2, _BYTE *a3)
{
  v6 = a1[4];
  v7 = [a2 valueForKey:@"objectAttributeValue"];
  v9 = [v6 metadataFromCustomMetadata:v7 cache:a1[5]];

  [a2 setValue:0 forKey:@"objectAttributeValue"];
  v8 = [v9 mutableCopy];
  [(_DKKnowledgeStorage *)a1[6] updateToFinalMetadata:v8];
  *a3 = [objc_opt_class() copyMetadata:v8 toManagedObject:a2];
}

void __100___DKKnowledgeStorage_DataMigration__updateDataAfterAutoMigrationToVersion_inPersistentStore_error___block_invoke_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, MEMORY[0x1E69E9C10], v0, "Error unarchiving object %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __100___DKKnowledgeStorage_DataMigration__updateDataAfterAutoMigrationToVersion_inPersistentStore_error___block_invoke_cold_3(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a1 mutableCopy];
  [(_DKKnowledgeStorage *)*(a2 + 48) updateToFinalMetadata:v7];
  *a4 = [objc_opt_class() copyMetadata:v7 toManagedObject:a3];
}

@end