@interface MRAVDistantEndpoint
+ (MRAVDistantExternalDeviceFactory)externalDeviceFactory;
- (BOOL)isConnected;
- (BOOL)isEligibleForHostingGroupSessionExcludingAcknowledgements;
- (MRAVDistantEndpoint)initWithCoder:(id)coder;
- (MRAVDistantEndpoint)initWithDescriptor:(id)descriptor;
- (MRAVDistantEndpoint)initWithDescriptor:(id)descriptor xpcEndpointListener:(id)listener;
- (MRDistantExternalDevice)distantExternalDevice;
- (id)debugDescription;
- (id)groupSessionInfo;
- (uint64_t)_handleEndpointDidConnectWithExternalDevice:(uint64_t)result;
- (void)_handleConnectionStateDidChangeNotification:(id)notification;
- (void)_handleDeviceInfoDidChangeNotification:(id)notification;
- (void)_handleEndpointDidDisconnectWithError:(void *)error;
- (void)_onExternalDeviceQueue_setExternalDevice:(uint64_t)device;
- (void)_registerNotificationsForExternalDevice:(uint64_t)device;
- (void)_unregisterNotificationsForExternalDevice:(uint64_t)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDistantExternalDevice:(id)device;
@end

@implementation MRAVDistantEndpoint

- (void)dealloc
{
  v3 = +[MRMediaRemoteServiceClient sharedServiceClient];
  [v3 removeDistantEndpoint:self];

  v4.receiver = self;
  v4.super_class = MRAVDistantEndpoint;
  [(MRAVDistantEndpoint *)&v4 dealloc];
}

- (MRDistantExternalDevice)distantExternalDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25;
  v10 = __Block_byref_object_dispose__25;
  v11 = 0;
  externalDeviceQueue = self->_externalDeviceQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MRAVDistantEndpoint_distantExternalDevice__block_invoke;
  v5[3] = &unk_1E769A4C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalDeviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__MRAVDistantEndpoint_distantExternalDevice__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (!v3)
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() externalDeviceFactory];
    v7 = [v6 distantExternalDeviceForEndpoint:*(a1 + 32)];
    [(MRAVDistantEndpoint *)v2 _onExternalDeviceQueue_setExternalDevice:v7];

    v3 = *(*(a1 + 32) + 88);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

+ (MRAVDistantExternalDeviceFactory)externalDeviceFactory
{
  if (externalDeviceFactory_onceToken != -1)
  {
    +[MRAVDistantEndpoint externalDeviceFactory];
  }

  v3 = externalDeviceFactory_cache;

  return v3;
}

- (MRAVDistantEndpoint)initWithDescriptor:(id)descriptor
{
  v50 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v47.receiver = self;
  v47.super_class = MRAVDistantEndpoint;
  _init = [(MRAVEndpoint *)&v47 _init];
  if (_init)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.mediaremote.distantEndpoint/externalDeviceQueue", v6);
    externalDeviceQueue = _init->_externalDeviceQueue;
    _init->_externalDeviceQueue = v7;

    name = [descriptorCopy name];
    v10 = [name copy];
    localizedName = _init->_localizedName;
    _init->_localizedName = v10;

    uniqueIdentifier = [descriptorCopy uniqueIdentifier];
    v13 = [uniqueIdentifier copy];
    uniqueIdentifier = _init->_uniqueIdentifier;
    _init->_uniqueIdentifier = v13;

    _init->_connectionType = [descriptorCopy connectionType];
    _init->_canModifyGroupMembership = [descriptorCopy canModifyGroupMembership];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    outputDevices = [descriptorCopy outputDevices];
    v17 = [outputDevices countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v44;
      do
      {
        v20 = 0;
        do
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(outputDevices);
          }

          v21 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:*(*(&v43 + 1) + 8 * v20)];
          [(NSArray *)v15 addObject:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [outputDevices countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v18);
    }

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    personalOutputDevices = [descriptorCopy personalOutputDevices];
    v24 = [personalOutputDevices countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      do
      {
        v27 = 0;
        do
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(personalOutputDevices);
          }

          v28 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:*(*(&v39 + 1) + 8 * v27)];
          [(NSArray *)v22 addObject:v28];

          ++v27;
        }

        while (v25 != v27);
        v25 = [personalOutputDevices countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v25);
    }

    distantOutputDevices = _init->_distantOutputDevices;
    _init->_distantOutputDevices = v15;
    v30 = v15;

    distantPersonalOutputDevices = _init->_distantPersonalOutputDevices;
    _init->_distantPersonalOutputDevices = v22;
    v32 = v22;

    v33 = [MRAVDistantOutputDevice alloc];
    designatedGroupLeader = [descriptorCopy designatedGroupLeader];
    v35 = [(MRAVDistantOutputDevice *)v33 initWithDescriptor:designatedGroupLeader];
    distantGroupLeader = _init->_distantGroupLeader;
    _init->_distantGroupLeader = v35;
  }

  v37 = *MEMORY[0x1E69E9840];
  return _init;
}

- (MRAVDistantEndpoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalDeviceListenerEndpoint"];

  v7 = [(MRAVDistantEndpoint *)self initWithDescriptor:v5 xpcEndpointListener:v6];
  return v7;
}

- (MRAVDistantEndpoint)initWithDescriptor:(id)descriptor xpcEndpointListener:(id)listener
{
  listenerCopy = listener;
  v8 = [(MRAVDistantEndpoint *)self initWithDescriptor:descriptor];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_externalDeviceListenerEndpoint, listener);
  }

  return v9;
}

- (id)debugDescription
{
  v12.receiver = self;
  v12.super_class = MRAVDistantEndpoint;
  v3 = [(MRAVEndpoint *)&v12 debugDescription];
  v4 = [v3 mutableCopy];

  externalDeviceQueue = self->_externalDeviceQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__MRAVDistantEndpoint_debugDescription__block_invoke;
  v9[3] = &unk_1E769A4A0;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  dispatch_sync(externalDeviceQueue, v9);
  v7 = v6;

  return v6;
}

uint64_t __39__MRAVDistantEndpoint_debugDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 88) mr_formattedDebugDescription];
  [v2 appendFormat:@"\n  distantExternalDevice = %@\n", v3];

  v4 = *(a1 + 32);

  return [v4 appendFormat:@">"];
}

- (void)encodeWithCoder:(id)coder
{
  v34 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_alloc_init(_MRAVEndpointDescriptorProtobuf);
  [(_MRAVEndpointDescriptorProtobuf *)v5 setName:self->_localizedName];
  [(_MRAVEndpointDescriptorProtobuf *)v5 setUniqueIdentifier:self->_uniqueIdentifier];
  [(_MRAVEndpointDescriptorProtobuf *)v5 setConnectionType:LODWORD(self->_connectionType)];
  protobuf = [(MRAVDistantOutputDevice *)self->_distantGroupLeader protobuf];
  [(_MRAVEndpointDescriptorProtobuf *)v5 setDesignatedGroupLeader:protobuf];

  [(_MRAVEndpointDescriptorProtobuf *)v5 setCanModifyGroupMembership:self->_canModifyGroupMembership];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = self->_distantOutputDevices;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        protobuf2 = [*(*(&v28 + 1) + 8 * v11) protobuf];
        [(_MRAVEndpointDescriptorProtobuf *)v5 addOutputDevices:protobuf2];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = self->_distantPersonalOutputDevices;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        protobuf3 = [*(*(&v24 + 1) + 8 * v17) protobuf];
        [(_MRAVEndpointDescriptorProtobuf *)v5 addPersonalOutputDevices:protobuf3];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  [coderCopy encodeObject:v5 forKey:@"protobuf"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    externalDeviceQueue = self->_externalDeviceQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __39__MRAVDistantEndpoint_encodeWithCoder___block_invoke;
    v21[3] = &unk_1E769A4A0;
    v22 = coderCopy;
    selfCopy = self;
    dispatch_sync(externalDeviceQueue, v21);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)isConnected
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  externalDeviceQueue = self->_externalDeviceQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t __34__MRAVDistantEndpoint_isConnected__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 88) isConnected];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)groupSessionInfo
{
  distantExternalDevice = [(MRAVDistantEndpoint *)self distantExternalDevice];
  deviceInfo = [distantExternalDevice deviceInfo];

  v5 = [MRGroupSessionInfo alloc];
  groupSessionToken = [deviceInfo groupSessionToken];
  v7 = [(MRGroupSessionInfo *)v5 initWithToken:groupSessionToken isHosted:0];

  if (v7)
  {
    groupSessionInfo = v7;
  }

  else
  {
    if ([deviceInfo hasPlaceholderGroupSession])
    {
      v9 = [[MRGroupSessionToken alloc] initWithDeviceInfo:deviceInfo];
      v10 = [[MRGroupSessionInfo alloc] initWithToken:v9 isHosted:0 isPlaceholder:1];

      goto LABEL_7;
    }

    v12.receiver = self;
    v12.super_class = MRAVDistantEndpoint;
    groupSessionInfo = [(MRAVEndpoint *)&v12 groupSessionInfo];
  }

  v10 = groupSessionInfo;
LABEL_7:

  return v10;
}

- (BOOL)isEligibleForHostingGroupSessionExcludingAcknowledgements
{
  distantExternalDevice = [(MRAVDistantEndpoint *)self distantExternalDevice];
  deviceInfo = [distantExternalDevice deviceInfo];
  isEligibleForHostingGroupSessionExcludingAcknowledgements = [deviceInfo isEligibleForHostingGroupSessionExcludingAcknowledgements];

  return isEligibleForHostingGroupSessionExcludingAcknowledgements;
}

- (void)setDistantExternalDevice:(id)device
{
  deviceCopy = device;
  externalDeviceQueue = self->_externalDeviceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MRAVDistantEndpoint_setDistantExternalDevice___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_sync(externalDeviceQueue, v7);
}

void __48__MRAVDistantEndpoint_setDistantExternalDevice___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (*(v1 + 88) != v3)
  {
    __48__MRAVDistantEndpoint_setDistantExternalDevice___block_invoke_cold_1(v1, v3, (v2 + 8), v2);
  }
}

- (void)_handleConnectionStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKey:@"kMRExternalDeviceConnectionStateUserInfoKey"];
  unsignedIntValue = [v5 unsignedIntValue];

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKey:*MEMORY[0x1E696AA08]];

  if (unsignedIntValue == 3)
  {
    [(MRAVDistantEndpoint *)self _handleEndpointDidDisconnectWithError:v8];
  }

  else if (unsignedIntValue == 2)
  {
    object = [notificationCopy object];
    [(MRAVDistantEndpoint *)self _handleEndpointDidConnectWithExternalDevice:object];
  }
}

- (void)_handleDeviceInfoDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v18 = [userInfo objectForKey:@"MRExternalDeviceDeviceInfoUserInfoKey"];

  userInfo2 = [notificationCopy userInfo];

  v7 = [userInfo2 objectForKey:@"MRExternalDevicePreviousDeviceInfoUserInfoKey"];

  if (v7)
  {
    groupSessionToken = [v7 groupSessionToken];
    groupSessionToken2 = [v18 groupSessionToken];
    v10 = groupSessionToken2;
    if (groupSessionToken == groupSessionToken2)
    {
    }

    else
    {
      v11 = [(MRGroupSessionInfo *)groupSessionToken isEqual:groupSessionToken2];

      if (v11)
      {
        goto LABEL_8;
      }

      v12 = [MRGroupSessionInfo alloc];
      groupSessionToken3 = [v18 groupSessionToken];
      groupSessionToken = [(MRGroupSessionInfo *)v12 initWithToken:groupSessionToken3 isHosted:0];

      [objc_opt_class() _notifyGroupSessionInfoDidChange:groupSessionToken endpoint:self];
    }

LABEL_8:
    isEligibleForHostingGroupSessionExcludingAcknowledgements = [v7 isEligibleForHostingGroupSessionExcludingAcknowledgements];
    if (isEligibleForHostingGroupSessionExcludingAcknowledgements == [v18 isEligibleForHostingGroupSessionExcludingAcknowledgements])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = [MRGroupSessionInfo alloc];
  groupSessionToken4 = [v18 groupSessionToken];
  v16 = [(MRGroupSessionInfo *)v14 initWithToken:groupSessionToken4 isHosted:0];

  [objc_opt_class() _notifyGroupSessionInfoDidChange:v16 endpoint:self];
LABEL_9:
  [objc_opt_class() _notifyGroupSessionHostingEligibilityDidChangeForEndpoint:self];
LABEL_10:
  [objc_opt_class() _notifyDeviceInfoDidChange:v18 previousDeviceInfo:v7 endpoint:self];
}

void __44__MRAVDistantEndpoint_externalDeviceFactory__block_invoke()
{
  v0 = objc_alloc_init(MRAVDistantExternalDeviceFactory);
  v1 = externalDeviceFactory_cache;
  externalDeviceFactory_cache = v0;
}

- (void)_onExternalDeviceQueue_setExternalDevice:(uint64_t)device
{
  v5 = a2;
  if (device)
  {
    dispatch_assert_queue_V2(*(device + 96));
    if (*(device + 88))
    {
      [MRAVDistantEndpoint _unregisterNotificationsForExternalDevice:device];
    }

    objc_storeStrong((device + 88), a2);
    if (*(device + 88))
    {
      [MRAVDistantEndpoint _registerNotificationsForExternalDevice:device];
    }

    if ([v5 connectionState] == 2)
    {
      [(MRAVDistantEndpoint *)device _handleEndpointDidConnectWithExternalDevice:v5];
    }

    v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
    [v4 addDistantEndpoint:device];
  }
}

- (uint64_t)_handleEndpointDidConnectWithExternalDevice:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    externalOutputContext = [a2 externalOutputContext];
    [v2 setOutputContextDataSource:externalOutputContext];

    v4 = objc_opt_class();

    return [v4 _notifyEndpointDidConnect:v2];
  }

  return result;
}

- (void)_handleEndpointDidDisconnectWithError:(void *)error
{
  if (error)
  {
    v3 = a2;
    [error setOutputContextDataSource:0];
    [objc_opt_class() _notifyEndpointDidDisconnect:error withError:v3];
  }
}

- (void)_unregisterNotificationsForExternalDevice:(uint64_t)device
{
  if (device)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:device name:@"kMRExternalDeviceConnectionStateDidChangeNotification" object:*(device + 88)];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:device name:@"MRExternalDeviceDeviceInfoDidChangeNotification" object:*(device + 88)];
  }
}

- (void)_registerNotificationsForExternalDevice:(uint64_t)device
{
  if (device)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:device selector:sel__handleConnectionStateDidChangeNotification_ name:@"kMRExternalDeviceConnectionStateDidChangeNotification" object:*(device + 88)];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:device selector:sel__handleDeviceInfoDidChangeNotification_ name:@"MRExternalDeviceDeviceInfoDidChangeNotification" object:*(device + 88)];
  }
}

void __48__MRAVDistantEndpoint_setDistantExternalDevice___block_invoke_cold_1(uint64_t a1, void *a2, id *a3, uint64_t a4)
{
  [(MRAVDistantEndpoint *)a1 _onExternalDeviceQueue_setExternalDevice:a2];
  v6 = [*a3 listenerEndpoint];
  v7 = *(*a4 + 128);
  *(*a4 + 128) = v6;
}

@end