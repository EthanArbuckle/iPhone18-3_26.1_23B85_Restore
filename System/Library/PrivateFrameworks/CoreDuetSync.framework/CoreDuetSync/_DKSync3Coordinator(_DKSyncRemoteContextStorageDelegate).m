@interface _DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate)
@end

@implementation _DKSync3Coordinator(_DKSyncRemoteContextStorageDelegate)

- (void)remoteContextStorage:()_DKSyncRemoteContextStorageDelegate hasKnowledgeOfKeyPath:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteContextStorage:()_DKSyncRemoteContextStorageDelegate hasKnowledgeOfKeyPath:.cold.2()
{
  OUTLINED_FUNCTION_9();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteContextStorage:()_DKSyncRemoteContextStorageDelegate hasKnowledgeOfKeyPath:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteContextStorage:()_DKSyncRemoteContextStorageDelegate subscribeToChangesWithPeer:registrationIdentifier:predicate:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteContextStorage:()_DKSyncRemoteContextStorageDelegate unsubscribeFromChangesWithPeer:registrationIdentifier:predicate:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end