@interface CDPWebAccessStateCache
+ (id)sharedInstance;
- (CDPWebAccessStateCache)init;
@end

@implementation CDPWebAccessStateCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[CDPWebAccessStateCache sharedInstance];
  }

  v3 = sharedInstance_cache;

  return v3;
}

uint64_t __40__CDPWebAccessStateCache_sharedInstance__block_invoke()
{
  sharedInstance_cache = objc_alloc_init(CDPWebAccessStateCache);

  return MEMORY[0x1EEE66BB8]();
}

- (CDPWebAccessStateCache)init
{
  v4.receiver = self;
  v4.super_class = CDPWebAccessStateCache;
  v2 = [(CDPWebAccessStateCache *)&v4 init];
  [(CDPWebAccessStateCache *)v2 setWebAccessStatus:0];
  return v2;
}

@end