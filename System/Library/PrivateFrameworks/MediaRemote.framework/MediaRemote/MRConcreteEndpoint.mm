@interface MRConcreteEndpoint
- (BOOL)canModifyGroupMembership;
- (MRConcreteEndpoint)initWithDesignatedGroupLeader:(id)a3 outputDevices:(id)a4 preferredSuffix:(id)a5;
- (MRConcreteEndpoint)initWithDesignatedGroupLeader:(id)a3 outputDevices:(id)a4 preferredSuffix:(id)a5 connectionType:(int64_t)a6;
- (NSArray)outputDevices;
- (id)externalDevice;
- (id)uniqueIdentifier;
- (void)_handleConnectionStateDidChangeNotification:(id)a3;
- (void)_handleDeviceInfoDidChangeNotification:(id)a3;
- (void)setExternalDevice:(id)a3;
- (void)setOutputDevices:(id)a3;
@end

@implementation MRConcreteEndpoint

- (NSArray)outputDevices
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __35__MRConcreteEndpoint_outputDevices__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __38__MRConcreteEndpoint_uniqueIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)uniqueIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (BOOL)canModifyGroupMembership
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__MRConcreteEndpoint_canModifyGroupMembership__block_invoke;
  v5[3] = &unk_1E769A4C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __46__MRConcreteEndpoint_canModifyGroupMembership__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) groupContainsDiscoverableGroupLeader];
  v3 = [*(a1 + 32) designatedGroupLeader];
  v4 = [v3 isAirPlayReceiverSessionActive];

  v5 = [*(a1 + 32) designatedGroupLeader];
  v6 = [v5 groupID];
  if ([v6 length])
  {
    v7 = [*(a1 + 32) designatedGroupLeader];
    v8 = [v7 parentGroupIdentifier];
    if ([v8 length])
    {
      [*(a1 + 32) designatedGroupLeader];
      v9 = v21 = v2;
      [v9 groupID];
      v10 = v20 = v4;
      v11 = [*(a1 + 32) designatedGroupLeader];
      v12 = [v11 parentGroupIdentifier];
      v13 = [v10 isEqualToString:v12] ^ 1;

      v4 = v20;
      v2 = v21;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v14 = [*(a1 + 32) designatedGroupLeader];
  v15 = [v14 supportsMultiplayer];

  v16 = [*(a1 + 32) designatedGroupLeader];
  v22 = [v16 groupSessionInfo];

  v17 = v22;
  if (v22)
  {
    v18 = [v22 isHosted];
    v17 = v22;
  }

  else
  {
    v18 = 1;
  }

  v19 = (v4 ^ 1 | v13 | v15) & v18;
  if (!v2)
  {
    v19 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v19 & 1;
}

- (id)externalDevice
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (MRConcreteEndpoint)initWithDesignatedGroupLeader:(id)a3 outputDevices:(id)a4 preferredSuffix:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 primaryID];
  v13 = MRMediaRemoteCopyDeviceUID();
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    v15 = 6;
  }

  else if ([v9 supportsMultiplayer])
  {
    v15 = 5;
  }

  else if ([v9 isRemoteControllable])
  {
    v15 = 2;
  }

  else if ([v9 canRelayCommunicationChannel])
  {
    v15 = 3;
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [v9 uid];
    [v16 handleFailureInMethod:a2 object:self file:@"MRConcreteEndpoint.m" lineNumber:41 description:{@"Unknown connection type for endpoint with leader: %@, devices: %@", v17, v10}];

    v15 = 0;
  }

  v18 = [(MRConcreteEndpoint *)self initWithDesignatedGroupLeader:v9 outputDevices:v10 preferredSuffix:v11 connectionType:v15];

  return v18;
}

- (MRConcreteEndpoint)initWithDesignatedGroupLeader:(id)a3 outputDevices:(id)a4 preferredSuffix:(id)a5 connectionType:(int64_t)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v36.receiver = self;
  v36.super_class = MRConcreteEndpoint;
  v15 = [(MRAVEndpoint *)&v36 _init];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = objc_opt_class();
  if (![v16 isEqual:objc_opt_class()] || objc_msgSend(v13, "count"))
  {
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_17:
    [MRConcreteEndpoint initWithDesignatedGroupLeader:a2 outputDevices:v15 preferredSuffix:? connectionType:?];
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_18:
    [MRConcreteEndpoint initWithDesignatedGroupLeader:v12 outputDevices:a2 preferredSuffix:v15 connectionType:v13];
    goto LABEL_6;
  }

  [MRConcreteEndpoint initWithDesignatedGroupLeader:a2 outputDevices:v15 preferredSuffix:? connectionType:?];
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_5:
  if (!a6)
  {
    goto LABEL_18;
  }

LABEL_6:
  v17 = objc_opt_class();
  Name = class_getName(v17);
  v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v20 = dispatch_queue_create(Name, v19);
  serialQueue = v15->_serialQueue;
  v15->_serialQueue = v20;

  v22 = [v13 copy];
  outputDevices = v15->_outputDevices;
  v15->_outputDevices = v22;

  objc_storeStrong(&v15->_designatedGroupLeader, a3);
  v15->_connectionType = a6;
  if (a6 == 5)
  {
    v24 = [v13 firstObject];
    v25 = [v24 groupID];
  }

  else
  {
    v25 = [v12 groupID];
  }

  if (v14)
  {
    v26 = v14;
  }

  else
  {
    v26 = v25;
  }

  v27 = v26;
  connectionType = v15->_connectionType;
  v29 = [v12 primaryID];
  v30 = MRAVEndpointCreateUniqueIdentifier(connectionType, v29, v27);
  uniqueIdentifier = v15->_uniqueIdentifier;
  v15->_uniqueIdentifier = v30;

  if (![(NSString *)v15->_uniqueIdentifier length])
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = NSStringFromMRAVEndpointConnectionType(v15->_connectionType);
    v35 = [v12 primaryID];
    [v33 handleFailureInMethod:a2 object:v15 file:@"MRConcreteEndpoint.m" lineNumber:71 description:{@"Invalid endpoint with type: %@ leader UID: %@, suffix: %@", v34, v35, v27}];
  }

LABEL_15:
  return v15;
}

- (void)setOutputDevices:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MRConcreteEndpoint_setOutputDevices___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __39__MRConcreteEndpoint_setOutputDevices___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 64);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setEndpoint:{*(a1 + 32), v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setExternalDevice:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MRConcreteEndpoint_setExternalDevice___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __40__MRConcreteEndpoint_setExternalDevice___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 72);
  if (v3 != v1)
  {
    if (v3)
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 removeObserver:*(a1 + 32) name:@"kMRExternalDeviceConnectionStateDidChangeNotification" object:*(*(a1 + 32) + 72)];

      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 removeObserver:*(a1 + 32) name:@"MRExternalDeviceDeviceInfoDidChangeNotification" object:*(*(a1 + 32) + 72)];

      v2 = *(a1 + 32);
      v1 = *(a1 + 40);
    }

    objc_storeStrong((v2 + 72), v1);
    if (*(*(a1 + 32) + 72))
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 addObserver:*(a1 + 32) selector:sel__handleConnectionStateDidChangeNotification_ name:@"kMRExternalDeviceConnectionStateDidChangeNotification" object:*(*(a1 + 32) + 72)];

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:*(a1 + 32) selector:sel__handleDeviceInfoDidChangeNotification_ name:@"MRExternalDeviceDeviceInfoDidChangeNotification" object:*(*(a1 + 32) + 72)];
    }
  }
}

- (void)_handleConnectionStateDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v9 = [v5 objectForKey:*MEMORY[0x1E696AA08]];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"kMRExternalDeviceConnectionStateUserInfoKey"];
  v8 = [v7 intValue];

  if (v8 == 3)
  {
    [objc_opt_class() _notifyEndpointDidDisconnect:self withError:v9];
  }

  else if (v8 == 2)
  {
    [objc_opt_class() _notifyEndpointDidConnect:self];
  }
}

- (void)_handleDeviceInfoDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v18 = [v5 objectForKey:@"MRExternalDeviceDeviceInfoUserInfoKey"];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"MRExternalDevicePreviousDeviceInfoUserInfoKey"];

  if (v7)
  {
    v8 = [v7 groupSessionToken];
    v9 = [v18 groupSessionToken];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [(MRGroupSessionInfo *)v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_8;
      }

      v12 = [MRGroupSessionInfo alloc];
      v13 = [v18 groupSessionToken];
      v8 = [(MRGroupSessionInfo *)v12 initWithToken:v13 isHosted:0];

      [objc_opt_class() _notifyGroupSessionInfoDidChange:v8 endpoint:self];
    }

LABEL_8:
    v17 = [v7 isEligibleForHostingGroupSessionExcludingAcknowledgements];
    if (v17 == [v18 isEligibleForHostingGroupSessionExcludingAcknowledgements])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = [MRGroupSessionInfo alloc];
  v15 = [v18 groupSessionToken];
  v16 = [(MRGroupSessionInfo *)v14 initWithToken:v15 isHosted:0];

  [objc_opt_class() _notifyGroupSessionInfoDidChange:v16 endpoint:self];
LABEL_9:
  [objc_opt_class() _notifyGroupSessionHostingEligibilityDidChangeForEndpoint:self];
LABEL_10:
  [objc_opt_class() _notifyDeviceInfoDidChange:v18 previousDeviceInfo:v7 endpoint:self];
}

- (void)initWithDesignatedGroupLeader:(uint64_t)a1 outputDevices:(uint64_t)a2 preferredSuffix:connectionType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRConcreteEndpoint.m" lineNumber:54 description:@"Attempted to initialize an endpoint with an empty array of output devices"];
}

- (void)initWithDesignatedGroupLeader:(uint64_t)a1 outputDevices:(uint64_t)a2 preferredSuffix:connectionType:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRConcreteEndpoint.m" lineNumber:55 description:@"Attempted to initialize an endpoint without a group leader"];
}

- (void)initWithDesignatedGroupLeader:(void *)a1 outputDevices:(uint64_t)a2 preferredSuffix:(uint64_t)a3 connectionType:(uint64_t)a4 .cold.3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [a1 primaryID];
  [v8 handleFailureInMethod:a2 object:a3 file:@"MRConcreteEndpoint.m" lineNumber:56 description:{@"Unknown connection type for endpoint with leader: %@, devices: %@", v9, a4}];
}

@end