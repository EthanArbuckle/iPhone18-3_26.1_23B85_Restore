@interface MRRapportTransport
+ (NSUserDefaults)userDefaults;
+ (id)_readConnectionRecordsFromDisk;
+ (void)_writeConnectionRecordsToDisk:(id)disk;
+ (void)resetPersistedConnections;
- (MRRapportTransport)initWithOutputDevice:(id)device proxyOutputDevice:(id)outputDevice;
- (id)_generateSessionUID;
- (id)createConnectionWithUserInfo:(id)info;
- (id)deviceInfo;
- (id)error;
- (id)name;
- (id)uid;
- (void)_persistConnectionRecordToDisk;
- (void)_removeConnectionRecordFromDisk;
- (void)dealloc;
- (void)resetWithError:(id)error;
- (void)setError:(id)error;
- (void)setSessionUID:(id)d;
@end

@implementation MRRapportTransport

- (MRRapportTransport)initWithOutputDevice:(id)device proxyOutputDevice:(id)outputDevice
{
  v26 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  outputDeviceCopy = outputDevice;
  v23.receiver = self;
  v23.super_class = MRRapportTransport;
  v9 = [(MRRapportTransport *)&v23 init];
  if (v9)
  {
    v10 = MRLogCategoryConnections();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = deviceCopy;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRRapportTransport] Create for %@", buf, 0xCu);
    }

    objc_storeStrong(&v9->_outputDevice, device);
    objc_storeStrong(&v9->_proxyOutputDevice, outputDevice);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.mediaremote.externalDeviceRapportTransport/workerQueue", v11);
    workerQueue = v9->_workerQueue;
    v9->_workerQueue = v12;

    v14 = +[MRCompanionLinkClient sharedCompanionLinkClient];
    client = v9->_client;
    v9->_client = v14;

    objc_initWeak(buf, v9);
    v16 = v9->_client;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__MRRapportTransport_initWithOutputDevice_proxyOutputDevice___block_invoke;
    v21[3] = &unk_1E769A450;
    objc_copyWeak(&v22, buf);
    v17 = [(MRCompanionLinkClient *)v16 registerEvent:@"com.apple.mediaremote.remotecontrol.reset" callback:v21];
    resetToken = v9->_resetToken;
    v9->_resetToken = v17;

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

void __61__MRRapportTransport_initWithOutputDevice_proxyOutputDevice___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69C6BE8]];
    v6 = [WeakRetained[14] effectiveIdentifier];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:105 description:@"MRRapportTransport received reset event"];
      [WeakRetained resetWithError:v8];
    }
  }
}

- (void)dealloc
{
  v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:104 description:@"MRRapportTransport.dealloc"];
  [(MRRapportTransport *)self resetWithError:v3];
  v4 = +[MRCompanionLinkClient sharedCompanionLinkClient];
  [v4 removeCallback:self->_resetToken];

  v5.receiver = self;
  v5.super_class = MRRapportTransport;
  [(MRRapportTransport *)&v5 dealloc];
}

+ (NSUserDefaults)userDefaults
{
  if (userDefaults_onceToken != -1)
  {
    +[MRRapportTransport userDefaults];
  }

  v3 = userDefaults___userDefaults;

  return v3;
}

void __34__MRRapportTransport_userDefaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mediaremote"];
  v1 = userDefaults___userDefaults;
  userDefaults___userDefaults = v0;
}

- (id)deviceInfo
{
  v3 = objc_alloc_init(MRDeviceInfo);
  name = [(MRAVOutputDevice *)self->_outputDevice name];
  [(MRDeviceInfo *)v3 setName:name];

  primaryID = [(MRAVOutputDevice *)self->_outputDevice primaryID];
  [(MRDeviceInfo *)v3 setDeviceUID:primaryID];

  return v3;
}

- (id)uid
{
  deviceInfo = [(MRRapportTransport *)self deviceInfo];
  deviceUID = [deviceInfo deviceUID];

  return deviceUID;
}

- (id)name
{
  deviceInfo = [(MRRapportTransport *)self deviceInfo];
  name = [deviceInfo name];

  return name;
}

- (void)setError:(id)error
{
  errorCopy = error;
  obj = self;
  objc_sync_enter(obj);
  error = obj->_error;
  obj->_error = errorCopy;

  objc_sync_exit(obj);
}

- (id)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSError *)selfCopy->_error copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)createConnectionWithUserInfo:(id)info
{
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MRRapportTransport_createConnectionWithUserInfo___block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(workerQueue, block);
  return self->_connection;
}

void __51__MRRapportTransport_createConnectionWithUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionUID];

  if (!v2)
  {
    v3 = [*(a1 + 32) _generateSessionUID];
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__0;
    v35 = __Block_byref_object_dispose__0;
    v36 = 0;
    v4 = [MRRapportTransportConnection alloc];
    v5 = [*(*(a1 + 32) + 64) primaryID];
    v6 = (v32 + 5);
    obj = v32[5];
    v30 = 0;
    v7 = [(MRRapportTransportConnection *)v4 initWithDeviceUID:v5 sessionUID:v3 targetDevice:&v30 error:&obj];
    v8 = v30;
    v9 = v30;
    objc_storeStrong(v6, obj);

    if (v7)
    {
      v10 = dispatch_semaphore_create(0);
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v11 setObject:v3 forKeyedSubscript:@"session"];
      v12 = [*(*(a1 + 32) + 56) primaryID];
      [v11 setObject:v12 forKeyedSubscript:@"destination"];

      v13 = [*(*(a1 + 32) + 56) groupID];
      [v11 setObject:v13 forKeyedSubscript:@"destinationGroupUID"];

      v14 = *(*(a1 + 32) + 88);
      v15 = [v9 effectiveIdentifier];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __51__MRRapportTransport_createConnectionWithUserInfo___block_invoke_39;
      v26 = &unk_1E769A478;
      v28 = &v31;
      v16 = v10;
      v27 = v16;
      [v14 sendRequest:@"com.apple.mediaremote.remotecontrol.connect" destination:v15 userInfo:v11 timeout:&v23 response:7.0];

      v17 = dispatch_time(0, 8000000000);
      if (dispatch_semaphore_wait(v16, v17) >= 1)
      {
        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = [*(a1 + 32) uid];
        v20 = [v18 initWithMRError:26 format:{@"Failed to receive request from companionLinkDevice for %@ in %d seconds", v19, 7, v23, v24, v25, v26}];
        v21 = v32[5];
        v32[5] = v20;
      }
    }

    v22 = *(a1 + 32);
    if (v32[5])
    {
      [v22 setError:?];
    }

    else
    {
      objc_storeStrong(v22 + 13, v7);
      [*(a1 + 32) setSessionUID:v3];
      objc_storeStrong((*(a1 + 32) + 112), v8);
      [*(a1 + 32) _persistConnectionRecordToDisk];
    }

    _Block_object_dispose(&v31, 8);
  }
}

void __51__MRRapportTransport_createConnectionWithUserInfo___block_invoke_39(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)resetWithError:(id)error
{
  errorCopy = error;
  if (self->_sessionUID)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 setObject:self->_sessionUID forKeyedSubscript:@"session"];
    client = self->_client;
    effectiveIdentifier = [(RPCompanionLinkDevice *)self->_targetDevice effectiveIdentifier];
    [(MRCompanionLinkClient *)client sendEvent:@"com.apple.mediaremote.remotecontrol.disconnect" destination:effectiveIdentifier userInfo:v4];
  }

  [(MRRapportTransport *)self setSessionUID:0];
  [(MRRapportTransport *)self _removeConnectionRecordFromDisk];
  [(MRExternalDeviceTransportConnection *)self->_connection closeWithError:errorCopy];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)setSessionUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_disconnectToken)
  {
    [(MRCompanionLinkClient *)selfCopy->_client removeCallback:?];
    disconnectToken = selfCopy->_disconnectToken;
    selfCopy->_disconnectToken = 0;
  }

  objc_storeStrong(&selfCopy->_sessionUID, d);
  if (selfCopy->_sessionUID)
  {
    objc_initWeak(&location, selfCopy);
    client = selfCopy->_client;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__MRRapportTransport_setSessionUID___block_invoke;
    v11[3] = &unk_1E769A450;
    objc_copyWeak(&v12, &location);
    v9 = [(MRCompanionLinkClient *)client registerEvent:@"com.apple.mediaremote.remotecontrol.disconnect" callback:v11];
    v10 = selfCopy->_disconnectToken;
    selfCopy->_disconnectToken = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __36__MRRapportTransport_setSessionUID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C6BE8]];
    v6 = [WeakRetained[14] effectiveIdentifier];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = [v10 objectForKeyedSubscript:@"session"];
      if ([v8 isEqualToString:WeakRetained[12]])
      {
        v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:105 description:@"MRRapportTransport received disconect event"];
        [WeakRetained resetWithError:v9];
      }
    }
  }
}

+ (void)resetPersistedConnections
{
  v29 = *MEMORY[0x1E69E9840];
  obj = [objc_opt_class() userDefaults];
  objc_sync_enter(obj);
  _readConnectionRecordsFromDisk = [objc_opt_class() _readConnectionRecordsFromDisk];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = _readConnectionRecordsFromDisk;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        deviceUID = [v8 deviceUID];

        if (deviceUID)
        {
          deviceUID2 = [v8 deviceUID];
          [v3 addObject:deviceUID2];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = *v20;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v19 + 1) + 8 * j);
        v16 = +[MRCompanionLinkClient sharedCompanionLinkClient];
        [v16 sendEvent:@"com.apple.mediaremote.remotecontrol.reset" destination:v15 userInfo:0];
      }

      v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v12);
  }

  [objc_opt_class() _writeConnectionRecordsToDisk:0];
  objc_sync_exit(obj);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_persistConnectionRecordToDisk
{
  targetDevice = [(MRRapportTransport *)self targetDevice];
  effectiveIdentifier = [targetDevice effectiveIdentifier];

  if (effectiveIdentifier)
  {
    userDefaults = [objc_opt_class() userDefaults];
    objc_sync_enter(userDefaults);
    _readConnectionRecordsFromDisk = [objc_opt_class() _readConnectionRecordsFromDisk];
    v6 = _readConnectionRecordsFromDisk;
    if (_readConnectionRecordsFromDisk)
    {
      v7 = [_readConnectionRecordsFromDisk mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v8 = v7;
    v9 = objc_alloc_init(MRRapportTransportConfiguration);
    sessionUID = [(MRRapportTransport *)self sessionUID];
    [(MRRapportTransportConfiguration *)v9 setSessionUID:sessionUID];

    [(MRRapportTransportConfiguration *)v9 setDeviceUID:effectiveIdentifier];
    targetDevice2 = [(MRRapportTransport *)self targetDevice];
    name = [targetDevice2 name];
    [(MRRapportTransportConfiguration *)v9 setName:name];

    [v8 addObject:v9];
    [objc_opt_class() _writeConnectionRecordsToDisk:v8];

    objc_sync_exit(userDefaults);
  }
}

- (void)_removeConnectionRecordFromDisk
{
  v20 = *MEMORY[0x1E69E9840];
  obj = [objc_opt_class() userDefaults];
  objc_sync_enter(obj);
  _readConnectionRecordsFromDisk = [objc_opt_class() _readConnectionRecordsFromDisk];
  v4 = [_readConnectionRecordsFromDisk mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = _readConnectionRecordsFromDisk;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        sessionUID = [v9 sessionUID];
        sessionUID2 = [(MRRapportTransport *)self sessionUID];
        v12 = [sessionUID isEqualToString:sessionUID2];

        if (v12)
        {
          [v4 removeObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [objc_opt_class() _writeConnectionRecordsToDisk:v4];
  objc_sync_exit(obj);

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)_readConnectionRecordsFromDisk
{
  v10[2] = *MEMORY[0x1E69E9840];
  userDefaults = [objc_opt_class() userDefaults];
  v3 = [userDefaults objectForKey:@"outgoingRapportConnections"];
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v4 initWithArray:v5];
  v7 = MRCreateFromData(v3, v6);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)_writeConnectionRecordsToDisk:(id)disk
{
  diskCopy = disk;
  v3 = [diskCopy count];
  userDefaults = [objc_opt_class() userDefaults];
  v5 = userDefaults;
  if (v3)
  {
    v6 = MRCreateDataFromObject(diskCopy);
    [v5 setObject:v6 forKey:@"outgoingRapportConnections"];

    if (!MSVDeviceOSIsInternalInstall())
    {
      goto LABEL_7;
    }

    userDefaults2 = [objc_opt_class() userDefaults];
    v8 = [diskCopy description];
    [userDefaults2 setObject:v8 forKey:@"outgoingRapportConnectionsDescription"];
  }

  else
  {
    [userDefaults removeObjectForKey:@"outgoingRapportConnections"];

    if (!MSVDeviceOSIsInternalInstall())
    {
      goto LABEL_7;
    }

    userDefaults2 = [objc_opt_class() userDefaults];
    [userDefaults2 removeObjectForKey:@"outgoingRapportConnectionsDescription"];
  }

LABEL_7:
  userDefaults3 = [objc_opt_class() userDefaults];
  [userDefaults3 synchronize];
}

- (id)_generateSessionUID
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithFormat:@"%@-%d", uUIDString, ++_generateSessionUID_sessionUID];

  return v5;
}

@end