@interface _DKEventQuery
+ (id)allDevices;
+ (id)constructFetchRequestPredicateForEventStreams:(id)a3 predicate:(id)a4 deviceIDs:(id)a5;
+ (id)eventQueryWithPredicate:(id)a3 eventStreams:(id)a4 offset:(unint64_t)a5 limit:(unint64_t)a6 sortDescriptors:(id)a7;
+ (id)eventQueryWithPredicate:(id)a3 eventStreams:(id)a4 offset:(unint64_t)a5 limit:(unint64_t)a6 sortDescriptors:(id)a7 resultHandler:(id)a8;
+ (id)expressionForEventDuration;
+ (id)onlyLocalDevice;
+ (id)onlyRemoteDevice;
+ (id)predicateForEventsOfMaximumDuration:(double)a3;
+ (id)predicateForEventsOfMinimumDuration:(double)a3;
- (_DKEventQuery)initWithCoder:(id)a3;
- (_DKEventQuery)initWithPredicate:(id)a3 eventStreams:(id)a4 offset:(unint64_t)a5 limit:(unint64_t)a6 sortDescriptors:(id)a7 resultHandler:(id)a8;
- (id)constructFetchRequestPredicate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)executeUsingCoreDataStorage:(id)a3 error:(id *)a4;
- (id)explicitEventStreamsOrEventStreamsInPredicate;
- (id)handleResults:(id)a3 error:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DKEventQuery

+ (id)onlyLocalDevice
{
  if (onlyLocalDevice_onceToken != -1)
  {
    +[_DKEventQuery onlyLocalDevice];
  }

  v3 = onlyLocalDevice_set;

  return v3;
}

+ (id)allDevices
{
  if (allDevices_onceToken != -1)
  {
    +[_DKEventQuery allDevices];
  }

  v3 = allDevices_set;

  return v3;
}

- (id)explicitEventStreamsOrEventStreamsInPredicate
{
  v3 = [(_DKEventQuery *)self eventStreams];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(_DKEventQuery *)self eventStreams];
  }

  else
  {
    v6 = [(_DKEventQuery *)self predicate];
    v5 = [_DKBiomeQuery eventStreamsFromPredicate:v6];
  }

  return v5;
}

+ (id)onlyRemoteDevice
{
  if (onlyRemoteDevice_onceToken != -1)
  {
    +[_DKEventQuery onlyRemoteDevice];
  }

  v3 = onlyRemoteDevice_set;

  return v3;
}

- (id)description
{
  deviceIDs = self->_deviceIDs;
  v4 = +[_DKEventQuery allDevices];
  LOBYTE(deviceIDs) = [(NSSet *)deviceIDs isEqualToSet:v4];

  if (deviceIDs)
  {
    v5 = @"All";
  }

  else
  {
    v6 = self->_deviceIDs;
    v7 = +[_DKEventQuery onlyRemoteDevice];
    LOBYTE(v6) = [(NSSet *)v6 isEqualToSet:v7];

    if (v6)
    {
      v5 = @"OnlyRemote";
    }

    else
    {
      v8 = self->_deviceIDs;
      v9 = +[_DKEventQuery onlyLocalDevice];
      LOBYTE(v8) = [(NSSet *)v8 isEqualToSet:v9];

      if (v8)
      {
        v5 = @"OnlyLocal";
      }

      else
      {
        v5 = _CDPrettyPrintCollection(self->_deviceIDs, 0, 0, 0);
      }
    }
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [(NSArray *)self->_eventStreams valueForKeyPath:@"name"];
  v14 = [v13 componentsJoinedByString:{@", "}];
  v15 = [v10 stringWithFormat:@"%@:{eventStreams=%@ predicate=%@; limit=%lu; offset=%lu; groupBy=%@; sort=%@; resultType=%ld; deviceIDs=%@ }}", v12, v14, self->_predicate, self->_limit, self->_offset, self->_groupByProperties, self->_sortDescriptors, self->_resultType, v5];;

  return v15;
}

+ (id)eventQueryWithPredicate:(id)a3 eventStreams:(id)a4 offset:(unint64_t)a5 limit:(unint64_t)a6 sortDescriptors:(id)a7 resultHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a4;
  v17 = a3;
  v18 = [[a1 alloc] initWithPredicate:v17 eventStreams:v16 offset:a5 limit:a6 sortDescriptors:v15 resultHandler:v14];

  return v18;
}

+ (id)eventQueryWithPredicate:(id)a3 eventStreams:(id)a4 offset:(unint64_t)a5 limit:(unint64_t)a6 sortDescriptors:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [[a1 alloc] initWithPredicate:v14 eventStreams:v13 offset:a5 limit:a6 sortDescriptors:v12 resultHandler:0];

  return v15;
}

- (_DKEventQuery)initWithPredicate:(id)a3 eventStreams:(id)a4 offset:(unint64_t)a5 limit:(unint64_t)a6 sortDescriptors:(id)a7 resultHandler:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v29.receiver = self;
  v29.super_class = _DKEventQuery;
  v19 = [(_DKEventQuery *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_predicate, a3);
    v20->_offset = a5;
    v20->_limit = a6;
    objc_storeStrong(&v20->_sortDescriptors, a7);
    objc_storeStrong(&v20->_eventStreams, a4);
    v21 = MEMORY[0x193B00C50](v18);
    resultsHandler = v20->_resultsHandler;
    v20->_resultsHandler = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.coreduet.eventquery", v23);
    defaultQueue = v20->_defaultQueue;
    v20->_defaultQueue = v24;

    v20->_readMetadata = 1;
    *&v20->_deduplicateValues = 1;
    v20->_disableBiomeShim = 0;
    v26 = +[_DKEventQuery onlyLocalDevice];
    deviceIDs = v20->_deviceIDs;
    v20->_deviceIDs = v26;
  }

  return v20;
}

+ (id)constructFetchRequestPredicateForEventStreams:(id)a3 predicate:(id)a4 deviceIDs:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v36 + 1) + 8 * i) name];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v13);
  }

  v17 = +[_DKEventQuery allDevices];
  v18 = [v9 isEqualToSet:v17];

  if ((v18 & 1) == 0)
  {
    v19 = +[_DKEventQuery onlyLocalDevice];
    v20 = [v9 isEqualToSet:v19];

    if (v20)
    {
      v21 = +[_DKQuery predicateForEventsWithNullSourceDeviceID];
    }

    else
    {
      v22 = +[_DKEventQuery onlyRemoteDevice];
      v23 = [v9 isEqualToSet:v22];

      if (v23)
      {
        v24 = MEMORY[0x1E696AB28];
        v25 = +[_DKQuery predicateForEventsWithNullSourceDeviceID];
        v26 = [v24 notPredicateWithSubpredicate:v25];

        if (v26)
        {
          goto LABEL_16;
        }

        goto LABEL_19;
      }

      v21 = [_DKQuery predicateForEventsWithSourceDeviceIDs:v9];
    }

    v26 = v21;
    if (v21)
    {
LABEL_16:
      if (v8)
      {
        v27 = MEMORY[0x1E696AB28];
        v41[0] = v8;
        v41[1] = v26;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
        v29 = [v27 andPredicateWithSubpredicates:v28];

        v8 = v29;
      }

      else
      {
        v8 = v26;
      }
    }

LABEL_19:
  }

  if (!v8)
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  if ([v10 count])
  {
    v30 = MEMORY[0x1E696AB28];
    v31 = [_DKQuery predicateForEventsWithStreamNames:v10];
    v40[0] = v31;
    v40[1] = v8;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v33 = [v30 andPredicateWithSubpredicates:v32];

    v8 = v33;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)constructFetchRequestPredicate
{
  v3 = [(_DKEventQuery *)self eventStreams];
  v4 = [(_DKEventQuery *)self predicate];
  v5 = [(_DKEventQuery *)self deviceIDs];
  v6 = [_DKEventQuery constructFetchRequestPredicateForEventStreams:v3 predicate:v4 deviceIDs:v5];

  return v6;
}

- (id)executeUsingCoreDataStorage:(id)a3 error:(id *)a4
{
  v5 = a3;
  [(_DKEventQuery *)self readMetadata];
  [(_DKEventQuery *)self deduplicateValues];
  kdebug_trace();
  v6 = [(_DKEventQuery *)self explicitEventStreamsOrEventStreamsInPredicate];
  v7 = _streamNameFromStreams(v6);
  _cdknowledge_signpost_query_begin(v7);

  if (self->_disableBiomeShim)
  {
    v8 = v6;
    v9 = 0;
    v10 = MEMORY[0x1E695E0F0];
    v11 = 1;
  }

  else
  {
    v10 = [_DKBiomeQuery biomeExclusiveStreamsFromEventStreams:v6];
    v8 = [_DKBiomeQuery duetExclusiveStreamsFromEventStreams:v6];
    v9 = [v10 count] != 0;
    v11 = [v8 count] != 0;
  }

  v47 = v10;
  if (_os_feature_enabled_impl() && !+[_DKBiomeQuery shimDisabled])
  {
    if (![v10 count] && !objc_msgSend(v8, "count"))
    {
      v13 = _CDCurrentOrXPCProcessName();
      v14 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [_DKEventQuery executeUsingCoreDataStorage:v13 error:self];
      }
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v15 = v5;
  v48 = [_DKEventQuery constructFetchRequestPredicateForEventStreams:v8 predicate:self->_predicate deviceIDs:self->_deviceIDs];
  v16 = [(_DKEventQuery *)self resultType];
  if ([(_DKEventQuery *)self resultType]== 1)
  {
    v17 = [(_DKEventQuery *)self groupByProperties];
    v18 = v17 == 0;

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = 0;
    if (!v16)
    {
      goto LABEL_22;
    }
  }

  if (!v18 && v9 && v11)
  {
    v19 = _CDCurrentOrXPCProcessName();
    v20 = +[_CDLogging knowledgeChannel];
    v21 = v15;
    v22 = a4;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [_DKEventQuery executeUsingCoreDataStorage:? error:?];
    }

    v23 = 0;
    v24 = v47;
    goto LABEL_39;
  }

LABEL_22:
  if ((v12 & v9) == 1)
  {
    v45 = v8;
    context = objc_autoreleasePoolPush();
    v43 = os_transaction_create();
    v25 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [_DKEventQuery executeUsingCoreDataStorage:v25 error:?];
    }

    v26 = [[_DKBiomeQuery alloc] initWithDKEventQuery:self];
    v68[0] = 0;
    v23 = [(_DKBiomeQuery *)v26 executeBiomeQueryError:v68];
    v27 = v68[0];
    v28 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [_DKEventQuery executeUsingCoreDataStorage:v28 error:?];
    }

    v29 = +[_CDLogging knowledgeChannel];
    v30 = v29;
    if (v27)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [_DKEventQuery executeUsingCoreDataStorage:error:];
      }
    }

    else
    {
      v31 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
      if (v18)
      {
        if (v31)
        {
          [_DKEventQuery executeUsingCoreDataStorage:v23 error:?];
        }
      }

      else if (v31)
      {
        [_DKEventQuery executeUsingCoreDataStorage:v23 error:?];
      }
    }

    [v23 count];
    [v27 code];
    kdebug_trace();
    _cdknowledge_signpost_query_end([v23 count], objc_msgSend(v27, "code"));

    objc_autoreleasePoolPop(context);
    v21 = v15;
    if (!v11)
    {
      [v23 count];
      [0 code];
      kdebug_trace();
      _cdknowledge_signpost_query_end([v23 count], objc_msgSend(0, "code"));
      v38 = v23;
      v41 = v38;
      v24 = v47;
      v35 = v45;
      goto LABEL_46;
    }

    v24 = v47;
    v8 = v45;
  }

  else
  {
    v23 = 0;
    v21 = v15;
    v24 = v47;
  }

  v22 = a4;
LABEL_39:
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__23;
  v66 = __Block_byref_object_dispose__23;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__23;
  v60 = __Block_byref_object_dispose__23;
  v61 = 0;
  v32 = [(_DKQuery *)self executeConcurrently];
  v33 = *MEMORY[0x1E696A388];
  if (v32)
  {
    [v21 privateManagedObjectContextFor:v33];
  }

  else
  {
    [v21 managedObjectContextFor:v33];
  }
  v34 = ;
  v35 = v8;
  v36 = os_transaction_create();
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __51___DKEventQuery_executeUsingCoreDataStorage_error___block_invoke;
  v49[3] = &unk_1E736A648;
  v37 = v34;
  v50 = v37;
  v51 = v48;
  v52 = self;
  v54 = &v56;
  v55 = &v62;
  v38 = v23;
  v53 = v38;
  [v37 performWithOptions:4 andBlock:v49];
  if (v22)
  {
    v39 = v57[5];
    if (v39)
    {
      *v22 = v39;
    }
  }

  [v63[5] count];
  [v57[5] code];
  kdebug_trace();
  v40 = [v63[5] count];
  _cdknowledge_signpost_query_end(v40, [v57[5] code]);
  v41 = v63[5];

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);

LABEL_46:

  return v41;
}

- (id)handleResults:(id)a3 error:(id)a4
{
  v6 = a3;
  resultsHandler = self->_resultsHandler;
  if (resultsHandler)
  {
    resultsHandler[2](resultsHandler, self, v6, a4);
  }

  return v6;
}

+ (id)expressionForEventDuration
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"startDate.timeIntervalSinceReferenceDate"];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"endDate.timeIntervalSinceReferenceDate"];
  v4 = MEMORY[0x1E696ABC8];
  v9[0] = v3;
  v9[1] = v2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v4 expressionForFunction:@"from:subtract:" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)predicateForEventsOfMinimumDuration:(double)a3
{
  v4 = [objc_opt_class() expressionForEventDuration];
  v5 = MEMORY[0x1E696ABC8];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v7 = [v5 expressionForConstantValue:v6];

  v8 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v4 rightExpression:v7 modifier:0 type:3 options:4];

  return v8;
}

+ (id)predicateForEventsOfMaximumDuration:(double)a3
{
  v4 = [objc_opt_class() expressionForEventDuration];
  v5 = MEMORY[0x1E696ABC8];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v7 = [v5 expressionForConstantValue:v6];

  v8 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v4 rightExpression:v7 modifier:0 type:1 options:4];

  return v8;
}

- (_DKEventQuery)initWithCoder:(id)a3
{
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = _DKEventQuery;
  v5 = [(_DKQuery *)&v31 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"eventStreams"];
    eventStreams = v5->_eventStreams;
    v5->_eventStreams = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v11;

    v5->_offset = [v4 decodeInt64ForKey:@"offset"];
    v5->_limit = [v4 decodeInt64ForKey:@"limit"];
    v13 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v15 = [v13 setWithArray:v14];

    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v16;

    v18 = MEMORY[0x1E695DFD8];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v20 = [v18 setWithArray:v19];

    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"groupByProperties"];
    groupByProperties = v5->_groupByProperties;
    v5->_groupByProperties = v21;

    v5->_readMetadata = [v4 decodeBoolForKey:@"readMetadata"];
    v5->_deduplicateValues = [v4 decodeBoolForKey:@"_deduplicateValues"];
    v5->_resultType = [v4 decodeIntegerForKey:@"resultType"];
    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"deviceIDs"];
    deviceIDs = v5->_deviceIDs;
    v5->_deviceIDs = v26;

    v5->_returnsDistinctResults = [v4 decodeBoolForKey:@"returnsDistinctResults"];
    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _DKEventQuery;
  v4 = a3;
  [(_DKQuery *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_eventStreams forKey:{@"eventStreams", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_predicate forKey:@"predicate"];
  [v4 encodeInt64:self->_offset forKey:@"offset"];
  [v4 encodeInt64:self->_limit forKey:@"limit"];
  [v4 encodeObject:self->_sortDescriptors forKey:@"sortDescriptors"];
  [v4 encodeObject:self->_groupByProperties forKey:@"groupByProperties"];
  [v4 encodeBool:self->_readMetadata forKey:@"readMetadata"];
  [v4 encodeBool:self->_deduplicateValues forKey:@"deduplicateValues"];
  [v4 encodeInteger:self->_resultType forKey:@"resultType"];
  [v4 encodeObject:self->_deviceIDs forKey:@"deviceIDs"];
  [v4 encodeBool:self->_returnsDistinctResults forKey:@"returnsDistinctResults"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setEventStreams:self->_eventStreams];
  [v4 setPredicate:self->_predicate];
  [v4 setOffset:self->_offset];
  [v4 setLimit:self->_limit];
  [v4 setSortDescriptors:self->_sortDescriptors];
  [v4 setGroupByProperties:self->_groupByProperties];
  [v4 setReadMetadata:self->_readMetadata];
  [v4 setDeduplicateValues:self->_deduplicateValues];
  [v4 setResultType:self->_resultType];
  [v4 setDeviceIDs:self->_deviceIDs];
  [v4 setReturnsDistinctResults:self->_returnsDistinctResults];
  [v4 setExecuteConcurrently:{-[_DKQuery executeConcurrently](self, "executeConcurrently")}];
  return v4;
}

- (void)executeUsingCoreDataStorage:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 constructFetchRequestPredicate];
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_0_33();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)executeUsingCoreDataStorage:(void *)a1 error:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "resultType")}];
  v3 = [a1 constructFetchRequestPredicate];
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_0_33();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)executeUsingCoreDataStorage:error:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_191750000, v0, OS_LOG_TYPE_ERROR, "_DKBiomeQuery failure, error: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)executeUsingCoreDataStorage:(void *)a1 error:.cold.6(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11(&dword_191750000, v1, v2, "_DKBiomeQuery success, result count: %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)executeUsingCoreDataStorage:(void *)a1 error:.cold.7(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 firstObject];
  [v1 unsignedIntegerValue];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11(&dword_191750000, v2, v3, "_DKBiomeQuery success, count: %ld", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end