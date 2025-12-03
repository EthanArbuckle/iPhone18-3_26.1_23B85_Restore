@interface _DKSync3TransportPolicy
- (_DKSync3TransportPolicy)init;
- (id)description;
- (id)initWithName:(void *)name properties:;
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

- (id)initWithName:(void *)name properties:
{
  v65[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  nameCopy = name;
  if (self)
  {
    v64.receiver = self;
    v64.super_class = _DKSync3TransportPolicy;
    v8 = objc_msgSendSuper2(&v64, sel_init);
    self = v8;
    if (v8)
    {
      *(v8 + 8) = 1;
      if (v6)
      {
        if (nameCopy)
        {
          v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(nameCopy, "count")}];
          objc_storeStrong(self + 3, a2);
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
          bOOLValue = [v40 BOOLValue];

          *(self + 8) = bOOLValue;
          if ((bOOLValue & 1) == 0)
          {
            v65[0] = @"Transport";
            v65[1] = @"SyncBatchSizeInEvents";
            v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
            v43 = OUTLINED_FUNCTION_28_1(v42);

            if (v43)
            {
              objc_storeStrong(self + 2, v9);
              v44 = [v9 objectForKeyedSubscript:@"Transport"];
              v45 = self[4];
              self[4] = v44;

              v46 = [v9 objectForKeyedSubscript:@"MaximumSyncsPerDay"];
              unsignedIntegerValue = [v46 unsignedIntegerValue];

              self[5] = unsignedIntegerValue;
              v48 = [v9 objectForKeyedSubscript:@"SyncBatchSizeInEvents"];
              unsignedIntegerValue2 = [v48 unsignedIntegerValue];

              self[6] = unsignedIntegerValue2;
              v50 = [v9 objectForKeyedSubscript:@"MaximumBatchesPerSync"];
              unsignedIntegerValue3 = [v50 unsignedIntegerValue];

              self[7] = unsignedIntegerValue3;
              v52 = [v9 objectForKeyedSubscript:@"MaximumSyncWindowInSeconds"];
              unsignedIntegerValue4 = [v52 unsignedIntegerValue];

              self[8] = unsignedIntegerValue4;
              v54 = [v9 objectForKeyedSubscript:@"MinimumTimeBetweenSyncsInSeconds"];
              unsignedIntegerValue5 = [v54 unsignedIntegerValue];

              self[9] = unsignedIntegerValue5;
              v56 = [v9 objectForKeyedSubscript:@"SingleDevicePeriodicSyncCadenceInDays"];
              unsignedIntegerValue6 = [v56 unsignedIntegerValue];

              self[10] = unsignedIntegerValue6;
              v58 = [v9 objectForKeyedSubscript:@"AdditionsBucketCountTriggeringSync"];
              unsignedIntegerValue7 = [v58 unsignedIntegerValue];

              self[11] = unsignedIntegerValue7;
              v60 = [v9 objectForKeyedSubscript:@"DeletionsBucketCountTriggeringSync"];
              unsignedIntegerValue8 = [v60 unsignedIntegerValue];

              self[12] = unsignedIntegerValue8;
            }
          }
        }
      }
    }
  }

  v62 = *MEMORY[0x1E69E9840];
  return self;
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