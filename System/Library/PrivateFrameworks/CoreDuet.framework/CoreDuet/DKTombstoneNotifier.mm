@interface DKTombstoneNotifier
@end

@implementation DKTombstoneNotifier

void __93___DKTombstoneNotifier_sendDistributedNotificationsForTombstoneRequirementIdentifiers_queue___block_invoke(uint64_t a1)
{
  v2 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __93___DKTombstoneNotifier_sendDistributedNotificationsForTombstoneRequirementIdentifiers_queue___block_invoke_cold_1(a1, v2);
  }

  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 postNotificationName:@"_DKKnowledgeStorageDidTombstoneEventsNotification" object:*(a1 + 32) userInfo:0 deliverImmediately:0];
}

void __93___DKTombstoneNotifier_sendDistributedNotificationsForTombstoneRequirementIdentifiers_queue___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "Posting distributed notification for 'did tombstone events' with requirement identifier: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end