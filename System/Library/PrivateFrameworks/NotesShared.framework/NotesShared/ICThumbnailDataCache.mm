@interface ICThumbnailDataCache
- (ICThumbnailDataCache)init;
- (id)thumbnailDataForKey:(id)key;
- (void)removeAllThumbnailData;
- (void)removeThumbnailDataForKey:(id)key;
- (void)setThumbnailData:(id)data forKey:(id)key;
@end

@implementation ICThumbnailDataCache

- (ICThumbnailDataCache)init
{
  v5.receiver = self;
  v5.super_class = ICThumbnailDataCache;
  v2 = [(ICThumbnailDataCache *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D361B0]);
    [(ICThumbnailDataCache *)v2 setImageCache:v3];
  }

  return v2;
}

- (void)setThumbnailData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  imageCache = [(ICThumbnailDataCache *)selfCopy imageCache];
  [imageCache setObject:dataCopy forKey:keyCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeThumbnailDataForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  imageCache = [(ICThumbnailDataCache *)selfCopy imageCache];
  [imageCache removeObjectForKey:keyCopy];

  objc_sync_exit(selfCopy);
}

- (id)thumbnailDataForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  imageCache = [(ICThumbnailDataCache *)selfCopy imageCache];
  v7 = [imageCache objectForKey:keyCopy];

  objc_opt_class();
  v8 = ICDynamicCast();

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)removeAllThumbnailData
{
  imageCache = [(ICThumbnailDataCache *)self imageCache];
  [imageCache removeAllObjects];
}

@end