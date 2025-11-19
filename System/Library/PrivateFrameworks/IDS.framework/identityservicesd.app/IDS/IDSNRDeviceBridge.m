@interface IDSNRDeviceBridge
- (BOOL)isClassCConnected;
- (BOOL)isConnected;
- (BOOL)isDevicesIdentifierEqualTo:(id)a3;
- (BOOL)isNearby;
- (BOOL)isRegistered;
- (IDSNRDeviceBridge)initWithDeviceIdentifier:(id)a3 delegate:(id)a4 startMonitor:(BOOL)a5;
- (IDSNRDeviceBridgeDelegate)delegate;
- (void)_notifyWirelessRadioManagerAboutLinkChange:(unsigned __int8)a3;
- (void)_startNRDeviceMonitor:(id)a3;
- (void)dealloc;
- (void)deviceIsAsleepDidChange:(id)a3 isAsleep:(BOOL)a4;
- (void)deviceIsClassCConnectedDidChange:(id)a3 isClassCConnected:(BOOL)a4;
- (void)deviceIsCloudConnectedDidChange:(id)a3 isCloudConnected:(BOOL)a4;
- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4;
- (void)deviceIsNearbyDidChange:(id)a3 isNearby:(BOOL)a4;
- (void)deviceLinkTypeDidChange:(id)a3 linkType:(unsigned __int8)a4;
@end

@implementation IDSNRDeviceBridge

- (BOOL)isConnected
{
  v2 = [(IDSNRDeviceBridge *)self nrDeviceMonitor];
  v3 = [v2 isConnected];

  return v3;
}

- (IDSNRDeviceBridge)initWithDeviceIdentifier:(id)a3 delegate:(id)a4 startMonitor:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = IDSNRDeviceBridge;
  v10 = [(IDSNRDeviceBridge *)&v18 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("NRDeviceMonitor", v12);
    nrMonitorQueue = v10->_nrMonitorQueue;
    v10->_nrMonitorQueue = v13;

    objc_storeWeak(&v10->_delegate, v9);
    v15 = [v8 copy];
    deviceIdentifier = v10->_deviceIdentifier;
    v10->_deviceIdentifier = v15;

    if (v5)
    {
      [(IDSNRDeviceBridge *)v10 _startNRDeviceMonitor:v8];
    }
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc'ing IDSNRDeviceBridge {pointer: %p}", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = IDSNRDeviceBridge;
  [(IDSNRDeviceBridge *)&v4 dealloc];
}

- (void)_startNRDeviceMonitor:(id)a3
{
  v4 = a3;
  nrMonitorQueue = self->_nrMonitorQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003220E4;
  v7[3] = &unk_100BD6E40;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(nrMonitorQueue, v7);
}

- (BOOL)isNearby
{
  v2 = [(IDSNRDeviceBridge *)self nrDeviceMonitor];
  v3 = [v2 isNearby];

  return v3;
}

- (BOOL)isRegistered
{
  v2 = [(IDSNRDeviceBridge *)self nrDeviceMonitor];
  v3 = [v2 isRegistered];

  return v3;
}

- (BOOL)isDevicesIdentifierEqualTo:(id)a3
{
  v4 = a3;
  v5 = [(IDSNRDeviceBridge *)self deviceIdentifier];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (BOOL)isClassCConnected
{
  v2 = [(IDSNRDeviceBridge *)self nrDeviceMonitor];
  v3 = [v2 isClassCConnected];

  return v3;
}

- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 isRegistered];
  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (v7)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [v6 deviceIdentifier];
    *buf = 138543875;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2113;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isConnected didChange {isConnected: %{public}@, isRegistered: %{public}@, deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  if (v7)
  {
    v12 = im_primary_queue();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100322504;
    v13[3] = &unk_100BD7478;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v12, v13);
  }
}

- (void)deviceIsNearbyDidChange:(id)a3 isNearby:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 isRegistered];
  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (v7)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [v6 deviceIdentifier];
    *buf = 138543875;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2113;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isNearby didChange {isNearby: %{public}@, isRegistered: %{public}@, deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  if (v7)
  {
    v12 = im_primary_queue();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003226EC;
    v13[3] = &unk_100BD7478;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v12, v13);
  }
}

- (void)deviceIsCloudConnectedDidChange:(id)a3 isCloudConnected:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 isRegistered];
  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (v7)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [v6 deviceIdentifier];
    *buf = 138543875;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2113;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isCloudConnected didChange {isCloudConnected: %{public}@, isRegistered: %{public}@, deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  if (v7)
  {
    v12 = im_primary_queue();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003228D4;
    v13[3] = &unk_100BD7478;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v12, v13);
  }
}

- (void)deviceIsAsleepDidChange:(id)a3 isAsleep:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 isRegistered];
  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v9 = @"NO";
    }

    else
    {
      v9 = @"YES";
    }

    if (v7)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [v6 deviceIdentifier];
    *buf = 138543875;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2113;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isAwake didChange {isAwake: %{public}@, isRegistered: %{public}@, deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  if (v7)
  {
    v12 = !v4;
    v13 = im_primary_queue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100322AC0;
    v14[3] = &unk_100BD7478;
    v14[4] = self;
    v15 = v12;
    dispatch_async(v13, v14);
  }
}

- (void)deviceLinkTypeDidChange:(id)a3 linkType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  StringFromNRLinkType = j__createStringFromNRLinkType();
  v8 = [v6 isRegistered];
  v9 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [v6 deviceIdentifier];
    *buf = 138543875;
    v20 = StringFromNRLinkType;
    v21 = 2114;
    v22 = v10;
    v23 = 2113;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "linkType didChange {linkType: %{public}@, isRegistered: %{public}@ deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  v12 = [NSDictionary alloc];
  v13 = [NSNumber numberWithUnsignedChar:v4];
  v14 = [v12 initWithObjectsAndKeys:{v13, @"IPsecLinkType", 0}];

  v15 = v4;
  if (!v4)
  {
    v15 = [(IDSNRDeviceBridge *)self latestLinkType];
  }

  [(IDSNRDeviceBridge *)self setLatestLinkType:v15];
  v16 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322D34;
  block[3] = &unk_100BD7478;
  block[4] = self;
  v18 = v4;
  dispatch_async(v16, block);

  IDSPowerLogDictionary();
  [(IDSNRDeviceBridge *)self _notifyWirelessRadioManagerAboutLinkChange:v4];
}

- (void)deviceIsClassCConnectedDidChange:(id)a3 isClassCConnected:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 isRegistered];
  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (v7)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [v6 deviceIdentifier];
    *buf = 138543875;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2113;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isClassCConnected didChange {isClassCConnected: %{public}@, isRegistered: %{public}@, deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  if (v7)
  {
    v12 = im_primary_queue();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100322F1C;
    v13[3] = &unk_100BD7478;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v12, v13);
  }
}

- (void)_notifyWirelessRadioManagerAboutLinkChange:(unsigned __int8)a3
{
  if (a3 <= 2u)
  {
    v4 = qword_1009AB4E0[a3];
    v5 = +[IDSWRMExchange sharedInstance];
    [v5 handleActiveLinkChange:v4];
  }
}

- (IDSNRDeviceBridgeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end