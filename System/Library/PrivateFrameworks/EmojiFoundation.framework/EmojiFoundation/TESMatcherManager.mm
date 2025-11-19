@interface TESMatcherManager
+ (id)sharedManager;
- (TESMatcherManager)init;
- (id)_getOrCreateMatcherForLocale:(id)a3;
@end

@implementation TESMatcherManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[TESMatcherManager sharedManager];
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

uint64_t __34__TESMatcherManager_sharedManager__block_invoke()
{
  sharedManager___sharedManager = objc_alloc_init(TESMatcherManager);

  return MEMORY[0x1EEE66BB8]();
}

- (TESMatcherManager)init
{
  v9.receiver = self;
  v9.super_class = TESMatcherManager;
  v2 = [(TESMatcherManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    matcherCacheLock = v2->_matcherCacheLock;
    v2->_matcherCacheLock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    matcherCache = v2->_matcherCache;
    v2->_matcherCache = v5;

    v7 = v2;
  }

  return v2;
}

- (id)_getOrCreateMatcherForLocale:(id)a3
{
  v4 = a3;
  v5 = [v4 localeIdentifier];
  [(NSLock *)self->_matcherCacheLock lock];
  v6 = [(NSMutableDictionary *)self->_matcherCache objectForKey:v5];
  [(NSLock *)self->_matcherCacheLock unlock];
  if (!v6)
  {
    v6 = [[TESMatcher alloc] initWithLocale:v4];
    [(NSLock *)self->_matcherCacheLock lock];
    [(NSMutableDictionary *)self->_matcherCache setObject:v6 forKey:v5];
    [(NSLock *)self->_matcherCacheLock unlock];
  }

  return v6;
}

@end