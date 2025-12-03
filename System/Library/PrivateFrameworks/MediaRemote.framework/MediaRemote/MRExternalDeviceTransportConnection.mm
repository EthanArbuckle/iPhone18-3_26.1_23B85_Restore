@interface MRExternalDeviceTransportConnection
- (BOOL)isValid;
- (MRExternalDeviceTransportConnection)initWithDataSource:(id)source;
- (MRExternalDeviceTransportConnectionDataSource)dataSource;
- (NSArray)allObservers;
- (id)exportEndpoints:(id)endpoints;
- (id)exportOutputDevice:(id)device endpoint:(id)endpoint;
- (id)exportOutputDevices:(id)devices endpoint:(id)endpoint;
- (int64_t)transportType;
- (unint64_t)sendTransportData:(id)data options:(id)options;
- (void)_notifyDelegateDidCloseWithError:(id)error;
- (void)_notifyDelegateDidReceiveData:(id)data;
- (void)addObserver:(id)observer;
- (void)close;
- (void)removeObserver:(id)observer;
@end

@implementation MRExternalDeviceTransportConnection

- (MRExternalDeviceTransportConnection)initWithDataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = MRExternalDeviceTransportConnection;
  v5 = [(MRExternalDeviceTransportConnection *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;
  }

  return v6;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (NSArray)allObservers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(MRExternalDeviceTransportConnection *)selfCopy observers];
  allObjects = [observers allObjects];

  objc_sync_exit(selfCopy);

  return allObjects;
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
  dataSource = [(MRExternalDeviceTransportConnection *)self dataSource];
  v4 = [dataSource transportTypeForTransport:self];

  return v4;
}

- (unint64_t)sendTransportData:(id)data options:(id)options
{
  dataCopy = data;
  optionsCopy = options;
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

- (void)_notifyDelegateDidCloseWithError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allObservers = [(MRExternalDeviceTransportConnection *)self allObservers];
  v6 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 transportDidClose:self error:errorCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateDidReceiveData:(id)data
{
  v17 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allObservers = [(MRExternalDeviceTransportConnection *)self allObservers];
  v6 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 transport:self didReceiveData:dataCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)exportEndpoints:(id)endpoints
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MRExternalDeviceTransportConnection_exportEndpoints___block_invoke;
  v5[3] = &unk_1E769F4B0;
  v5[4] = self;
  v3 = [endpoints mr_compactMap:v5];

  return v3;
}

- (id)exportOutputDevice:(id)device endpoint:(id)endpoint
{
  deviceCopy = device;
  if (([deviceCopy isLocalDevice] & 1) != 0 || objc_msgSend(deviceCopy, "deviceType") != 1)
  {
    v7 = +[MROrigin localOrigin];
    v8 = [MRDeviceInfoRequest deviceInfoForOrigin:v7];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__MRExternalDeviceTransportConnection_exportOutputDevice_endpoint___block_invoke;
    v16[3] = &unk_1E769DAB8;
    v9 = deviceCopy;
    v17 = v9;
    v10 = MEMORY[0x1A58E3570](v16);
    descriptor = [v9 descriptor];
    if (v10[2](v10))
    {
      wHAIdentifier = [v8 WHAIdentifier];
      [descriptor setUniqueIdentifier:wHAIdentifier];
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
    [descriptor setName:v13];

    [descriptor setHostDeviceClass:{objc_msgSend(v8, "deviceClass")}];
    [descriptor setDeviceType:1];
    [descriptor setDeviceSubType:{objc_msgSend(v8, "deviceSubtype")}];
    [descriptor setIsGroupable:{objc_msgSend(v9, "isGroupable")}];
    [descriptor setIsRemoteControllable:{objc_msgSend(v9, "isRemoteControllable")}];
    [descriptor setIsProxyGroupPlayer:0];
    [descriptor setIsLocalDevice:0];
    modelID = [v8 modelID];
    [descriptor setModelID:modelID];

    [descriptor setTransportType:{-[MRExternalDeviceTransportConnection transportType](self, "transportType")}];
    v6 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:descriptor];
  }

  else
  {
    v6 = deviceCopy;
  }

  return v6;
}

BOOL __67__MRExternalDeviceTransportConnection_exportOutputDevice_endpoint___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) parentUID];

  return v1 == 0;
}

- (id)exportOutputDevices:(id)devices endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__MRExternalDeviceTransportConnection_exportOutputDevices_endpoint___block_invoke;
  v10[3] = &unk_1E769CCA8;
  v10[4] = self;
  v11 = endpointCopy;
  v7 = endpointCopy;
  v8 = [devices mr_compactMap:v10];

  return v8;
}

- (MRExternalDeviceTransportConnectionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end