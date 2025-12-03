@interface _DKSync3FeaturePolicy
- (_DKSync3FeaturePolicy)init;
- (id)description;
- (id)initWithName:(void *)name properties:;
@end

@implementation _DKSync3FeaturePolicy

- (_DKSync3FeaturePolicy)init
{
  v3.receiver = self;
  v3.super_class = _DKSync3FeaturePolicy;
  result = [(_DKSync3FeaturePolicy *)&v3 init];
  if (result)
  {
    result->_isSyncDisabled = 1;
  }

  return result;
}

- (id)initWithName:(void *)name properties:
{
  v92[4] = *MEMORY[0x1E69E9840];
  v6 = a2;
  nameCopy = name;
  if (self)
  {
    v91.receiver = self;
    v91.super_class = _DKSync3FeaturePolicy;
    v8 = objc_msgSendSuper2(&v91, sel_init);
    self = v8;
    if (v8)
    {
      *(v8 + 8) = 1;
      if (v6)
      {
        if (nameCopy)
        {
          v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(nameCopy, "count")}];
          objc_storeStrong(self + 4, a2);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSStringPropertyValue(v10, v11, v12);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v13, v14, v15);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSArrayNSStringPropertyValue(v16, v17, v18);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSArrayNSStringPropertyValue(v19, v20, v21);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSArrayNSStringPropertyValue(v22, v23, v24);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSStringPropertyValue(v25, v26, v27);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v28, v29, v30);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v31, v32, v33);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v34, v35, v36);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v37, v38, v39);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v40, v41, v42);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSArrayNSStringPropertyValue(v43, v44, v45);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v46, v47, v48);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v49, v50, v51);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v52, v53, v54);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v55, v56, v57);
          OUTLINED_FUNCTION_4_7();
          _DKSync3PolicyDuplicateNSNumberPropertyValue(v58, v59, v60);
          v61 = [v9 objectForKeyedSubscript:@"IsSyncDisabled"];
          bOOLValue = [v61 BOOLValue];

          *(self + 8) = bOOLValue;
          if ((bOOLValue & 1) == 0)
          {
            v92[0] = @"Feature";
            v92[1] = @"StreamNames";
            v92[2] = @"Transport";
            v92[3] = @"OldestEventToSyncInDays";
            v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:4];
            v64 = OUTLINED_FUNCTION_28_1(v63);

            if (v64)
            {
              objc_storeStrong(self + 3, v9);
              v65 = [v9 objectForKeyedSubscript:@"Feature"];
              v66 = self[5];
              self[5] = v65;

              v67 = [v9 objectForKeyedSubscript:@"StreamNames"];
              v68 = self[6];
              self[6] = v67;

              v69 = [v9 objectForKeyedSubscript:@"Sources"];
              v70 = self[7];
              self[7] = v69;

              v71 = [v9 objectForKeyedSubscript:@"Destinations"];
              v72 = self[8];
              self[8] = v71;

              v73 = [v9 objectForKeyedSubscript:@"Transport"];
              v74 = self[9];
              self[9] = v73;

              v75 = [v9 objectForKeyedSubscript:@"PeriodicSyncCadenceInMinutes"];
              unsignedIntegerValue = [v75 unsignedIntegerValue];

              self[10] = unsignedIntegerValue;
              v77 = [v9 objectForKeyedSubscript:@"OldestEventToSyncInDays"];
              unsignedIntegerValue2 = [v77 unsignedIntegerValue];

              self[11] = unsignedIntegerValue2;
              v79 = [v9 objectForKeyedSubscript:@"OnlyMultiDevice"];
              LOBYTE(unsignedIntegerValue2) = [v79 BOOLValue];

              *(self + 9) = unsignedIntegerValue2;
              v80 = [v9 objectForKeyedSubscript:@"OnlySingleDevice"];
              LOBYTE(unsignedIntegerValue2) = [v80 BOOLValue];

              *(self + 10) = unsignedIntegerValue2;
              v81 = [v9 objectForKeyedSubscript:@"RequiresCharging"];
              LOBYTE(unsignedIntegerValue2) = [v81 BOOLValue];

              *(self + 11) = unsignedIntegerValue2;
              v82 = [v9 objectForKeyedSubscript:@"RequiresCompanions"];
              v83 = self[12];
              self[12] = v82;

              v84 = [v9 objectForKeyedSubscript:@"PushTriggersSync"];
              LOBYTE(unsignedIntegerValue2) = [v84 BOOLValue];

              *(self + 12) = unsignedIntegerValue2;
              v85 = [v9 objectForKeyedSubscript:@"AdditionsCountTowardTriggeredSyncBucket"];
              LOBYTE(unsignedIntegerValue2) = [v85 BOOLValue];

              *(self + 13) = unsignedIntegerValue2;
              v86 = [v9 objectForKeyedSubscript:@"DeletionsCountTowardTriggeredSyncBucket"];
              LOBYTE(unsignedIntegerValue2) = [v86 BOOLValue];

              *(self + 14) = unsignedIntegerValue2;
              v87 = [v9 objectForKeyedSubscript:@"AdditionTriggersImmediateSync"];
              LOBYTE(unsignedIntegerValue2) = [v87 BOOLValue];

              *(self + 15) = unsignedIntegerValue2;
              v88 = [v9 objectForKeyedSubscript:@"DeletionTriggersImmediateSync"];
              LOBYTE(unsignedIntegerValue2) = [v88 BOOLValue];

              *(self + 16) = unsignedIntegerValue2;
            }
          }
        }
      }
    }
  }

  v89 = *MEMORY[0x1E69E9840];
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

    feature = self->_feature;
  }

  else
  {
    [v2 appendFormat:@"                                    name: %@\n", 0];
    feature = 0;
  }

  [v2 appendFormat:@"                                 feature: %@\n", feature];
  if (self)
  {
    streamNames = self->_streamNames;
    OUTLINED_FUNCTION_13();
    _CDPrettyPrintCollection(v9, v10, v11, v12);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_4_0();
    [v2 appendFormat:@"                             streamNames: %@\n"];

    sources = self->_sources;
  }

  else
  {
    OUTLINED_FUNCTION_13();
    _CDPrettyPrintCollection(v33, v34, v35, v36);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_4_0();
    [v2 appendFormat:@"                             streamNames: %@\n"];

    sources = 0;
  }

  if ([(NSArray *)sources count])
  {
    if (self)
    {
      v14 = self->_sources;
    }

    OUTLINED_FUNCTION_13();
    _CDPrettyPrintCollection(v15, v16, v17, v18);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_4_0();
    [v2 appendFormat:@"                                 sources: %@\n"];
  }

  if (self)
  {
    destinations = self->_destinations;
  }

  else
  {
    destinations = 0;
  }

  if ([(NSArray *)destinations count])
  {
    if (self)
    {
      v20 = self->_destinations;
    }

    OUTLINED_FUNCTION_13();
    _CDPrettyPrintCollection(v21, v22, v23, v24);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_4_0();
    [v2 appendFormat:@"                            destinations: %@\n"];
  }

  if (self)
  {
    [v2 appendFormat:@"                               transport: %@\n", self->_transport];
    if (self->_oldestEventToSyncInDays)
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_4_0();
      [v2 appendFormat:@"                 oldestEventToSyncInDays: %@\n"];
    }

    if (self->_onlyMultiDevice)
    {
      [v2 appendFormat:@"                         onlyMultiDevice: %@\n", @"YES"];
    }

    if (self->_onlySingleDevice)
    {
      [v2 appendFormat:@"                        onlySingleDevice: %@\n", @"YES"];
    }

    if (self->_requiresCharging)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    [v2 appendFormat:@"                        requiresCharging: %@\n", v25];
    requiresCompanions = self->_requiresCompanions;
  }

  else
  {
    [v2 appendFormat:@"                               transport: %@\n", 0];
    [v2 appendFormat:@"                        requiresCharging: %@\n", @"NO"];
  }

  OUTLINED_FUNCTION_13();
  _CDPrettyPrintCollection(v27, v28, v29, v30);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v2 appendFormat:@"                      requiresCompanions: %@\n"];

  if (self)
  {
    if (self->_pushTriggersSync)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    [v2 appendFormat:@"                        pushTriggersSync: %@\n", v31];
    if (self->_additionsCountTowardTriggeredSyncBucket)
    {
      [v2 appendFormat:@" additionsCountTowardTriggeredSyncBucket: %@\n", @"YES"];
    }

    if (self->_deletionsCountTowardTriggeredSyncBucket)
    {
      [v2 appendFormat:@" deletionsCountTowardTriggeredSyncBucket: %@\n", @"YES"];
    }

    if (self->_additionTriggersImmediateSync)
    {
      [v2 appendFormat:@"           additionTriggersImmediateSync: %@\n", @"YES"];
    }

    if (self->_deletionTriggersImmediateSync)
    {
      [v2 appendFormat:@"           deletionTriggersImmediateSync: %@\n", @"YES"];
    }
  }

  else
  {
    [v2 appendFormat:@"                        pushTriggersSync: %@\n", @"NO"];
  }

  [v2 appendString:@"}\n"];

  return v2;
}

@end