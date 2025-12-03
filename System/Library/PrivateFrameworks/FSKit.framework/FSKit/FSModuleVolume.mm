@interface FSModuleVolume
+ (id)volumeWithName:(id)name resource:(id)resource;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FSModuleVolume)initWithVolume:(id)volume resource:(id)resource;
- (id)getAndRemoveItemForFH:(id)h;
- (id)getItemForFH:(id)h;
- (id)stopUsingVolume;
- (int64_t)getMaxFileSizeInBits;
- (int64_t)getMaxXattrSizeInBits;
- (unsigned)newConnectionID:(id)d;
- (void)fetchAndSetTypeForItem:(id)item replyHandler:(id)handler;
- (void)insertIntoFHCache:(id)cache;
- (void)removeConnectionByID:(unsigned __int8)d;
- (void)removeFromFHCache:(id)cache;
- (void)updateRootItem:(id)item replyHandler:(id)handler;
@end

@implementation FSModuleVolume

- (FSModuleVolume)initWithVolume:(id)volume resource:(id)resource
{
  v36 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  resourceCopy = resource;
  v33.receiver = self;
  v33.super_class = FSModuleVolume;
  v9 = [(FSModuleVolume *)&v33 init];
  if (v9)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    listener = v9->_listener;
    v9->_listener = anonymousListener;

    [(NSXPCListener *)v9->_listener setDelegate:v9];
    [(NSXPCListener *)v9->_listener resume];
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v9->_listener;
      *buf = 138412290;
      v35 = v13;
      _os_log_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEFAULT, "Built listener %@", buf, 0xCu);
    }

    objc_storeStrong(&v9->_volume, volume);
    objc_storeStrong(&v9->_resource, resource);
    v14 = objc_opt_new();
    connections = v9->_connections;
    v9->_connections = v14;

    v16 = objc_opt_new();
    fileHandleToItemTable = v9->_fileHandleToItemTable;
    v9->_fileHandleToItemTable = v16;

    rootFSItem = v9->_rootFSItem;
    v9->_rootFSItem = 0;

    v9->connectionCount = 0;
    *&v9->validConnections = 256;
    v9->_supportsKOIOOps = [volumeCopy conformsToProtocol:&unk_285E05FA8];
    v9->_supportsReadWriteOps = [volumeCopy conformsToProtocol:&unk_285E06008];
    v9->_supportsCloneOps = [volumeCopy conformsToProtocol:&unk_285E06068];
    v9->_supportsItemDeactivation = [volumeCopy conformsToProtocol:&unk_285E060C8];
    v19 = [volumeCopy conformsToProtocol:&unk_285E06128];
    v20 = 0;
    if (v19)
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [volumeCopy xattrOperationsInhibited] ^ 1;
      }

      else
      {
        v20 = 1;
      }
    }

    v9->_supportsXattrOps = v20;
    if ([volumeCopy conformsToProtocol:&unk_285E06188])
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [volumeCopy isOpenCloseInhibited] ^ 1;
      }

      else
      {
        v21 = 1;
      }
    }

    else
    {
      v21 = 0;
    }

    v9->_supportsOpenCloseOps = v21;
    if ([volumeCopy conformsToProtocol:&unk_285E061E8])
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = [volumeCopy isAccessCheckInhibited] ^ 1;
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 0;
    }

    v9->_supportsAccessOps = v22;
    if ([volumeCopy conformsToProtocol:&unk_285E06248])
    {
      if (objc_opt_respondsToSelector())
      {
        v23 = [volumeCopy isVolumeRenameInhibited] ^ 1;
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
      v23 = 0;
    }

    v9->_supportsVolumeRenameOps = v23;
    if ([volumeCopy conformsToProtocol:&unk_285E062A8])
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [volumeCopy isPreallocateInhibited] ^ 1;
      }

      else
      {
        v24 = 1;
      }
    }

    else
    {
      v24 = 0;
    }

    v9->_supportsPreallocateOps = v24;
    if (v9->_supportsXattrOps)
    {
      v25 = objc_opt_respondsToSelector();
    }

    else
    {
      v25 = 0;
    }

    v9->_supportsLimitedXattrOps = v25 & 1;
    if (objc_opt_respondsToSelector())
    {
      v26 = [volumeCopy enableOpenUnlinkEmulation] ^ 1;
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    v9->_supportsOpenUnlink = v26;
    v27 = [resourceCopy kind] != 3 && objc_msgSend(resourceCopy, "kind") != 2;
    v9->_reportAsLocal = v27;
    v28 = dispatch_queue_create("FSModuleVolumeFileHandleQueue", 0);
    fileHandleQueue = v9->_fileHandleQueue;
    v9->_fileHandleQueue = v28;

    if (resourceCopy)
    {
      v30 = [resourceCopy kind] == 1;
    }

    else
    {
      v30 = 0;
    }

    v9->_useMetaDataIO = v30;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)volumeWithName:(id)name resource:(id)resource
{
  resourceCopy = resource;
  nameCopy = name;
  v8 = [[self alloc] initWithVolume:nameCopy resource:resourceCopy];

  return v8;
}

- (void)updateRootItem:(id)item replyHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  resource = [(FSModuleVolume *)self resource];
  if (resource)
  {
    v9 = resource;
    resource2 = [(FSModuleVolume *)self resource];
    kind = [resource2 kind];

    if (kind == 1)
    {
      resource3 = [(FSModuleVolume *)self resource];
      v13 = [(FSResource *)FSBlockDeviceResource dynamicCast:resource3];

      v14 = [v13 startUsingResource:@"activateVolume"];
      if (v14)
      {
        self->_supportsKOIOOps = 0;
        self->_useMetaDataIO = 0;
      }
    }
  }

  rootFSItem = self->_rootFSItem;
  self->_rootFSItem = itemCopy;
  v16 = itemCopy;

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__FSModuleVolume_Project__updateRootItem_replyHandler___block_invoke;
  v18[3] = &unk_278FED6E0;
  v18[4] = self;
  v19 = handlerCopy;
  v17 = handlerCopy;
  [(FSModuleVolume *)self fetchAndSetTypeForItem:v16 replyHandler:v18];
}

uint64_t __55__FSModuleVolume_Project__updateRootItem_replyHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = v2[7];

  return [v2 insertIntoFHCache:v3];
}

- (id)stopUsingVolume
{
  resource = [(FSModuleVolume *)self resource];
  if (resource && (v4 = resource, -[FSModuleVolume resource](self, "resource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 kind], v5, v4, v6 == 1))
  {
    resource2 = [(FSModuleVolume *)self resource];
    v8 = [(FSResource *)FSBlockDeviceResource dynamicCast:resource2];

    v9 = [v8 stopUsingResource:@"activateVolume"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unsigned)newConnectionID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connectionCount = selfCopy->connectionCount;
  if (connectionCount <= 7)
  {
    v8 = 0;
    selfCopy->connectionCount = connectionCount + 1;
    validConnections = selfCopy->validConnections;
    do
    {
      v7 = 1 << v8;
      v10 = ((1 << v8) & validConnections) == 0 || v8 == 7;
      ++v8;
    }

    while (!v10);
    selfCopy->validConnections = validConnections | v7;
    connections = selfCopy->_connections;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    [(NSMutableDictionary *)connections setObject:dCopy forKey:v12];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)removeConnectionByID:(unsigned __int8)d
{
  dCopy = d;
  obj = self;
  objc_sync_enter(obj);
  obj->validConnections &= ~dCopy;
  connections = obj->_connections;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy];
  [(NSMutableDictionary *)connections removeObjectForKey:v5];

  --obj->connectionCount;
  objc_sync_exit(obj);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v30 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[FSModuleVolume(Project) listener:shouldAcceptNewConnection:]";
    _os_log_impl(&dword_24A929000, v8, OS_LOG_TYPE_DEFAULT, "%s:start", buf, 0xCu);
  }

  v9 = [(FSModuleVolume *)self newConnectionID:connectionCopy];
  if (v9)
  {
    v10 = +[FSKitConstants FSVolumeXPCProtocol];
    [connectionCopy setExportedInterface:v10];

    v11 = [FSVolumeConnector volumeConnectorModuleVolume:self connection:connectionCopy];
    [connectionCopy setExportedObject:v11];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__FSModuleVolume_Project__listener_shouldAcceptNewConnection___block_invoke;
    aBlock[3] = &unk_278FED708;
    objc_copyWeak(&v25, &location);
    v26 = v9;
    v12 = _Block_copy(aBlock);
    [connectionCopy setInvalidationHandler:v12];
    [connectionCopy setInterruptionHandler:v12];
    [connectionCopy resume];
    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[FSModuleVolume(Project) listener:shouldAcceptNewConnection:]";
      _os_log_impl(&dword_24A929000, v13, OS_LOG_TYPE_DEFAULT, "%s:accepted", buf, 0xCu);
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = fskit_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(FSModuleVolume(Project) *)v14 listener:v15 shouldAcceptNewConnection:v16, v17, v18, v19, v20, v21];
    }

    [connectionCopy invalidate];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9 != 0;
}

void __62__FSModuleVolume_Project__listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained removeConnectionByID:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (id)getItemForFH:(id)h
{
  hCopy = h;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  fileHandleQueue = self->_fileHandleQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FSModuleVolume_Project__getItemForFH___block_invoke;
  block[3] = &unk_278FED730;
  v10 = hCopy;
  v11 = &v12;
  block[4] = self;
  v6 = hCopy;
  dispatch_sync(fileHandleQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __40__FSModuleVolume_Project__getItemForFH___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)insertIntoFHCache:(id)cache
{
  cacheCopy = cache;
  fileHandleQueue = self->_fileHandleQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__FSModuleVolume_Project__insertIntoFHCache___block_invoke;
  v7[3] = &unk_278FED758;
  v7[4] = self;
  v8 = cacheCopy;
  v6 = cacheCopy;
  dispatch_sync(fileHandleQueue, v7);
}

void __45__FSModuleVolume_Project__insertIntoFHCache___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 64);
  v3 = [v1 fileHandle];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

- (void)removeFromFHCache:(id)cache
{
  cacheCopy = cache;
  fileHandleQueue = self->_fileHandleQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__FSModuleVolume_Project__removeFromFHCache___block_invoke;
  v7[3] = &unk_278FED758;
  v7[4] = self;
  v8 = cacheCopy;
  v6 = cacheCopy;
  dispatch_sync(fileHandleQueue, v7);
}

void __45__FSModuleVolume_Project__removeFromFHCache___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v2 = [*(a1 + 40) fileHandle];
  [v1 removeObjectForKey:v2];
}

- (id)getAndRemoveItemForFH:(id)h
{
  hCopy = h;
  v5 = hCopy;
  if (hCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    fileHandleQueue = self->_fileHandleQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__FSModuleVolume_Project__getAndRemoveItemForFH___block_invoke;
    block[3] = &unk_278FED730;
    v12 = &v13;
    block[4] = self;
    v11 = hCopy;
    dispatch_sync(fileHandleQueue, block);
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FSModuleVolume(Project) getAndRemoveItemForFH:];
    }

    v7 = 0;
  }

  return v7;
}

uint64_t __49__FSModuleVolume_Project__getAndRemoveItemForFH___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 64);

  return [v6 removeObjectForKey:v5];
}

- (int64_t)getMaxFileSizeInBits
{
  volume = self->_volume;
  v4 = objc_opt_respondsToSelector();
  v5 = self->_volume;
  if (v4)
  {

    return [(FSVolumeOperations *)v5 maximumFileSizeInBits];
  }

  else if (objc_opt_respondsToSelector())
  {
    return (ceil(log2(([(FSVolumeOperations *)self->_volume maximumFileSize]+ 1))) + 1.0);
  }

  else
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FSModuleVolume(Project) getMaxFileSizeInBits];
    }

    return 0;
  }
}

- (int64_t)getMaxXattrSizeInBits
{
  volume = self->_volume;
  v4 = objc_opt_respondsToSelector();
  v5 = self->_volume;
  if (v4)
  {

    return [(FSVolumeOperations *)v5 maximumXattrSizeInBits];
  }

  else if (objc_opt_respondsToSelector())
  {
    return (ceil(log2(([(FSVolumeOperations *)self->_volume maximumXattrSize]+ 1))) + 1.0);
  }

  else
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FSModuleVolume(Project) getMaxXattrSizeInBits];
    }

    return 0;
  }
}

- (void)fetchAndSetTypeForItem:(id)item replyHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  volume = self->_volume;
  v9 = [[FSItemGetAttributesRequest alloc] initWithWantedLIAttributes:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__FSModuleVolume_Project__fetchAndSetTypeForItem_replyHandler___block_invoke;
  v12[3] = &unk_278FED780;
  v13 = itemCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = itemCopy;
  [(FSVolumeOperations *)volume getAttributes:v9 ofItem:v11 replyHandler:v12];
}

void __63__FSModuleVolume_Project__fetchAndSetTypeForItem_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__FSModuleVolume_Project__fetchAndSetTypeForItem_replyHandler___block_invoke_cold_1(v6);
    }

    goto LABEL_7;
  }

  if (v5)
  {
    [*(a1 + 32) setType:{objc_msgSend(v5, "type")}];
LABEL_7:
    (*(*(a1 + 40) + 16))();
    goto LABEL_8;
  }

  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    __63__FSModuleVolume_Project__fetchAndSetTypeForItem_replyHandler___block_invoke_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = *(a1 + 40);
  v17 = fs_errorForPOSIXError(43);
  (*(v16 + 16))(v16, v17);

LABEL_8:
}

void __63__FSModuleVolume_Project__fetchAndSetTypeForItem_replyHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__FSModuleVolume_Project__fetchAndSetTypeForItem_replyHandler___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s:nil attributes", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end