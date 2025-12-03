@interface _CDSpotlightIntentIndexerDataSource
- (_CDSpotlightIntentIndexerDataSource)initWithKnowledgeStore:(id)store;
- (id)bundleIDToSearchableItemsDictionaryFromEvents:(id)events;
@end

@implementation _CDSpotlightIntentIndexerDataSource

- (_CDSpotlightIntentIndexerDataSource)initWithKnowledgeStore:(id)store
{
  storeCopy = store;
  v5 = +[_DKSystemEventStreams appIntentsStream];
  v8.receiver = self;
  v8.super_class = _CDSpotlightIntentIndexerDataSource;
  v6 = [(_CDSpotlightEventIndexerDataSource *)&v8 initWithKnowledgeStore:storeCopy eventStream:v5];

  return v6;
}

- (id)bundleIDToSearchableItemsDictionaryFromEvents:(id)events
{
  v26 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = eventsCopy;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [eventsCopy reverseObjectEnumerator];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        interaction = [v8 interaction];
        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(interaction, "_indexingHash")}];
        if (([v4 containsObject:v11] & 1) == 0)
        {
          v12 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v24 = v8;
            _os_log_debug_impl(&dword_191750000, v12, OS_LOG_TYPE_DEBUG, "[Spotlight Indexer] Skipping indexing event into Spotlight because CDSpotlightIntentIndexerIntentShouldBeIndexed says so: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v5);
  }

  v13 = [v16 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end