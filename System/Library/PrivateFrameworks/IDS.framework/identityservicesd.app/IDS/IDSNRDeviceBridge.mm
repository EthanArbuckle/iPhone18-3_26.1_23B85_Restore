@interface IDSNRDeviceBridge
- (BOOL)isClassCConnected;
- (BOOL)isConnected;
- (BOOL)isDevicesIdentifierEqualTo:(id)to;
- (BOOL)isNearby;
- (BOOL)isRegistered;
- (IDSNRDeviceBridge)initWithDeviceIdentifier:(id)identifier delegate:(id)delegate startMonitor:(BOOL)monitor;
- (IDSNRDeviceBridgeDelegate)delegate;
- (void)_notifyWirelessRadioManagerAboutLinkChange:(unsigned __int8)change;
- (void)_startNRDeviceMonitor:(id)monitor;
- (void)dealloc;
- (void)deviceIsAsleepDidChange:(id)change isAsleep:(BOOL)asleep;
- (void)deviceIsClassCConnectedDidChange:(id)change isClassCConnected:(BOOL)connected;
- (void)deviceIsCloudConnectedDidChange:(id)change isCloudConnected:(BOOL)connected;
- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected;
- (void)deviceIsNearbyDidChange:(id)change isNearby:(BOOL)nearby;
- (void)deviceLinkTypeDidChange:(id)change linkType:(unsigned __int8)type;
@end

@implementation IDSNRDeviceBridge

- (BOOL)isConnected
{
  nrDeviceMonitor = [(IDSNRDeviceBridge *)self nrDeviceMonitor];
  isConnected = [nrDeviceMonitor isConnected];

  return isConnected;
}

- (IDSNRDeviceBridge)initWithDeviceIdentifier:(id)identifier delegate:(id)delegate startMonitor:(BOOL)monitor
{
  monitorCopy = monitor;
  identifierCopy = identifier;
  delegateCopy = delegate;
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

    objc_storeWeak(&v10->_delegate, delegateCopy);
    v15 = [identifierCopy copy];
    deviceIdentifier = v10->_deviceIdentifier;
    v10->_deviceIdentifier = v15;

    if (monitorCopy)
    {
      [(IDSNRDeviceBridge *)v10 _startNRDeviceMonitor:identifierCopy];
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc'ing IDSNRDeviceBridge {pointer: %p}", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = IDSNRDeviceBridge;
  [(IDSNRDeviceBridge *)&v4 dealloc];
}

- (void)_startNRDeviceMonitor:(id)monitor
{
  monitorCopy = monitor;
  nrMonitorQueue = self->_nrMonitorQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003220E4;
  v7[3] = &unk_100BD6E40;
  v8 = monitorCopy;
  selfCopy = self;
  v6 = monitorCopy;
  dispatch_async(nrMonitorQueue, v7);
}

- (BOOL)isNearby
{
  nrDeviceMonitor = [(IDSNRDeviceBridge *)self nrDeviceMonitor];
  isNearby = [nrDeviceMonitor isNearby];

  return isNearby;
}

- (BOOL)isRegistered
{
  nrDeviceMonitor = [(IDSNRDeviceBridge *)self nrDeviceMonitor];
  isRegistered = [nrDeviceMonitor isRegistered];

  return isRegistered;
}

- (BOOL)isDevicesIdentifierEqualTo:(id)to
{
  toCopy = to;
  deviceIdentifier = [(IDSNRDeviceBridge *)self deviceIdentifier];
  v6 = [deviceIdentifier isEqual:toCopy];

  return v6;
}

- (BOOL)isClassCConnected
{
  nrDeviceMonitor = [(IDSNRDeviceBridge *)self nrDeviceMonitor];
  isClassCConnected = [nrDeviceMonitor isClassCConnected];

  return isClassCConnected;
}

- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected
{
  connectedCopy = connected;
  changeCopy = change;
  isRegistered = [changeCopy isRegistered];
  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (connectedCopy)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (isRegistered)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    deviceIdentifier = [changeCopy deviceIdentifier];
    *buf = 138543875;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2113;
    v20 = deviceIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isConnected didChange {isConnected: %{public}@, isRegistered: %{public}@, deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  if (isRegistered)
  {
    v12 = im_primary_queue();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100322504;
    v13[3] = &unk_100BD7478;
    v13[4] = self;
    v14 = connectedCopy;
    dispatch_async(v12, v13);
  }
}

- (void)deviceIsNearbyDidChange:(id)change isNearby:(BOOL)nearby
{
  nearbyCopy = nearby;
  changeCopy = change;
  isRegistered = [changeCopy isRegistered];
  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (nearbyCopy)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (isRegistered)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    deviceIdentifier = [changeCopy deviceIdentifier];
    *buf = 138543875;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2113;
    v20 = deviceIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isNearby didChange {isNearby: %{public}@, isRegistered: %{public}@, deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  if (isRegistered)
  {
    v12 = im_primary_queue();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003226EC;
    v13[3] = &unk_100BD7478;
    v13[4] = self;
    v14 = nearbyCopy;
    dispatch_async(v12, v13);
  }
}

- (void)deviceIsCloudConnectedDidChange:(id)change isCloudConnected:(BOOL)connected
{
  connectedCopy = connected;
  changeCopy = change;
  isRegistered = [changeCopy isRegistered];
  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (connectedCopy)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (isRegistered)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    deviceIdentifier = [changeCopy deviceIdentifier];
    *buf = 138543875;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2113;
    v20 = deviceIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isCloudConnected didChange {isCloudConnected: %{public}@, isRegistered: %{public}@, deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  if (isRegistered)
  {
    v12 = im_primary_queue();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003228D4;
    v13[3] = &unk_100BD7478;
    v13[4] = self;
    v14 = connectedCopy;
    dispatch_async(v12, v13);
  }
}

- (void)deviceIsAsleepDidChange:(id)change isAsleep:(BOOL)asleep
{
  asleepCopy = asleep;
  changeCopy = change;
  isRegistered = [changeCopy isRegistered];
  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (asleepCopy)
    {
      v9 = @"NO";
    }

    else
    {
      v9 = @"YES";
    }

    if (isRegistered)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    deviceIdentifier = [changeCopy deviceIdentifier];
    *buf = 138543875;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2113;
    v21 = deviceIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isAwake didChange {isAwake: %{public}@, isRegistered: %{public}@, deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  if (isRegistered)
  {
    v12 = !asleepCopy;
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

- (void)deviceLinkTypeDidChange:(id)change linkType:(unsigned __int8)type
{
  typeCopy = type;
  changeCopy = change;
  StringFromNRLinkType = j__createStringFromNRLinkType();
  isRegistered = [changeCopy isRegistered];
  v9 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (isRegistered)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    deviceIdentifier = [changeCopy deviceIdentifier];
    *buf = 138543875;
    v20 = StringFromNRLinkType;
    v21 = 2114;
    v22 = v10;
    v23 = 2113;
    v24 = deviceIdentifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "linkType didChange {linkType: %{public}@, isRegistered: %{public}@ deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  v12 = [NSDictionary alloc];
  v13 = [NSNumber numberWithUnsignedChar:typeCopy];
  v14 = [v12 initWithObjectsAndKeys:{v13, @"IPsecLinkType", 0}];

  latestLinkType = typeCopy;
  if (!typeCopy)
  {
    latestLinkType = [(IDSNRDeviceBridge *)self latestLinkType];
  }

  [(IDSNRDeviceBridge *)self setLatestLinkType:latestLinkType];
  v16 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322D34;
  block[3] = &unk_100BD7478;
  block[4] = self;
  v18 = typeCopy;
  dispatch_async(v16, block);

  IDSPowerLogDictionary();
  [(IDSNRDeviceBridge *)self _notifyWirelessRadioManagerAboutLinkChange:typeCopy];
}

- (void)deviceIsClassCConnectedDidChange:(id)change isClassCConnected:(BOOL)connected
{
  connectedCopy = connected;
  changeCopy = change;
  isRegistered = [changeCopy isRegistered];
  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (connectedCopy)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (isRegistered)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    deviceIdentifier = [changeCopy deviceIdentifier];
    *buf = 138543875;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2113;
    v20 = deviceIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isClassCConnected didChange {isClassCConnected: %{public}@, isRegistered: %{public}@, deviceIdentifier: %{private}@}", buf, 0x20u);
  }

  if (isRegistered)
  {
    v12 = im_primary_queue();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100322F1C;
    v13[3] = &unk_100BD7478;
    v13[4] = self;
    v14 = connectedCopy;
    dispatch_async(v12, v13);
  }
}

- (void)_notifyWirelessRadioManagerAboutLinkChange:(unsigned __int8)change
{
  if (change <= 2u)
  {
    v4 = qword_1009AB4E0[change];
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