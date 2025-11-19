@interface _DKHistogramQuery
+ (id)histogramQueryForPersistedHistogramsForStream:(id)a3 withCustomIdentifier:(id)a4;
+ (id)histogramQueryForStream:(id)a3 interval:(id)a4;
+ (id)histogramQueryForStream:(id)a3 interval:(id)a4 predicate:(id)a5 valueKeyPaths:(id)a6;
+ (id)histogramQueryForStream:(id)a3 interval:(id)a4 withPredicate:(id)a5;
- (_DKHistogram)_histogramFromEvents:(_DKHistogram *)a1;
- (_DKHistogram)_histogramFromManagedObjects:(_DKHistogram *)a1;
- (_DKHistogram)_histogramFromValueCounts:(_DKHistogram *)a1;
- (_DKHistogramQuery)init;
- (_DKHistogramQuery)initWithCoder:(id)a3;
- (id)_fetchRemoteResultsWithStorage:(void *)a3 error:;
- (id)_valueForEvent:(void *)a1;
- (id)description;
- (id)executeUsingCoreDataStorage:(id)a3 error:(id *)a4;
- (id)handleResults:(id)a3 error:(id)a4;
- (void)_constructFetchRequestPredicate;
- (void)_defaultValueKeyPaths;
- (void)encodeWithCoder:(id)a3;
- (void)setCustomIdentifier:(uint64_t)a1;
- (void)setInterval:(uint64_t)a1;
- (void)setStream:(uint64_t)a1;
@end

@implementation _DKHistogramQuery

- (_DKHistogramQuery)init
{
  v3.receiver = self;
  v3.super_class = _DKHistogramQuery;
  result = [(_DKHistogramQuery *)&v3 init];
  if (result)
  {
    result->_minimumOccurrencesForInclusion = 1;
    result->_includeLocalResults = 1;
    result->_includeRemoteResults = 1;
    result->_remoteHistogramLimit = 0;
  }

  return result;
}

+ (id)histogramQueryForStream:(id)a3 interval:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v9 = [v7 histogramQueryForStream:v6 interval:v5 withPredicate:v8];

  return v9;
}

+ (id)histogramQueryForStream:(id)a3 interval:(id)a4 withPredicate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 eventValueType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = 0;
  }

  else
  {
    v13 = objc_alloc_init(a1);
    [(_DKHistogramQuery *)v13 setStream:v8];
    [(_DKHistogramQuery *)v13 setInterval:v9];
    [v13 setPredicate:v10];
    v15 = [(_DKHistogramQuery *)v13 _defaultValueKeyPaths];
    [v13 setValueKeyPaths:v15];
  }

  return v13;
}

+ (id)histogramQueryForStream:(id)a3 interval:(id)a4 predicate:(id)a5 valueKeyPaths:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_class();
  v14 = v13;
  if (v11)
  {
    v15 = [v13 histogramQueryForStream:v9 interval:v10 withPredicate:v11];
  }

  else
  {
    v16 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    v15 = [v14 histogramQueryForStream:v9 interval:v10 withPredicate:v16];
  }

  [v15 setValueKeyPaths:v12];

  return v15;
}

- (_DKHistogramQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _DKHistogramQuery;
  v5 = [(_DKQuery *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stream"];
    stream = v5->_stream;
    v5->_stream = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customIdentifier"];
    customIdentifier = v5->_customIdentifier;
    v5->_customIdentifier = v8;

    v5->_includeLocalResults = [v4 decodeBoolForKey:@"includeLocalResults"];
    v5->_includeRemoteResults = [v4 decodeBoolForKey:@"includeRemoteResults"];
    v5->_remoteHistogramLimit = [v4 decodeIntegerForKey:@"remoteHistogramLimit"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interval"];
    interval = v5->_interval;
    v5->_interval = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"valueKeyPaths"];
    valueKeyPaths = v5->_valueKeyPaths;
    v5->_valueKeyPaths = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _DKHistogramQuery;
  v4 = a3;
  [(_DKQuery *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_stream forKey:{@"stream", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_customIdentifier forKey:@"customIdentifier"];
  [v4 encodeBool:self->_includeLocalResults forKey:@"includeLocalResults"];
  [v4 encodeBool:self->_includeRemoteResults forKey:@"includeRemoteResults"];
  [v4 encodeInteger:self->_remoteHistogramLimit forKey:@"remoteHistogramLimit"];
  [v4 encodeObject:self->_interval forKey:@"interval"];
  [v4 encodeObject:self->_predicate forKey:@"predicate"];
  [v4 encodeObject:self->_valueKeyPaths forKey:@"valueKeyPaths"];
}

- (id)_fetchRemoteResultsWithStorage:(void *)a3 error:
{
  v5 = a2;
  if (a1)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = [(_DKHistogramQuery *)a1 _constructFetchRequestPredicate];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__17;
    v32 = __Block_byref_object_dispose__17;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__17;
    v26 = __Block_byref_object_dispose__17;
    v27 = 0;
    v8 = [v5 managedObjectContextFor:*MEMORY[0x1E696A388]];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58___DKHistogramQuery__fetchRemoteResultsWithStorage_error___block_invoke;
    v15[3] = &unk_1E7369CD8;
    v9 = v8;
    v16 = v9;
    v10 = v7;
    v17 = v10;
    v18 = a1;
    v11 = v6;
    v19 = v11;
    v20 = &v22;
    v21 = &v28;
    [v9 performWithOptions:4 andBlock:v15];
    if (a3)
    {
      v12 = v23[5];
      if (v12)
      {
        *a3 = v12;
      }
    }

    v13 = v29[5];

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)executeUsingCoreDataStorage:(id)a3 error:(id *)a4
{
  v88[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(_DKHistogramQuery *)self stream];
  if (v8)
  {
    v4 = [(_DKHistogramQuery *)self stream];
    v88[0] = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = _streamNameFromStreams(v9);
  _cdknowledge_signpost_query_begin(v10);

  if (v8)
  {
  }

  v11 = [(_DKHistogramQuery *)self stream];

  if (!v11)
  {
    v19 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_DKHistogramQuery executeUsingCoreDataStorage:v19 error:?];
    }

    if (a4)
    {
      v20 = MEMORY[0x1E696ABC0];
      v86 = *MEMORY[0x1E696A578];
      v87 = @"No event stream specified.";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      *a4 = [v20 errorWithDomain:@"com.apple.coreduet.knowledge" code:4 userInfo:v21];
    }

    v22 = 4;
    goto LABEL_35;
  }

  if (![(_DKHistogramQuery *)self includeLocalResults]&& ![(_DKHistogramQuery *)self includeRemoteResults])
  {
    v27 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [_DKHistogramQuery executeUsingCoreDataStorage:v27 error:?];
    }

    if (a4)
    {
      v28 = MEMORY[0x1E696ABC0];
      v84 = *MEMORY[0x1E696A578];
      v85 = @"Invalid parameters: includeLocalResults and includeRemoteResults are both NO.";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      *a4 = [v28 errorWithDomain:@"com.apple.coreduet.knowledge" code:3 userInfo:v29];
    }

    v22 = 3;
LABEL_35:
    _cdknowledge_signpost_query_end(0, v22);
    v26 = 0;
    goto LABEL_36;
  }

  v12 = [(_DKHistogramQuery *)self valueKeyPaths];
  v13 = [v12 count];

  if (!v13)
  {
    [_DKHistogramQuery executeUsingCoreDataStorage:? error:?];
  }

  if ([(_DKHistogramQuery *)self includeLocalResults])
  {
    v69 = v7;
    context = objc_autoreleasePoolPush();
    v32 = [(_DKHistogramQuery *)self interval];
    v33 = [v32 startDate];
    v34 = [(_DKHistogramQuery *)self interval];
    v35 = [v34 endDate];
    v36 = [_DKQuery predicateForEventsBetweenStartDate:v33 endDate:v35];

    v37 = v36;
    v38 = MEMORY[0x1E696AB28];
    v83[0] = v36;
    v39 = [(_DKHistogramQuery *)self predicate];
    v83[1] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
    v41 = [v38 andPredicateWithSubpredicates:v40];

    v42 = v41;
    v43 = [(_DKHistogramQuery *)self stream];
    v82 = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
    v45 = [_DKEventQuery eventQueryWithPredicate:v41 eventStreams:v44 offset:0 limit:0 sortDescriptors:0];

    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKHistogramQuery.m"];
    v47 = [v46 stringByAppendingFormat:@":%d", 371];
    [v45 setClientName:v47];

    v67 = v45;
    [v45 setTracker:&__block_literal_global_56];
    v48 = MEMORY[0x1E695DF70];
    v49 = [(_DKHistogramQuery *)self valueKeyPaths];
    v50 = [v48 arrayWithCapacity:{objc_msgSend(v49, "count")}];

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v51 = [(_DKHistogramQuery *)self valueKeyPaths];
    v52 = [v51 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v52)
    {
      v53 = v52;
      v66 = v37;
      v54 = *v74;
      while (2)
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v74 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v73 + 1) + 8 * i);
          v57 = [_DKEvent moKeyPathForKeyPath:v56];
          if (!v57)
          {
            v59 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v78 = v56;
              _os_log_impl(&dword_191750000, v59, OS_LOG_TYPE_DEFAULT, "Unsupported key for histogram query fast-path: '%@'. Falling back to full query.", buf, 0xCu);
            }

            v50 = 0;
            goto LABEL_52;
          }

          v58 = v57;
          [v50 addObject:v57];
        }

        v53 = [v51 countByEnumeratingWithState:&v73 objects:v81 count:16];
        if (v53)
        {
          continue;
        }

        break;
      }

LABEL_52:
      v7 = v69;
      v37 = v66;
    }

    else
    {
      v7 = v69;
    }

    if ([v50 count])
    {
      [v67 setGroupByProperties:v50];
      [v67 setResultType:4];
      v64 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = [(_DKHistogramQuery *)self stream];
        *buf = 138412546;
        v78 = v50;
        v79 = 2112;
        v80 = v65;
        _os_log_impl(&dword_191750000, v64, OS_LOG_TYPE_DEFAULT, "Fetching value counts for histogram for keyPaths: %@ stream: %@", buf, 0x16u);
      }

      v72 = 0;
      v62 = [v67 executeUsingCoreDataStorage:v7 error:&v72];
      v14 = v72;
      v63 = [(_DKHistogramQuery *)self _histogramFromValueCounts:v62];
    }

    else
    {
      v60 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = [(_DKHistogramQuery *)self stream];
        *buf = 138412290;
        v78 = v61;
        _os_log_impl(&dword_191750000, v60, OS_LOG_TYPE_DEFAULT, "Fetching events for histogram query for stream: %@", buf, 0xCu);
      }

      v71 = 0;
      v62 = [v67 executeUsingCoreDataStorage:v7 error:&v71];
      v14 = v71;
      v63 = [(_DKHistogramQuery *)self _histogramFromEvents:v62];
    }

    v15 = v63;

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (![(_DKHistogramQuery *)self includeRemoteResults])
  {
    v17 = 0;
    if (!a4)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v16 = objc_autoreleasePoolPush();
  v70 = v14;
  v17 = [(_DKHistogramQuery *)self _fetchRemoteResultsWithStorage:v7 error:&v70];
  v18 = v70;

  objc_autoreleasePoolPop(v16);
  v14 = v18;
  if (a4)
  {
LABEL_22:
    v23 = v14;
    *a4 = v14;
  }

LABEL_23:
  if ([(_DKHistogramQuery *)self includeLocalResults]&& [(_DKHistogramQuery *)self includeRemoteResults])
  {
    [v15 addHistogram:v17];
    _cdknowledge_signpost_query_end(0, 0);
    v24 = v15;
  }

  else
  {
    v25 = [(_DKHistogramQuery *)self includeRemoteResults];
    _cdknowledge_signpost_query_end(0, 0);
    if (v25)
    {
      v24 = v17;
    }

    else
    {
      v24 = v15;
    }
  }

  v26 = v24;

LABEL_36:
  v30 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)handleResults:(id)a3 error:(id)a4
{
  v6 = a3;
  histogramHandler = self->_histogramHandler;
  if (histogramHandler)
  {
    histogramHandler[2](histogramHandler, self, v6, a4);
  }

  return v6;
}

- (void)_defaultValueKeyPaths
{
  if (result)
  {
    v1 = [result stream];
    v2 = [v1 eventValueType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      return &unk_1F05EF518;
    }

    else
    {
      return &unk_1F05EF530;
    }
  }

  return result;
}

- (void)setStream:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 40);
  }
}

- (void)setInterval:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 48);
  }
}

+ (id)histogramQueryForPersistedHistogramsForStream:(id)a3 withCustomIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [(_DKHistogramQuery *)v8 setStream:v7];

  [(_DKHistogramQuery *)v8 setCustomIdentifier:v6];
  [v8 setIncludeLocalResults:0];

  return v8;
}

- (void)setCustomIdentifier:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 64);
  }
}

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(_DKHistogramQuery *)self stream];
  if (self)
  {
    customIdentifier = self->_customIdentifier;
  }

  else
  {
    customIdentifier = 0;
  }

  v7 = customIdentifier;
  v8 = [(_DKHistogramQuery *)self interval];
  v9 = [(_DKHistogramQuery *)self predicate];
  v10 = [(_DKHistogramQuery *)self valueKeyPaths];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_DKHistogramQuery includeLocalResults](self, "includeLocalResults")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_DKHistogramQuery includeRemoteResults](self, "includeRemoteResults")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_DKHistogramQuery remoteHistogramLimit](self, "remoteHistogramLimit")}];
  v14 = [v16 stringWithFormat:@"%@:{stream=%@ customIdentifier=%@; interval=%@; predicate=%@; valueKeyPaths=%@; includeLocalResults=%@; includeRemoteResults=%@; remoteHistogramLimit=%@}", v4, v5, v7, v8, v9, v10, v11, v12, v13];;

  return v14;
}

- (_DKHistogram)_histogramFromValueCounts:(_DKHistogram *)a1
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v55 = [v3 count];
      _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_INFO, "Generating histogram from %lu entries.", buf, 0xCu);
    }

    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v38 = v3;
    obj = v3;
    v42 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v42)
    {
      v40 = v5;
      v41 = *v49;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v49 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v48 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"count"];
          v9 = [v7 mutableCopy];
          [v9 removeObjectForKey:@"count"];
          if ([v9 count])
          {
            v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v43 = v9;
            v11 = v9;
            v12 = [v11 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (v12)
            {
              v13 = v12;
              v5 = *v45;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v45 != v5)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v8 = *(*(&v44 + 1) + 8 * j);
                  v15 = [_DKEvent keyPathForMOKeyPath:v8];
                  v16 = [v11 objectForKeyedSubscript:v8];
                  if (v15)
                  {
                    v17 = v15;
                  }

                  else
                  {
                    v17 = v8;
                  }

                  [v10 setObject:v16 forKeyedSubscript:v17];
                }

                v13 = [v11 countByEnumeratingWithState:&v44 objects:v52 count:16];
              }

              while (v13);
            }

            v18 = [v10 count];
            if (v18 == 1)
            {
              v26 = [v10 allValues];
              v27 = [v26 firstObject];
              [OUTLINED_FUNCTION_2_16(v27 v28];
            }

            else
            {
              [OUTLINED_FUNCTION_2_16(v18 v19];
            }

            v9 = v43;
          }
        }

        v42 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v42);
    }

    if ([v5 count])
    {
      a1 = [[_DKHistogram alloc] initWithHistogram:v5];
    }

    else
    {
      a1 = 0;
    }

    v3 = v38;
  }

  v35 = *MEMORY[0x1E69E9840];

  return a1;
}

- (id)_valueForEvent:(void *)a1
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 valueKeyPaths];
    v5 = [v4 count];

    if (v5 == 1)
    {
      v6 = [a1 valueKeyPaths];
      v7 = [v6 firstObject];
      a1 = [v3 valueForKeyPath:v7];
    }

    else
    {
      v8 = MEMORY[0x1E695DF90];
      v9 = [a1 valueKeyPaths];
      v6 = [v8 dictionaryWithCapacity:{objc_msgSend(v9, "count")}];

      v27 = 0u;
      v28 = 0;
      v10 = [a1 valueKeyPaths];
      OUTLINED_FUNCTION_36();
      v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
      if (v12)
      {
        v20 = v12;
        do
        {
          v21 = 0;
          do
          {
            OUTLINED_FUNCTION_1_20(v12, v13, v14, v15, v16, v17, v18, v19, v27, *(&v27 + 1), v28);
            if (!v22)
            {
              objc_enumerationMutation(v10);
            }

            v23 = *(*(&v27 + 1) + 8 * v21);
            v24 = [v3 valueForKeyPath:v23];
            [v6 setObject:v24 forKeyedSubscript:v23];

            ++v21;
          }

          while (v20 != v21);
          OUTLINED_FUNCTION_36();
          v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
          v20 = v12;
        }

        while (v12);
      }

      a1 = [v6 copy];
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return a1;
}

- (_DKHistogram)_histogramFromEvents:(_DKHistogram *)a1
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v28 = [v3 count];
      _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_INFO, "Generating histogram from %lu events.", buf, 0xCu);
    }

    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v15 = v7;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          OUTLINED_FUNCTION_1_20(v7, v8, v9, v10, v11, v12, v13, v14, v22, *(&v22 + 1), v23);
          if (!v18)
          {
            objc_enumerationMutation(v6);
          }

          v19 = [(_DKHistogramQuery *)a1 _valueForEvent:?];
          [v5 addObject:v19];

          ++v17;
        }

        while (v15 != v17);
        v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v15 = v7;
      }

      while (v7);
    }

    if ([v5 count])
    {
      a1 = [[_DKHistogram alloc] initWithValues:v5];
    }

    else
    {
      a1 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return a1;
}

- (void)_constructFetchRequestPredicate
{
  v1 = a1;
  if (a1)
  {
    if (a1[8])
    {
      v2 = MEMORY[0x1E696AE18];
      v3 = [a1 stream];
      v4 = [v3 name];
      v5 = MEMORY[0x1E696AD98];
      v6 = [v1 stream];
      v7 = [v6 eventValueType];
      v8 = [v5 numberWithInteger:{objc_msgSend(v7, "typeCode")}];
      v1 = [v2 predicateWithFormat:@"streamName == %@ && streamTypeCode == %@ && customIdentifier == %@", v4, v8, v1[8]];
LABEL_6:

      goto LABEL_7;
    }

    v9 = [a1 interval];

    if (v9)
    {
      v16 = MEMORY[0x1E696AE18];
      v3 = [v1 stream];
      v4 = [v3 name];
      v10 = MEMORY[0x1E696AD98];
      v6 = [v1 stream];
      v7 = [v6 eventValueType];
      v8 = [v10 numberWithInteger:{objc_msgSend(v7, "typeCode")}];
      v11 = [v1 interval];
      v12 = [v11 startDate];
      v13 = [v1 interval];
      v14 = [v13 endDate];
      v1 = [v16 predicateWithFormat:@"streamName == %@ && streamTypeCode == %@ && startDate >= %@ && startDate <= %@", v4, v8, v12, v14];

      goto LABEL_6;
    }

    v1 = 0;
  }

LABEL_7:

  return v1;
}

- (_DKHistogram)_histogramFromManagedObjects:(_DKHistogram *)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    a1 = objc_alloc_init(_DKHistogram);
    v20 = 0u;
    v21 = 0;
    v4 = v3;
    OUTLINED_FUNCTION_36();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v14 = v6;
      do
      {
        v15 = 0;
        do
        {
          OUTLINED_FUNCTION_1_20(v6, v7, v8, v9, v10, v11, v12, v13, v20, *(&v20 + 1), v21);
          if (!v16)
          {
            objc_enumerationMutation(v4);
          }

          v17 = [[_DKHistogram alloc] initWithManagedObject:*(*(&v20 + 1) + 8 * v15)];
          if (v17)
          {
            [(_DKHistogram *)a1 addHistogram:v17];
          }

          ++v15;
        }

        while (v14 != v15);
        OUTLINED_FUNCTION_36();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
        v14 = v6;
      }

      while (v6);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return a1;
}

- (void)executeUsingCoreDataStorage:(void *)a1 error:.cold.2(void *a1)
{
  v2 = [(_DKHistogramQuery *)a1 _defaultValueKeyPaths];
  [a1 setValueKeyPaths:v2];
}

@end