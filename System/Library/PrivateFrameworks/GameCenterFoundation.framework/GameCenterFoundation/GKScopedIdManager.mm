@interface GKScopedIdManager
+ (void)gameCenterEnabledGameInstalled:(id)installed withCompletionHandler:(id)handler;
@end

@implementation GKScopedIdManager

+ (void)gameCenterEnabledGameInstalled:(id)installed withCompletionHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  installedCopy = installed;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    [GKScopedIdManager gameCenterEnabledGameInstalled:installedCopy withCompletionHandler:v8];
  }

  v9 = +[GKDaemonProxy daemonProxy];
  gameService = [v9 gameService];
  v13[0] = installedCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [gameService storeGameForBundleIDs:v11 completion:handlerCopy];

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)gameCenterEnabledGameInstalled:(uint64_t)a1 withCompletionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_227904000, a2, OS_LOG_TYPE_DEBUG, "Game install notification for title: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end