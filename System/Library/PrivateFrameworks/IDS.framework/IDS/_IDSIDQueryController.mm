@interface _IDSIDQueryController
+ (id)_createXPCConnectionOnQueue:(id)a3;
+ (void)initialize;
- (BOOL)_flushQueryCacheForService:(id)a3;
- (BOOL)_sync_refreshIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 completionBlock:(id)a7;
- (BOOL)_warmupQueryCacheForService:(id)a3;
- (BOOL)idInfoForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 infoTypes:(unint64_t)a6 options:(id)a7 listenerID:(id)a8 queue:(id)a9 completionBlock:(id)a10;
- (BOOL)refreshIDStatusForDestination:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8;
- (BOOL)refreshIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 forceRefresh:(BOOL)a7 queue:(id)a8 completionBlock:(id)a9;
- (BOOL)removeListenerID:(id)a3 forService:(id)a4;
- (BOOL)requiredIDStatusForDestination:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8;
- (BOOL)requiredIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8;
- (_IDSIDQueryController)init;
- (_IDSIDQueryController)initWithDelegateContext:(id)a3 queueController:(id)a4;
- (id)__sendMessage:(id)a3 queue:(id)a4 reply:(id)a5 failBlock:(id)a6 waitForReply:(BOOL)a7;
- (id)_cachedStatusForDestination:(id)a3 service:(id)a4;
- (id)_delegateMapForListenerID:(id)a3 service:(id)a4;
- (int64_t)_currentCachedIDStatusForDestination:(id)a3 service:(id)a4 listenerID:(id)a5;
- (void)IDQueryCompletedWithFromURI:(id)a3 idStatusUpdates:(id)a4 service:(id)a5 success:(BOOL)a6 error:(id)a7;
- (void)___oldDealloc;
- (void)_callDelegatesForService:(id)a3 destinationToVerifierResult:(id)a4;
- (void)_callDelegatesWithBlock:(id)a3;
- (void)_callDelegatesWithBlock:(id)a3 delegateMap:(id)a4;
- (void)_connect;
- (void)_disconnectFromQueryService;
- (void)_purgeIDStatusCache;
- (void)_purgeIDStatusCacheAfter:(double)a3;
- (void)_requestCacheForService:(id)a3 completionBlock:(id)a4;
- (void)_requestCachedStatusForDestinations:(id)a3 fromID:(id)a4 service:(id)a5 waitForReply:(BOOL)a6 respectExpiry:(BOOL)a7 listenerID:(id)a8 completionBlock:(id)a9;
- (void)_requestIDInfoForDestinations:(id)a3 fromID:(id)a4 service:(id)a5 infoTypes:(unint64_t)a6 options:(id)a7 listenerID:(id)a8 queue:(id)a9 completionBlock:(id)a10;
- (void)_requestRemoteDevicesForDestination:(id)a3 fromID:(id)a4 service:(id)a5 listenerID:(id)a6 waitForReply:(BOOL)a7 completionBlock:(id)a8;
- (void)_requestStatusForDestinations:(id)a3 fromID:(id)a4 service:(id)a5 waitForReply:(BOOL)a6 forceRefresh:(BOOL)a7 bypassLimit:(BOOL)a8 listenerID:(id)a9 completionBlock:(id)a10;
- (void)_setCurrentIDStatus:(int64_t)a3 forDestination:(id)a4 service:(id)a5;
- (void)_updateCacheWithDictionary:(id)a3 service:(id)a4;
- (void)addDelegate:(id)a3 forService:(id)a4 listenerID:(id)a5 queue:(id)a6;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)addListenerID:(id)a3 forService:(id)a4;
- (void)dealloc;
- (void)flushQueryCache;
- (void)removeDelegate:(id)a3;
- (void)removeDelegate:(id)a3 forService:(id)a4 listenerID:(id)a5;
- (void)setFromID:(id)a3;
@end

@implementation _IDSIDQueryController

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class() && qword_1ED5DDF80 != -1)
  {
    sub_195A02104();
  }
}

- (_IDSIDQueryController)init
{
  v13.receiver = self;
  v13.super_class = _IDSIDQueryController;
  v2 = [(_IDSIDQueryController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    connection = v2->_connection;
    v2->_connection = 0;

    delegateContext = v3->_delegateContext;
    v3->_delegateContext = 0;

    serviceToken = v3->_serviceToken;
    v3->_serviceToken = 0;

    listenerIDToServicesMap = v3->_listenerIDToServicesMap;
    v3->_listenerIDToServicesMap = 0;

    delegateToInfo = v3->_delegateToInfo;
    v3->_delegateToInfo = 0;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("_IDSIDQueryControllerConnectionQueue", v9);
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = v10;
  }

  return v3;
}

- (void)_purgeIDStatusCache
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A05AC8;
  block[3] = &unk_1E743E878;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)___oldDealloc
{
  serviceToken = self->_serviceToken;
  self->_serviceToken = 0;

  listenerIDToServicesMap = self->_listenerIDToServicesMap;
  self->_listenerIDToServicesMap = 0;

  delegateToInfo = self->_delegateToInfo;
  self->_delegateToInfo = 0;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    if (v6)
    {
      v7 = [(NSMapTable *)self->_delegateToInfo objectForKey:v11];

      if (!v7)
      {
        if (!self->_delegateToInfo)
        {
          v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          delegateToInfo = self->_delegateToInfo;
          self->_delegateToInfo = v8;
        }

        v10 = objc_alloc_init(MEMORY[0x1E69A5228]);
        [v10 setQueue:v6];
        [(NSMapTable *)self->_delegateToInfo setObject:v10 forKey:v11];
      }
    }
  }
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMapTable *)self->_delegateToInfo removeObjectForKey:v4];
    if (![(NSMapTable *)self->_delegateToInfo count])
    {
      delegateToInfo = self->_delegateToInfo;
      self->_delegateToInfo = 0;
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_callDelegatesWithBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = a3;
  if (v14)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_delegateToInfo;
    v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [(NSMapTable *)self->_delegateToInfo objectForKey:v9];
          v11 = [v10 queue];
          if (v11)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_195A4AB90;
            block[3] = &unk_1E743F110;
            v12 = v14;
            block[4] = v9;
            v16 = v12;
            dispatch_async(v11, block);
          }
        }

        v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_connect
{
  if (!self->_serviceToken)
  {
    v3 = [MEMORY[0x1E696AEC0] stringGUID];
    serviceToken = self->_serviceToken;
    self->_serviceToken = v3;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)IDQueryCompletedWithFromURI:(id)a3 idStatusUpdates:(id)a4 service:(id)a5 success:(BOOL)a6 error:(id)a7
{
  v30 = a6;
  v48 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  context = objc_autoreleasePoolPush();
  v14 = MEMORY[0x1E696ACD0];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v29 = v18;
  v20 = v10;
  v21 = [v15 setWithObjects:{v16, v17, v29, v19, objc_opt_class(), 0}];
  v35 = 0;
  v22 = [v14 _strictlyUnarchivedObjectOfClasses:v21 fromData:v11 error:&v35];
  v23 = v35;

  v24 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"NO";
    *buf = 138413570;
    v37 = v10;
    v38 = 2112;
    if (v30)
    {
      v25 = @"YES";
    }

    v39 = v22;
    v40 = 2112;
    v41 = v12;
    v42 = 2112;
    v43 = v25;
    v44 = 2112;
    v45 = v13;
    v46 = 2112;
    v47 = v23;
    _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "Received IDQueryCompletedWithFromURI %@ idStatusUpdates %@ service %@ success %@ error %@ decodeError %@", buf, 0x3Eu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A4AEA0;
  block[3] = &unk_1E743EA30;
  block[4] = self;
  v34 = v22;
  v27 = v22;
  dispatch_async(queue, block);

  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x1E69E9840];
}

- (void)addListenerID:(id)a3 forService:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "addListener:forService:", &v19, 2u);
  }

  if (![(NSMutableDictionary *)v6 length])
  {
    v13 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    LOWORD(v19) = 0;
    v17 = "ListenerID is empty, bailing...";
LABEL_20:
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, v17, &v19, 2u);
    goto LABEL_21;
  }

  if (![v7 length])
  {
    v13 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    LOWORD(v19) = 0;
    v17 = "Service name is empty, bailing...";
    goto LABEL_20;
  }

  listenerIDToServicesMap = self->_listenerIDToServicesMap;
  if (!listenerIDToServicesMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = self->_listenerIDToServicesMap;
    self->_listenerIDToServicesMap = Mutable;

    listenerIDToServicesMap = self->_listenerIDToServicesMap;
  }

  v12 = [(NSMutableDictionary *)listenerIDToServicesMap objectForKey:v6];
  v13 = [v12 mutableCopy];

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (([v13 containsObject:v7]& 1) == 0)
  {
    [v13 addObject:v7];
    v14 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "%@ -> %@", &v19, 0x16u);
    }
  }

  [(NSMutableDictionary *)self->_listenerIDToServicesMap setObject:v13 forKey:v6];
  v15 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_listenerIDToServicesMap;
    v19 = 138412290;
    v20 = v16;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Final map after add %@", &v19, 0xCu);
  }

LABEL_21:
  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeListenerID:(id)a3 forService:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "removeListenerID:forService:", &v21, 2u);
  }

  if (![(NSMutableDictionary *)v6 length])
  {
    v10 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      v14 = "ListenerID is empty, bailing...";
LABEL_14:
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, v14, &v21, 2u);
    }

LABEL_15:
    v15 = 0;
    goto LABEL_22;
  }

  if (![v7 length])
  {
    v10 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      v14 = "Service name is empty, bailing...";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v9 = [(NSMutableDictionary *)self->_listenerIDToServicesMap objectForKey:v6];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    [v10 removeObject:v7];
    v11 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ -> %@", &v21, 0x16u);
    }

    v12 = [v10 count];
    listenerIDToServicesMap = self->_listenerIDToServicesMap;
    if (v12)
    {
      [(NSMutableDictionary *)listenerIDToServicesMap setObject:v10 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)listenerIDToServicesMap removeObjectForKey:v6];
    }
  }

  v16 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_listenerIDToServicesMap;
    v21 = 138412290;
    v22 = v17;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Final map after remove %@", &v21, 0xCu);
  }

  if (![(NSMutableDictionary *)self->_listenerIDToServicesMap count])
  {
    v18 = self->_listenerIDToServicesMap;
    self->_listenerIDToServicesMap = 0;
  }

  v15 = 1;
LABEL_22:

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)_disconnectFromQueryService
{
  v3 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Clearing out _connection, we're disconnecting", buf, 2u);
  }

  if (self->_connection)
  {
    v4 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Forcing a disconnect, terminating connection", v6, 2u);
    }

    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
    self->_connection = 0;
  }
}

- (void)_requestCacheForService:(id)a3 completionBlock:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(NSMutableDictionary *)v6 length])
  {
    v8 = +[IDSLogging IDQuery];
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 138412290;
        v43 = v6;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Cache request for service %@", buf, 0xCu);
      }

      v10 = [MEMORY[0x1E696AEC0] stringGUID];
      v11 = [v7 copy];
      transactionIDToBlockMap = self->_transactionIDToBlockMap;
      if (!transactionIDToBlockMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v14 = self->_transactionIDToBlockMap;
        self->_transactionIDToBlockMap = Mutable;

        transactionIDToBlockMap = self->_transactionIDToBlockMap;
      }

      v15 = MEMORY[0x19A8BBEF0](v11);
      [(NSMutableDictionary *)transactionIDToBlockMap setObject:v15 forKey:v10];

      v16 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->_transactionIDToBlockMap;
        *buf = 138412290;
        v43 = v17;
        _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "transactionID map after ADD %@", buf, 0xCu);
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = sub_195AD7A00;
      v39[3] = &unk_1E7442400;
      v39[4] = self;
      v8 = v10;
      v40 = v8;
      v18 = v6;
      v41 = v18;
      v19 = MEMORY[0x19A8BBEF0](v39);
      v20 = xpc_dictionary_create(0, 0, 0);
      v21 = v20;
      if (v20)
      {
        xpc_dictionary_set_BOOL(v20, "service-cache-request", 1);
        IMInsertNSStringsToXPCDictionary();
        IMInsertNSStringsToXPCDictionary();
        if (byte_1ED5DDF30 == 1)
        {
          xpc_dictionary_set_BOOL(v21, "is-springboard", 1);
        }

        v22 = [IDSLogging IDQuery:v8];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v43 = v18;
          v44 = 2112;
          v45 = v8;
          _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Sending cache request for service %@ transactionID %@", buf, 0x16u);
        }

        v23 = [(_IDSIDQueryController *)self __sendMessage:v21 queue:0 reply:0 failBlock:v19 waitForReply:1];
        if (!v23)
        {
          goto LABEL_31;
        }

        v24 = v23;
        v36 = v19;
        v37 = v7;
        v25 = IMGetXPCStringFromDictionary();
        v38 = IMGetXPCDictionaryFromDictionary();
        v26 = IMGetXPCStringFromDictionary();
        objc_opt_class();
        v27 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
        v28 = [(NSMutableDictionary *)self->_transactionIDToBlockMap objectForKey:v26];
        v29 = [v28 copy];

        v30 = v38;
        if (v29)
        {
          (v29)[2](v29, v38, v25, 0, v27);
        }

        if (v26)
        {
          [(NSMutableDictionary *)self->_transactionIDToBlockMap removeObjectForKey:v26];
          v31 = +[IDSLogging IDQuery];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = self->_transactionIDToBlockMap;
            *buf = 138412290;
            v43 = v32;
            _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "transactionID map after REMOVE %@", buf, 0xCu);
          }

          v30 = v38;
        }

        v19 = v36;
        v7 = v37;
      }

      else
      {
        v34 = +[IDSLogging IDQuery];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "Could not create message for cache query", buf, 2u);
        }

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-1000 userInfo:0];
        (v19)[2](v19, v25);
      }

LABEL_31:
      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 134217984;
      v43 = 0;
      v33 = "No block %p, bailing...";
      goto LABEL_26;
    }
  }

  else
  {
    v8 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v6;
      v33 = "No service %@, bailing...";
LABEL_26:
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
    }
  }

LABEL_32:

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_requestCachedStatusForDestinations:(id)a3 fromID:(id)a4 service:(id)a5 waitForReply:(BOOL)a6 respectExpiry:(BOOL)a7 listenerID:(id)a8 completionBlock:(id)a9
{
  v10 = a7;
  v11 = a6;
  v58 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  if (![v17 length])
  {
    v27 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v51 = v17;
    v36 = "No service %@, bailing...";
LABEL_23:
    _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, v36, buf, 0xCu);
    goto LABEL_31;
  }

  if (![v18 length])
  {
    v27 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v51 = v18;
    v36 = "No listenerID %@, bailing...";
    goto LABEL_23;
  }

  if (v19)
  {
    v40 = v10;
    v41 = v11;
    v20 = [MEMORY[0x1E696AEC0] stringGUID];
    v21 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v51 = v15;
      v52 = 2112;
      v53 = v17;
      v54 = 2112;
      v55 = v18;
      v56 = 2112;
      v57 = v20;
      _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "Cached ID status request (destinations: %@)  (service: %@)  (listenerID: %@)  (transactionID: %@)", buf, 0x2Au);
    }

    v22 = [v19 copy];
    transactionIDToBlockMap = self->_transactionIDToBlockMap;
    if (!transactionIDToBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v25 = self->_transactionIDToBlockMap;
      self->_transactionIDToBlockMap = Mutable;

      transactionIDToBlockMap = self->_transactionIDToBlockMap;
    }

    v26 = MEMORY[0x19A8BBEF0](v22);
    [(NSMutableDictionary *)transactionIDToBlockMap setObject:v26 forKey:v20];

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = sub_195AD8040;
    v46[3] = &unk_1E7442428;
    v46[4] = self;
    v27 = v20;
    v47 = v27;
    v28 = v17;
    v48 = v28;
    v29 = v18;
    v49 = v29;
    v42 = MEMORY[0x19A8BBEF0](v46);
    if ([v15 count])
    {
      v30 = xpc_dictionary_create(0, 0, 0);
      v31 = v30;
      if (v30)
      {
        xpc_dictionary_set_BOOL(v30, "cached-id-status-query", 1);
        IMInsertNSStringsToXPCDictionary();
        IMInsertArraysToXPCDictionary();
        IMInsertNSStringsToXPCDictionary();
        if (v16)
        {
          v39 = [v16 unprefixedURI];
          IMInsertNSStringsToXPCDictionary();
        }

        if (byte_1ED5DDF30 == 1)
        {
          xpc_dictionary_set_BOOL(v31, "is-springboard", 1);
        }

        if (v40)
        {
          xpc_dictionary_set_BOOL(v31, "respect-expiry", 1);
        }

        queue = self->_queue;
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = sub_195AD8100;
        v43[3] = &unk_1E7442450;
        v43[4] = self;
        v44 = v27;
        v45 = v29;
        v33 = self;
        v34 = v42;
        v35 = [(_IDSIDQueryController *)v33 __sendMessage:v31 queue:queue reply:v43 failBlock:v42 waitForReply:v41];
      }

      else
      {
        v34 = v42;
      }
    }

    else
    {
      v37 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v37, OS_LOG_TYPE_DEFAULT, "No destinations, not issuing query...", buf, 2u);
      }

      v34 = v42;
      if (!v42)
      {
        goto LABEL_30;
      }

      v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-2000 userInfo:0];
      (*(v42 + 16))(v42, v31);
    }

LABEL_30:
    goto LABEL_31;
  }

  v27 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v51 = 0;
    v36 = "No block %p, bailing...";
    goto LABEL_23;
  }

LABEL_31:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_requestStatusForDestinations:(id)a3 fromID:(id)a4 service:(id)a5 waitForReply:(BOOL)a6 forceRefresh:(BOOL)a7 bypassLimit:(BOOL)a8 listenerID:(id)a9 completionBlock:(id)a10
{
  v10 = a8;
  v49 = a7;
  v11 = a6;
  v67 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v19 = a10;
  if (![(NSMutableDictionary *)v17 length])
  {
    v31 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 138412290;
    v60 = v17;
    v39 = "No service %@, bailing...";
LABEL_27:
    _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
    goto LABEL_35;
  }

  if (![(NSMutableDictionary *)v18 length])
  {
    v31 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 138412290;
    v60 = v18;
    v39 = "No listenerID %@, bailing...";
    goto LABEL_27;
  }

  if (v19)
  {
    v44 = v10;
    v45 = v11;
    v46 = v16;
    v20 = [MEMORY[0x1E696AEC0] stringGUID];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = sub_195AD8994;
    v57[3] = &unk_1E7441850;
    v21 = v17;
    v58 = v21;
    v48 = v15;
    v22 = [v15 __imArrayByApplyingBlock:v57];
    v23 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v60 = v22;
      v61 = 2112;
      v62 = v21;
      v63 = 2112;
      v64 = v18;
      v65 = 2112;
      v66 = v20;
      _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "ID status renewal request (destinations: %@)  (service: %@)  (listenerID: %@)  (transactionID: %@)", buf, 0x2Au);
    }

    v47 = v19;
    v24 = [v19 copy];
    transactionIDToBlockMap = self->_transactionIDToBlockMap;
    if (!transactionIDToBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v27 = self->_transactionIDToBlockMap;
      self->_transactionIDToBlockMap = Mutable;

      transactionIDToBlockMap = self->_transactionIDToBlockMap;
    }

    v28 = MEMORY[0x19A8BBEF0](v24);
    [(NSMutableDictionary *)transactionIDToBlockMap setObject:v28 forKey:v20];

    v29 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_transactionIDToBlockMap;
      *buf = 138412290;
      v60 = v30;
      _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "transactionID map after ADD %@", buf, 0xCu);
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_195AD89AC;
    v53[3] = &unk_1E7442428;
    v53[4] = self;
    v31 = v20;
    v54 = v31;
    v32 = v21;
    v55 = v32;
    v33 = v18;
    v56 = v33;
    v34 = MEMORY[0x19A8BBEF0](v53);
    if ([v48 count])
    {
      v35 = xpc_dictionary_create(0, 0, 0);
      v36 = v35;
      v19 = v47;
      if (v35)
      {
        xpc_dictionary_set_BOOL(v35, "id-status-query", 1);
        IMInsertNSStringsToXPCDictionary();
        IMInsertArraysToXPCDictionary();
        v42 = v32;
        IMInsertNSStringsToXPCDictionary();
        v16 = v46;
        if (v46)
        {
          v43 = [v46 unprefixedURI];
          IMInsertNSStringsToXPCDictionary();
        }

        if (v49)
        {
          xpc_dictionary_set_BOOL(v36, "force", 1);
        }

        if (v44)
        {
          xpc_dictionary_set_BOOL(v36, "bypass-limit", 1);
        }

        if (byte_1ED5DDF30 == 1)
        {
          xpc_dictionary_set_BOOL(v36, "is-springboard", 1);
        }

        queue = self->_queue;
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = sub_195AD8A6C;
        v50[3] = &unk_1E7442450;
        v50[4] = self;
        v51 = v31;
        v52 = v33;
        v38 = [(_IDSIDQueryController *)self __sendMessage:v36 queue:queue reply:v50 failBlock:v34 waitForReply:v45];

        v19 = v47;
        v15 = v48;
      }

      else
      {
        v15 = v48;
        v16 = v46;
      }
    }

    else
    {
      v40 = +[IDSLogging IDQuery];
      v19 = v47;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "No destinations, not issuing query...", buf, 2u);
      }

      v15 = v48;
      v16 = v46;
      if (!v34)
      {
        goto LABEL_34;
      }

      v36 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-2000 userInfo:0];
      (v34)[2](v34, v36);
    }

LABEL_34:
    goto LABEL_35;
  }

  v31 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v60 = 0;
    v39 = "No block %p, bailing...";
    goto LABEL_27;
  }

LABEL_35:

  v41 = *MEMORY[0x1E69E9840];
}

- (void)_requestRemoteDevicesForDestination:(id)a3 fromID:(id)a4 service:(id)a5 listenerID:(id)a6 waitForReply:(BOOL)a7 completionBlock:(id)a8
{
  v9 = a7;
  v62 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (![(NSMutableDictionary *)v16 length])
  {
    v28 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    v55 = v16;
    v39 = "No service %@, bailing...";
LABEL_25:
    _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
    goto LABEL_33;
  }

  if (![(NSMutableDictionary *)v17 length])
  {
    v28 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    v55 = v17;
    v39 = "No listenerID %@, bailing...";
    goto LABEL_25;
  }

  if (v18)
  {
    v44 = v9;
    v46 = v15;
    v19 = [MEMORY[0x1E696AEC0] stringGUID];
    v20 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v55 = v14;
      v56 = 2112;
      v57 = v16;
      v58 = 2112;
      v59 = v17;
      v60 = 2112;
      v61 = v19;
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "ID remote device request (destination: %@)  (service: %@)  (listenerID: %@)  (transactionID: %@)", buf, 0x2Au);
    }

    v21 = [v18 copy];
    transactionIDToBlockMap = self->_transactionIDToBlockMap;
    if (!transactionIDToBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v24 = self->_transactionIDToBlockMap;
      self->_transactionIDToBlockMap = Mutable;

      transactionIDToBlockMap = self->_transactionIDToBlockMap;
    }

    v25 = MEMORY[0x19A8BBEF0](v21);
    [(NSMutableDictionary *)transactionIDToBlockMap setObject:v25 forKey:v19];

    v26 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_transactionIDToBlockMap;
      *buf = 138412290;
      v55 = v27;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "transactionID map after ADD %@", buf, 0xCu);
    }

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = sub_195AD9308;
    v50[3] = &unk_1E7442428;
    v50[4] = self;
    v28 = v19;
    v51 = v28;
    v29 = v16;
    v52 = v29;
    v30 = v17;
    v53 = v30;
    v45 = MEMORY[0x19A8BBEF0](v50);
    v31 = [(NSMutableDictionary *)v14 destinationURIs];
    v32 = [v31 count];

    if (v32)
    {
      v33 = xpc_dictionary_create(0, 0, 0);
      v34 = v33;
      if (v33)
      {
        xpc_dictionary_set_BOOL(v33, "remote-device-status-query", 1);
        IMInsertNSStringsToXPCDictionary();
        IMInsertKeyedCodableObjectsToXPCDictionary();
        v42 = v29;
        IMInsertNSStringsToXPCDictionary();
        v15 = v46;
        if (v46)
        {
          v43 = [v46 unprefixedURI];
          IMInsertNSStringsToXPCDictionary();
        }

        if (byte_1ED5DDF30 == 1)
        {
          xpc_dictionary_set_BOOL(v34, "is-springboard", 1);
        }

        if (v44)
        {
          xpc_dictionary_set_BOOL(v34, "disallow-query", 1);
        }

        queue = self->_queue;
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = sub_195AD93C8;
        v47[3] = &unk_1E7442450;
        v47[4] = self;
        v48 = v28;
        v49 = v30;
        v36 = queue;
        v37 = v45;
        v38 = [(_IDSIDQueryController *)self __sendMessage:v34 queue:v36 reply:v47 failBlock:v45 waitForReply:v44];
      }

      else
      {
        v37 = v45;
        v15 = v46;
      }
    }

    else
    {
      v40 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "No destinations, not issuing query...", buf, 2u);
      }

      v37 = v45;
      v15 = v46;
      if (!v45)
      {
        goto LABEL_32;
      }

      v34 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-2000 userInfo:0];
      (*(v45 + 16))(v45, v34);
    }

LABEL_32:
    goto LABEL_33;
  }

  v28 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v55 = 0;
    v39 = "No block %p, bailing...";
    goto LABEL_25;
  }

LABEL_33:

  v41 = *MEMORY[0x1E69E9840];
}

- (void)_requestIDInfoForDestinations:(id)a3 fromID:(id)a4 service:(id)a5 infoTypes:(unint64_t)a6 options:(id)a7 listenerID:(id)a8 queue:(id)a9 completionBlock:(id)a10
{
  v63 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a10;
  if (![(NSMutableDictionary *)v17 length])
  {
    v30 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v56 = v17;
    v41 = "No service %@, bailing...";
LABEL_23:
    _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
    goto LABEL_31;
  }

  if (![(NSMutableDictionary *)v19 length])
  {
    v30 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v56 = v19;
    v41 = "No listenerID %@, bailing...";
    goto LABEL_23;
  }

  if (v20)
  {
    v46 = v16;
    v47 = v18;
    v21 = [MEMORY[0x1E696AEC0] stringGUID];
    v22 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v56 = v15;
      v57 = 2112;
      v58 = v17;
      v59 = 2112;
      v60 = v19;
      v61 = 2112;
      v62 = v21;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "ID remote device request (destination: %@)  (service: %@)  (listenerID: %@)  (transactionID: %@)", buf, 0x2Au);
    }

    v23 = [v20 copy];
    transactionIDToBlockMap = self->_transactionIDToBlockMap;
    if (!transactionIDToBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v26 = self->_transactionIDToBlockMap;
      self->_transactionIDToBlockMap = Mutable;

      transactionIDToBlockMap = self->_transactionIDToBlockMap;
    }

    v27 = MEMORY[0x19A8BBEF0](v23);
    [(NSMutableDictionary *)transactionIDToBlockMap setObject:v27 forKey:v21];

    v28 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = self->_transactionIDToBlockMap;
      *buf = 138412290;
      v56 = v29;
      _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "transactionID map after ADD %@", buf, 0xCu);
    }

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = sub_195AD9CA0;
    v51[3] = &unk_1E7442428;
    v51[4] = self;
    v30 = v21;
    v52 = v30;
    v53 = v17;
    v31 = v19;
    v54 = v31;
    v45 = MEMORY[0x19A8BBEF0](v51);
    v32 = [(NSMutableDictionary *)v15 destinationURIs];
    v33 = [v32 count];

    if (v33)
    {
      v34 = xpc_dictionary_create(0, 0, 0);
      v35 = v34;
      if (v34)
      {
        xpc_dictionary_set_BOOL(v34, "id-status-info-query", 1);
        IMInsertNSStringsToXPCDictionary();
        IMInsertKeyedCodableObjectsToXPCDictionary();
        IMInsertNSStringsToXPCDictionary();
        IMInsertIntsToXPCDictionary();
        IMInsertKeyedCodableObjectsToXPCDictionary();
        v16 = v46;
        if (v46)
        {
          v44 = [v46 unprefixedURI];
          IMInsertNSStringsToXPCDictionary();
        }

        if (byte_1ED5DDF30 == 1)
        {
          xpc_dictionary_set_BOOL(v35, "is-springboard", 1);
        }

        queue = self->_queue;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = sub_195AD9D60;
        v48[3] = &unk_1E7442450;
        v48[4] = self;
        v49 = v30;
        v50 = v31;
        v37 = [v47 waitForReply];
        v38 = queue;
        v18 = v47;
        v39 = v45;
        v40 = [(_IDSIDQueryController *)self __sendMessage:v35 queue:v38 reply:v48 failBlock:v45 waitForReply:v37];
      }

      else
      {
        v16 = v46;
        v18 = v47;
        v39 = v45;
      }
    }

    else
    {
      v42 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "No destinations, not issuing query...", buf, 2u);
      }

      v16 = v46;
      v18 = v47;
      v39 = v45;
      if (!v45)
      {
        goto LABEL_30;
      }

      v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-2000 userInfo:0];
      (*(v45 + 16))(v45, v35);
    }

LABEL_30:
    goto LABEL_31;
  }

  v30 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v56 = 0;
    v41 = "No block %p, bailing...";
    goto LABEL_23;
  }

LABEL_31:

  v43 = *MEMORY[0x1E69E9840];
}

- (id)__sendMessage:(id)a3 queue:(id)a4 reply:(id)a5 failBlock:(id)a6 waitForReply:(BOOL)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (!v13)
    {
      v13 = dispatch_get_global_queue(0, 0);
    }

    connection = self->_connection;
    if (connection)
    {
      v17 = connection;
    }

    else
    {
      v19 = [objc_opt_class() _createXPCConnectionOnQueue:self->_connectionQueue];
      v20 = self->_connection;
      self->_connection = v19;

      v21 = self->_connection;
      if (!v21)
      {
        v25 = +[IDSLogging IDQuery];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "No connection to send message on", buf, 2u);
        }

        v17 = 0;
        v18 = 0;
        goto LABEL_16;
      }

      v17 = v21;
      v22 = self->_connection;
      v32 = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = sub_195ADA39C;
      v35 = &unk_1E743E878;
      v36 = self;
      IMXPCConfigureConnection();
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_195ADA490;
    v29[3] = &unk_1E7442478;
    v30 = v15;
    v31 = v14;
    v23 = MEMORY[0x19A8BBEF0](v29);
    v24 = [MEMORY[0x1E696AE30] processInfo];
    v28 = [v24 processName];
    IMInsertNSStringsToXPCDictionary();

    if (a7)
    {
      v18 = xpc_connection_send_message_with_reply_sync(v17, v12);
      if (v23)
      {
        (v23)[2](v23, v18);
      }
    }

    else
    {
      xpc_connection_send_message_with_reply(v17, v12, v13, v23);
      v18 = 0;
    }

    v25 = v30;
LABEL_16:

    goto LABEL_17;
  }

  v17 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = 0;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "No message to send %@, ignoring...", buf, 0xCu);
  }

  v18 = 0;
LABEL_17:

  v26 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)_createXPCConnectionOnQueue:(id)a3
{
  v3 = *MEMORY[0x1E69A5440];
  v4 = a3;
  [v3 UTF8String];
  v5 = IMXPCCreateConnectionForServiceWithQueue();

  return v5;
}

- (_IDSIDQueryController)initWithDelegateContext:(id)a3 queueController:(id)a4
{
  v5 = a4;
  v6 = [(_IDSIDQueryController *)self init];
  if (v6)
  {
    v7 = [MEMORY[0x1E6995700] weakRefWithObject:v6->_delegateContext];
    delegateContext = v6->_delegateContext;
    v6->_delegateContext = v7;

    connection = v6->_connection;
    v6->_connection = 0;

    v10 = [v5 queue];
    queue = v6->_queue;
    v6->_queue = v10;

    if (!v6->_queue)
    {
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("_IDSIDQueryControllerQueue", v12);
      v14 = v6->_queue;
      v6->_queue = v13;
    }

    v15 = [MEMORY[0x1E696AEC0] stringGUID];
    serviceToken = v6->_serviceToken;
    v6->_serviceToken = v15;

    v17 = [MEMORY[0x1E696AEC0] stringGUID];
    listenerGUID = v6->_listenerGUID;
    v6->_listenerGUID = v17;
  }

  return v6;
}

- (void)dealloc
{
  [(_IDSIDQueryController *)self ___oldDealloc];
  [(_IDSIDQueryController *)self _disconnectFromQueryService];
  v3 = +[IDSDaemonController sharedInstance];
  [v3 removeListenerID:self->_listenerGUID];

  v4.receiver = self;
  v4.super_class = _IDSIDQueryController;
  [(_IDSIDQueryController *)&v4 dealloc];
}

- (void)setFromID:(id)a3
{
  v3 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "This has been deprecated, please adopt the preferredFromID query APIs", v4, 2u);
  }
}

- (id)_cachedStatusForDestination:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_idStatusCache && [v6 length] && objc_msgSend(v7, "length"))
  {
    v8 = [(_IDSIDQueryController *)self _cacheForService:v7];
    v9 = [v8 objectForKey:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateCacheWithDictionary:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_idStatusCache)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    idStatusCache = self->_idStatusCache;
    self->_idStatusCache = Mutable;

    [(_IDSIDQueryController *)self _purgeIDStatusCacheAfter:5.0];
  }

  if ([v6 count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195AE6E9C;
    v12[3] = &unk_1E743FD20;
    v12[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
  }

  else if ([v7 length])
  {
    v10 = self->_idStatusCache;
    v11 = [MEMORY[0x1E695DF20] dictionary];
    [(NSMutableDictionary *)v10 setObject:v11 forKey:v7];
  }
}

- (void)_purgeIDStatusCacheAfter:(double)a3
{
  objc_initWeak(&location, self->_idStatusCache);
  v5 = dispatch_time(0, (a3 * 1000000000.0));
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AE7034;
  block[3] = &unk_1E743EDC8;
  objc_copyWeak(&v8, &location);
  block[4] = self;
  dispatch_after(v5, queue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_callDelegatesWithBlock:(id)a3 delegateMap:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            v13 = [v7 objectForKey:v12];
            v14 = [v13 queue];
            if (v14)
            {
              v17[0] = MEMORY[0x1E69E9820];
              v17[1] = 3221225472;
              v17[2] = sub_195AE7288;
              v17[3] = &unk_1E743F110;
              v15 = v5;
              v17[4] = v12;
              v18 = v15;
              dispatch_async(v14, v17);
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_delegateMapForListenerID:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 length])
  {
    v9 = [(NSMutableDictionary *)self->_listeners objectForKey:v6];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKey:v8];
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

  return v11;
}

- (void)_callDelegatesForService:(id)a3 destinationToVerifierResult:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "count"))
  {
    v8 = [(NSMutableDictionary *)self->_listeners allValues];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * v12) objectForKey:v6];
          if (v13)
          {
            v15[0] = MEMORY[0x1E69E9820];
            v15[1] = 3221225472;
            v15[2] = sub_195AE7510;
            v15[3] = &unk_1E74428E0;
            v16 = v6;
            v17 = v7;
            [(_IDSIDQueryController *)self _callDelegatesWithBlock:v15 delegateMap:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentIDStatus:(int64_t)a3 forDestination:(id)a4 service:(id)a5
{
  v6 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    v11 = v10;
    if (v10)
    {
      xpc_dictionary_set_BOOL(v10, "set-id-status", 1);
      IMInsertIntsToXPCDictionary();
      IMInsertNSStringsToXPCDictionary();
      IMInsertNSStringsToXPCDictionary();
      v12 = [IDSLogging IDQuery:v8];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        v16 = v6;
        v17 = 2112;
        v18 = v9;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Sending ID status update (%d) for service %@ destination %@", buf, 0x1Cu);
      }

      v13 = [(_IDSIDQueryController *)self __sendMessage:v11 queue:0 reply:0 failBlock:0 waitForReply:0];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)flushQueryCache
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, "flush-query-cache", 1);
    v5 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Sending query cache flush", v7, 2u);
    }

    v6 = [(_IDSIDQueryController *)self __sendMessage:v4 queue:0 reply:0 failBlock:0 waitForReply:0];
  }
}

- (BOOL)_sync_refreshIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 completionBlock:(id)a7
{
  BYTE2(v8) = 0;
  LOWORD(v8) = 1;
  return [_IDSIDQueryController _refreshIDStatusForDestinations:"_refreshIDStatusForDestinations:service:preferredFromID:listenerID:allowRefresh:respectExpiry:waitForReply:forceRefresh:bypassLimit:queue:completionBlock:" service:a3 preferredFromID:a4 listenerID:a5 allowRefresh:a6 respectExpiry:1 waitForReply:1 forceRefresh:v8 bypassLimit:0 queue:a7 completionBlock:?];
}

- (BOOL)refreshIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 forceRefresh:(BOOL)a7 queue:(id)a8 completionBlock:(id)a9
{
  BYTE2(v10) = 0;
  BYTE1(v10) = a7;
  LOBYTE(v10) = 0;
  return [_IDSIDQueryController _refreshIDStatusForDestinations:"_refreshIDStatusForDestinations:service:preferredFromID:listenerID:allowRefresh:respectExpiry:waitForReply:forceRefresh:bypassLimit:queue:completionBlock:" service:a3 preferredFromID:a4 listenerID:a5 allowRefresh:a6 respectExpiry:1 waitForReply:1 forceRefresh:v10 bypassLimit:a8 queue:a9 completionBlock:?];
}

- (BOOL)refreshIDStatusForDestination:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = IMSingleObjectArray();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195AE8B00;
  v25[3] = &unk_1E7442980;
  v27 = v15;
  v28 = v16;
  v26 = v14;
  v21 = v15;
  v22 = v14;
  v23 = v16;
  LOBYTE(self) = [(_IDSIDQueryController *)self refreshIDStatusForDestinations:v20 service:v21 preferredFromID:v19 listenerID:v18 forceRefresh:0 queue:v17 completionBlock:v25];

  return self;
}

- (BOOL)requiredIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8
{
  BYTE2(v9) = 1;
  LOWORD(v9) = 0;
  return [_IDSIDQueryController _refreshIDStatusForDestinations:"_refreshIDStatusForDestinations:service:preferredFromID:listenerID:allowRefresh:respectExpiry:waitForReply:forceRefresh:bypassLimit:queue:completionBlock:" service:a3 preferredFromID:a4 listenerID:a5 allowRefresh:a6 respectExpiry:1 waitForReply:1 forceRefresh:v9 bypassLimit:a7 queue:a8 completionBlock:?];
}

- (BOOL)requiredIDStatusForDestination:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = IMSingleObjectArray();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_195AE8DE8;
  v24[3] = &unk_1E74429A8;
  v25 = v14;
  v26 = v15;
  v21 = v14;
  v22 = v15;
  LOBYTE(self) = [(_IDSIDQueryController *)self requiredIDStatusForDestinations:v20 service:v19 preferredFromID:v18 listenerID:v17 queue:v16 completionBlock:v24];

  return self;
}

- (BOOL)idInfoForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 infoTypes:(unint64_t)a6 options:(id)a7 listenerID:(id)a8 queue:(id)a9 completionBlock:(id)a10
{
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_195AE9E40;
  v32[3] = &unk_1E7442A98;
  v32[4] = self;
  v33 = v16;
  v35 = v17;
  v36 = v18;
  v34 = v15;
  v19 = v17;
  v20 = v15;
  v30 = v18;
  v21 = v16;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = MEMORY[0x19A8BBEF0](v32);
  v26 = MEMORY[0x1E69A5240];
  v27 = [MEMORY[0x1E695DFD8] setWithArray:v24];

  v28 = [v26 destinationWithDestinations:v27];

  [(_IDSIDQueryController *)self _requestIDInfoForDestinations:v28 fromID:v22 service:v23 infoTypes:a6 options:v20 listenerID:v21 queue:v19 completionBlock:v25];
  return 1;
}

- (int64_t)_currentCachedIDStatusForDestination:(id)a3 service:(id)a4 listenerID:(id)a5
{
  v5 = [(_IDSIDQueryController *)self _cachedStatusForDestination:a3 service:a4, a5];
  v6 = [v5 integerValue];

  return v6;
}

- (BOOL)_warmupQueryCacheForService:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "_warmupQueryCacheForService:  (service: %@)", buf, 0xCu);
  }

  v6 = [v4 length];
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195AEA5F8;
    v10[3] = &unk_1E7442AC0;
    v10[4] = self;
    v11 = v4;
    [(_IDSIDQueryController *)self _requestCacheForService:v11 completionBlock:v10];
  }

  else
  {
    v7 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "No service name, bailing...", buf, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (BOOL)_flushQueryCacheForService:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "_flushQueryCacheForService:  (service: %@)", &v10, 0xCu);
  }

  v6 = [v4 length];
  if (v6)
  {
    p_super = &self->_idStatusCache->super.super;
    self->_idStatusCache = 0;
  }

  else
  {
    p_super = +[IDSLogging IDQuery];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1959FF000, p_super, OS_LOG_TYPE_DEFAULT, "No service name, bailing...", &v10, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (void)addDelegate:(id)a3 forService:(id)a4 listenerID:(id)a5 queue:(id)a6
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v41 = v10;
    v42 = 2112;
    v43 = v11;
    v44 = 2112;
    v45 = v12;
    v46 = 2048;
    v47 = v13;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "addDelegate:forService:listenerID:queue:  (delegate: %p)   (service: %@)   (listenerID: %@)   (queue: %p)", buf, 0x2Au);
  }

  if (v10 && v13 && [v11 length] && objc_msgSend(v12, "length"))
  {
    listeners = self->_listeners;
    if (!listeners)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v17 = self->_listeners;
      self->_listeners = Mutable;

      listeners = self->_listeners;
    }

    v18 = [(NSMutableDictionary *)listeners objectForKey:v12];
    v19 = [v18 mutableCopy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v22 = v21;

    v23 = [v22 objectForKey:v11];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    }

    v26 = v25;

    v27 = [v26 objectForKey:v10];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x1E69A5228]);
    }

    v30 = v29;

    [v30 setQueue:v13];
    [v26 setObject:v30 forKey:v10];
    [v22 setObject:v26 forKey:v11];
    [(NSMutableDictionary *)self->_listeners setObject:v22 forKey:v12];
    v31 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(NSMutableDictionary *)self->_listeners allKeys];
      *buf = 138412290;
      v41 = v32;
      _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "Listeners after ADD %@", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      v39 = v30;
      v33 = +[IDSDaemonController sharedInstance];
      listenerGUID = self->_listenerGUID;
      v35 = [MEMORY[0x1E695DFD8] setWithObject:v11];
      [v33 addListenerID:listenerGUID services:v35];

      v36 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = self->_listenerGUID;
        *buf = 138412290;
        v41 = v37;
        _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "Adding listener for KT Peer Verification Results notification: %@", buf, 0xCu);
      }

      v30 = v39;
    }
  }

  else
  {
    v22 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Invalid add delegate params -- bailing...", buf, 2u);
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)removeDelegate:(id)a3 forService:(id)a4 listenerID:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218498;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "removeDelegate:forService:listenerID:  (delegate: %p)   (service: %@)   (listenerID: %@)", &v20, 0x20u);
  }

  if (v8 && [v9 length] && objc_msgSend(v10, "length"))
  {
    v12 = [(NSMutableDictionary *)self->_listeners objectForKey:v10];
    v13 = [v12 mutableCopy];

    v14 = [v13 objectForKey:v9];
    v15 = v14;
    if (v13 && v14)
    {
      [v14 removeObjectForKey:v8];
      if (![v15 count])
      {
        [v13 removeObjectForKey:v9];
      }

      if (![v13 count])
      {
        [(NSMutableDictionary *)self->_listeners removeObjectForKey:v10];
      }

      if (![(NSMutableDictionary *)self->_listeners count])
      {
        listeners = self->_listeners;
        self->_listeners = 0;
      }

      v17 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(NSMutableDictionary *)self->_listeners allKeys];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Listeners after REMOVE %@", &v20, 0xCu);
      }
    }
  }

  else
  {
    v13 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Invalid remove delegate params -- bailing...", &v20, 2u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end