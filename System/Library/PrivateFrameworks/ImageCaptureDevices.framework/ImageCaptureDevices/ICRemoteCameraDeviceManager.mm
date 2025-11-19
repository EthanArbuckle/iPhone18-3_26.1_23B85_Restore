@interface ICRemoteCameraDeviceManager
- (BOOL)addRemoteCameraDevice:(id)a3 uuidString:(id)a4 deviceName:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)remoteManagerConnectionWithProcessIdentifierAuthorized:(int)a3;
- (BOOL)removeRemoteCameraDevice:(id)a3;
- (id)remoteDeviceForPrimaryIdentifier:(id)a3;
- (id)remoteDeviceForUUID:(id)a3;
- (void)addRemoteManagerConnection:(id)a3;
- (void)closeDevice:(id)a3;
- (void)dealloc;
- (void)notifyClientDeviceAdded:(id)a3 uuidString:(id)a4 deviceName:(id)a5;
- (void)notifyClientDeviceRemoved:(id)a3;
- (void)openDevice:(id)a3 withReply:(id)a4;
- (void)removeRemoteManagerConnectionWithProcessIdentifier:(int)a3;
- (void)requestDeviceListWithOptions:(id)a3 reply:(id)a4;
@end

@implementation ICRemoteCameraDeviceManager

- (void)dealloc
{
  if (self->_remoteManagerConnections)
  {
    [(ICRemoteCameraDeviceManager *)self removeRemoteManagerConnectionWithProcessIdentifier:0xFFFFFFFFLL];
    remoteManagerConnections = self->_remoteManagerConnections;
    self->_remoteManagerConnections = 0;
  }

  v4.receiver = self;
  v4.super_class = ICRemoteCameraDeviceManager;
  [(ICRemoteCameraDeviceManager *)&v4 dealloc];
}

- (id)remoteDeviceForUUID:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_remoteCameraDevices copy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 uuidString];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)remoteDeviceForPrimaryIdentifier:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_remoteCameraDevices copy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 primaryIdentifierString];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x29EDCA608];

  return v7;
}

- (BOOL)removeRemoteCameraDevice:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = a3;
  os_unfair_lock_lock(&self->_remoteCameraDevicesLock);
  v5 = [(ICRemoteCameraDeviceManager *)self remoteDeviceForPrimaryIdentifier:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    __ICOSLogCreate();
    v7 = [(ICRemoteCameraDeviceManager *)self managedObjectName];
    if ([v7 length] >= 0x15)
    {
      v8 = [v7 substringWithRange:{0, 18}];
      v9 = [v8 stringByAppendingString:@".."];

      v7 = v9;
    }

    v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"close device"];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7;
      v13 = v11;
      v17 = 136446466;
      v18 = [v7 UTF8String];
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v17, 0x16u);
    }

    v14 = [v5 uuidString];
    [(ICRemoteCameraDeviceManager *)self closeDevice:v14];

    objc_autoreleasePoolPop(v6);
  }

  os_unfair_lock_unlock(&self->_remoteCameraDevicesLock);

  v15 = *MEMORY[0x29EDCA608];
  return v5 != 0;
}

- (BOOL)addRemoteCameraDevice:(id)a3 uuidString:(id)a4 deviceName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_remoteCameraDevicesLock);
  v11 = [(ICRemoteCameraDeviceManager *)self remoteDeviceForPrimaryIdentifier:v8];

  if (!v11)
  {
    v12 = [[ICRemoteCameraDeviceProxy alloc] initWithPrimaryIdentifierString:v8 uuidString:v9 localizedName:v10];
    [(NSMutableArray *)self->_remoteCameraDevices addObject:v12];
  }

  os_unfair_lock_unlock(&self->_remoteCameraDevicesLock);

  return v11 == 0;
}

- (void)notifyClientDeviceAdded:(id)a3 uuidString:(id)a4 deviceName:(id)a5
{
  v28 = *MEMORY[0x29EDCA608];
  v8 = a3;
  if ([(ICRemoteCameraDeviceManager *)self addRemoteCameraDevice:v8 uuidString:a4 deviceName:a5])
  {
    v20 = v8;
    v21 = [(ICRemoteCameraDeviceManager *)self remoteDeviceForPrimaryIdentifier:v8];
    os_unfair_lock_lock(&self->_remoteManagerConnectionsLock);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = self->_remoteManagerConnections;
    v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [(NSMutableDictionary *)self->_remoteManagerConnections objectForKeyedSubscript:*(*(&v23 + 1) + 8 * v12)];
          v14 = [v13 objectForKeyedSubscript:@"ICRemoteManagerConnection"];
          v15 = [v13 objectForKeyedSubscript:@"ICRemoteManagerAuthorized"];
          v16 = [v15 BOOLValue];

          if (v16)
          {
            v17 = [v14 remoteObjectProxyWithErrorHandler:&__block_literal_global_2];
            v18 = [v21 deviceContext];
            [v17 notifyAddedDevice:v18];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    os_unfair_lock_unlock(&self->_remoteManagerConnectionsLock);
    v8 = v20;
  }

  v19 = *MEMORY[0x29EDCA608];
}

- (void)notifyClientDeviceRemoved:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v17 = [(ICRemoteCameraDeviceManager *)self remoteDeviceForPrimaryIdentifier:v4];
  if (v17)
  {
    v16 = v4;
    os_unfair_lock_lock(&self->_remoteManagerConnectionsLock);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = self->_remoteManagerConnections;
    v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [(NSMutableDictionary *)self->_remoteManagerConnections objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v8)];
          v10 = [v9 objectForKeyedSubscript:@"ICRemoteManagerConnection"];
          v11 = [v9 objectForKeyedSubscript:@"ICRemoteManagerAuthorized"];
          v12 = [v11 BOOLValue];

          if (v12)
          {
            v13 = [v10 remoteObjectProxyWithErrorHandler:&__block_literal_global_69];
            v14 = [v17 deviceContext];
            [v13 notifyRemovedDevice:v14];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    os_unfair_lock_unlock(&self->_remoteManagerConnectionsLock);
    v4 = v16;
    [(ICRemoteCameraDeviceManager *)self removeRemoteCameraDevice:v16];
  }

  v15 = *MEMORY[0x29EDCA608];
}

- (void)requestDeviceListWithOptions:(id)a3 reply:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __66__ICRemoteCameraDeviceManager_requestDeviceListWithOptions_reply___block_invoke;
  v7[3] = &unk_29F380C20;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x29EDCA578], v7);
}

void __66__ICRemoteCameraDeviceManager_requestDeviceListWithOptions_reply___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  __ICOSLogCreate();
  v2 = @"getDeviceList";
  if ([@"getDeviceList" length] >= 0x15)
  {
    v3 = [@"getDeviceList" substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"requestDeviceListWithOptions:reply"];
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    *buf = 136446466;
    v23 = [(__CFString *)v2 UTF8String];
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_29EB58000, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v8 = [MEMORY[0x29EDB8DE8] array];
  v9 = [MEMORY[0x29EDB8E00] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [*(a1 + 32) remoteCameraDevices];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) deviceContext];
        [v8 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v9 setObject:v8 forKeyedSubscript:@"ICDeviceContexts"];
  (*(*(a1 + 40) + 16))();

  v16 = *MEMORY[0x29EDCA608];
}

- (void)openDevice:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __52__ICRemoteCameraDeviceManager_openDevice_withReply___block_invoke;
  block[3] = &unk_29F380C48;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

void __52__ICRemoteCameraDeviceManager_openDevice_withReply___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x29EDCA608];
  v2 = [*(a1 + 32) remoteDeviceForUUID:*(a1 + 40)];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (!v2)
  {
    goto LABEL_16;
  }

  v4 = [v2 camera];

  if (v4)
  {
    __ICOSLogCreate();
    v5 = [*(a1 + 32) managedObjectName];
    if ([v5 length] >= 0x15)
    {
      v6 = [v5 substringWithRange:{0, 18}];
      v7 = [v6 stringByAppendingString:@".."];

      v5 = v7;
    }

    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"> Existing Device"];
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v5;
      v11 = v9;
      *buf = 136446466;
      v49 = [v5 UTF8String];
      v50 = 2114;
      v51 = v8;
      _os_log_impl(&dword_29EB58000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v12 = [v2 uuidString];
    [v3 setObject:v12 forKeyedSubscript:@"ICInternalDeviceUUID"];

    v13 = [v2 camera];
    v14 = [v13 endpoint];
    [v3 setObject:v14 forKeyedSubscript:@"ICDeviceEndpoint"];

    v15 = [v2 localizedName];
    [v3 setObject:v15 forKeyedSubscript:@"ICDeviceName"];

    v16 = [v2 camera];
    v17 = [v16 additionalProperties];

    if (v17)
    {
      v18 = [v2 camera];
      v19 = [v18 additionalProperties];
      [v3 addEntriesFromDictionary:v19];
    }

    v20 = *(*(a1 + 48) + 16);
LABEL_21:
    v20();
    goto LABEL_22;
  }

  v21 = [*(a1 + 32) managedObjectName];
  v22 = objc_alloc(NSClassFromString(v21));
  v23 = [v2 deviceContext];
  v24 = [v22 initWithDeviceContext:v23];

  if (!v24)
  {
LABEL_16:
    __ICOSLogCreate();
    v40 = [*(a1 + 32) managedObjectName];
    if ([v40 length] >= 0x15)
    {
      v41 = [v40 substringWithRange:{0, 18}];
      v42 = [v41 stringByAppendingString:@".."];

      v40 = v42;
    }

    v43 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"> Not Found: %@", *(a1 + 40)];
    v44 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v40;
      v46 = v44;
      *buf = 136446466;
      v49 = [v40 UTF8String];
      v50 = 2114;
      v51 = v43;
      _os_log_impl(&dword_29EB58000, v46, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v20 = *(*(a1 + 48) + 16);
    goto LABEL_21;
  }

  [v24 startListening];
  __ICOSLogCreate();
  v25 = [*(a1 + 32) managedObjectName];
  if ([v25 length] >= 0x15)
  {
    v26 = [v25 substringWithRange:{0, 18}];
    v27 = [v26 stringByAppendingString:@".."];

    v25 = v27;
  }

  v28 = MEMORY[0x29EDBA0F8];
  v29 = [v2 localizedName];
  v30 = [v28 stringWithFormat:@"> New Device: %@", v29];

  v31 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v32 = v25;
    v33 = v31;
    *buf = 136446466;
    v49 = [v25 UTF8String];
    v50 = 2114;
    v51 = v30;
    _os_log_impl(&dword_29EB58000, v33, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [v24 setDelegate:*(a1 + 32)];
  v34 = [v24 endpoint];
  v35 = [v24 cameraDictionary];
  [v35 setObject:v34 forKeyedSubscript:@"ICDeviceEndpoint"];

  v36 = [v2 uuidString];
  v37 = [v24 cameraDictionary];
  [v37 setObject:v36 forKeyedSubscript:@"ICInternalDeviceUUID"];

  [v2 setCamera:v24];
  v38 = *(a1 + 48);
  v39 = [v24 cameraDictionary];
  (*(v38 + 16))(v38, v39);

LABEL_22:
  v47 = *MEMORY[0x29EDCA608];
}

- (void)closeDevice:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(ICRemoteCameraDeviceManager *)self remoteDeviceForUUID:v4];
  if (v6)
  {
    __ICOSLogCreate();
    v7 = [(ICRemoteCameraDeviceManager *)self managedObjectName];
    if ([v7 length] >= 0x15)
    {
      v8 = [v7 substringWithRange:{0, 18}];
      v9 = [v8 stringByAppendingString:@".."];

      v7 = v9;
    }

    v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"close: %@", v4];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7;
      v13 = v11;
      *buf = 136446466;
      v17 = [v7 UTF8String];
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v14 = [v6 camera];
    [v14 removeAllSessions];

    [(NSMutableArray *)self->_remoteCameraDevices removeObject:v6];
  }

  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x29EDCA608];
}

uint64_t __76__ICRemoteCameraDeviceManager_addSelectorToInterface_selectorString_origin___block_invoke()
{
  v13 = objc_alloc(MEMORY[0x29EDB8E50]);
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  addSelectorToInterface_selectorString_origin__incomingClasses_0 = [v13 initWithObjects:{v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = a4;
  __ICOSLogCreate();
  v6 = @"remoteManager";
  if ([@"remoteManager" length] >= 0x15)
  {
    v7 = [@"remoteManager" substringWithRange:{0, 18}];
    v6 = [v7 stringByAppendingString:@".."];
  }

  v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"New Connection: %d", objc_msgSend(v5, "processIdentifier")];
  v9 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v6;
    v11 = v9;
    *buf = 136446466;
    v17 = [(__CFString *)v6 UTF8String];
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_29EB58000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v12 = [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A254E320];
  v13 = [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A254E320];
  [(ICRemoteCameraDeviceManager *)self addSelectorToInterface:v12 selectorString:@"requestDeviceListWithOptions:reply:" origin:1];
  [(ICRemoteCameraDeviceManager *)self addSelectorToInterface:v12 selectorString:@"openDevice:withReply:" origin:1];
  [(ICRemoteCameraDeviceManager *)self addSelectorToInterface:v12 selectorString:@"closeDevice:withReply:" origin:1];
  [(ICRemoteCameraDeviceManager *)self addSelectorToInterface:v13 selectorString:@"notifyAddedDevice:" origin:0];
  [(ICRemoteCameraDeviceManager *)self addSelectorToInterface:v13 selectorString:@"notifyRemovedDevice:" origin:0];
  [v5 setExportedInterface:v12];
  [v5 setRemoteObjectInterface:v13];
  [v5 setExportedObject:self];
  [(ICRemoteCameraDeviceManager *)self addRemoteManagerConnection:v5];
  [v5 resume];

  v14 = *MEMORY[0x29EDCA608];
  return 1;
}

- (void)addRemoteManagerConnection:(id)a3
{
  v33 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy_;
  v30[4] = __Block_byref_object_dispose_;
  v5 = self;
  v31 = v5;
  v6 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = __58__ICRemoteCameraDeviceManager_addRemoteManagerConnection___block_invoke;
  v27[3] = &unk_29F380C70;
  v29 = v30;
  v25 = v6;
  v28 = v25;
  [v4 setInvalidationHandler:v27];
  v7 = [v4 invalidationHandler];
  [v4 setInterruptionHandler:v7];

  memset(&error[1], 0, 32);
  if (v4)
  {
    [v4 auditToken];
  }

  token = *&error[1];
  v8 = SecTaskCreateWithAuditToken(0, &token);
  error[0] = 0;
  v9 = SecTaskCopySigningIdentifier(v8, error);
  if (v8)
  {
    CFRelease(v8);
  }

  os_unfair_lock_lock(&v5->_remoteManagerConnectionsLock);
  v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%05d-%@", objc_msgSend(v4, "processIdentifier"), v9];
  v11 = v10;
  [v10 UTF8String];
  v12 = os_transaction_create();
  [(NSMutableDictionary *)v5->_osTransactions setObject:v12 forKeyedSubscript:v10];
  __ICOSLogCreate();
  v13 = [(ICRemoteCameraDeviceManager *)v5 managedObjectName];
  if ([v13 length] >= 0x15)
  {
    v14 = [v13 substringWithRange:{0, 18}];
    v15 = [v14 stringByAppendingString:@".."];

    v13 = v15;
  }

  v16 = MEMORY[0x29EDBA0F8];
  v17 = [(ICRemoteCameraDeviceManager *)v5 osTransactions];
  v18 = [v17 allKeys];
  v19 = [v16 stringWithFormat:@"+ %@:[%05lu]", v10, objc_msgSend(v18, "count")];

  v20 = _gICOSLog;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v13;
    v22 = [v13 UTF8String];
    token.val[0] = 136446466;
    *&token.val[1] = v22;
    LOWORD(token.val[3]) = 2114;
    *(&token.val[3] + 2) = v19;
    _os_log_impl(&dword_29EB58000, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
  }

  v23 = [MEMORY[0x29EDB8E00] dictionary];
  [v23 setObject:v4 forKeyedSubscript:@"ICRemoteManagerConnection"];
  [v23 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"ICRemoteManagerAuthorized"];
  [(NSMutableDictionary *)v5->_remoteManagerConnections setObject:v23 forKeyedSubscript:v10];
  os_unfair_lock_unlock(&v5->_remoteManagerConnectionsLock);

  _Block_object_dispose(v30, 8);
  v24 = *MEMORY[0x29EDCA608];
}

void __58__ICRemoteCameraDeviceManager_addRemoteManagerConnection___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1;
    [v3 removeRemoteManagerConnectionWithProcessIdentifier:{objc_msgSend(v2, "intValue")}];
  }
}

- (void)removeRemoteManagerConnectionWithProcessIdentifier:(int)a3
{
  v4 = self;
  v66 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_remoteManagerConnectionsLock);
  v5 = [(NSMutableDictionary *)v4->_remoteManagerConnections copy];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v57;
    v50 = a3;
    v48 = *v57;
    v49 = v6;
    do
    {
      v10 = 0;
      v51 = v8;
      do
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v56 + 1) + 8 * v10);
        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = [v12 objectForKeyedSubscript:@"ICRemoteManagerConnection"];
        v14 = [v13 processIdentifier];
        if (a3 == -1 || v14 == a3)
        {
          v15 = [(ICRemoteCameraDeviceManager *)v4 osTransactions];
          [v15 removeObjectForKey:v11];

          __ICOSLogCreate();
          v16 = [(ICRemoteCameraDeviceManager *)v4 managedObjectName];
          if ([v16 length] >= 0x15)
          {
            v17 = [v16 substringWithRange:{0, 18}];
            v18 = [v17 stringByAppendingString:@".."];

            v16 = v18;
          }

          v19 = MEMORY[0x29EDBA0F8];
          v20 = v4;
          v21 = [(ICRemoteCameraDeviceManager *)v4 osTransactions];
          v22 = [v21 allKeys];
          v23 = [v19 stringWithFormat:@"- %@:[%05lu]", v11, objc_msgSend(v22, "count")];

          v24 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v16;
            v26 = v24;
            v27 = [v16 UTF8String];
            *buf = 136446466;
            v62 = v27;
            v63 = 2114;
            v64 = v23;
            _os_log_impl(&dword_29EB58000, v26, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          [v13 setInvalidationHandler:0];
          [v13 setInterruptionHandler:0];
          [v13 invalidate];
          v4 = v20;
          [(NSMutableDictionary *)v20->_remoteManagerConnections removeObjectForKey:v11];
          a3 = v50;
          v9 = v48;
          v6 = v49;
          v8 = v51;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v8);
  }

  if (v4->_systemDaemon && ![(NSMutableDictionary *)v4->_remoteManagerConnections count])
  {
    v29 = v4;
    v30 = [(NSMutableArray *)v4->_remoteCameraDevices copy];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v53;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v53 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [*(*(&v52 + 1) + 8 * i) camera];
          [v36 closeDevice];
        }

        v33 = [v31 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v33);
    }

    os_unfair_lock_unlock(v29 + 3);
    v37 = MEMORY[0x29EDBA0F8];
    v38 = [(os_unfair_lock_s *)v29 managedObjectName];
    v39 = [v37 stringWithFormat:@"%@-[D]", v38];

    __ICOSLogCreate();
    v40 = v39;
    v41 = v40;
    if ([v40 length] >= 0x15)
    {
      v42 = [v40 substringWithRange:{0, 18}];
      v41 = [v42 stringByAppendingString:@".."];
    }

    v43 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Exiting %@", v40];
    v44 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v41;
      v46 = v44;
      v47 = [v41 UTF8String];
      *buf = 136446466;
      v62 = v47;
      v63 = 2114;
      v64 = v43;
      _os_log_impl(&dword_29EB58000, v46, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    exit(0);
  }

  os_unfair_lock_unlock(&v4->_remoteManagerConnectionsLock);

  v28 = *MEMORY[0x29EDCA608];
}

- (BOOL)remoteManagerConnectionWithProcessIdentifierAuthorized:(int)a3
{
  v21 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_remoteManagerConnectionsLock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_remoteManagerConnections;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_remoteManagerConnections objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i), v16];
        v11 = [v10 objectForKeyedSubscript:@"ICRemoteManagerConnection"];
        if ([v11 processIdentifier] == a3)
        {
          v13 = [v10 objectForKeyedSubscript:@"ICRemoteManagerAuthorized"];
          v12 = [v13 BOOLValue];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_remoteManagerConnectionsLock);
  v14 = *MEMORY[0x29EDCA608];
  return v12;
}

@end