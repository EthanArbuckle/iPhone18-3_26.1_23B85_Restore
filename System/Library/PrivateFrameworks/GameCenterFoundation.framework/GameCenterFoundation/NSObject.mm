@interface NSObject
@end

@implementation NSObject

void __67__NSObject_GKBlockKVO___gkAddObserverForKeyPath_options_withBlock___block_invoke(uint64_t a1)
{
  v8 = objc_getAssociatedObject(*(a1 + 32), @"com.apple.gamekit.blockObserverMap");
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_setAssociatedObject(*(a1 + 32), @"com.apple.gamekit.blockObserverMap", v8, 0x301);
  }

  v2 = [[GKObserverTrampoline alloc] initObservingObject:*(a1 + 32) keyPath:*(a1 + 40) options:*(a1 + 72) block:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(*(a1 + 56) + 8) + 40) token];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [v8 setObject:*(*(*(a1 + 56) + 8) + 40) forKey:*(*(*(a1 + 64) + 8) + 40)];
}

void __56__NSObject_GKBlockKVO___gkRemoveObserverWithBlockToken___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = objc_getAssociatedObject(*(a1 + 32), @"com.apple.gamekit.blockObserverMap");
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [v3 objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    [v6 cancelObservation];
    [v3 removeObjectForKey:*v4];
    if (![v3 count])
    {
      objc_setAssociatedObject(*v2, @"com.apple.gamekit.blockObserverMap", 0, 0x301);
    }
  }

  else
  {
    v8 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
      v8 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __56__NSObject_GKBlockKVO___gkRemoveObserverWithBlockToken___block_invoke_cold_1(v2, v4, v8);
    }
  }
}

void __56__NSObject_GKBlockKVO___gkRemoveObserverWithBlockToken___block_invoke_cold_1(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_227904000, log, OS_LOG_TYPE_DEBUG, "Ignoring attempt to remove non-existent observer on %@ for token %@.", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end