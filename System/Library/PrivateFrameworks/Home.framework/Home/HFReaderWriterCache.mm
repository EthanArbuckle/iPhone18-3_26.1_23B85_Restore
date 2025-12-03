@interface HFReaderWriterCache
- (HFReaderWriterCache)init;
- (id)objectForKey:(id)key;
- (id)tryObjectForKey:(id)key;
- (void)dealloc;
- (void)performBlockWithWriteLock:(id)lock;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object onlyIfNoObjectForKey:(id)key;
@end

@implementation HFReaderWriterCache

- (HFReaderWriterCache)init
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HFReaderWriterCache;
  v2 = [(HFReaderWriterCache *)&v11 init];
  if (v2 && ([MEMORY[0x277CBEB38] dictionary], v3 = objc_claimAutoreleasedReturnValue(), cachedObjects = v2->_cachedObjects, v2->_cachedObjects = v3, cachedObjects, (v5 = pthread_rwlock_init(&v2->_rwlock, 0)) != 0))
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v5 userInfo:0];
    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Failed to init read-write lock: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v2;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pthread_rwlock_destroy(&self->_rwlock);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v3 userInfo:0];
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Failed to destroy read-write lock: %@", buf, 0xCu);
    }
  }

  v7.receiver = self;
  v7.super_class = HFReaderWriterCache;
  [(HFReaderWriterCache *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)objectForKey:(id)key
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = pthread_rwlock_rdlock(&self->_rwlock);
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v5 userInfo:0];
    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Failed to take read lock: %@", &v13, 0xCu);
    }

    v8 = 0;
LABEL_5:

    goto LABEL_6;
  }

  cachedObjects = [(HFReaderWriterCache *)self cachedObjects];
  v8 = [cachedObjects objectForKey:keyCopy];

  v12 = pthread_rwlock_unlock(&self->_rwlock);
  if (v12)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v12 userInfo:0];
    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Failed to unlock read lock: %@", &v13, 0xCu);
    }

    goto LABEL_5;
  }

LABEL_6:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)tryObjectForKey:(id)key
{
  v14 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (pthread_rwlock_tryrdlock(&self->_rwlock))
  {
    v5 = 0;
  }

  else
  {
    cachedObjects = [(HFReaderWriterCache *)self cachedObjects];
    v5 = [cachedObjects objectForKey:keyCopy];

    v7 = pthread_rwlock_unlock(&self->_rwlock);
    if (v7)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v7 userInfo:0];
      v9 = HFLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Failed to unlock read lock: %@", &v12, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__HFReaderWriterCache_setObject_forKey___block_invoke;
  v10[3] = &unk_277DF38D8;
  v11 = objectCopy;
  v12 = keyCopy;
  v8 = keyCopy;
  v9 = objectCopy;
  [(HFReaderWriterCache *)self performBlockWithWriteLock:v10];
}

- (void)setObject:(id)object onlyIfNoObjectForKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HFReaderWriterCache_setObject_onlyIfNoObjectForKey___block_invoke;
  v10[3] = &unk_277DF38D8;
  v11 = keyCopy;
  v12 = objectCopy;
  v8 = objectCopy;
  v9 = keyCopy;
  [(HFReaderWriterCache *)self performBlockWithWriteLock:v10];
}

void __54__HFReaderWriterCache_setObject_onlyIfNoObjectForKey___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKey:*(a1 + 32)];

  if (!v3)
  {
    [v4 setObject:*(a1 + 40) forKey:*(a1 + 32)];
  }
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HFReaderWriterCache_removeObjectForKey___block_invoke;
  v6[3] = &unk_277DF3900;
  v7 = keyCopy;
  v5 = keyCopy;
  [(HFReaderWriterCache *)self performBlockWithWriteLock:v6];
}

- (void)performBlockWithWriteLock:(id)lock
{
  v14 = *MEMORY[0x277D85DE8];
  lockCopy = lock;
  v5 = pthread_rwlock_wrlock(&self->_rwlock);
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v5 userInfo:0];
    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      v8 = "Failed to take write lock: %@";
LABEL_7:
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  cachedObjects = [(HFReaderWriterCache *)self cachedObjects];
  lockCopy[2](lockCopy, cachedObjects);

  v10 = pthread_rwlock_unlock(&self->_rwlock);
  if (v10)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v10 userInfo:0];
    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      v8 = "Failed to unlock write lock: %@";
      goto LABEL_7;
    }

LABEL_8:
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end