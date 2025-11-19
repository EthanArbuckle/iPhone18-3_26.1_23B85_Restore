@interface FSModuleVolume
+ (id)volumeWithName:(id)a3 resource:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (FSModuleVolume)initWithVolume:(id)a3 resource:(id)a4;
- (id)getAndRemoveItemForFH:(id)a3;
- (id)getItemForFH:(id)a3;
- (id)stopUsingVolume;
- (int64_t)getMaxFileSizeInBits;
- (int64_t)getMaxXattrSizeInBits;
- (unsigned)newConnectionID:(id)a3;
- (void)fetchAndSetTypeForItem:(id)a3 replyHandler:(id)a4;
- (void)insertIntoFHCache:(id)a3;
- (void)removeConnectionByID:(unsigned __int8)a3;
- (void)removeFromFHCache:(id)a3;
- (void)updateRootItem:(id)a3 replyHandler:(id)a4;
@end

@implementation FSModuleVolume

- (FSModuleVolume)initWithVolume:(id)a3 resource:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v33.receiver = self;
  v33.super_class = FSModuleVolume;
  v9 = [(FSModuleVolume *)&v33 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAE98] anonymousListener];
    listener = v9->_listener;
    v9->_listener = v10;

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

    objc_storeStrong(&v9->_volume, a3);
    objc_storeStrong(&v9->_resource, a4);
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
    v9->_supportsKOIOOps = [v7 conformsToProtocol:&unk_285E05FA8];
    v9->_supportsReadWriteOps = [v7 conformsToProtocol:&unk_285E06008];
    v9->_supportsCloneOps = [v7 conformsToProtocol:&unk_285E06068];
    v9->_supportsItemDeactivation = [v7 conformsToProtocol:&unk_285E060C8];
    v19 = [v7 conformsToProtocol:&unk_285E06128];
    v20 = 0;
    if (v19)
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [v7 xattrOperationsInhibited] ^ 1;
      }

      else
      {
        v20 = 1;
      }
    }

    v9->_supportsXattrOps = v20;
    if ([v7 conformsToProtocol:&unk_285E06188])
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [v7 isOpenCloseInhibited] ^ 1;
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
    if ([v7 conformsToProtocol:&unk_285E061E8])
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = [v7 isAccessCheckInhibited] ^ 1;
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
    if ([v7 conformsToProtocol:&unk_285E06248])
    {
      if (objc_opt_respondsToSelector())
      {
        v23 = [v7 isVolumeRenameInhibited] ^ 1;
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
    if ([v7 conformsToProtocol:&unk_285E062A8])
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [v7 isPreallocateInhibited] ^ 1;
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
      v26 = [v7 enableOpenUnlinkEmulation] ^ 1;
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    v9->_supportsOpenUnlink = v26;
    v27 = [v8 kind] != 3 && objc_msgSend(v8, "kind") != 2;
    v9->_reportAsLocal = v27;
    v28 = dispatch_queue_create("FSModuleVolumeFileHandleQueue", 0);
    fileHandleQueue = v9->_fileHandleQueue;
    v9->_fileHandleQueue = v28;

    if (v8)
    {
      v30 = [v8 kind] == 1;
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

+ (id)volumeWithName:(id)a3 resource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithVolume:v7 resource:v6];

  return v8;
}

- (void)updateRootItem:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FSModuleVolume *)self resource];
  if (v8)
  {
    v9 = v8;
    v10 = [(FSModuleVolume *)self resource];
    v11 = [v10 kind];

    if (v11 == 1)
    {
      v12 = [(FSModuleVolume *)self resource];
      v13 = [(FSResource *)FSBlockDeviceResource dynamicCast:v12];

      v14 = [v13 startUsingResource:@"activateVolume"];
      if (v14)
      {
        self->_supportsKOIOOps = 0;
        self->_useMetaDataIO = 0;
      }
    }
  }

  rootFSItem = self->_rootFSItem;
  self->_rootFSItem = v6;
  v16 = v6;

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__FSModuleVolume_Project__updateRootItem_replyHandler___block_invoke;
  v18[3] = &unk_278FED6E0;
  v18[4] = self;
  v19 = v7;
  v17 = v7;
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
  v3 = [(FSModuleVolume *)self resource];
  if (v3 && (v4 = v3, -[FSModuleVolume resource](self, "resource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 kind], v5, v4, v6 == 1))
  {
    v7 = [(FSModuleVolume *)self resource];
    v8 = [(FSResource *)FSBlockDeviceResource dynamicCast:v7];

    v9 = [v8 stopUsingResource:@"activateVolume"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unsigned)newConnectionID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  connectionCount = v5->connectionCount;
  if (connectionCount <= 7)
  {
    v8 = 0;
    v5->connectionCount = connectionCount + 1;
    validConnections = v5->validConnections;
    do
    {
      v7 = 1 << v8;
      v10 = ((1 << v8) & validConnections) == 0 || v8 == 7;
      ++v8;
    }

    while (!v10);
    v5->validConnections = validConnections | v7;
    connections = v5->_connections;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    [(NSMutableDictionary *)connections setObject:v4 forKey:v12];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  objc_sync_exit(v5);

  return v7;
}

- (void)removeConnectionByID:(unsigned __int8)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  obj->validConnections &= ~v3;
  connections = obj->_connections;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3];
  [(NSMutableDictionary *)connections removeObjectForKey:v5];

  --obj->connectionCount;
  objc_sync_exit(obj);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[FSModuleVolume(Project) listener:shouldAcceptNewConnection:]";
    _os_log_impl(&dword_24A929000, v8, OS_LOG_TYPE_DEFAULT, "%s:start", buf, 0xCu);
  }

  v9 = [(FSModuleVolume *)self newConnectionID:v7];
  if (v9)
  {
    v10 = +[FSKitConstants FSVolumeXPCProtocol];
    [v7 setExportedInterface:v10];

    v11 = [FSVolumeConnector volumeConnectorModuleVolume:self connection:v7];
    [v7 setExportedObject:v11];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__FSModuleVolume_Project__listener_shouldAcceptNewConnection___block_invoke;
    aBlock[3] = &unk_278FED708;
    objc_copyWeak(&v25, &location);
    v26 = v9;
    v12 = _Block_copy(aBlock);
    [v7 setInvalidationHandler:v12];
    [v7 setInterruptionHandler:v12];
    [v7 resume];
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

    [v7 invalidate];
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

- (id)getItemForFH:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
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

- (void)insertIntoFHCache:(id)a3
{
  v4 = a3;
  fileHandleQueue = self->_fileHandleQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__FSModuleVolume_Project__insertIntoFHCache___block_invoke;
  v7[3] = &unk_278FED758;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(fileHandleQueue, v7);
}

void __45__FSModuleVolume_Project__insertIntoFHCache___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 64);
  v3 = [v1 fileHandle];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

- (void)removeFromFHCache:(id)a3
{
  v4 = a3;
  fileHandleQueue = self->_fileHandleQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__FSModuleVolume_Project__removeFromFHCache___block_invoke;
  v7[3] = &unk_278FED758;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(fileHandleQueue, v7);
}

void __45__FSModuleVolume_Project__removeFromFHCache___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v2 = [*(a1 + 40) fileHandle];
  [v1 removeObjectForKey:v2];
}

- (id)getAndRemoveItemForFH:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
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
    v11 = v4;
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

- (void)fetchAndSetTypeForItem:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  volume = self->_volume;
  v9 = [[FSItemGetAttributesRequest alloc] initWithWantedLIAttributes:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__FSModuleVolume_Project__fetchAndSetTypeForItem_replyHandler___block_invoke;
  v12[3] = &unk_278FED780;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
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