@interface _CDFTCPInteractionDataCollectionTask
- (_CDFTCPInteractionDataCollectionTask)initWithStore:(id)a3 activity:(id)a4;
- (_CDFTCPInteractionDataCollectionTask)initWithStore:(id)a3 activity:(id)a4 sessionPath:(id)a5 collectionDate:(id)a6 samplingRate:(double)a7 maxBatches:(unint64_t)a8 daysPerBatch:(unint64_t)a9 twoWeekPeriodsInLookback:(unint64_t)a10;
- (void)_execute;
- (void)cleanup;
- (void)execute;
@end

@implementation _CDFTCPInteractionDataCollectionTask

- (_CDFTCPInteractionDataCollectionTask)initWithStore:(id)a3 activity:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  v10 = CRIsAppleInternal();
  v11 = 1.0;
  if (!v10)
  {
    v11 = 0.0;
  }

  v12 = [(_CDFTCPInteractionDataCollectionTask *)self initWithStore:v8 activity:v7 sessionPath:@"/var/mobile/Library/CoreDuet/DataCollection/FTCPInteractions/session.archive" collectionDate:v9 samplingRate:1 maxBatches:7 daysPerBatch:v11 twoWeekPeriodsInLookback:2];

  return v12;
}

- (_CDFTCPInteractionDataCollectionTask)initWithStore:(id)a3 activity:(id)a4 sessionPath:(id)a5 collectionDate:(id)a6 samplingRate:(double)a7 maxBatches:(unint64_t)a8 daysPerBatch:(unint64_t)a9 twoWeekPeriodsInLookback:(unint64_t)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v37.receiver = self;
  v37.super_class = _CDFTCPInteractionDataCollectionTask;
  v22 = [(_CDFTCPInteractionDataCollectionTask *)&v37 init];
  v23 = v22;
  if (v22)
  {
    v35 = a9;
    objc_storeStrong(&v22->_interactionStore, a3);
    objc_storeStrong(&v23->_activity, a4);
    v24 = [v20 copy];
    sessionPath = v23->_sessionPath;
    v23->_sessionPath = v24;

    v26 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v23->_sessionPath options:0 error:0];
    if (v26)
    {
      v36 = 0;
      v27 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v26 error:&v36];
      v28 = v36;
      if (v28)
      {
        v29 = +[_CDLogging dataCollectionChannel];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [_CDFTCPInteractionDataCollectionTask initWithStore:activity:sessionPath:collectionDate:samplingRate:maxBatches:daysPerBatch:twoWeekPeriodsInLookback:];
        }
      }
    }

    else
    {
      v27 = 0;
    }

    session = v23->_session;
    v23->_session = v27;
    v31 = v27;

    v32 = [v21 copy];
    collectionDate = v23->_collectionDate;
    v23->_collectionDate = v32;

    v23->_samplingRate = a7;
    v23->_maxBatches = a8;
    v23->_daysPerBatch = v35;
    v23->_twoWeekPeriodsInLookback = a10;
    v23->_deleteSessionOnCleanup = 1;
  }

  return v23;
}

- (void)execute
{
  [(_CDFTCPInteractionDataCollectionTask *)self _execute];

  [(_CDFTCPInteractionDataCollectionTask *)self cleanup];
}

- (void)_execute
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error archiving subsequent _CDFTCPInteraction data collection session: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cleanup
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error remove previous session file (_CDFTCPInteraction data collection): %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithStore:activity:sessionPath:collectionDate:samplingRate:maxBatches:daysPerBatch:twoWeekPeriodsInLookback:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error unarchiving _CDFTCPInteraction data collection session: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end