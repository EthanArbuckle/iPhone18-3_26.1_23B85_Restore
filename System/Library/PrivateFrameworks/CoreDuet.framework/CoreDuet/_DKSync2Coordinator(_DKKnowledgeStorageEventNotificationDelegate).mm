@interface _DKSync2Coordinator(_DKKnowledgeStorageEventNotificationDelegate)
@end

@implementation _DKSync2Coordinator(_DKKnowledgeStorageEventNotificationDelegate)

- (void)knowledgeStorage:()_DKKnowledgeStorageEventNotificationDelegate didDeleteEventsWithStreamNameCounts:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  v6 = 2112;
  v7 = v1;
  OUTLINED_FUNCTION_33(&dword_191750000, v0, v3, "%{public}@: Delete with stream names: %@", v5);

  v4 = *MEMORY[0x1E69E9840];
}

@end