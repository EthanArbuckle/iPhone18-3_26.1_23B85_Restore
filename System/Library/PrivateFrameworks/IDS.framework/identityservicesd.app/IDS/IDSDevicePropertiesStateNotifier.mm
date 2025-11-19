@interface IDSDevicePropertiesStateNotifier
+ (id)sharedInstance;
- (IDSDevicePropertiesStateNotifier)init;
- (IDSDevicePropertiesStateNotifier)initWithUTunDeliveryController:(id)a3 pairingManager:(id)a4;
- (unint64_t)_getCurrentState:(id)a3;
- (void)dealloc;
- (void)setState:(unint64_t)a3 forProperty:(unint64_t)a4 deviceUniqueID:(id)a5;
- (void)updateStateForDeviceWithUniqueID:(id)a3;
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

- (IDSDevicePropertiesStateNotifier)initWithUTunDeliveryController:(id)a3 pairingManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = IDSDevicePropertiesStateNotifier;
  v9 = [(IDSDevicePropertiesStateNotifier *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    notifyDict = v9->_notifyDict;
    v9->_notifyDict = v10;

    objc_storeStrong(&v9->_deliveryController, a3);
    objc_storeStrong(&v9->_pairingManager, a4);
  }

  return v9;
}

- (void)dealloc
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(IDSDevicePropertiesStateNotifier *)self notifyDict];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [(IDSDevicePropertiesStateNotifier *)self notifyDict];
        v10 = [v9 objectForKey:v8];
        v11 = [v10 pointerValue];

        free(v11);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12.receiver = self;
  v12.super_class = IDSDevicePropertiesStateNotifier;
  [(IDSDevicePropertiesStateNotifier *)&v12 dealloc];
}

- (unint64_t)_getCurrentState:(id)a3
{
  v4 = a3;
  v5 = [(IDSDevicePropertiesStateNotifier *)self pairingManager];
  v6 = [v5 pairedDeviceUniqueID];

  LODWORD(v5) = [v6 isEqualToIgnoringCase:v4];
  if (v5)
  {
    v7 = [(IDSDevicePropertiesStateNotifier *)self deliveryController];
    v8 = [v7 defaultPeerIsConnected];

    v9 = [(IDSDevicePropertiesStateNotifier *)self deliveryController];
    v10 = [v9 defaultPeerIsNearby];

    v11 = [(IDSDevicePropertiesStateNotifier *)self deliveryController];
    v12 = [v11 defaultPeerIsCloudConnected];

    if (v8)
    {
      v13 = kIDSDeviceStatePropertiesIsConnected;
      if (v10)
      {
        v13 = kIDSDeviceStatePropertiesIsNearby | kIDSDeviceStatePropertiesIsConnected;
        if ((v12 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else
    {
      if ((v10 & 1) == 0)
      {
        v13 = 0;
        if ((v12 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v13 = kIDSDeviceStatePropertiesIsNearby;
    }

    if (v12)
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

- (void)updateStateForDeviceWithUniqueID:(id)a3
{
  v5 = a3;
  v4 = [(IDSDevicePropertiesStateNotifier *)self _getCurrentState:v5];
  [(IDSDevicePropertiesStateNotifier *)self setState:v4 forProperty:kIDSDeviceStatePropertiesIsNearby | kIDSDeviceStatePropertiesIsConnected | kIDSDeviceStatePropertiesIsCloudConnected deviceUniqueID:v5];
}

- (void)setState:(unint64_t)a3 forProperty:(unint64_t)a4 deviceUniqueID:(id)a5
{
  v8 = a5;
  if ([v8 length])
  {
    if ([v8 isEqualToIgnoringCase:IDSDeviceDefaultPairedDeviceUniqueID])
    {
      v9 = [(IDSDevicePropertiesStateNotifier *)self pairingManager];
      v10 = [v9 pairedDeviceUniqueID];

      if (![v10 length])
      {
        v27 = +[IMRGLog deviceState];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100933048(v27);
        }

        goto LABEL_32;
      }

      v8 = v10;
    }

    v10 = [NSString stringWithFormat:@"%@-%@", IDSDeviceStateTokenPrefix, v8];
    v11 = [(IDSDevicePropertiesStateNotifier *)self notifyDict];
    v12 = [v11 objectForKey:v10];
    v13 = [v12 pointerValue];

    state64 = 0;
    v14 = +[IMRGLog deviceState];
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v16 = *v13;
        *buf = 67109378;
        *v30 = v16;
        *&v30[4] = 2112;
        *&v30[6] = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found existing notify token %d for name %@", buf, 0x12u);
      }

      notify_get_state(*v13, &state64);
      v17 = state64;
      v18 = v13;
    }

    else
    {
      if (v15)
      {
        *buf = 138412290;
        *v30 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "We didn't find a notify token for %@, adding one...", buf, 0xCu);
      }

      v18 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
      *v18 = 0;
      notify_register_check([v10 UTF8String], v18);
      v19 = [(IDSDevicePropertiesStateNotifier *)self notifyDict];
      v20 = [NSValue valueWithPointer:v18];
      [v19 setValue:v20 forKey:v10];

      v17 = [(IDSDevicePropertiesStateNotifier *)self _getCurrentState:v8];
      state64 = v17;
    }

    v21 = v17 & ~a4 | a4 & a3;
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
      *v30 = v10;
      *&v30[8] = 2112;
      *&v30[10] = v24;
      v31 = 2112;
      v32 = v25;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received device properties state change for device with uniqueID %@ - nearby %@  connected %@  cloud connected %@", buf, 0x2Au);
    }

    if (!v13 || v17 != v21)
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
      notify_post([v10 UTF8String]);
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
    v10 = +[IMRGLog deviceState];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10093308C(v10);
    }
  }
}

@end