@interface _CNUILikenessCache
+ (id)log;
- (_CNUILikenessCache)initWithCapacity:(unint64_t)a3;
- (id)objectForKey:(id)a3 onCacheMiss:(id)a4;
- (void)emptyCache:(id)a3;
- (void)receiveDatabaseChangeNotification:(id)a3;
- (void)receiveMemoryPressureSignal;
- (void)setUpDatabaseChangeNotificationHandler;
- (void)setUpEvictionHandler;
- (void)setUpIvarsWithCacheCapacity:(unint64_t)a3;
- (void)setUpMemoryPressureWatcher;
@end

@implementation _CNUILikenessCache

+ (id)log
{
  if (log_cn_once_token_1_1 != -1)
  {
    +[_CNUILikenessCache log];
  }

  v3 = log_cn_once_object_1_1;

  return v3;
}

- (_CNUILikenessCache)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = _CNUILikenessCache;
  v4 = [(_CNUILikenessCache *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(_CNUILikenessCache *)v4 setUpIvarsWithCacheCapacity:a3];
    [(_CNUILikenessCache *)v5 setUpEvictionHandler];
    [(_CNUILikenessCache *)v5 setUpDatabaseChangeNotificationHandler];
    [(_CNUILikenessCache *)v5 setUpMemoryPressureWatcher];
    v6 = v5;
  }

  return v5;
}

- (void)setUpIvarsWithCacheCapacity:(unint64_t)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E6996660]);
  v6 = [MEMORY[0x1E6996660] boundingStrategyWithCapacity:a3];
  v16[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v8 = [MEMORY[0x1E6996660] nonatomicCacheScheduler];
  v9 = [v5 initWithBoundingStrategies:v7 resourceScheduler:v8];
  cache = self->_cache;
  self->_cache = v9;

  v11 = objc_alloc_init(MEMORY[0x1E6996878]);
  lock = self->_lock;
  self->_lock = v11;

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create("com.apple.contacts.ui.likeness-cache.deallocator", v13);
  backgroundQueue = self->_backgroundQueue;
  self->_backgroundQueue = v14;
}

- (void)setUpEvictionHandler
{
  objc_initWeak(&location, self);
  cache = self->_cache;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42___CNUILikenessCache_setUpEvictionHandler__block_invoke;
  v4[3] = &unk_1E76E8F28;
  objc_copyWeak(&v5, &location);
  [(CNCache *)cache addDidEvictHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setUpDatabaseChangeNotificationHandler
{
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v4 notificationCenter];
  [v3 addObserver:self selector:sel_receiveDatabaseChangeNotification_ name:*MEMORY[0x1E695C3D8] object:0];
}

- (void)setUpMemoryPressureWatcher
{
  v3 = [(_CNUILikenessCache *)self backgroundQueue];
  v4 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, v3);
  memoryMonitoringSource = self->_memoryMonitoringSource;
  self->_memoryMonitoringSource = v4;

  objc_initWeak(&location, self);
  v6 = self->_memoryMonitoringSource;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48___CNUILikenessCache_setUpMemoryPressureWatcher__block_invoke;
  v7[3] = &unk_1E76E8280;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_memoryMonitoringSource);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)objectForKey:(id)a3 onCacheMiss:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_CNUILikenessCache *)self lock];
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = CNResultWithLock();

  return v11;
}

- (void)receiveDatabaseChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A31E6000, v5, OS_LOG_TYPE_DEFAULT, "Database change notification received", v6, 2u);
  }

  [(_CNUILikenessCache *)self emptyCache:v4];
}

- (void)receiveMemoryPressureSignal
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A31E6000, v3, OS_LOG_TYPE_DEFAULT, "Memory pressure signal received", v4, 2u);
  }

  [(_CNUILikenessCache *)self emptyCache:0];
}

- (void)emptyCache:(id)a3
{
  v3 = [(_CNUILikenessCache *)self lock];
  CNRunWithLock();
}

@end