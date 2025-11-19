@interface EMFAnchoredSearchAnchorsCache
+ (id)sharedCache;
- (EMFAnchoredSearchAnchorsCache)init;
- (id)anchorCollectionForLocaleIdentifier:(id)a3;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)purgeAllCachedAnchorCollections;
- (void)removeAnchorCollectionForLocaleIdentifier:(id)a3;
- (void)setAnchorCollection:(id)a3 forLocaleIdentifier:(id)a4;
@end

@implementation EMFAnchoredSearchAnchorsCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[EMFAnchoredSearchAnchorsCache sharedCache];
  }

  v3 = sharedCache___sharedCache;

  return v3;
}

uint64_t __44__EMFAnchoredSearchAnchorsCache_sharedCache__block_invoke()
{
  sharedCache___sharedCache = objc_alloc_init(EMFAnchoredSearchAnchorsCache);

  return MEMORY[0x1EEE66BB8]();
}

- (EMFAnchoredSearchAnchorsCache)init
{
  v6.receiver = self;
  v6.super_class = EMFAnchoredSearchAnchorsCache;
  v2 = [(EMFAnchoredSearchAnchorsCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    anchorsCache = v2->_anchorsCache;
    v2->_anchorsCache = v3;

    [(NSCache *)v2->_anchorsCache setDelegate:v2];
  }

  return v2;
}

- (id)anchorCollectionForLocaleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(EMFAnchoredSearchAnchorsCache *)self anchorsCache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setAnchorCollection:(id)a3 forLocaleIdentifier:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 | v6)
  {
    v7 = a3;
    v8 = [(EMFAnchoredSearchAnchorsCache *)self anchorsCache];
    [v8 setObject:v7 forKey:v6];

    v9 = emf_logging_get_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1AF04E000, v9, OS_LOG_TYPE_INFO, "Caching search anchors for locale identifier '%{public}@'", &v10, 0xCu);
    }
  }
}

- (void)removeAnchorCollectionForLocaleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(EMFAnchoredSearchAnchorsCache *)self anchorsCache];
  [v5 removeObjectForKey:v4];
}

- (void)purgeAllCachedAnchorCollections
{
  v2 = [(EMFAnchoredSearchAnchorsCache *)self anchorsCache];
  [v2 removeAllObjects];
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = emf_logging_get_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1AF04E000, v5, OS_LOG_TYPE_INFO, "Evicting '%@' from collections cache", &v6, 0xCu);
  }
}

@end