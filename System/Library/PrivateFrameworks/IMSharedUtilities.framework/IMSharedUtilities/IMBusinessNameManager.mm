@interface IMBusinessNameManager
+ (id)sharedInstance;
- (IMBusinessNameManager)init;
- (id)businessNameForUID:(id)a3 blockFetch:(BOOL)a4 updateHandler:(id)a5 uniqueHandler:(id)a6;
- (void)_fetchBusinessNameForUID:(id)a3;
- (void)_fetchedBrandName:(id)a3 forUID:(id)a4;
@end

@implementation IMBusinessNameManager

- (IMBusinessNameManager)init
{
  v12.receiver = self;
  v12.super_class = IMBusinessNameManager;
  v2 = [(IMBusinessNameManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    cacheLock = v2->_cacheLock;
    v2->_cacheLock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cache = v2->_cache;
    v2->_cache = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingUniqueRequests = v2->_pendingUniqueRequests;
    v2->_pendingUniqueRequests = v9;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1ED8CA2B0 != -1)
  {
    sub_1A88C44E0();
  }

  if (qword_1ED8CA440 != -1)
  {
    sub_1A88C44F4();
  }

  if (qword_1ED8CA2B8 != -1)
  {
    sub_1A88C4508();
  }

  v2 = qword_1ED8CA3A8;

  return v2;
}

- (id)businessNameForUID:(id)a3 blockFetch:(BOOL)a4 updateHandler:(id)a5 uniqueHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10 && !IMIsRunningInMessagesComposeViewService())
  {
    [(NSLock *)self->_cacheLock lock];
    v14 = [(IMBusinessNameManager *)self cache];
    v13 = [v14 objectForKey:v10];

    [(NSLock *)self->_cacheLock unlock];
    if (v13 || v8)
    {
      v20 = v13;
    }

    else
    {
      if (!v11)
      {
        v11 = &unk_1F1BA7888;
      }

      [(NSLock *)self->_cacheLock lock];
      v15 = [(NSMutableDictionary *)self->_pendingRequests objectForKeyedSubscript:v10];

      if (!v15)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(NSMutableDictionary *)self->_pendingRequests setObject:v16 forKeyedSubscript:v10];
      }

      v17 = [(NSMutableDictionary *)self->_pendingRequests objectForKeyedSubscript:v10];
      v18 = _Block_copy(v11);
      [v17 addObject:v18];

      v19 = _Block_copy(v12);
      [(NSMutableDictionary *)self->_pendingUniqueRequests setObject:v19 forKeyedSubscript:v10];

      [(NSLock *)self->_cacheLock unlock];
      if (!v15)
      {
        [(IMBusinessNameManager *)self _fetchBusinessNameForUID:v10];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_fetchBusinessNameForUID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[IMBrandManager sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A86C5B08;
  v7[3] = &unk_1E7829AD0;
  v6 = v4;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [v5 brandWithURI:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_fetchedBrandName:(id)a3 forUID:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(IMBusinessNameManager *)self cacheLock];
  [v8 lock];

  if ([v6 length])
  {
    v9 = [(IMBusinessNameManager *)self cache];
    [v9 setObject:v6 forKey:v7];
  }

  v10 = [(IMBusinessNameManager *)self pendingRequests];
  v11 = [v10 objectForKeyedSubscript:v7];

  v12 = [(IMBusinessNameManager *)self pendingRequests];
  [v12 setObject:0 forKeyedSubscript:v7];

  v13 = [(IMBusinessNameManager *)self cacheLock];
  [v13 unlock];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        (*(*(*(&v23 + 1) + 8 * v18) + 16))(*(*(&v23 + 1) + 8 * v18));
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  v19 = [(IMBusinessNameManager *)self pendingUniqueRequests];
  v20 = [v19 objectForKeyedSubscript:v7];

  if (v20)
  {
    (v20)[2](v20, v6);
    v21 = [(IMBusinessNameManager *)self pendingUniqueRequests];
    [v21 setObject:0 forKeyedSubscript:v7];

    v22 = IMLogHandleForCategory("Business_ChatBot");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = v7;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Update fetched brand name for %@ with name: %@", buf, 0x16u);
    }
  }
}

@end