@interface CDContextMonitorManager
@end

@implementation CDContextMonitorManager

void __63___CDContextMonitorManager_initializeKeyPathEventStreamMapping__block_invoke()
{
  v0 = [MEMORY[0x1E69978C0] sharedInstance];
  v1 = [v0 allEventStreams];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___CDContextMonitorManager_initializeKeyPathEventStreamMapping__block_invoke_2;
  v6[3] = &unk_1E7886B78;
  v7 = v2;
  v3 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];
  v5 = keyPathToEventStream;
  keyPathToEventStream = v4;
}

void __63___CDContextMonitorManager_initializeKeyPathEventStreamMapping__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 eventStreamProperties];
  v6 = [v5 knowledgeBaseName];
  v10 = [_CDContextMonitorManager cleanKBEventNameKey:v6];

  v7 = [_CDContextualKeyPath keyPathWithKey:v10];
  v8 = [v4 eventStreamProperties];

  v9 = [v8 name];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

@end