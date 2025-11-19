@interface GKScopedIdManager
+ (void)gameCenterEnabledGameInstalled:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation GKScopedIdManager

+ (void)gameCenterEnabledGameInstalled:(id)a3 withCompletionHandler:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    [GKScopedIdManager gameCenterEnabledGameInstalled:v5 withCompletionHandler:v8];
  }

  v9 = +[GKDaemonProxy daemonProxy];
  v10 = [v9 gameService];
  v13[0] = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v10 storeGameForBundleIDs:v11 completion:v6];

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