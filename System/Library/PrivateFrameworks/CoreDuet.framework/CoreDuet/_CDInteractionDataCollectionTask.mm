@interface _CDInteractionDataCollectionTask
- (_CDInteractionDataCollectionTask)initWithStore:(id)store activity:(id)activity;
- (_CDInteractionDataCollectionTask)initWithStore:(id)store activity:(id)activity sessionPath:(id)path collectionDate:(id)date samplingRate:(double)rate maxBatches:(unint64_t)batches daysPerBatch:(unint64_t)batch;
- (void)_execute;
- (void)cleanup;
- (void)execute;
@end

@implementation _CDInteractionDataCollectionTask

- (_CDInteractionDataCollectionTask)initWithStore:(id)store activity:(id)activity
{
  storeCopy = store;
  activityCopy = activity;
  date = [MEMORY[0x1E695DF00] date];
  v9 = 1.0;
  if (!CRIsAppleInternal())
  {
    v10 = OSAGetDATaskingValue();
    v9 = 0.0001;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 doubleValue];
        v9 = v11;
      }
    }
  }

  v12 = OSAGetDATaskingValue();
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v12 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v14 = OSAGetDATaskingValue();
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue2 = [v14 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 7;
  }

  v16 = [(_CDInteractionDataCollectionTask *)self initWithStore:storeCopy activity:activityCopy sessionPath:@"/var/mobile/Library/CoreDuet/DataCollection/Interactions/session.archive" collectionDate:date samplingRate:unsignedIntegerValue maxBatches:unsignedIntegerValue2 daysPerBatch:v9];

  return v16;
}

- (_CDInteractionDataCollectionTask)initWithStore:(id)store activity:(id)activity sessionPath:(id)path collectionDate:(id)date samplingRate:(double)rate maxBatches:(unint64_t)batches daysPerBatch:(unint64_t)batch
{
  storeCopy = store;
  activityCopy = activity;
  pathCopy = path;
  dateCopy = date;
  v36.receiver = self;
  v36.super_class = _CDInteractionDataCollectionTask;
  v21 = [(_CDInteractionDataCollectionTask *)&v36 init];
  v22 = v21;
  if (v21)
  {
    batchCopy = batch;
    objc_storeStrong(&v21->_interactionStore, store);
    objc_storeStrong(&v22->_activity, activity);
    v23 = [pathCopy copy];
    sessionPath = v22->_sessionPath;
    v22->_sessionPath = v23;

    v25 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v22->_sessionPath options:0 error:0];
    if (v25)
    {
      v35 = 0;
      v26 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v25 error:&v35];
      v27 = v35;
      if (v27)
      {
        v28 = +[_CDLogging dataCollectionChannel];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [_CDInteractionDataCollectionTask initWithStore:activity:sessionPath:collectionDate:samplingRate:maxBatches:daysPerBatch:];
        }
      }
    }

    else
    {
      v26 = 0;
    }

    session = v22->_session;
    v22->_session = v26;
    v30 = v26;

    v31 = [dateCopy copy];
    collectionDate = v22->_collectionDate;
    v22->_collectionDate = v31;

    v22->_samplingRate = rate;
    v22->_maxBatches = batches;
    v22->_daysPerBatch = batchCopy;
    v22->_deleteSessionOnCleanup = 1;
  }

  return v22;
}

- (void)execute
{
  [(_CDInteractionDataCollectionTask *)self _execute];

  [(_CDInteractionDataCollectionTask *)self cleanup];
}

- (void)_execute
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error archiving subsequent _CDInteraction data collection session: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cleanup
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error remove previous session file (_CDInteraction data collection): %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithStore:activity:sessionPath:collectionDate:samplingRate:maxBatches:daysPerBatch:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error unarchiving _CDInteraction data collection session: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end