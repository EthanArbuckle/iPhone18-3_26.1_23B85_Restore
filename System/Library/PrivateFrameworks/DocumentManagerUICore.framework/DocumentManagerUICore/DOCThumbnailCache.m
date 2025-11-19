@interface DOCThumbnailCache
- (DOCThumbnailCache)init;
- (void)clear;
@end

@implementation DOCThumbnailCache

- (DOCThumbnailCache)init
{
  v8.receiver = self;
  v8.super_class = DOCThumbnailCache;
  v2 = [(DOCThumbnailCache *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    cachedThumbnailNodes = v2->_cachedThumbnailNodes;
    v2->_cachedThumbnailNodes = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    recentlyUsedNodes = v2->_recentlyUsedNodes;
    v2->_recentlyUsedNodes = v5;

    [(NSCache *)v2->_recentlyUsedNodes setCountLimit:maxCachedNodes];
    [(NSCache *)v2->_recentlyUsedNodes setEvictsObjectsWhenApplicationEntersBackground:0];
  }

  return v2;
}

- (void)clear
{
  v2 = [(DOCThumbnailCache *)self recentlyUsedNodes];
  [v2 removeAllObjects];
}

@end