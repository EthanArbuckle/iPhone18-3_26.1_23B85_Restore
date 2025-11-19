@interface CDDataCollection
@end

@implementation CDDataCollection

void __137___CDDataCollection_initWithStorage_activity_sessionPath_dataDirectory_collectionDate_samplingRate_daysPerBatch_eventStreams_maxBatches___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = +[_CDLogging dataCollectionChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __137___CDDataCollection_initWithStorage_activity_sessionPath_dataDirectory_collectionDate_samplingRate_daysPerBatch_eventStreams_maxBatches___block_invoke_cold_1(v6);
  }

  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__28;
  v16[3] = __Block_byref_object_dispose__28;
  v17 = 0;
  v14 = MEMORY[0x1E69E9820];
  v7 = v5;
  v8 = OSAWriteLogForSubmission();
  v9 = [_CDLogging dataCollectionChannel:v14];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    __137___CDDataCollection_initWithStorage_activity_sessionPath_dataDirectory_collectionDate_samplingRate_daysPerBatch_eventStreams_maxBatches___block_invoke_cold_2(v10, v18, v9);
  }

  if (*(v16[0] + 40))
  {
    v11 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __137___CDDataCollection_initWithStorage_activity_sessionPath_dataDirectory_collectionDate_samplingRate_daysPerBatch_eventStreams_maxBatches___block_invoke_cold_3(v16, v11, v12);
    }
  }

  _Block_object_dispose(&v15, 8);
  v13 = *MEMORY[0x1E69E9840];
}

void __137___CDDataCollection_initWithStorage_activity_sessionPath_dataDirectory_collectionDate_samplingRate_daysPerBatch_eventStreams_maxBatches___block_invoke_84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = 0;
  [a2 writeData:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

void __137___CDDataCollection_initWithStorage_activity_sessionPath_dataDirectory_collectionDate_samplingRate_daysPerBatch_eventStreams_maxBatches___block_invoke_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_4_20(&dword_191750000, a3, a3, "Submission Success %@", a2);
}

void __137___CDDataCollection_initWithStorage_activity_sessionPath_dataDirectory_collectionDate_samplingRate_daysPerBatch_eventStreams_maxBatches___block_invoke_cold_3(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 40);
  v5 = 138412290;
  v6 = v3;
  OUTLINED_FUNCTION_10(&dword_191750000, a2, a3, "Error writing file %@", &v5);
  v4 = *MEMORY[0x1E69E9840];
}

@end