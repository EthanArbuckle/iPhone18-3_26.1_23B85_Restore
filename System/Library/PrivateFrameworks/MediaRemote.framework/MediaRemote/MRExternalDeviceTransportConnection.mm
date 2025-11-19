@interface MRExternalDeviceTransportConnection
- (BOOL)isValid;
- (MRExternalDeviceTransportConnection)initWithDataSource:(id)a3;
- (MRExternalDeviceTransportConnectionDataSource)dataSource;
- (NSArray)allObservers;
- (id)exportEndpoints:(id)a3;
- (id)exportOutputDevice:(id)a3 endpoint:(id)a4;
- (id)exportOutputDevices:(id)a3 endpoint:(id)a4;
- (int64_t)transportType;
- (unint64_t)sendTransportData:(id)a3 options:(id)a4;
- (void)_notifyDelegateDidCloseWithError:(id)a3;
- (void)_notifyDelegateDidReceiveData:(id)a3;
- (void)addObserver:(id)a3;
- (void)close;
- (void)removeObserver:(id)a3;
@end

@implementation MRExternalDeviceTransportConnection

- (MRExternalDeviceTransportConnection)initWithDataSource:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MRExternalDeviceTransportConnection;
  v5 = [(MRExternalDeviceTransportConnection *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;
  }

  return v6;
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (NSArray)allObservers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MRExternalDeviceTransportConnection *)v2 observers];
  v4 = [v3 allObjects];

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)isValid
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransportConnection isValid]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (int64_t)transportType
{
  v3 = [(MRExternalDeviceTransportConnection *)self dataSource];
  v4 = [v3 transportTypeForTransport:self];

  return v4;
}

- (unint64_t)sendTransportData:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransportConnection sendTransportData:options:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)close
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransportConnection close]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)_notifyDelegateDidCloseWithError:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(MRExternalDeviceTransportConnection *)self allObservers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 transportDidClose:self error:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateDidReceiveData:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(MRExternalDeviceTransportConnection *)self allObservers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 transport:self didReceiveData:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)exportEndpoints:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MRExternalDeviceTransportConnection_exportEndpoints___block_invoke;
  v5[3] = &unk_1E769F4B0;
  v5[4] = self;
  v3 = [a3 mr_compactMap:v5];

  return v3;
}

- (id)exportOutputDevice:(id)a3 endpoint:(id)a4
{
  v5 = a3;
  if (([v5 isLocalDevice] & 1) != 0 || objc_msgSend(v5, "deviceType") != 1)
  {
    v7 = +[MROrigin localOrigin];
    v8 = [MRDeviceInfoRequest deviceInfoForOrigin:v7];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__MRExternalDeviceTransportConnection_exportOutputDevice_endpoint___block_invoke;
    v16[3] = &unk_1E769DAB8;
    v9 = v5;
    v17 = v9;
    v10 = MEMORY[0x1A58E3570](v16);
    v11 = [v9 descriptor];
    if (v10[2](v10))
    {
      v12 = [v8 WHAIdentifier];
      [v11 setUniqueIdentifier:v12];
    }

    if ([v8 clusterType])
    {
      [v8 groupName];
    }

    else
    {
      [v8 computerName];
    }
    v13 = ;
    [v11 setName:v13];

    [v11 setHostDeviceClass:{objc_msgSend(v8, "deviceClass")}];
    [v11 setDeviceType:1];
    [v11 setDeviceSubType:{objc_msgSend(v8, "deviceSubtype")}];
    [v11 setIsGroupable:{objc_msgSend(v9, "isGroupable")}];
    [v11 setIsRemoteControllable:{objc_msgSend(v9, "isRemoteControllable")}];
    [v11 setIsProxyGroupPlayer:0];
    [v11 setIsLocalDevice:0];
    v14 = [v8 modelID];
    [v11 setModelID:v14];

    [v11 setTransportType:{-[MRExternalDeviceTransportConnection transportType](self, "transportType")}];
    v6 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v11];
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

BOOL __67__MRExternalDeviceTransportConnection_exportOutputDevice_endpoint___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) parentUID];

  return v1 == 0;
}

- (id)exportOutputDevices:(id)a3 endpoint:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__MRExternalDeviceTransportConnection_exportOutputDevices_endpoint___block_invoke;
  v10[3] = &unk_1E769CCA8;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [a3 mr_compactMap:v10];

  return v8;
}

- (MRExternalDeviceTransportConnectionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end