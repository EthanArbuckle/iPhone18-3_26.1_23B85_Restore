@interface BBDismissalSyncCache
- (BBDismissalSyncCache)init;
- (BOOL)_isTimeToCheck;
- (id)findBulletinMatch:(id)a3;
- (void)_checkCache;
- (void)cacheDismissalDictionaries:(id)a3 dismissalIDs:(id)a4 inSection:(id)a5 forFeeds:(unint64_t)a6;
- (void)removeBulletinMatch:(id)a3;
@end

@implementation BBDismissalSyncCache

- (BBDismissalSyncCache)init
{
  v6.receiver = self;
  v6.super_class = BBDismissalSyncCache;
  v2 = [(BBDismissalSyncCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (void)cacheDismissalDictionaries:(id)a3 dismissalIDs:(id)a4 inSection:(id)a5 forFeeds:(unint64_t)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = BBLogSync;
  if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138413058;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2048;
    v26 = a6;
    _os_log_impl(&dword_241EFF000, v13, OS_LOG_TYPE_DEFAULT, "Request to cache dismissal dictionaries:%@ IDs:%@ inSection:%@ forFeeds:%lu", &v19, 0x2Au);
  }

  [(BBDismissalSyncCache *)self _checkCache];
  if (-[BBDismissalSyncCache count](v10, "count") || [v11 count])
  {
    v14 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v12];
    if (!v14)
    {
      v14 = objc_alloc_init(BBDismissalSyncCacheItem);
      [(NSMutableDictionary *)self->_cache setObject:v14 forKeyedSubscript:v12];
    }

    [(BBDismissalSyncCacheItem *)v14 cacheDismissalDictionaries:v10 dismissalIDs:v11 forFeeds:a6];
    if (!self->_timeToCheck)
    {
      v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:120.0];
      timeToCheck = self->_timeToCheck;
      self->_timeToCheck = v15;
    }

    v17 = BBLogSync;
    if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = self;
      _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "cache updated to: %@", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)findBulletinMatch:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BBLogSync;
  if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 bulletinID];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "request to find bulletin match: %@", &v15, 0xCu);
  }

  [(BBDismissalSyncCache *)self _checkCache];
  v8 = [v4 sectionID];
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 findBulletinMatch:v4];
      [v11 setSectionID:v8];
      v12 = BBLogSync;
      if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "Found a match: %@", &v15, 0xCu);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)removeBulletinMatch:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BBLogSync;
  if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Request to remove bulletin match:%@", &v11, 0xCu);
  }

  v6 = [v4 sectionID];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      [v7 removeBulletinMatch:v4];
      v9 = BBLogSync;
      if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, "bulletin match removed", &v11, 2u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isTimeToCheck
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(BBDismissalSyncCache *)self timeToCheck];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5 >= 0.0;

  return v6;
}

- (void)_checkCache
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = BBLogSync;
  if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Request to check cache: %@", &buf, 0xCu);
  }

  if ([(BBDismissalSyncCache *)self _isTimeToCheck])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cache = self->_cache;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __35__BBDismissalSyncCache__checkCache__block_invoke;
    v12 = &unk_278D2A460;
    v6 = v4;
    v13 = v6;
    p_buf = &buf;
    [(NSMutableDictionary *)cache enumerateKeysAndObjectsUsingBlock:&v9];
    [(NSMutableDictionary *)self->_cache removeObjectsForKeys:v6, v9, v10, v11, v12];
    objc_storeStrong(&self->_timeToCheck, *(*(&buf + 1) + 40));
    v7 = BBLogSync;
    if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 138412290;
      v16 = self;
      _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "check cache purge complete: %@", v15, 0xCu);
    }

    _Block_object_dispose(&buf, 8);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __35__BBDismissalSyncCache__checkCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 purgeExpired];
  v6 = v5;
  if (v5)
  {
    if ([v5 compare:*(*(*(a1 + 40) + 8) + 40)] == -1)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    }
  }

  else
  {
    [*(a1 + 32) addObject:v7];
  }
}

@end