@interface _DKBiomeQuery
+ (BOOL)canShimDuetStreamNamed:(id)named;
+ (id)biomeExclusiveStreamsFromEventStreams:(id)streams;
+ (id)deletionPredicateFromArray:(id)array;
+ (id)duetExclusiveStreamsFromEventStreams:(id)streams;
+ (id)eventStreamsFromArray:(id)array;
+ (id)eventStreamsFromPredicate:(id)predicate;
- (BOOL)prepareQuery:(id *)query;
- (_DKBiomeQuery)initWithDKEventQuery:(id)query;
- (_DKBiomeQuery)initWithDeletionArray:(id)array;
- (_DKBiomeQuery)initWithDeletionPredicate:(id)predicate;
- (_DKBiomeQuery)initWithEventStreams:(id)streams predicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset sortDescriptors:(id)descriptors resultType:(int64_t)type groupByProperties:(id)properties returnDistinctResults:(BOOL)self0 readMetadata:(BOOL)self1 excludedMetadataKeys:(id)self2;
- (id)_getCachedStreamForBiomeStreamIdentifier:(id)identifier;
- (id)_publisherForQueryReturningIndividualResults:(BOOL)results error:(id *)error;
- (id)_publisherForStreams:(id)streams;
- (id)bmdkEventStreams;
- (id)executeBiomeQueryError:(id *)error;
- (id)filterExcludedMetadataWithDKEvent:(id)event;
- (unint64_t)executeDeletionQuery:(id *)query;
- (void)_setBiomeStreamWithBlock:(id)block;
@end

@implementation _DKBiomeQuery

- (id)bmdkEventStreams
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_eventStreamNames;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v6 = *v26;
    v15 = v18;
    *&v5 = 138412290;
    v14 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = [getBMDKEventStreamClass() streamNameFromDKStreamName:v8];
        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy__19;
        v23 = __Block_byref_object_dispose__19;
        v24 = [(_DKBiomeQuery *)self _getCachedStreamForBiomeStreamIdentifier:v9];
        if (v20[5] || (v17[0] = MEMORY[0x1E69E9820], v17[1] = 3221225472, v18[0] = __33___DKBiomeQuery_bmdkEventStreams__block_invoke, v18[1] = &unk_1E736A1D8, v18[2] = v8, v18[3] = &v19, [(_DKBiomeQuery *)self _setBiomeStreamWithBlock:v17], v20[5]))
        {
          [v3 addObject:{v14, v15}];
        }

        else
        {
          v10 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = v14;
            v30 = v8;
            _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_INFO, "[Storage][Biome] Skipping Biome stream for DK stream %@", buf, 0xCu);
          }
        }

        _Block_object_dispose(&v19, 8);

        ++v7;
      }

      while (v4 != v7);
      v11 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      v4 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (_DKBiomeQuery)initWithDKEventQuery:(id)query
{
  queryCopy = query;
  explicitEventStreamsOrEventStreamsInPredicate = [queryCopy explicitEventStreamsOrEventStreamsInPredicate];
  v19 = [_DKBiomeQuery biomeExclusiveStreamsFromEventStreams:explicitEventStreamsOrEventStreamsInPredicate];

  predicate = [queryCopy predicate];
  limit = [queryCopy limit];
  offset = [queryCopy offset];
  sortDescriptors = [queryCopy sortDescriptors];
  resultType = [queryCopy resultType];
  groupByProperties = [queryCopy groupByProperties];
  returnsDistinctResults = [queryCopy returnsDistinctResults];
  readMetadata = [queryCopy readMetadata];
  v12 = MEMORY[0x1E695DFD8];
  excludedMetadataKeys = [queryCopy excludedMetadataKeys];

  v14 = [v12 setWithArray:excludedMetadataKeys];
  BYTE1(v17) = readMetadata;
  LOBYTE(v17) = returnsDistinctResults;
  v15 = [(_DKBiomeQuery *)self initWithEventStreams:v19 predicate:predicate limit:limit offset:offset sortDescriptors:sortDescriptors resultType:resultType groupByProperties:groupByProperties returnDistinctResults:v17 readMetadata:v14 excludedMetadataKeys:?];

  return v15;
}

- (_DKBiomeQuery)initWithEventStreams:(id)streams predicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset sortDescriptors:(id)descriptors resultType:(int64_t)type groupByProperties:(id)properties returnDistinctResults:(BOOL)self0 readMetadata:(BOOL)self1 excludedMetadataKeys:(id)self2
{
  keysCopy4 = keys;
  propertiesCopy3 = properties;
  v67 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  propertiesCopy2 = properties;
  keysCopy2 = keys;
  if (![streamsCopy count])
  {
    v23 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [_DKBiomeQuery initWithEventStreams:predicateCopy predicate:v23 limit:? offset:? sortDescriptors:? resultType:? groupByProperties:? returnDistinctResults:? readMetadata:? excludedMetadataKeys:?];
    }

    propertiesCopy3 = properties;
  }

  v63.receiver = self;
  v63.super_class = _DKBiomeQuery;
  v24 = [(_DKBiomeQuery *)&v63 init];
  if (v24)
  {
    obj = descriptors;
    v25 = [streamsCopy valueForKeyPath:@"@distinctUnionOfObjects.name"];
    eventStreamNames = v24->_eventStreamNames;
    v56 = v24;
    v24->_eventStreamNames = v25;

    if (AnalyticsIsEventUsed())
    {
      v49 = propertiesCopy2;
      limitCopy = limit;
      offsetCopy = offset;
      v52 = propertiesCopy3;
      v53 = predicateCopy;
      v54 = streamsCopy;
      v27 = _CDCurrentOrXPCProcessName();
      v28 = v27;
      v29 = @"unknown";
      if (v27)
      {
        v29 = v27;
      }

      v30 = v29;

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v31 = v56->_eventStreamNames;
      v32 = [(NSArray *)v31 countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v60;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v60 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v59 + 1) + 8 * i);
            v64[0] = @"client";
            v64[1] = @"stream";
            v65[0] = v30;
            v65[1] = v36;
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:{2, v49, limitCopy, offsetCopy, v52, v53, v54}];
            AnalyticsSendEvent();
          }

          v33 = [(NSArray *)v31 countByEnumeratingWithState:&v59 objects:v66 count:16];
        }

        while (v33);
      }

      predicateCopy = v53;
      streamsCopy = v54;
      keysCopy4 = keys;
      offset = offsetCopy;
      propertiesCopy3 = v52;
      propertiesCopy2 = v49;
      limit = limitCopy;
    }

    resultsCopy2 = results;
    if (!predicateCopy)
    {
      goto LABEL_19;
    }

    [MEMORY[0x1E696AE18] predicateWithValue:1];
    v39 = propertiesCopy2;
    limitCopy2 = limit;
    v42 = v41 = offset;
    v43 = [predicateCopy isEqual:v42];

    offset = v41;
    limit = limitCopy2;
    propertiesCopy2 = v39;
    resultsCopy2 = results;
    keysCopy4 = keys;
    if ((v43 & 1) == 0)
    {
      v45 = predicateCopy;
      v24 = v56;
      predicate = v56->_predicate;
      v56->_predicate = v45;
    }

    else
    {
LABEL_19:
      v24 = v56;
      predicate = v56->_predicate;
      v56->_predicate = 0;
    }

    if (limit <= 0x7FFFFFFE)
    {
      limitCopy3 = limit;
    }

    else
    {
      limitCopy3 = 0;
    }

    v24->_limit = limitCopy3;
    v24->_offset = offset;
    objc_storeStrong(&v24->_sortDescriptors, obj);
    v24->_resultType = type;
    objc_storeStrong(&v24->_groupByProperties, propertiesCopy3);
    v24->_returnDistinctResults = resultsCopy2;
    v24->_readMetadata = metadata;
    objc_storeStrong(&v24->_excludedMetadataKeys, keysCopy4);
  }

  v47 = *MEMORY[0x1E69E9840];
  return v24;
}

- (_DKBiomeQuery)initWithDeletionArray:(id)array
{
  arrayCopy = array;
  v5 = [_DKBiomeQuery eventStreamsFromArray:arrayCopy];
  if ([v5 count])
  {
    v6 = [_DKBiomeQuery biomeExclusiveStreamsFromEventStreams:v5];

    if ([v6 count])
    {
      v7 = [_DKBiomeQuery deletionPredicateFromArray:arrayCopy];
      LOWORD(v12) = 0;
      self = -[_DKBiomeQuery initWithEventStreams:predicate:limit:offset:sortDescriptors:resultType:groupByProperties:returnDistinctResults:readMetadata:excludedMetadataKeys:](self, "initWithEventStreams:predicate:limit:offset:sortDescriptors:resultType:groupByProperties:returnDistinctResults:readMetadata:excludedMetadataKeys:", v6, v7, [arrayCopy count], 0, 0, 0, 0, v12, 0);

      v5 = v6;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
      v5 = v6;
    }
  }

  else
  {
    v9 = _CDCurrentOrXPCProcessName();
    v10 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(_DKBiomeQuery *)v9 initWithDeletionArray:arrayCopy];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (_DKBiomeQuery)initWithDeletionPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [_DKBiomePredicateScanner searchForKeys:&unk_1F05EF608 inPredicate:predicateCopy];

  v6 = [_DKBiomeQuery eventStreamsFromPredicate:predicateCopy];
  if ([v6 count])
  {
    v7 = [_DKBiomeQuery biomeExclusiveStreamsFromEventStreams:v6];

    if ([v7 count])
    {
      LOBYTE(v12) = 0;
      BYTE1(v12) = v5 != 0;
      self = [(_DKBiomeQuery *)self initWithEventStreams:v7 predicate:predicateCopy limit:0 offset:0 sortDescriptors:0 resultType:0 groupByProperties:0 returnDistinctResults:v12 readMetadata:0 excludedMetadataKeys:?];
      v6 = v7;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
      v6 = v7;
    }
  }

  else
  {
    v9 = _CDCurrentOrXPCProcessName();
    v10 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(_DKBiomeQuery *)v9 initWithDeletionPredicate:predicateCopy];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (BOOL)canShimDuetStreamNamed:(id)named
{
  namedCopy = named;
  if (namedCopy && ([&unk_1F05EF620 containsObject:namedCopy] & 1) == 0)
  {
    v4 = [namedCopy containsString:@"knowledge-sync"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)biomeExclusiveStreamsFromEventStreams:(id)streams
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55___DKBiomeQuery_biomeExclusiveStreamsFromEventStreams___block_invoke;
  v5[3] = &__block_descriptor_40_e24_B16__0___DKEventStream_8l;
  v5[4] = self;
  v3 = [streams _pas_filteredArrayWithTest:v5];

  return v3;
}

+ (id)duetExclusiveStreamsFromEventStreams:(id)streams
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___DKBiomeQuery_duetExclusiveStreamsFromEventStreams___block_invoke;
  v5[3] = &__block_descriptor_40_e24_B16__0___DKEventStream_8l;
  v5[4] = self;
  v3 = [streams _pas_filteredArrayWithTest:v5];

  return v3;
}

+ (id)eventStreamsFromArray:(id)array
{
  v28 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy)
  {
    if ([arrayCopy count])
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v21 = v4;
        v9 = 0;
        v10 = *v23;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v22 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
              stream = [v13 stream];
              name = [stream name];

              if (name)
              {
                stream2 = [v13 stream];
                [v5 setObject:stream2 forKeyedSubscript:name];
              }
            }

            else
            {
              v9 = 1;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v8);

        v4 = v21;
        if ((v9 & 1) == 0)
        {
          goto LABEL_19;
        }

        v6 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [_DKBiomeQuery eventStreamsFromArray:v6];
        }
      }

LABEL_19:
      allValues = [v5 allValues];
      goto LABEL_26;
    }

    v5 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v18 = "[Storage][Biome] Unable to initialize Biome deletion query with empty array";
      goto LABEL_24;
    }
  }

  else
  {
    v5 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v18 = "[Storage][Biome] Unable to initialize Biome deletion query with nil array";
LABEL_24:
      _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, v18, buf, 2u);
    }
  }

  allValues = 0;
LABEL_26:

  v19 = *MEMORY[0x1E69E9840];

  return allValues;
}

+ (id)deletionPredicateFromArray:(id)array
{
  arrayCopy = array;
  v4 = objc_autoreleasePoolPush();
  v5 = [arrayCopy valueForKey:@"UUID"];
  v6 = [v5 copy];

  v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_65];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v7];

  objc_autoreleasePoolPop(v4);

  return v8;
}

+ (id)eventStreamsFromPredicate:(id)predicate
{
  v18 = *MEMORY[0x1E69E9840];
  if (predicate)
  {
    v3 = [_DKBiomePredicateValueScanner searchForValuesForKey:@"streamName" inPredicate:predicate];
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [_DKEventStream eventStreamWithName:*(*(&v13 + 1) + 8 * i), v13];
          if (v10)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)prepareQuery:(id *)query
{
  v54[1] = *MEMORY[0x1E69E9840];
  predicate = self->_predicate;
  v50 = 0;
  v6 = [_DKPredicateValidator validatePredicate:predicate allowedKeys:0 error:&v50];
  v7 = v50;
  v8 = v7;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (!query || v9)
  {
    if (self->_resultType == 6)
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"endDate" ascending:0];
      v54[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
      sortDescriptors = self->_sortDescriptors;
      self->_sortDescriptors = v13;
    }

    v44 = v8;
    [(NSPredicate *)self->_predicate allowEvaluation];
    if ([_DKPredicateValidator validateSortDescriptors:self->_sortDescriptors])
    {
      context = objc_autoreleasePoolPush();
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_sortDescriptors, "count")}];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = self->_sortDescriptors;
      v16 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v47;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v47 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v46 + 1) + 8 * i);
            v21 = [v20 key];
            v22 = [_DKEvent keyPathForMOKeyPath:v21];

            if (v22 && ([v20 key], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqual:", v23), v23, !v24))
            {
              comparator = [v20 comparator];

              if (comparator)
              {
                v26 = MEMORY[0x1E696AEB0];
                ascending = [v20 ascending];
                comparator2 = [v20 comparator];
                v29 = [v26 sortDescriptorWithKey:v22 ascending:ascending comparator:comparator2];
              }

              else
              {
                selector = [v20 selector];
                v31 = MEMORY[0x1E696AEB0];
                ascending2 = [v20 ascending];
                if (selector)
                {
                  [v31 sortDescriptorWithKey:v22 ascending:ascending2 selector:{objc_msgSend(v20, "selector")}];
                }

                else
                {
                  [v31 sortDescriptorWithKey:v22 ascending:ascending2];
                }
                v29 = ;
              }

              [(NSArray *)v15 addObject:v29];
              [v29 allowEvaluation];
            }

            else
            {
              [(NSArray *)v15 addObject:v20];
              [v20 allowEvaluation];
            }
          }

          v17 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v53 count:16];
        }

        while (v17);
      }

      v33 = self->_sortDescriptors;
      self->_sortDescriptors = v15;

      objc_autoreleasePoolPop(context);
      v11 = 1;
    }

    else
    {
      v34 = MEMORY[0x1E696ABC0];
      v51 = *MEMORY[0x1E696A578];
      v35 = MEMORY[0x1E696AEC0];
      v36 = [(NSArray *)self->_sortDescriptors valueForKey:@"key"];
      v37 = [v35 stringWithFormat:@"invalid sort descriptors %@", v36];
      v52 = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v39 = [v34 errorWithDomain:@"BMQueryErrorDomain" code:3 userInfo:v38];

      if (query)
      {
        v40 = v39;
        *query = v39;
      }

      v11 = 0;
    }

    v8 = v44;
  }

  else
  {
    v10 = v7;
    v11 = 0;
    *query = v8;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_publisherForStreams:(id)streams
{
  v55 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  if ([streamsCopy count] < 2)
  {
    if (self->_offset || self->_limit - 1 > 0x7FFFFFFD || self->_predicate || -[NSArray count](self->_sortDescriptors, "count") && (-[NSArray count](self->_sortDescriptors, "count") != 1 || (-[NSArray firstObject](self->_sortDescriptors, "firstObject"), v36 = objc_claimAutoreleasedReturnValue(), [v36 key], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "isEqualToString:", @"creationDate"), v37, v36, !v38)))
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      firstObject = [(NSArray *)self->_sortDescriptors firstObject];
      if (firstObject && (v40 = firstObject, -[NSArray firstObject](self->_sortDescriptors, "firstObject"), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v41 ascending], v41, v40, !v42))
      {
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_limit];
        v16 = 0;
      }

      else
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_limit];
        v15 = 0;
      }

      sortDescriptors = self->_sortDescriptors;
      self->_sortDescriptors = MEMORY[0x1E695E0F0];

      self->_limit = 0;
    }

    firstObject2 = [streamsCopy firstObject];
    v14 = [firstObject2 publisherWithStartTime:0 endTime:0 maxEvents:v16 lastN:v15 reversed:0];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v6 = streamsCopy;
    v7 = [v6 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v51;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v51 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v50 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [v11 publisherWithStartTime:0 endTime:0 maxEvents:0 lastN:0 reversed:0];
          if (v13)
          {
            [v5 addObject:v13];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v8);
    }

    v14 = [objc_alloc(MEMORY[0x1E698F0D0]) initWithPublishers:v5];
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __38___DKBiomeQuery__publisherForStreams___block_invoke;
  v49[3] = &unk_1E736A0D8;
  v49[4] = self;
  v18 = [v14 mapWithTransform:v49];

  if (self->_predicate)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __38___DKBiomeQuery__publisherForStreams___block_invoke_2;
    v48[3] = &unk_1E736A100;
    v48[4] = self;
    v19 = [v18 filterWithIsIncluded:v48];

    v18 = v19;
  }

  v20 = objc_autoreleasePoolPush();
  resultType = self->_resultType;
  if ((resultType - 3) >= 4)
  {
    if (resultType == 2)
    {
      v29 = [v18 mapWithTransform:&__block_literal_global_642];
    }

    else
    {
      if (resultType != 1)
      {
LABEL_34:
        objc_autoreleasePoolPop(v20);
        v27 = v18;
        goto LABEL_35;
      }

      v29 = [v18 reduceWithInitial:&unk_1F05EEE50 nextPartialResult:&__block_literal_global_638];
    }

    v33 = v29;

    v18 = v33;
    goto LABEL_34;
  }

  groupByProperties = self->_groupByProperties;
  if (!groupByProperties)
  {
    groupByProperties = &unk_1F05EF638;
  }

  v23 = groupByProperties;
  v24 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v23];
  v25 = v24;
  if (self->_resultType == 6)
  {
    [v24 addObject:@"endDate"];
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __38___DKBiomeQuery__publisherForStreams___block_invoke_3;
  v45[3] = &unk_1E736A168;
  v26 = v25;
  v46 = v26;
  selfCopy = self;
  v27 = [v18 mapWithTransform:v45];

  if (self->_resultType == 5)
  {
    v28 = 0;
  }

  else
  {
    v28 = [v27 groupByKey:&__block_literal_global_665];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __38___DKBiomeQuery__publisherForStreams___block_invoke_5;
    v44[3] = &unk_1E736A190;
    v44[4] = self;
    v30 = [v28 aggregateWithInitial:MEMORY[0x1E695E0F8] nextPartialResult:v44];
    v31 = [v30 flatMapWithTransform:&__block_literal_global_672];

    v27 = v31;
  }

  objc_autoreleasePoolPop(v20);
  if (v28)
  {
    v32 = objc_autoreleasePoolPush();
    [v28 connect];
    objc_autoreleasePoolPop(v32);
  }

LABEL_35:

  v34 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)filterExcludedMetadataWithDKEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  metadata = [eventCopy metadata];
  if (metadata)
  {
    v6 = metadata;
    metadata2 = [eventCopy metadata];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      metadata3 = [eventCopy metadata];
      v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(metadata3, "count")}];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = metadata3;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            if (![(NSSet *)self->_excludedMetadataKeys containsObject:v16, v20])
            {
              v17 = [v11 objectForKeyedSubscript:v16];
              [v10 setObject:v17 forKeyedSubscript:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      [eventCopy setMetadata:v10];
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return eventCopy;
}

- (void)_setBiomeStreamWithBlock:(id)block
{
  if (block)
  {
    v3 = (*(block + 2))(block, a2);
    if (v3)
    {
      v6 = v3;
      v4 = +[_DKBiomeStreamCache sharedCache];
      identifier = [v6 identifier];
      [v4 setObject:v6 forKey:identifier];

      v3 = v6;
    }
  }
}

- (id)_getCachedStreamForBiomeStreamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[_DKBiomeStreamCache sharedCache];
  v5 = [v4 objectForKey:identifierCopy];

  return v5;
}

- (id)_publisherForQueryReturningIndividualResults:(BOOL)results error:(id *)error
{
  resultsCopy = results;
  if (![(_DKBiomeQuery *)self prepareQuery:error])
  {
    v7 = 0;
    goto LABEL_16;
  }

  bmdkEventStreams = [(_DKBiomeQuery *)self bmdkEventStreams];
  v7 = [(_DKBiomeQuery *)self _publisherForStreams:bmdkEventStreams];

  if ([(NSArray *)self->_sortDescriptors count])
  {
    v8 = objc_opt_new();
    v9 = [v7 reduceWithInitial:v8 nextPartialResult:&__block_literal_global_677];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68___DKBiomeQuery__publisherForQueryReturningIndividualResults_error___block_invoke_2;
    v20[3] = &unk_1E736A220;
    v20[4] = self;
    v7 = [v9 mapWithTransform:v20];

    if (resultsCopy)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __68___DKBiomeQuery__publisherForQueryReturningIndividualResults_error___block_invoke_6;
      v17[3] = &unk_1E736A290;
      v17[4] = self;
      v10 = [v7 flatMapWithTransform:v17];
    }

    else
    {
      if (self->_resultType)
      {
        goto LABEL_16;
      }

      v10 = [v7 mapWithTransform:&__block_literal_global_690_0];
    }

    v15 = v10;

    v7 = v15;
  }

  else
  {
    if (!self->_resultType)
    {
      v11 = [v7 mapWithTransform:&__block_literal_global_681];

      v7 = v11;
    }

    if (self->_offset || self->_limit - 1 <= 0x7FFFFFFD)
    {
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x2020000000;
      v19[3] = 0;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __68___DKBiomeQuery__publisherForQueryReturningIndividualResults_error___block_invoke_4;
      v18[3] = &unk_1E736A268;
      v18[4] = self;
      v18[5] = v19;
      v12 = [v7 filterWithIsIncluded:v18];

      _Block_object_dispose(v19, 8);
      v7 = v12;
    }

    if (!resultsCopy)
    {
      v13 = objc_opt_new();
      v14 = [v7 reduceWithInitial:v13 nextPartialResult:&__block_literal_global_684];

      v7 = v14;
    }
  }

LABEL_16:

  return v7;
}

- (id)executeBiomeQueryError:(id *)error
{
  if ([(_DKBiomeQuery *)self prepareQuery:?])
  {
    v5 = [(_DKBiomeQuery *)self _publisherForQueryReturningIndividualResults:0 error:error];
    v6 = v5;
    if (v5)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x3032000000;
      v14 = __Block_byref_object_copy__19;
      v15 = __Block_byref_object_dispose__19;
      v16 = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __40___DKBiomeQuery_executeBiomeQueryError___block_invoke_697;
      v10[3] = &unk_1E736A2D8;
      v10[4] = &v11;
      v7 = [v5 sinkWithCompletion:&__block_literal_global_696 shouldContinue:v10];
      v8 = v12[5];
      _Block_object_dispose(&v11, 8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)executeDeletionQuery:(id *)query
{
  v47 = *MEMORY[0x1E69E9840];
  if ([(_DKBiomeQuery *)self prepareQuery:?])
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = self->_eventStreamNames;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v4)
    {
      selfCopy = self;
      v24 = 0;
      v5 = *v33;
      v6 = *MEMORY[0x1E696A388];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v33 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v32 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          v28 = 0;
          v29 = &v28;
          v30 = 0x2020000000;
          v31 = 0;
          v10 = [objc_alloc(getBMDKEventStreamClass()) initWithDKStreamIdentifier:v8 contentProtection:v6];
          v11 = v10;
          if (v10)
          {
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __38___DKBiomeQuery_executeDeletionQuery___block_invoke;
            v26[3] = &unk_1E736A300;
            v26[4] = selfCopy;
            v26[5] = &v28;
            v26[6] = &v36;
            v27 = 0;
            [v10 pruneEventsWithError:&v27 predicateBlock:v26];
            v12 = v27;
            if (v12)
            {
              v13 = +[_CDLogging knowledgeChannel];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v41 = v8;
                v42 = 2112;
                v43 = v12;
                _os_log_error_impl(&dword_191750000, v13, OS_LOG_TYPE_ERROR, "[Storage][Biome] Error encountered during deletion for DK stream %@ error:%@", buf, 0x16u);
              }

              if (!v24)
              {
                v24 = v12;
              }
            }

            v37[3] += v29[3];
            v14 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = v37[3];
              v16 = v29[3];
              *buf = 134218498;
              v41 = v15;
              v42 = 2048;
              v43 = v16;
              v44 = 2112;
              v45 = v8;
              _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_INFO, "[Storage][Biome] Deleted a total of %lu events with %lu events from Biome for DK stream %@", buf, 0x20u);
            }
          }

          else
          {
            v12 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v41 = v8;
              _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "[Storage][Biome] Skipping Biome stream during deletion for DK stream %@", buf, 0xCu);
            }
          }

          _Block_object_dispose(&v28, 8);
          objc_autoreleasePoolPop(v9);
        }

        v4 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v4);

      if (query)
      {
        v17 = v24;
        if (v24)
        {
          v18 = v24;
          v17 = v24;
          *query = v24;
        }
      }

      else
      {
        v17 = v24;
      }
    }

    else
    {

      v17 = 0;
    }

    v19 = v37[3];
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)initWithEventStreams:(uint64_t)a1 predicate:(NSObject *)a2 limit:offset:sortDescriptors:resultType:groupByProperties:returnDistinctResults:readMetadata:excludedMetadataKeys:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_191750000, a2, OS_LOG_TYPE_FAULT, "[Storage][Biome] Unable to determine stream list, predicate %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithDeletionArray:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a2 valueForKey:@"class"];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_23(&dword_191750000, v3, v4, "Deletion array does not specify any streams. Client: %@, Array: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithDeletionPredicate:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a2 cd_sanitizeForLogging];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_23(&dword_191750000, v3, v4, "Deletion predicate does not specify any streams. Client: %@, Predicate: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

@end