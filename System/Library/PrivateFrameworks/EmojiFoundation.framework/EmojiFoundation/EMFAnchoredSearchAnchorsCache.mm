@interface EMFAnchoredSearchAnchorsCache
+ (id)sharedCache;
- (EMFAnchoredSearchAnchorsCache)init;
- (id)anchorCollectionForLocaleIdentifier:(id)identifier;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)purgeAllCachedAnchorCollections;
- (void)removeAnchorCollectionForLocaleIdentifier:(id)identifier;
- (void)setAnchorCollection:(id)collection forLocaleIdentifier:(id)identifier;
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

- (id)anchorCollectionForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  anchorsCache = [(EMFAnchoredSearchAnchorsCache *)self anchorsCache];
  v6 = [anchorsCache objectForKey:identifierCopy];

  return v6;
}

- (void)setAnchorCollection:(id)collection forLocaleIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (collection | identifierCopy)
  {
    collectionCopy = collection;
    anchorsCache = [(EMFAnchoredSearchAnchorsCache *)self anchorsCache];
    [anchorsCache setObject:collectionCopy forKey:identifierCopy];

    v9 = emf_logging_get_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = identifierCopy;
      _os_log_impl(&dword_1AF04E000, v9, OS_LOG_TYPE_INFO, "Caching search anchors for locale identifier '%{public}@'", &v10, 0xCu);
    }
  }
}

- (void)removeAnchorCollectionForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  anchorsCache = [(EMFAnchoredSearchAnchorsCache *)self anchorsCache];
  [anchorsCache removeObjectForKey:identifierCopy];
}

- (void)purgeAllCachedAnchorCollections
{
  anchorsCache = [(EMFAnchoredSearchAnchorsCache *)self anchorsCache];
  [anchorsCache removeAllObjects];
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  v8 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = emf_logging_get_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = objectCopy;
    _os_log_impl(&dword_1AF04E000, v5, OS_LOG_TYPE_INFO, "Evicting '%@' from collections cache", &v6, 0xCu);
  }
}

@end