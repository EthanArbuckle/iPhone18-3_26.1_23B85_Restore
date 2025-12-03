@interface CMSM_IDSConnection
- (CMSM_IDSConnection)init;
- (id)copyNearbyPairedDevice;
- (id)copyNearbyPairedDeviceModelIdentifier;
- (id)copyNearbyPairedDeviceName;
- (id)copyNearbyPairedDeviceProductName;
- (id)copyNearbyPairedDeviceUniqueID;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)updateNearbyPairedDevice;
@end

@implementation CMSM_IDSConnection

- (id)copyNearbyPairedDevice
{
  if (sIDSConnectedInitializationDone != 1)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v3 = self->pNearbyPairedDevice;
  FigSimpleMutexUnlock();
  return v3;
}

- (CMSM_IDSConnection)init
{
  v6.receiver = self;
  v6.super_class = CMSM_IDSConnection;
  v2 = [(CMSM_IDSConnection *)&v6 init];
  v2->pNearbyPairedDevice = 0;
  v2->pIdsService = [objc_alloc(CMSM_GetIDSServiceClass()) initWithService:@"com.apple.private.alloy.cmsession"];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.cmsession.ids.server.dispatch", v3);
  v2->idsDispatchQueue = v4;
  [(IDSService *)v2->pIdsService addDelegate:v2 queue:v4];
  return v2;
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  IsNearbyPairedDevicePresentAndConnected = CMSM_IDSConnection_IsNearbyPairedDevicePresentAndConnected();
  if (IsNearbyPairedDevicePresentAndConnected != service_connectedDevicesChanged__nearbyPairedDeviceIsConnectedOldValue)
  {
    service_connectedDevicesChanged__nearbyPairedDeviceIsConnectedOldValue = IsNearbyPairedDevicePresentAndConnected;

    CMSM_IDSConnection_HandleNearbyDeviceStatusChange();
  }
}

- (void)updateNearbyPairedDevice
{
  v17 = *MEMORY[0x1E69E9840];
  devices = [(IDSService *)self->pIdsService devices];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(devices);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isLocallyPaired] && objc_msgSend(v8, "isNearby"))
        {
          v9 = v8;
          goto LABEL_12;
        }
      }

      v5 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:
  FigSimpleMutexLock();
  pNearbyPairedDevice = self->pNearbyPairedDevice;

  self->pNearbyPairedDevice = v9;
  FigSimpleMutexUnlock();
  if (pNearbyPairedDevice != v9)
  {
    CMSM_IDSConnection_HandleNearbyDeviceStatusChange();
    cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)copyNearbyPairedDeviceUniqueID
{
  FigSimpleMutexLock();
  pNearbyPairedDevice = self->pNearbyPairedDevice;
  if (pNearbyPairedDevice)
  {
    uniqueIDOverride = [(IDSDevice *)pNearbyPairedDevice uniqueIDOverride];
  }

  else
  {
    uniqueIDOverride = 0;
  }

  FigSimpleMutexUnlock();
  return uniqueIDOverride;
}

- (id)copyNearbyPairedDeviceProductName
{
  FigSimpleMutexLock();
  pNearbyPairedDevice = self->pNearbyPairedDevice;
  if (pNearbyPairedDevice)
  {
    productName = [(IDSDevice *)pNearbyPairedDevice productName];
  }

  else
  {
    productName = 0;
  }

  FigSimpleMutexUnlock();
  return productName;
}

- (id)copyNearbyPairedDeviceModelIdentifier
{
  FigSimpleMutexLock();
  pNearbyPairedDevice = self->pNearbyPairedDevice;
  if (pNearbyPairedDevice)
  {
    modelIdentifier = [(IDSDevice *)pNearbyPairedDevice modelIdentifier];
  }

  else
  {
    modelIdentifier = 0;
  }

  FigSimpleMutexUnlock();
  return modelIdentifier;
}

- (id)copyNearbyPairedDeviceName
{
  FigSimpleMutexLock();
  pNearbyPairedDevice = self->pNearbyPairedDevice;
  if (pNearbyPairedDevice)
  {
    name = [(IDSDevice *)pNearbyPairedDevice name];
  }

  else
  {
    name = 0;
  }

  FigSimpleMutexUnlock();
  return name;
}

@end