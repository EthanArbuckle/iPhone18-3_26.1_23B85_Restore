@interface _CDSpotlightEventIndexerDataSource
- (_CDSpotlightEventIndexerDataSource)initWithKnowledgeStore:(id)store eventStream:(id)stream;
- (id)bundleIDToSearchableItemsDictionaryFromEvents:(id)events;
- (id)bundleIDToSearchableItemsDictionaryWithCreationDateInInterval:(id)interval limit:(int64_t)limit nextBatch:(BOOL *)batch latestCreationDate:(id *)date error:(id *)error;
- (id)earliestEventCreationDateWithError:(id *)error;
- (id)searchableItemIdentifiersForTombstonedEventsInInterval:(id)interval latestTombstoneDate:(id *)date error:(id *)error;
- (id)searchableItemUniqueIdentifierWithDomain:(id)domain indexingIdentifier:(id)identifier;
@end

@implementation _CDSpotlightEventIndexerDataSource

- (_CDSpotlightEventIndexerDataSource)initWithKnowledgeStore:(id)store eventStream:(id)stream
{
  storeCopy = store;
  streamCopy = stream;
  v12.receiver = self;
  v12.super_class = _CDSpotlightEventIndexerDataSource;
  v9 = [(_CDSpotlightEventIndexerDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_knowledgeStore, store);
    objc_storeStrong(&v10->_stream, stream);
  }

  return v10;
}

- (id)earliestEventCreationDateWithError:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEB0];
  v6 = NSStringFromSelector(sel_creationDate);
  v7 = [v5 sortDescriptorWithKey:v6 ascending:1];

  stream = [(_CDSpotlightEventIndexerDataSource *)self stream];
  v27[0] = stream;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v26 = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v11 = [_DKEventQuery eventQueryWithPredicate:0 eventStreams:v9 offset:0 limit:1 sortDescriptors:v10];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_CDSpotlightEventIndexerDataSource.m"];
  v13 = [v12 stringByAppendingFormat:@":%d", 51];
  [v11 setClientName:v13];

  [v11 setTracker:&__block_literal_global_22];
  [v11 setReadMetadata:0];
  knowledgeStore = [(_CDSpotlightEventIndexerDataSource *)self knowledgeStore];
  v25 = 0;
  v15 = [knowledgeStore executeQuery:v11 error:&v25];
  v16 = v25;

  if (error)
  {
    v17 = v16;
    *error = v16;
  }

  if (v15)
  {
    firstObject = [v15 firstObject];
    creationDate = [firstObject creationDate];
    v20 = creationDate;
    if (creationDate)
    {
      distantPast = creationDate;
    }

    else
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
    }

    v22 = distantPast;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)searchableItemUniqueIdentifierWithDomain:(id)domain indexingIdentifier:(id)identifier
{
  domainCopy = domain;
  identifierCopy = identifier;
  if (!domainCopy)
  {
LABEL_6:
    identifierCopy = 0;
    goto LABEL_7;
  }

  v7 = [domainCopy length];
  identifierCopy = 0;
  if (identifierCopy && v7)
  {
    if ([identifierCopy length])
    {
      identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreduet.%@.%@", domainCopy, identifierCopy];
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:

  return identifierCopy;
}

- (id)searchableItemIdentifiersForTombstonedEventsInInterval:(id)interval latestTombstoneDate:(id *)date error:(id *)error
{
  v54[2] = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  v8 = +[_DKTombstoneMetadataKey eventStreamName];
  stream = [(_CDSpotlightEventIndexerDataSource *)self stream];
  name = [stream name];
  v11 = [_DKQuery predicateForObjectsWithMetadataKey:v8 andStringValue:name];

  startDate = [intervalCopy startDate];
  v45 = intervalCopy;
  endDate = [intervalCopy endDate];
  v14 = [_DKQuery predicateForEventsWithCreationInDateRangeFromAfter:startDate to:endDate];

  v44 = v11;
  v54[0] = v11;
  v54[1] = v14;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v15 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:?];
  v16 = MEMORY[0x1E696AEB0];
  v17 = NSStringFromSelector(sel_creationDate);
  v18 = [v16 sortDescriptorWithKey:v17 ascending:1];

  v19 = +[_DKSystemEventStreams tombstoneStream];
  v53 = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v52 = v18;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  v42 = v15;
  v22 = [_DKEventQuery eventQueryWithPredicate:v15 eventStreams:v20 offset:0 limit:0 sortDescriptors:v21];

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_CDSpotlightEventIndexerDataSource.m"];
  v24 = [v23 stringByAppendingFormat:@":%d", 96];
  [v22 setClientName:v24];

  [v22 setTracker:&__block_literal_global_17];
  [v22 setReadMetadata:0];
  knowledgeStore = [(_CDSpotlightEventIndexerDataSource *)self knowledgeStore];
  v50 = 0;
  v26 = [knowledgeStore executeQuery:v22 error:&v50];
  v27 = v50;

  if (error)
  {
    v28 = v27;
    *error = v27;
  }

  if (v26)
  {
    v40 = v14;
    lastObject = [v26 lastObject];
    *date = [lastObject creationDate];

    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v26, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v31 = v26;
    v32 = [v31 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v47;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(v31);
          }

          stringValue = [*(*(&v46 + 1) + 8 * i) stringValue];
          if (stringValue)
          {
            [v30 addObject:stringValue];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v33);
    }

    v37 = [v30 copy];
    v14 = v40;
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)bundleIDToSearchableItemsDictionaryWithCreationDateInInterval:(id)interval limit:(int64_t)limit nextBatch:(BOOL *)batch latestCreationDate:(id *)date error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v14 = [_DKQuery predicateForEventsWithCreationInDateRangeFromAfter:startDate to:endDate];

  v15 = MEMORY[0x1E696AEB0];
  v16 = NSStringFromSelector(sel_creationDate);
  v17 = [v15 sortDescriptorWithKey:v16 ascending:1];

  stream = [(_CDSpotlightEventIndexerDataSource *)self stream];
  v35[0] = stream;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v34 = v17;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v21 = [_DKEventQuery eventQueryWithPredicate:v14 eventStreams:v19 offset:0 limit:limit sortDescriptors:v20];

  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_CDSpotlightEventIndexerDataSource.m"];
  v23 = [v22 stringByAppendingFormat:@":%d", 131];
  [v21 setClientName:v23];

  [v21 setTracker:&__block_literal_global_20_0];
  knowledgeStore = [(_CDSpotlightEventIndexerDataSource *)self knowledgeStore];
  v33 = 0;
  v25 = [knowledgeStore executeQuery:v21 error:&v33];
  v26 = v33;

  if (error)
  {
    v27 = v26;
    *error = v26;
  }

  if (v25)
  {
    lastObject = [v25 lastObject];
    *date = [lastObject creationDate];

    *batch = [v25 count] == limit;
    v29 = [(_CDSpotlightEventIndexerDataSource *)self bundleIDToSearchableItemsDictionaryFromEvents:v25];
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)bundleIDToSearchableItemsDictionaryFromEvents:(id)events
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"%@ is an abstract class, subclasses must override %@", v6, v7}];

  return 0;
}

@end