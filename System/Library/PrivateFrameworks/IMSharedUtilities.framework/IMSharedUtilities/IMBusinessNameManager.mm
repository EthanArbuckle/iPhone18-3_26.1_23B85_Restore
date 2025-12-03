@interface IMBusinessNameManager
+ (id)sharedInstance;
- (IMBusinessNameManager)init;
- (id)businessNameForUID:(id)d blockFetch:(BOOL)fetch updateHandler:(id)handler uniqueHandler:(id)uniqueHandler;
- (void)_fetchBusinessNameForUID:(id)d;
- (void)_fetchedBrandName:(id)name forUID:(id)d;
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

- (id)businessNameForUID:(id)d blockFetch:(BOOL)fetch updateHandler:(id)handler uniqueHandler:(id)uniqueHandler
{
  fetchCopy = fetch;
  dCopy = d;
  handlerCopy = handler;
  uniqueHandlerCopy = uniqueHandler;
  if (dCopy && !IMIsRunningInMessagesComposeViewService())
  {
    [(NSLock *)self->_cacheLock lock];
    cache = [(IMBusinessNameManager *)self cache];
    v13 = [cache objectForKey:dCopy];

    [(NSLock *)self->_cacheLock unlock];
    if (v13 || fetchCopy)
    {
      v20 = v13;
    }

    else
    {
      if (!handlerCopy)
      {
        handlerCopy = &unk_1F1BA7888;
      }

      [(NSLock *)self->_cacheLock lock];
      v15 = [(NSMutableDictionary *)self->_pendingRequests objectForKeyedSubscript:dCopy];

      if (!v15)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(NSMutableDictionary *)self->_pendingRequests setObject:v16 forKeyedSubscript:dCopy];
      }

      v17 = [(NSMutableDictionary *)self->_pendingRequests objectForKeyedSubscript:dCopy];
      v18 = _Block_copy(handlerCopy);
      [v17 addObject:v18];

      v19 = _Block_copy(uniqueHandlerCopy);
      [(NSMutableDictionary *)self->_pendingUniqueRequests setObject:v19 forKeyedSubscript:dCopy];

      [(NSLock *)self->_cacheLock unlock];
      if (!v15)
      {
        [(IMBusinessNameManager *)self _fetchBusinessNameForUID:dCopy];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_fetchBusinessNameForUID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  v5 = +[IMBrandManager sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A86C5B08;
  v7[3] = &unk_1E7829AD0;
  v6 = dCopy;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [v5 brandWithURI:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_fetchedBrandName:(id)name forUID:(id)d
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dCopy = d;
  cacheLock = [(IMBusinessNameManager *)self cacheLock];
  [cacheLock lock];

  if ([nameCopy length])
  {
    cache = [(IMBusinessNameManager *)self cache];
    [cache setObject:nameCopy forKey:dCopy];
  }

  pendingRequests = [(IMBusinessNameManager *)self pendingRequests];
  v11 = [pendingRequests objectForKeyedSubscript:dCopy];

  pendingRequests2 = [(IMBusinessNameManager *)self pendingRequests];
  [pendingRequests2 setObject:0 forKeyedSubscript:dCopy];

  cacheLock2 = [(IMBusinessNameManager *)self cacheLock];
  [cacheLock2 unlock];

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

  pendingUniqueRequests = [(IMBusinessNameManager *)self pendingUniqueRequests];
  v20 = [pendingUniqueRequests objectForKeyedSubscript:dCopy];

  if (v20)
  {
    (v20)[2](v20, nameCopy);
    pendingUniqueRequests2 = [(IMBusinessNameManager *)self pendingUniqueRequests];
    [pendingUniqueRequests2 setObject:0 forKeyedSubscript:dCopy];

    v22 = IMLogHandleForCategory("Business_ChatBot");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = dCopy;
      v29 = 2112;
      v30 = nameCopy;
      _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Update fetched brand name for %@ with name: %@", buf, 0x16u);
    }
  }
}

@end