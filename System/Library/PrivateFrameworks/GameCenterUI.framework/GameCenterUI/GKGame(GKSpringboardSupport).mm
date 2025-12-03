@interface GKGame(GKSpringboardSupport)
+ (void)removeHistoryForGameWithBundleIdentifier:()GKSpringboardSupport completionHandler:;
@end

@implementation GKGame(GKSpringboardSupport)

+ (void)removeHistoryForGameWithBundleIdentifier:()GKSpringboardSupport completionHandler:
{
  v5 = a4;
  v6 = MEMORY[0x277D0C010];
  v7 = a3;
  proxyForLocalPlayer = [v6 proxyForLocalPlayer];
  gameServicePrivate = [proxyForLocalPlayer gameServicePrivate];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__GKGame_GKSpringboardSupport__removeHistoryForGameWithBundleIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_27966A4A8;
  v12 = v5;
  v10 = v5;
  [gameServicePrivate removeGameForBundleID:v7 handler:v11];
}

@end