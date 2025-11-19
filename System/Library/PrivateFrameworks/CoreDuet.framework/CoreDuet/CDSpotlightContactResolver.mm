@interface CDSpotlightContactResolver
@end

@implementation CDSpotlightContactResolver

void __45___CDSpotlightContactResolver_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_0;
  sharedInstance__pasExprOnceResult_0 = v1;

  objc_autoreleasePoolPop(v0);
}

void __53___CDSpotlightContactResolver__setContact_forHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v6 = [[v3 alloc] initWithTimeIntervalSinceNow:120.0];
  v5 = [[_CDSpotlightCachedContact alloc] initWithExpirationDate:v6 contact:*(a1 + 32)];
  [v4 setObject:v5 forKey:*(a1 + 40)];
}

void __58___CDSpotlightContactResolver__getCachedContactForHandle___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {
    v7 = [v6 expirationDate];
    [v7 timeIntervalSinceNow];
    v9 = v8;

    if (v9 <= 0.0)
    {
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;

      [v13 removeObjectForKey:*(a1 + 32)];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:120.0];
      [*(*(*(a1 + 40) + 8) + 40) setExpirationDate:v10];
    }
  }
}

void __37___CDSpotlightContactResolver__purge__block_invoke(uint64_t a1, void *a2)
{
  [a2 removeAllObjects];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;
}

@end