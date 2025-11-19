@interface ReadingListLeadImageCache
- (ReadingListLeadImageCache)initWithDirectoryURL:(id)a3;
- (id)loadImageSynchronouslyForIconUUID:(id)a3;
- (void)clearCache;
@end

@implementation ReadingListLeadImageCache

- (ReadingListLeadImageCache)initWithDirectoryURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ReadingListLeadImageCache;
  v6 = [(ReadingListLeadImageCache *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directoryURL, a3);
    v8 = v7;
  }

  return v7;
}

- (id)loadImageSynchronouslyForIconUUID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(WBSCache *)v5->_cache objectForKey:v4];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = [(NSURL *)v5->_directoryURL URLByAppendingPathComponent:v4 isDirectory:0];
      v9 = MEMORY[0x277D755B8];
      v10 = [v8 path];
      v11 = [v9 imageWithContentsOfFile:v10];

      if (v11)
      {
        cache = v5->_cache;
        if (!cache)
        {
          v13 = objc_alloc_init(MEMORY[0x277D49E98]);
          v14 = v5->_cache;
          v5->_cache = v13;

          cache = v5->_cache;
        }

        [(WBSCache *)cache setObject:v11 forKey:v4];
      }

      v7 = v11;
    }

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)clearCache
{
  obj = self;
  objc_sync_enter(obj);
  [(WBSCache *)obj->_cache removeAllObjects];
  objc_sync_exit(obj);
}

@end