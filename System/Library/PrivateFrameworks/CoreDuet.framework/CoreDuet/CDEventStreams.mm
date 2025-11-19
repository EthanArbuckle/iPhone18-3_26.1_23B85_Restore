@interface CDEventStreams
@end

@implementation CDEventStreams

uint64_t __33___CDEventStreams_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_CDEventStreams);
  v1 = sharedInstance__sharedContextStoreEvents;
  sharedInstance__sharedContextStoreEvents = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __48___CDEventStreams__eventStreamForName_orKBName___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:kCDESPEventNameKey];
  v9 = [v7 objectForKeyedSubscript:kCDESPKnowledgeBaseEventNameKey];
  if (v8 | v9)
  {
    if ((*(a1 + 80) & 1) != 0 || ([*(a1 + 32) isEqualToString:v8] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", *(a1 + 40)))
    {
      v10 = [_CDEventStreamProperties eventStreamPropertiesFromDictionary:v7 defaultProperties:*(a1 + 48)];
      v11 = [_CDEventStream eventStreamWithProperties:v10];
      if (v8)
      {
        [*(a1 + 56) setObject:v11 forKeyedSubscript:v8];
      }

      if (v9)
      {
        [*(a1 + 64) setObject:v11 forKeyedSubscript:v9];
      }

      if ((*(a1 + 80) & 1) == 0)
      {
        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v11);
        *a4 = 1;
      }
    }
  }

  else
  {
    v12 = +[_CDLogging contextChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __48___CDEventStreams__eventStreamForName_orKBName___block_invoke_cold_1(v7, a3, v12);
    }
  }
}

uint64_t __49___CDEventStreams_rateLimiterForEventStreamName___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = rateLimiterForEventStreamName__policies;
  rateLimiterForEventStreamName__policies = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __51___CDEventStreams_privacyPolicyForEventStreamName___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = privacyPolicyForEventStreamName__policies;
  privacyPolicyForEventStreamName__policies = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __48___CDEventStreams__eventStreamForName_orKBName___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "plistArray[%ld]:\n%@\n missing EventName and KnowledgeBaseEventName keys -- skip over this event\n", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end