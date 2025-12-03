@interface BMStoreEvent(EventJSON)
- (id)json;
- (id)jsonDictionary;
@end

@implementation BMStoreEvent(EventJSON)

- (id)jsonDictionary
{
  v2 = MEMORY[0x1E695DF00];
  [self timestamp];
  v3 = [v2 dateWithTimeIntervalSinceReferenceDate:?];
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = MEMORY[0x1E696AD98];
  [v3 timeIntervalSince1970];
  v6 = [v5 numberWithDouble:?];
  v7 = [v4 initWithObjectsAndKeys:{v6, @"eventTimestamp", 0}];

  eventBody = [self eventBody];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    eventBody2 = [self eventBody];
    jsonDictionary = [eventBody2 jsonDictionary];
    [v7 addEntriesFromDictionary:jsonDictionary];
  }

  eventBody3 = [self eventBody];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    eventBody4 = [self eventBody];
    jsonDict = [eventBody4 jsonDict];
    [v7 addEntriesFromDictionary:jsonDict];
  }

  v16 = [v7 copy];

  return v16;
}

- (id)json
{
  jsonDictionary = [self jsonDictionary];
  v10 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:jsonDictionary options:1 error:&v10];
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
      [(BMStoreEvent(EventJSON) *)self json];
    }

    v8 = 0;
  }

  return v8;
}

@end