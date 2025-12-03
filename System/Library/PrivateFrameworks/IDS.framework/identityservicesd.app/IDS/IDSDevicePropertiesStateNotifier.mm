@interface IDSDevicePropertiesStateNotifier
+ (id)sharedInstance;
- (IDSDevicePropertiesStateNotifier)init;
- (IDSDevicePropertiesStateNotifier)initWithUTunDeliveryController:(id)controller pairingManager:(id)manager;
- (unint64_t)_getCurrentState:(id)state;
- (void)dealloc;
- (void)setState:(unint64_t)state forProperty:(unint64_t)property deviceUniqueID:(id)d;
- (void)updateStateForDeviceWithUniqueID:(id)d;
@end

@implementation IDSDevicePropertiesStateNotifier

+ (id)sharedInstance
{
  if (qword_100CBF570 != -1)
  {
    sub_100933034();
  }

  v3 = qword_100CBF578;

  return v3;
}

- (IDSDevicePropertiesStateNotifier)init
{
  v3 = +[IDSUTunDeliveryController sharedInstance];
  v4 = +[IDSPairingManager sharedInstance];
  v5 = [(IDSDevicePropertiesStateNotifier *)self initWithUTunDeliveryController:v3 pairingManager:v4];

  return v5;
}

- (IDSDevicePropertiesStateNotifier)initWithUTunDeliveryController:(id)controller pairingManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = IDSDevicePropertiesStateNotifier;
  v9 = [(IDSDevicePropertiesStateNotifier *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    notifyDict = v9->_notifyDict;
    v9->_notifyDict = v10;

    objc_storeStrong(&v9->_deliveryController, controller);
    objc_storeStrong(&v9->_pairingManager, manager);
  }

  return v9;
}

- (void)dealloc
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  notifyDict = [(IDSDevicePropertiesStateNotifier *)self notifyDict];
  v4 = [notifyDict countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(notifyDict);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        notifyDict2 = [(IDSDevicePropertiesStateNotifier *)self notifyDict];
        v10 = [notifyDict2 objectForKey:v8];
        pointerValue = [v10 pointerValue];

        free(pointerValue);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [notifyDict countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12.receiver = self;
  v12.super_class = IDSDevicePropertiesStateNotifier;
  [(IDSDevicePropertiesStateNotifier *)&v12 dealloc];
}

- (unint64_t)_getCurrentState:(id)state
{
  stateCopy = state;
  pairingManager = [(IDSDevicePropertiesStateNotifier *)self pairingManager];
  pairedDeviceUniqueID = [pairingManager pairedDeviceUniqueID];

  LODWORD(pairingManager) = [pairedDeviceUniqueID isEqualToIgnoringCase:stateCopy];
  if (pairingManager)
  {
    deliveryController = [(IDSDevicePropertiesStateNotifier *)self deliveryController];
    defaultPeerIsConnected = [deliveryController defaultPeerIsConnected];

    deliveryController2 = [(IDSDevicePropertiesStateNotifier *)self deliveryController];
    defaultPeerIsNearby = [deliveryController2 defaultPeerIsNearby];

    deliveryController3 = [(IDSDevicePropertiesStateNotifier *)self deliveryController];
    defaultPeerIsCloudConnected = [deliveryController3 defaultPeerIsCloudConnected];

    if (defaultPeerIsConnected)
    {
      v13 = kIDSDeviceStatePropertiesIsConnected;
      if (defaultPeerIsNearby)
      {
        v13 = kIDSDeviceStatePropertiesIsNearby | kIDSDeviceStatePropertiesIsConnected;
        if ((defaultPeerIsCloudConnected & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else
    {
      if ((defaultPeerIsNearby & 1) == 0)
      {
        v13 = 0;
        if ((defaultPeerIsCloudConnected & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v13 = kIDSDeviceStatePropertiesIsNearby;
    }

    if (defaultPeerIsCloudConnected)
    {
LABEL_10:
      v13 |= kIDSDeviceStatePropertiesIsCloudConnected;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (void)updateStateForDeviceWithUniqueID:(id)d
{
  dCopy = d;
  v4 = [(IDSDevicePropertiesStateNotifier *)self _getCurrentState:dCopy];
  [(IDSDevicePropertiesStateNotifier *)self setState:v4 forProperty:kIDSDeviceStatePropertiesIsNearby | kIDSDeviceStatePropertiesIsConnected | kIDSDeviceStatePropertiesIsCloudConnected deviceUniqueID:dCopy];
}

- (void)setState:(unint64_t)state forProperty:(unint64_t)property deviceUniqueID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    if ([dCopy isEqualToIgnoringCase:IDSDeviceDefaultPairedDeviceUniqueID])
    {
      pairingManager = [(IDSDevicePropertiesStateNotifier *)self pairingManager];
      pairedDeviceUniqueID = [pairingManager pairedDeviceUniqueID];

      if (![pairedDeviceUniqueID length])
      {
        v27 = +[IMRGLog deviceState];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100933048(v27);
        }

        goto LABEL_32;
      }

      dCopy = pairedDeviceUniqueID;
    }

    pairedDeviceUniqueID = [NSString stringWithFormat:@"%@-%@", IDSDeviceStateTokenPrefix, dCopy];
    notifyDict = [(IDSDevicePropertiesStateNotifier *)self notifyDict];
    v12 = [notifyDict objectForKey:pairedDeviceUniqueID];
    pointerValue = [v12 pointerValue];

    state64 = 0;
    v14 = +[IMRGLog deviceState];
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (pointerValue)
    {
      if (v15)
      {
        v16 = *pointerValue;
        *buf = 67109378;
        *v30 = v16;
        *&v30[4] = 2112;
        *&v30[6] = pairedDeviceUniqueID;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found existing notify token %d for name %@", buf, 0x12u);
      }

      notify_get_state(*pointerValue, &state64);
      v17 = state64;
      v18 = pointerValue;
    }

    else
    {
      if (v15)
      {
        *buf = 138412290;
        *v30 = pairedDeviceUniqueID;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "We didn't find a notify token for %@, adding one...", buf, 0xCu);
      }

      v18 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
      *v18 = 0;
      notify_register_check([pairedDeviceUniqueID UTF8String], v18);
      notifyDict2 = [(IDSDevicePropertiesStateNotifier *)self notifyDict];
      v20 = [NSValue valueWithPointer:v18];
      [notifyDict2 setValue:v20 forKey:pairedDeviceUniqueID];

      v17 = [(IDSDevicePropertiesStateNotifier *)self _getCurrentState:dCopy];
      state64 = v17;
    }

    v21 = v17 & ~property | property & state;
    v22 = +[IMRGLog deviceState];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = @"YES";
      if ((kIDSDeviceStatePropertiesIsNearby & v21) != 0)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      if ((kIDSDeviceStatePropertiesIsConnected & v21) != 0)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      if ((kIDSDeviceStatePropertiesIsCloudConnected & v21) == 0)
      {
        v23 = @"NO";
      }

      *buf = 138413058;
      *v30 = pairedDeviceUniqueID;
      *&v30[8] = 2112;
      *&v30[10] = v24;
      v31 = 2112;
      v32 = v25;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received device properties state change for device with uniqueID %@ - nearby %@  connected %@  cloud connected %@", buf, 0x2Au);
    }

    if (!pointerValue || v17 != v21)
    {
      v26 = +[IMRGLog deviceState];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v30 = v17;
        *&v30[4] = 1024;
        *&v30[6] = v21;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Connectivity state changed (old: 0x%x) (new: 0x%x)", buf, 0xEu);
      }

      notify_set_state(*v18, v21);
      notify_post([pairedDeviceUniqueID UTF8String]);
      if ((kIDSDeviceStatePropertiesIsNearby & (v21 ^ v17)) != 0)
      {
        v27 = +[IDSDaemon sharedInstance];
        [v27 launchOnDemandServicesForNeedsLaunchOnNearbyDevicesChanged];
LABEL_32:
      }
    }
  }

  else
  {
    pairedDeviceUniqueID = +[IMRGLog deviceState];
    if (os_log_type_enabled(pairedDeviceUniqueID, OS_LOG_TYPE_ERROR))
    {
      sub_10093308C(pairedDeviceUniqueID);
    }
  }
}

@end