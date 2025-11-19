@interface DKQueryLoggingEnabled
@end

@implementation DKQueryLoggingEnabled

void ___DKQueryLoggingEnabled_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreDuet"];
  _DKQueryLoggingEnabled_disableQueryLogging = [v0 BOOLForKey:@"KnowledgeStoreQueryLoggingDisabled"];
}

@end