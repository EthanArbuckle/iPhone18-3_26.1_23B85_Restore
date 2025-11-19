@interface HFReaderWriterCache
- (HFReaderWriterCache)init;
- (id)objectForKey:(id)a3;
- (id)tryObjectForKey:(id)a3;
- (void)dealloc;
- (void)performBlockWithWriteLock:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 onlyIfNoObjectForKey:(id)a4;
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

- (id)objectForKey:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  v11 = [(HFReaderWriterCache *)self cachedObjects];
  v8 = [v11 objectForKey:v4];

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

- (id)tryObjectForKey:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (pthread_rwlock_tryrdlock(&self->_rwlock))
  {
    v5 = 0;
  }

  else
  {
    v6 = [(HFReaderWriterCache *)self cachedObjects];
    v5 = [v6 objectForKey:v4];

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

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__HFReaderWriterCache_setObject_forKey___block_invoke;
  v10[3] = &unk_277DF38D8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HFReaderWriterCache *)self performBlockWithWriteLock:v10];
}

- (void)setObject:(id)a3 onlyIfNoObjectForKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HFReaderWriterCache_setObject_onlyIfNoObjectForKey___block_invoke;
  v10[3] = &unk_277DF38D8;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
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

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HFReaderWriterCache_removeObjectForKey___block_invoke;
  v6[3] = &unk_277DF3900;
  v7 = v4;
  v5 = v4;
  [(HFReaderWriterCache *)self performBlockWithWriteLock:v6];
}

- (void)performBlockWithWriteLock:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  v9 = [(HFReaderWriterCache *)self cachedObjects];
  v4[2](v4, v9);

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