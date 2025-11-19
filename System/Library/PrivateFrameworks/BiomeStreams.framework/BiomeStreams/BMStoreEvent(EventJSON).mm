@interface BMStoreEvent(EventJSON)
- (id)json;
- (id)jsonDictionary;
@end

@implementation BMStoreEvent(EventJSON)

- (id)jsonDictionary
{
  v2 = MEMORY[0x1E695DF00];
  [a1 timestamp];
  v3 = [v2 dateWithTimeIntervalSinceReferenceDate:?];
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = MEMORY[0x1E696AD98];
  [v3 timeIntervalSince1970];
  v6 = [v5 numberWithDouble:?];
  v7 = [v4 initWithObjectsAndKeys:{v6, @"eventTimestamp", 0}];

  v8 = [a1 eventBody];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [a1 eventBody];
    v11 = [v10 jsonDictionary];
    [v7 addEntriesFromDictionary:v11];
  }

  v12 = [a1 eventBody];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [a1 eventBody];
    v15 = [v14 jsonDict];
    [v7 addEntriesFromDictionary:v15];
  }

  v16 = [v7 copy];

  return v16;
}

- (id)json
{
  v2 = [a1 jsonDictionary];
  v10 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:1 error:&v10];
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = v3;
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(BMStoreEvent(EventJSON) *)a1 json];
    }

    v8 = 0;
  }

  return v8;
}

@end