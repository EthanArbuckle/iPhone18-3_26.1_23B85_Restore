@interface ICImageCache
- (ICImageCache)init;
- (id)imageForKey:(id)a3;
- (void)receivedMemoryWarning;
- (void)registerForMemoryWarnings;
- (void)removeAllImages;
- (void)removeImageForKey:(id)a3;
- (void)setImage:(id)a3 forKey:(id)a4;
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

- (void)setImage:(id)a3 forKey:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [v16 size];
  v9 = v8;
  [v16 size];
  v11 = v10;
  [v16 scale];
  if ((v12 * (v9 * v11)) <= 0x100000)
  {
    v15 = [(ICImageCache *)v7 imageCache];
    [v15 setObject:v16 forKey:v6];
  }

  else
  {
    v13 = [(ICImageCache *)v7 bigImageCache];

    if (!v13)
    {
      v14 = [objc_alloc(MEMORY[0x277D361F8]) initWithMaxSize:3];
      [(ICImageCache *)v7 setBigImageCache:v14];
    }

    v15 = [(ICImageCache *)v7 bigImageCache];
    [v15 setObject:v16 forKey:v6];
  }

  objc_sync_exit(v7);
}

- (void)removeImageForKey:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(ICImageCache *)v4 bigImageCache];
  [v5 removeObjectForKey:v7];

  v6 = [(ICImageCache *)v4 imageCache];
  [v6 removeObjectForKey:v7];

  objc_sync_exit(v4);
}

- (id)imageForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(ICImageCache *)v5 imageCache];
  v7 = [v6 objectForKey:v4];

  if (!v7)
  {
    v8 = [(ICImageCache *)v5 bigImageCache];
    v7 = [v8 objectForKey:v4];
  }

  objc_sync_exit(v5);

  return v7;
}

- (void)removeAllImages
{
  v3 = [(ICImageCache *)self imageCache];
  [v3 removeAllObjects];

  v4 = [(ICImageCache *)self bigImageCache];
  [v4 removeAllObjects];
}

- (void)registerForMemoryWarnings
{
  v3 = dispatch_source_create(MEMORY[0x277D85D18], 0, 6uLL, MEMORY[0x277D85CD0]);
  [(ICImageCache *)self setMemoryWarningEventSource:v3];

  objc_initWeak(&location, self);
  v4 = [(ICImageCache *)self memoryWarningEventSource];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __41__ICImageCache_registerForMemoryWarnings__block_invoke;
  v9 = &unk_278194FB8;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v4, &v6);

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
  v3 = [(ICImageCache *)self memoryWarningEventSource];

  if (v3)
  {
    v4 = [(ICImageCache *)self memoryWarningEventSource];
    dispatch_source_cancel(v4);
  }
}

- (void)receivedMemoryWarning
{
  v2 = [(ICImageCache *)self bigImageCache];
  [v2 removeAllObjects];
}

@end