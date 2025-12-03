@interface ReadingListLeadImageCache
- (ReadingListLeadImageCache)initWithDirectoryURL:(id)l;
- (id)loadImageSynchronouslyForIconUUID:(id)d;
- (void)clearCache;
@end

@implementation ReadingListLeadImageCache

- (ReadingListLeadImageCache)initWithDirectoryURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = ReadingListLeadImageCache;
  v6 = [(ReadingListLeadImageCache *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directoryURL, l);
    v8 = v7;
  }

  return v7;
}

- (id)loadImageSynchronouslyForIconUUID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(WBSCache *)selfCopy->_cache objectForKey:dCopy];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = [(NSURL *)selfCopy->_directoryURL URLByAppendingPathComponent:dCopy isDirectory:0];
      v9 = MEMORY[0x277D755B8];
      path = [v8 path];
      v11 = [v9 imageWithContentsOfFile:path];

      if (v11)
      {
        cache = selfCopy->_cache;
        if (!cache)
        {
          v13 = objc_alloc_init(MEMORY[0x277D49E98]);
          v14 = selfCopy->_cache;
          selfCopy->_cache = v13;

          cache = selfCopy->_cache;
        }

        [(WBSCache *)cache setObject:v11 forKey:dCopy];
      }

      v7 = v11;
    }

    objc_sync_exit(selfCopy);
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