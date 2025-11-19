@interface CHSDynamicColorCache
@end

@implementation CHSDynamicColorCache

void __39___CHSDynamicColorCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_CHSDynamicColorCache);
  v1 = sharedInstance___instance;
  sharedInstance___instance = v0;
}

void __47___CHSDynamicColorCache_cachedObjectForObject___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v2);
  }

  else
  {
    [*(a1[4] + 8) setObject:a1[5] forKeyedSubscript:a1[5]];
  }
}

@end