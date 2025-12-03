@interface ICImageCache
- (ICImageCache)init;
- (id)imageForKey:(id)key;
- (void)receivedMemoryWarning;
- (void)registerForMemoryWarnings;
- (void)removeAllImages;
- (void)removeImageForKey:(id)key;
- (void)setImage:(id)image forKey:(id)key;
- (void)unregisterForMemoryWarnings;
@end

@implementation ICImageCache

- (ICImageCache)init
{
  v5.receiver = self;
  v5.super_class = ICImageCache;
  v2 = [(ICImageCache *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D361B0]);
    [(ICImageCache *)v2 setImageCache:v3];
  }

  return v2;
}

- (void)setImage:(id)image forKey:(id)key
{
  imageCopy = image;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [imageCopy size];
  v9 = v8;
  [imageCopy size];
  v11 = v10;
  [imageCopy scale];
  if ((v12 * (v9 * v11)) <= 0x100000)
  {
    imageCache = [(ICImageCache *)selfCopy imageCache];
    [imageCache setObject:imageCopy forKey:keyCopy];
  }

  else
  {
    bigImageCache = [(ICImageCache *)selfCopy bigImageCache];

    if (!bigImageCache)
    {
      v14 = [objc_alloc(MEMORY[0x277D361F8]) initWithMaxSize:3];
      [(ICImageCache *)selfCopy setBigImageCache:v14];
    }

    imageCache = [(ICImageCache *)selfCopy bigImageCache];
    [imageCache setObject:imageCopy forKey:keyCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeImageForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bigImageCache = [(ICImageCache *)selfCopy bigImageCache];
  [bigImageCache removeObjectForKey:keyCopy];

  imageCache = [(ICImageCache *)selfCopy imageCache];
  [imageCache removeObjectForKey:keyCopy];

  objc_sync_exit(selfCopy);
}

- (id)imageForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  imageCache = [(ICImageCache *)selfCopy imageCache];
  v7 = [imageCache objectForKey:keyCopy];

  if (!v7)
  {
    bigImageCache = [(ICImageCache *)selfCopy bigImageCache];
    v7 = [bigImageCache objectForKey:keyCopy];
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)removeAllImages
{
  imageCache = [(ICImageCache *)self imageCache];
  [imageCache removeAllObjects];

  bigImageCache = [(ICImageCache *)self bigImageCache];
  [bigImageCache removeAllObjects];
}

- (void)registerForMemoryWarnings
{
  v3 = dispatch_source_create(MEMORY[0x277D85D18], 0, 6uLL, MEMORY[0x277D85CD0]);
  [(ICImageCache *)self setMemoryWarningEventSource:v3];

  objc_initWeak(&location, self);
  memoryWarningEventSource = [(ICImageCache *)self memoryWarningEventSource];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __41__ICImageCache_registerForMemoryWarnings__block_invoke;
  v9 = &unk_278194FB8;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(memoryWarningEventSource, &v6);

  v5 = [(ICImageCache *)self memoryWarningEventSource:v6];
  dispatch_resume(v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __41__ICImageCache_registerForMemoryWarnings__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained receivedMemoryWarning];
}

- (void)unregisterForMemoryWarnings
{
  memoryWarningEventSource = [(ICImageCache *)self memoryWarningEventSource];

  if (memoryWarningEventSource)
  {
    memoryWarningEventSource2 = [(ICImageCache *)self memoryWarningEventSource];
    dispatch_source_cancel(memoryWarningEventSource2);
  }
}

- (void)receivedMemoryWarning
{
  bigImageCache = [(ICImageCache *)self bigImageCache];
  [bigImageCache removeAllObjects];
}

@end