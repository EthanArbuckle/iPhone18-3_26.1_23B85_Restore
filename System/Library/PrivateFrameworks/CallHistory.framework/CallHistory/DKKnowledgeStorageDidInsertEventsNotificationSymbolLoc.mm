@interface DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc
@end

@implementation DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc

void *__get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreDuetLibrary();
  result = dlsym(v2, "_DKKnowledgeStorageDidInsertEventsNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end