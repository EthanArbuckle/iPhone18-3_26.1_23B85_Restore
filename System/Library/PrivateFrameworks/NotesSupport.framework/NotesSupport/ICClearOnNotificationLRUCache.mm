@interface ICClearOnNotificationLRUCache
- (ICClearOnNotificationLRUCache)initWithMaxSize:(unint64_t)size notificationName:(id)name;
- (void)dealloc;
@end

@implementation ICClearOnNotificationLRUCache

- (ICClearOnNotificationLRUCache)initWithMaxSize:(unint64_t)size notificationName:(id)name
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = ICClearOnNotificationLRUCache;
  v7 = [(ICLRUCache *)&v17 initWithMaxSize:size];
  if (v7)
  {
    objc_initWeak(&location, v7);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __66__ICClearOnNotificationLRUCache_initWithMaxSize_notificationName___block_invoke;
    v14 = &unk_1E8484E78;
    objc_copyWeak(&v15, &location);
    v9 = [defaultCenter addObserverForName:nameCopy object:0 queue:0 usingBlock:&v11];
    [(ICClearOnNotificationLRUCache *)v7 setNotificationToken:v9, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __66__ICClearOnNotificationLRUCache_initWithMaxSize_notificationName___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    [v5 removeAllObjects];
    objc_sync_exit(v5);

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"ICCachedClearedOnChangedNotification" object:v5];
  }
}

- (void)dealloc
{
  notificationToken = [(ICClearOnNotificationLRUCache *)self notificationToken];

  if (notificationToken)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    notificationToken2 = [(ICClearOnNotificationLRUCache *)self notificationToken];
    [defaultCenter removeObserver:notificationToken2];

    [(ICClearOnNotificationLRUCache *)self setNotificationToken:0];
  }

  v6.receiver = self;
  v6.super_class = ICClearOnNotificationLRUCache;
  [(ICClearOnNotificationLRUCache *)&v6 dealloc];
}

@end