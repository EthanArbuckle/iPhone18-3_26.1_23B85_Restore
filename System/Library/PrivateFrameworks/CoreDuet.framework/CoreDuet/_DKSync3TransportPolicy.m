@interface _DKSync3TransportPolicy
- (_DKSync3TransportPolicy)init;
- (id)description;
- (id)initWithName:(void *)a3 properties:;
@end

@implementation _DKSync3TransportPolicy

- (_DKSync3TransportPolicy)init
{
  v3.receiver = self;
  v3.super_class = _DKSync3TransportPolicy;
  result = [(_DKSync3TransportPolicy *)&v3 init];
  if (result)
  {
    result->_isSyncDisabled = 1;
  }

  return result;
}

- (id)initWithName:(void *)a3 properties:
{
  v65[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v64.receiver = a1;
    v64.super_class = _DKSync3TransportPolicy;
    v8 = objc_msgSendSuper2(&v64, sel_init);
    a1 = v8;
    if (v8)
    {
      *(v8 + 8) = 1;
      if (v6)
      {
        if (v7)
        {
          v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
          objc_storeStrong(a1 + 3, a2);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSStringPropertyValue(v10, v11, v12);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v13, v14, v15);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v16, v17, v18);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v19, v20, v21);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v22, v23, v24);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v25, v26, v27);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v28, v29, v30);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v31, v32, v33);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v34, v35, v36);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v37, v38, v39);
          v40 = [v9 objectForKeyedSubscript:@"IsSyncDisabled"];
          v41 = [v40 BOOLValue];

          *(a1 + 8) = v41;
          if ((v41 & 1) == 0)
          {
            v65[0] = @"Transport";
            v65[1] = @"SyncBatchSizeInEvents";
            v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
            v43 = OUTLINED_FUNCTION_28_1(v42);

            if (v43)
            {
              objc_storeStrong(a1 + 2, v9);
              v44 = [v9 objectForKeyedSubscript:@"Transport"];
              v45 = a1[4];
              a1[4] = v44;

              v46 = [v9 objectForKeyedSubscript:@"MaximumSyncsPerDay"];
              v47 = [v46 unsignedIntegerValue];

              a1[5] = v47;
              v48 = [v9 objectForKeyedSubscript:@"SyncBatchSizeInEvents"];
              v49 = [v48 unsignedIntegerValue];

              a1[6] = v49;
              v50 = [v9 objectForKeyedSubscript:@"MaximumBatchesPerSync"];
              v51 = [v50 unsignedIntegerValue];

              a1[7] = v51;
              v52 = [v9 objectForKeyedSubscript:@"MaximumSyncWindowInSeconds"];
              v53 = [v52 unsignedIntegerValue];

              a1[8] = v53;
              v54 = [v9 objectForKeyedSubscript:@"MinimumTimeBetweenSyncsInSeconds"];
              v55 = [v54 unsignedIntegerValue];

              a1[9] = v55;
              v56 = [v9 objectForKeyedSubscript:@"SingleDevicePeriodicSyncCadenceInDays"];
              v57 = [v56 unsignedIntegerValue];

              a1[10] = v57;
              v58 = [v9 objectForKeyedSubscript:@"AdditionsBucketCountTriggeringSync"];
              v59 = [v58 unsignedIntegerValue];

              a1[11] = v59;
              v60 = [v9 objectForKeyedSubscript:@"DeletionsBucketCountTriggeringSync"];
              v61 = [v60 unsignedIntegerValue];

              a1[12] = v61;
            }
          }
        }
      }
    }
  }

  v62 = *MEMORY[0x1E69E9840];
  return a1;
}

- (id)description
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  OUTLINED_FUNCTION_24_2();
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v2 appendFormat:@"%@ { \n"];

  if (self)
  {
    [v2 appendFormat:@"                                    name: %@\n", self->_name];
    if (self->_isSyncDisabled)
    {
      [v2 appendFormat:@"                          isSyncDisabled: %@\n", @"YES"];
    }

    transport = self->_transport;
  }

  else
  {
    [v2 appendFormat:@"                                    name: %@\n", 0];
    transport = 0;
  }

  [v2 appendFormat:@"                               transport: %@\n", transport];
  if (self)
  {
    maximumSyncsPerDay = self->_maximumSyncsPerDay;
  }

  else
  {
    maximumSyncsPerDay = 0;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:maximumSyncsPerDay];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v2 appendFormat:@"                      maximumSyncsPerDay: %@\n"];

  if (self)
  {
    syncBatchSizeInEvents = self->_syncBatchSizeInEvents;
  }

  else
  {
    syncBatchSizeInEvents = 0;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:syncBatchSizeInEvents];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v2 appendFormat:@"                   syncBatchSizeInEvents: %@\n"];

  if (self)
  {
    maximumBatchesPerSync = self->_maximumBatchesPerSync;
  }

  else
  {
    maximumBatchesPerSync = 0;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:maximumBatchesPerSync];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v2 appendFormat:@"                   maximumBatchesPerSync: %@\n"];

  if (self)
  {
    minimumSyncWindowInSeconds = self->_minimumSyncWindowInSeconds;
  }

  else
  {
    minimumSyncWindowInSeconds = 0;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:minimumSyncWindowInSeconds];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v2 appendFormat:@"              minimumSyncWindowInSeconds: %@\n"];

  if (!self)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
    [v2 appendFormat:@"        minimumTimeBetweenSyncsInSeconds: %@\n", v12];
    goto LABEL_18;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_minimumTimeBetweenSyncsInSeconds];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v2 appendFormat:@"        minimumTimeBetweenSyncsInSeconds: %@\n"];

  if (self->_additionsBucketCountTriggeringSync)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_4_0();
    [v2 appendFormat:@"      additionsBucketCountTriggeringSync: %@\n"];
  }

  if (self->_deletionsBucketCountTriggeringSync)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v2 appendFormat:@"      deletionsBucketCountTriggeringSync: %@\n", v12];
LABEL_18:
  }

  [v2 appendString:@"}\n"];

  return v2;
}

@end