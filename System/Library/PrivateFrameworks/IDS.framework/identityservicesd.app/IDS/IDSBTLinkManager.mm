@interface IDSBTLinkManager
- (IDSBTLinkManager)initWithDelegate:(id)delegate pairedDevice:(id)device;
- (id)nanoRegistryPluginManager;
- (void)_advertiseNow;
- (void)_connectNow;
- (void)_stopAdvertising;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)connect;
- (void)dealloc;
- (void)obliterateConnectionInfo;
- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)removeLink:(id)link;
- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error;
- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
- (void)setLinkPreferences:(id)preferences;
- (void)start;
- (void)startDatagramLink;
- (void)startDatagramLinkWithEndpointIdentifier:(id)identifier;
- (void)startDatagramLinkWithName:(id)name;
- (void)stop;
- (void)stopDatagramLink;
- (void)stopDatagramLinkWithEndpointIdentifier:(id)identifier;
- (void)stopDatagramLinkWithName:(id)name;
- (void)updatePairedDevice:(id)device;
@end

@implementation IDSBTLinkManager

- (IDSBTLinkManager)initWithDelegate:(id)delegate pairedDevice:(id)device
{
  delegateCopy = delegate;
  deviceCopy = device;
  v36.receiver = self;
  v36.super_class = IDSBTLinkManager;
  v8 = [(IDSBTLinkManager *)&v36 init];
  if (!v8)
  {
LABEL_27:
    v32 = v8;
    goto LABEL_35;
  }

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "============= New BTLinkManager %@ starting =============", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v35 = v8;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v35 = v8;
        _IDSLogV();
      }
    }
  }

  if (deviceCopy)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "using %@ UUID from LinkManager", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v35 = deviceCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v35 = deviceCopy;
          _IDSLogV();
        }
      }
    }

    v11 = [(IDSBTLinkManager *)deviceCopy copy];
    pipePeripheralUUIDString = v8->_pipePeripheralUUIDString;
    v8->_pipePeripheralUUIDString = v11;

    IMSetDomainValueForKey();
  }

  else
  {
    v13 = IMGetDomainValueForKey();
    v14 = [v13 copy];
    v15 = v8->_pipePeripheralUUIDString;
    v8->_pipePeripheralUUIDString = v14;

    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v8->_pipePeripheralUUIDString;
      *buf = 138412290;
      v38 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "read pipe peripheral UUID from default: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v35 = v8->_pipePeripheralUUIDString;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v35 = v8->_pipePeripheralUUIDString;
          _IDSLogV();
        }
      }
    }
  }

  if (v8->_pipePeripheralUUIDString)
  {
    v18 = IMGetDomainValueForKey();
    v19 = IMGetDomainValueForKey();
    v20 = v18;
    if (v18 || (v20 = v19) != 0)
    {
      bOOLValue = [v20 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v8->_useSkywalkChannel = bOOLValue;
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v8->_isPipeConnectingOrConnected = 0;
    v22 = objc_alloc_init(NSMutableDictionary);
    linkIDToLink = v8->_linkIDToLink;
    v8->_linkIDToLink = v22;

    v24 = objc_alloc_init(NSMutableDictionary);
    linkIDToDatagramLink = v8->_linkIDToDatagramLink;
    v8->_linkIDToDatagramLink = v24;

    v26 = objc_alloc_init(NSMutableDictionary);
    datagramPipeRegistration = v8->_datagramPipeRegistration;
    v8->_datagramPipeRegistration = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_attr_make_with_qos_class(v28, QOS_CLASS_USER_INITIATED, 0);
    v30 = dispatch_queue_create("IDSBTLinkManager", v29);
    managerQueue = v8->_managerQueue;
    v8->_managerQueue = v30;

    goto LABEL_27;
  }

  v33 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "pipe peripheral UUID is nil!  Not setting up BTLinkManager", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v32 = 0;
LABEL_35:

  return v32;
}

- (void)dealloc
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "============= Old BTLinkManager %@ stopping =============", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      selfCopy3 = self;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        selfCopy3 = self;
        _IDSLogV();
      }
    }
  }

  v5.receiver = self;
  v5.super_class = IDSBTLinkManager;
  [(IDSBTLinkManager *)&v5 dealloc];
}

- (void)_advertiseNow
{
  if ([(CBPeripheralManager *)self->_peripheralManager state]== 5 && !self->_isAdvertising)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      peripheralManager = self->_peripheralManager;
      *buf = 138412290;
      v9 = peripheralManager;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ start advertising empty now", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v7 = self->_peripheralManager;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v7 = self->_peripheralManager;
        _IDSLogV();
      }
    }

    p_peripheralManager = &self->_peripheralManager;
    [(CBPeripheralManager *)self->_peripheralManager startAdvertising:0, v7];
    self->_isAdvertising = 1;
    nanoRegistryPluginManager = [(IDSBTLinkManager *)self nanoRegistryPluginManager];
    [nanoRegistryPluginManager notifyWatchDidStartAdvertisingWithPeripheralManager:*p_peripheralManager];
  }
}

- (void)_stopAdvertising
{
  if (self->_isAdvertising)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stop advertising", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    if ([(CBPeripheralManager *)self->_peripheralManager state]>= 4)
    {
      [(CBPeripheralManager *)self->_peripheralManager stopAdvertising];
    }

    self->_isAdvertising = 0;
    nanoRegistryPluginManager = [(IDSBTLinkManager *)self nanoRegistryPluginManager];
    [nanoRegistryPluginManager notifyWatchDidStopAdvertisingWithPeripheralManager:self->_peripheralManager];
  }
}

- (void)_connectNow
{
  if (!self->_isCentral && self->_pipeRegistered && [(CBCentralManager *)self->_centralManager state]== 5 && !self->_isPipeConnectingOrConnected)
  {
    if (self->_pipePeripheral)
    {
      goto LABEL_23;
    }

    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      pipePeripheralUUIDString = self->_pipePeripheralUUIDString;
      *buf = 138412290;
      v20 = pipePeripheralUUIDString;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "using pipe peripheral UUID %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v17 = self->_pipePeripheralUUIDString;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v17 = self->_pipePeripheralUUIDString;
          _IDSLogV();
        }
      }
    }

    v5 = [[NSUUID alloc] initWithUUIDString:self->_pipePeripheralUUIDString];
    v6 = v5;
    if (v5)
    {
      centralManager = self->_centralManager;
      v18 = v5;
      v8 = [NSArray arrayWithObjects:&v18 count:1];
      v9 = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:v8];

      if (v9 && [v9 count])
      {
        firstObject = [v9 firstObject];
        pipePeripheral = self->_pipePeripheral;
        self->_pipePeripheral = firstObject;

        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = self->_pipePeripheral;
          *buf = 138412290;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "created pipe peripheral %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v17 = self->_pipePeripheral;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v17 = self->_pipePeripheral;
              _IDSLogV();
            }
          }
        }
      }
    }

    if (self->_pipePeripheral)
    {
LABEL_23:
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_pipePeripheral;
        *buf = 138412290;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "connecting to %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v17 = self->_pipePeripheral;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v17 = self->_pipePeripheral;
          _IDSLogV();
        }
      }

      [(CBCentralManager *)self->_centralManager connectPeripheral:self->_pipePeripheral options:0, v17];
      self->_isPipeConnectingOrConnected = 1;
    }

    else
    {
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "pipe peripheral is not set. Not connecting", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }
  }
}

- (void)start
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005B9E3C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

- (void)stop
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005B9F54;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

- (void)connect
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005BA1EC;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

- (void)removeLink:(id)link
{
  linkCopy = link;
  linkID = [linkCopy linkID];
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005BA2B8;
  block[3] = &unk_100BD6E18;
  v10 = linkCopy;
  v11 = linkID;
  selfCopy = self;
  v7 = linkID;
  v8 = linkCopy;
  dispatch_async(managerQueue, block);
}

- (void)updatePairedDevice:(id)device
{
  deviceCopy = device;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005BA4A8;
  v7[3] = &unk_100BD6E40;
  v8 = deviceCopy;
  selfCopy = self;
  v6 = deviceCopy;
  dispatch_async(managerQueue, v7);
}

- (void)obliterateConnectionInfo
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005BAFE8;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

- (void)setLinkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005BB204;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = preferencesCopy;
  v6 = preferencesCopy;
  dispatch_async(managerQueue, v7);
}

- (void)startDatagramLink
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005BB6DC;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

- (void)stopDatagramLink
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005BB7C0;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

- (void)startDatagramLinkWithName:(id)name
{
  nameCopy = name;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005BB8C8;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(managerQueue, v7);
}

- (void)stopDatagramLinkWithName:(id)name
{
  nameCopy = name;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005BB9C8;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(managerQueue, v7);
}

- (void)startDatagramLinkWithEndpointIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:identifierCopy];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [(NSMutableDictionary *)self->_datagramPipeRegistration setObject:v7 forKeyedSubscript:identifierCopy];

  if (self->_pipeRegistered)
  {
    if (unsignedIntegerValue)
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *v20 = identifierCopy;
        *&v20[8] = 1024;
        *&v20[10] = unsignedIntegerValue;
        v21 = 1024;
        v22 = unsignedIntegerValue + 1;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not registering datagram link endpoint %@ registrationCount %u => %u", buf, 0x18u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
LABEL_8:
            _IDSLogV();
          }
        }
      }
    }

    else
    {
      v10 = !self->_isCentral;
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v20 = v10;
        *&v20[4] = 2112;
        *&v20[6] = identifierCopy;
        v21 = 1024;
        v22 = 1;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registering datagram link type %d endpoint %@ registrationCount 0 => %u", buf, 0x18u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v15 = identifierCopy;
          v16 = 1;
          v14 = v10;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v15 = identifierCopy;
            v16 = 1;
            v14 = v10;
            _IDSLogV();
          }
        }
      }

      pipeManager = self->_pipeManager;
      v17 = CBScalablePipeOptionTransport;
      v18 = &off_100C3CD18;
      v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1, v14, v15, v16];
      [(CBScalablePipeManager *)pipeManager registerEndpoint:identifierCopy type:v10 priority:3 options:v13];
    }
  }

  else
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cannot start datagram link if regular pipe not registered", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          goto LABEL_8;
        }
      }
    }
  }
}

- (void)stopDatagramLinkWithEndpointIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:identifierCopy];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
  {
    [(NSMutableDictionary *)self->_datagramPipeRegistration setObject:0 forKeyedSubscript:identifierCopy];
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = identifierCopy;
      v16 = 1024;
      v17 = 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unregistering datagram link endpoint %@ registrationCount %u => 0", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = identifierCopy;
        v12 = 1;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v11 = identifierCopy;
          v12 = 1;
          _IDSLogV();
        }
      }
    }

    [(CBScalablePipeManager *)self->_pipeManager unregisterEndpoint:identifierCopy, v11, v12];
  }

  else if (unsignedIntegerValue)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = identifierCopy;
      v16 = 1024;
      v17 = unsignedIntegerValue;
      v18 = 1024;
      v19 = unsignedIntegerValue - 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not unregistering datagram link endpoint %@ registrationCount %u => %u", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v12 = unsignedIntegerValue;
        v13 = (unsignedIntegerValue - 1);
        v11 = identifierCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v12 = unsignedIntegerValue;
          v13 = (unsignedIntegerValue - 1);
          v11 = identifierCopy;
          _IDSLogV();
        }
      }
    }

    v10 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue - 1, v11, v12, v13];
    [(NSMutableDictionary *)self->_datagramPipeRegistration setObject:v10 forKeyedSubscript:identifierCopy];
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cannot unregister datagram link endpoint %@ - not registered", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (([stateCopy state] & 0x8000000000000000) != 0 || objc_msgSend(stateCopy, "state") > 5)
    {
      v6 = "UnexpectedState";
    }

    else
    {
      v6 = (&_centralManagerStateStrings)[[stateCopy state]];
    }

    *buf = 138412546;
    v13 = stateCopy;
    v14 = 2080;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ didUpdateState %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v7 = ([stateCopy state] & 0x8000000000000000) != 0 || objc_msgSend(stateCopy, "state") > 5 ? "UnexpectedState" : (&_centralManagerStateStrings)[objc_msgSend(stateCopy, "state")];
    v10 = stateCopy;
    v11 = v7;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (([stateCopy state] & 0x8000000000000000) != 0 || objc_msgSend(stateCopy, "state") > 5)
      {
        v8 = "UnexpectedState";
      }

      else
      {
        v8 = (&_centralManagerStateStrings)[[stateCopy state]];
      }

      v10 = stateCopy;
      v11 = v8;
      _IDSLogV();
    }
  }

  if ([stateCopy state] == 5)
  {
    [(IDSBTLinkManager *)self _connectNow];
  }

  else if ([stateCopy state] <= 4)
  {
    self->_isPipeConnectingOrConnected = 0;
    if ([stateCopy state] <= 3)
    {
      pipePeripheral = self->_pipePeripheral;
      self->_pipePeripheral = 0;
    }
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = managerCopy;
    v10 = 2112;
    v11 = peripheralCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ didConnectPeripheral %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = managerCopy;
    v19 = 2112;
    v20 = peripheralCopy;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ didFailToConnectPeripheral %@ err %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = peripheralCopy;
      v16 = errorCopy;
      v14 = managerCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = peripheralCopy;
        v16 = errorCopy;
        v14 = managerCopy;
        _IDSLogV();
      }
    }
  }

  self->_isPipeConnectingOrConnected = 0;
  [(IDSBTLinkManager *)self _connectNow:v14];
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    linkIDToLink = self->_linkIDToLink;
    *buf = 138412290;
    v18 = linkIDToLink;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "links = %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = managerCopy;
    v19 = 2112;
    v20 = peripheralCopy;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ didDisconnectPeripheral %@ err %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = peripheralCopy;
      v16 = errorCopy;
      v14 = managerCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = peripheralCopy;
        v16 = errorCopy;
        v14 = managerCopy;
        _IDSLogV();
      }
    }
  }

  self->_isPipeConnectingOrConnected = 0;
  [(IDSBTLinkManager *)self _connectNow:v14];
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    linkIDToLink = self->_linkIDToLink;
    *buf = 138412290;
    v18 = linkIDToLink;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "links = %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (([stateCopy state] & 0x8000000000000000) != 0 || objc_msgSend(stateCopy, "state") > 5)
    {
      v6 = "UnexpectedState";
    }

    else
    {
      v6 = (&_peripheralManagerStateStrings)[[stateCopy state]];
    }

    *buf = 138412546;
    v12 = stateCopy;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ didUpdateState %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v7 = ([stateCopy state] & 0x8000000000000000) != 0 || objc_msgSend(stateCopy, "state") > 5 ? "UnexpectedState" : (&_peripheralManagerStateStrings)[objc_msgSend(stateCopy, "state")];
    v9 = stateCopy;
    v10 = v7;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (([stateCopy state] & 0x8000000000000000) != 0 || objc_msgSend(stateCopy, "state") > 5)
      {
        v8 = "UnexpectedState";
      }

      else
      {
        v8 = (&_peripheralManagerStateStrings)[[stateCopy state]];
      }

      v9 = stateCopy;
      v10 = v8;
      _IDSLogV();
    }
  }

  if ([stateCopy state] == 5)
  {
    [(IDSBTLinkManager *)self _advertiseNow];
  }

  else if ([stateCopy state] <= 4 && objc_msgSend(stateCopy, "state") <= 3)
  {
    self->_isAdvertising = 0;
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error
{
  advertisingCopy = advertising;
  errorCopy = error;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = advertisingCopy;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ didStartAdvertising error %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  if (errorCopy)
  {
    self->_isAdvertising = 0;
  }
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (([(__CFString *)stateCopy state]& 0x8000000000000000) != 0 || [(__CFString *)stateCopy state]> 5)
    {
      v5 = "UnexpectedState";
    }

    else
    {
      v5 = (&off_100BE1028)[[(__CFString *)stateCopy state]];
    }

    *buf = 136315138;
    v47 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " => Pipe did update state: %s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v6 = ([(__CFString *)stateCopy state]& 0x8000000000000000) != 0 || [(__CFString *)stateCopy state]> 5 ? "UnexpectedState" : (&off_100BE1028)[[(__CFString *)stateCopy state]];
    v33 = v6;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (([(__CFString *)stateCopy state]& 0x8000000000000000) != 0 || [(__CFString *)stateCopy state]> 5)
      {
        v7 = "UnexpectedState";
      }

      else
      {
        v7 = (&off_100BE1028)[[(__CFString *)stateCopy state]];
      }

      v33 = v7;
      _IDSLogV();
    }
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (([(__CFString *)stateCopy state]& 0x8000000000000000) != 0 || [(__CFString *)stateCopy state]> 5)
    {
      v9 = "UnexpectedState";
    }

    else
    {
      v9 = (&off_100BE1028)[[(__CFString *)stateCopy state]];
    }

    *buf = 138412546;
    v47 = stateCopy;
    v48 = 2080;
    v49 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ didUpdateState %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    if (([(__CFString *)stateCopy state]& 0x8000000000000000) != 0 || [(__CFString *)stateCopy state]> 5)
    {
      v10 = "UnexpectedState";
    }

    else
    {
      v10 = (&off_100BE1028)[[(__CFString *)stateCopy state]];
    }

    v35 = v10;
    v33 = stateCopy;
    _IDSLogV();
  }

  if ([(__CFString *)stateCopy state:v33]== 5)
  {
    if (!self->_pipeRegistered)
    {
      isCentral = self->_isCentral;
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = @"Server";
        if (self->_isCentral)
        {
          v13 = @"Client";
        }

        *buf = 138412802;
        v47 = stateCopy;
        v48 = 2112;
        v49 = @"com.apple.ids";
        v50 = 2112;
        v51 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ registering for service %@ as %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        if (self->_isCentral)
        {
          v14 = @"Client";
        }

        else
        {
          v14 = @"Server";
        }

        v36 = @"com.apple.ids";
        v37 = v14;
        v34 = stateCopy;
        _IDSLogV();
      }

      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = @"Server";
        if (isCentral)
        {
          v16 = @"Client";
        }

        useSkywalkChannel = self->_useSkywalkChannel;
        *buf = 138412802;
        v47 = @"com.apple.ids";
        v48 = 2112;
        v49 = v16;
        if (useSkywalkChannel)
        {
          v18 = @"skywalk";
        }

        else
        {
          v18 = @"nsstream";
        }

        v50 = 2112;
        v51 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Register endpoint identifier: %@  type: %@  priority: Medium pipeTransport: %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v19 = isCentral ? @"Client" : @"Server";
        v20 = self->_useSkywalkChannel ? @"skywalk" : @"nsstream";
        v36 = v19;
        v37 = v20;
        v34 = @"com.apple.ids";
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          if (self->_useSkywalkChannel)
          {
            v21 = @"skywalk";
          }

          else
          {
            v21 = @"nsstream";
          }

          v36 = v19;
          v37 = v21;
          v34 = @"com.apple.ids";
          _IDSLogV();
        }
      }

      v22 = self->_useSkywalkChannel;
      v44 = CBScalablePipeOptionTransport;
      v23 = [NSNumber numberWithInteger:v22, v34, v36, v37];
      v45 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      [(__CFString *)stateCopy registerEndpoint:@"com.apple.ids" type:!isCentral priority:1 options:v24];
    }

    self->_isPoweredOn = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained manager:self didPowerStateChange:1];
  }

  else
  {
    if ([(__CFString *)stateCopy state]> 4)
    {
      goto LABEL_83;
    }

    [(NSMutableDictionary *)self->_linkIDToLink removeAllObjects];
    [(NSMutableDictionary *)self->_datagramPipeRegistration allKeys];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    WeakRetained = v40 = 0u;
    v26 = [WeakRetained countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v26)
    {
      v27 = *v40;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(WeakRetained);
          }

          v29 = *(*(&v39 + 1) + 8 * i);
          v30 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:v29];
            *buf = 138412546;
            v47 = v29;
            v48 = 2112;
            v49 = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Unregistering datagram link endpoint %@ registrationCount %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:v29];
              v36 = v34 = v29;
              _IDSLogTransport();

              if (_IDSShouldLog())
              {
                [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:v29, v29, v36];
                v36 = v34 = v29;
                _IDSLogV();
              }
            }
          }

          [(CBScalablePipeManager *)self->_pipeManager unregisterEndpoint:v29, v34, v36];
        }

        v26 = [WeakRetained countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v26);
    }

    self->_isPoweredOn = 0;
    v32 = objc_loadWeakRetained(&self->_delegate);
    [v32 manager:self didPowerStateChange:0];

    if ([(__CFString *)stateCopy state]<= 3)
    {
      self->_pipeRegistered = 0;
    }
  }

LABEL_83:
}

- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error
{
  managerCopy = manager;
  endpointCopy = endpoint;
  errorCopy = error;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = endpointCopy;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " => Pipe did register endpoint: %@  error: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = endpointCopy;
      v14 = errorCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = endpointCopy;
        v14 = errorCopy;
        _IDSLogV();
      }
    }
  }

  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = managerCopy;
    v18 = 2112;
    v19 = endpointCopy;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ didRegisterEndpoint id %@ err %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = endpointCopy;
    v15 = errorCopy;
    v13 = managerCopy;
    _IDSLogV();
  }

  self->_pipeRegistered = 1;
  [(IDSBTLinkManager *)self _connectNow:v13];
}

- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint
{
  managerCopy = manager;
  endpointCopy = endpoint;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " => Pipe did unregister endpoint: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v18 = endpointCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v18 = endpointCopy;
        _IDSLogV();
      }
    }
  }

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = managerCopy;
    v25 = 2112;
    v26 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ didUnregisterEndpoint id %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = managerCopy;
    v20 = endpointCopy;
    _IDSLogV();
  }

  if ([(__CFString *)endpointCopy isEqualToString:@"com.apple.ids", v18, v20])
  {
    isCentral = self->_isCentral;
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_isCentral;
      *buf = 138412802;
      if (v12)
      {
        v13 = @"Client";
      }

      else
      {
        v13 = @"Server";
      }

      v24 = managerCopy;
      v25 = 2112;
      v26 = @"com.apple.ids";
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ re-registering for service %@ as %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      if (self->_isCentral)
      {
        v14 = @"Client";
      }

      else
      {
        v14 = @"Server";
      }

      v21 = @"com.apple.ids";
      v22 = v14;
      v19 = managerCopy;
      _IDSLogV();
    }

    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"Server";
      if (isCentral)
      {
        v16 = @"Client";
      }

      *buf = 138412546;
      v24 = @"com.apple.ids";
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Re-register endpoint identifier: %@  type: %@  priority: Medium", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      if (isCentral)
      {
        v17 = @"Client";
      }

      else
      {
        v17 = @"Server";
      }

      v19 = @"com.apple.ids";
      v21 = v17;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v19 = @"com.apple.ids";
        v21 = v17;
        _IDSLogV();
      }
    }

    [(__CFString *)managerCopy registerEndpoint:@"com.apple.ids" type:!isCentral priority:1 options:0, v19, v21, v22];
  }
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  managerCopy = manager;
  connectCopy = connect;
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v60 = connectCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " => Pipe did connect: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v41 = connectCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v41 = connectCopy;
        _IDSLogV();
      }
    }
  }

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v60 = managerCopy;
    *&v60[8] = 2112;
    *&v60[10] = connectCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ pipeDidConnect %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v41 = managerCopy;
    v44 = connectCopy;
    _IDSLogV();
  }

  name = [connectCopy name];
  v9 = [name hasPrefix:@"com.apple.ids.datagram"];

  name2 = [connectCopy name];
  v11 = [name2 isEqualToString:@"com.apple.ids"];

  if ((v11 | v9))
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name3 = [connectCopy name];
      *buf = 138412546;
      *v60 = managerCopy;
      *&v60[8] = 2112;
      *&v60[10] = name3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ got a new pipe for service %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [connectCopy name];
      v45 = v42 = managerCopy;
      _IDSLogV();
    }

    peer = [connectCopy peer];
    identifier = [peer identifier];
    uUIDString = [identifier UUIDString];

    if (uUIDString)
    {
      if ([(NSString *)self->_pipePeripheralUUIDString isEqualToString:@"LOCAL-SETUP-STARTED"])
      {
        v16 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v60 = uUIDString;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "pipe UUID is not set yet - deferring verification for %@ until addPairedDevice", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v43 = uUIDString;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v43 = uUIDString;
              _IDSLogV();
            }
          }
        }

        if (v9)
        {
          name4 = [connectCopy name];
          [(IDSBTLinkManager *)self stopDatagramLinkWithEndpointIdentifier:name4];

LABEL_95:
          goto LABEL_96;
        }

        pendingPipes = self->_pendingPipes;
        if (!pendingPipes)
        {
          v23 = objc_alloc_init(NSMutableArray);
          v24 = self->_pendingPipes;
          self->_pendingPipes = v23;

          pendingPipes = self->_pendingPipes;
        }

        [(NSMutableArray *)pendingPipes addObject:connectCopy, v43];
LABEL_88:
        if (self->_isCentral)
        {
          [(IDSBTLinkManager *)self _stopAdvertising];
        }

        v39 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          linkIDToLink = self->_linkIDToLink;
          *buf = 138412290;
          *v60 = linkIDToLink;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "links = %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        goto LABEL_95;
      }

      if ([(NSString *)self->_pipePeripheralUUIDString isEqualToString:uUIDString])
      {
        v19 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v60 = uUIDString;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Pipe UUID %@ match", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v43 = uUIDString;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v43 = uUIDString;
              _IDSLogV();
            }
          }
        }

        if (v9)
        {
          v48 = [[IDSBTDatagramLink alloc] initWithPipe:connectCopy withDeviceUniqueID:0 cbuuid:uUIDString];
        }

        else
        {
          v48 = [[IDSBTLink alloc] initWithPipe:connectCopy useSkywalkChannel:self->_useSkywalkChannel withDeviceUniqueID:0 cbuuid:uUIDString];
        }

        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v60 = v48;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Link %@ created", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v43 = v48;
          _IDSLogV();
        }

        if (v48)
        {
          if (v9)
          {
            [(NSMutableDictionary *)self->_linkIDToDatagramLink setObject:v48 forKey:uUIDString];
          }

          else
          {
            [(NSMutableDictionary *)self->_linkIDToLink setObject:v48 forKey:uUIDString];
            [(IDSBTLinkManager *)self setLinkPreferences:0];
            [(NSMutableDictionary *)self->_datagramPipeRegistration allKeys];
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            obj = v54 = 0u;
            v27 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
            if (v27)
            {
              v28 = *v54;
              v29 = CBScalablePipeOptionTransport;
              do
              {
                for (i = 0; i != v27; i = i + 1)
                {
                  if (*v54 != v28)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v31 = *(*(&v53 + 1) + 8 * i);
                  v32 = !self->_isCentral;
                  v33 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    v34 = [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:v31];
                    *buf = 67109634;
                    *v60 = v32;
                    *&v60[4] = 2112;
                    *&v60[6] = v31;
                    *&v60[14] = 2112;
                    *&v60[16] = v34;
                    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Re-registering datagram link type %d endpoint %@ registrationCount %@", buf, 0x1Cu);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:v31];
                      v47 = v46 = v31;
                      v43 = v32;
                      _IDSLogTransport();

                      if (_IDSShouldLog())
                      {
                        [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:v31, v32, v31, v47];
                        v47 = v46 = v31;
                        v43 = v32;
                        _IDSLogV();
                      }
                    }
                  }

                  pipeManager = self->_pipeManager;
                  v57 = v29;
                  v58 = &off_100C3CD18;
                  v36 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1, v43, v46, v47];
                  [(CBScalablePipeManager *)pipeManager registerEndpoint:v31 type:v32 priority:3 options:v36];
                }

                v27 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
              }

              while (v27);
            }
          }

          v37 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v60 = v48;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "linkDidConnect:%@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                _IDSLogV();
              }
            }
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained manager:self linkDidConnect:v48];

          goto LABEL_88;
        }

        v26 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v60 = uUIDString;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "could not create a link for %@", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_95;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_95;
        }

        _IDSLogTransport();
        if (!_IDSShouldLog())
        {
          goto LABEL_95;
        }
      }

      else
      {
        v20 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          pipePeripheralUUIDString = self->_pipePeripheralUUIDString;
          *buf = 138412546;
          *v60 = uUIDString;
          *&v60[8] = 2112;
          *&v60[10] = pipePeripheralUUIDString;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "new UUID %@ doesn't match to existing UUID %@ - ignoring this new pipe", buf, 0x16u);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_95;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_95;
        }

        _IDSLogTransport();
        if (!_IDSShouldLog())
        {
          goto LABEL_95;
        }
      }
    }

    else
    {
      v18 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "pipe UUID is nil", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_95;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_95;
      }

      _IDSLogTransport();
      if (!_IDSShouldLog())
      {
        goto LABEL_95;
      }
    }

    _IDSLogV();
    goto LABEL_95;
  }

LABEL_96:
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  managerCopy = manager;
  disconnectCopy = disconnect;
  errorCopy = error;
  v42 = disconnectCopy;
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v49 = disconnectCopy;
    v50 = 2112;
    v51 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " => Pipe did disconnect: %@   error: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v30 = disconnectCopy;
      v33 = errorCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v30 = disconnectCopy;
        v33 = errorCopy;
        _IDSLogV();
      }
    }
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v49 = managerCopy;
    v50 = 2112;
    v51 = disconnectCopy;
    v52 = 2112;
    v53 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ pipeDidDisconnect %@ err %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v33 = disconnectCopy;
    v36 = errorCopy;
    v30 = managerCopy;
    _IDSLogV();
  }

  v11 = [(NSMutableDictionary *)disconnectCopy name:v30];
  v12 = [v11 hasPrefix:@"com.apple.ids.datagram"];

  name = [(NSMutableDictionary *)v42 name];
  v14 = [name isEqualToString:@"com.apple.ids"];

  if ((v14 | v12))
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(NSMutableDictionary *)v42 name];
      *buf = 138412802;
      v49 = managerCopy;
      v50 = 2112;
      v51 = v42;
      v52 = 2112;
      v53 = name2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ pipe %@ disconnected for service %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [(NSMutableDictionary *)v42 name];
      v37 = v34 = v42;
      v31 = managerCopy;
      _IDSLogV();
    }

    v17 = [(NSMutableDictionary *)v42 peer:v31];
    identifier = [v17 identifier];
    uUIDString = [identifier UUIDString];

    if (v12)
    {
      v39 = [(NSMutableDictionary *)self->_linkIDToDatagramLink objectForKey:uUIDString];
      [(NSMutableDictionary *)self->_linkIDToDatagramLink removeObjectForKey:uUIDString];
    }

    else
    {
      v39 = [(NSMutableDictionary *)self->_linkIDToLink objectForKey:uUIDString];
      [(NSMutableDictionary *)self->_linkIDToLink removeObjectForKey:uUIDString];
      [(NSMutableDictionary *)self->_datagramPipeRegistration allKeys];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v19 = v44 = 0u;
      v20 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v20)
      {
        v21 = *v44;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v43 + 1) + 8 * i);
            v24 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:v23];
              *buf = 138412546;
              v49 = v23;
              v50 = 2112;
              v51 = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Unregistering datagram link endpoint %@ registrationCount %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:v23];
                v35 = v32 = v23;
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:v23, v23, v35];
                  v35 = v32 = v23;
                  _IDSLogV();
                }
              }
            }

            [(CBScalablePipeManager *)self->_pipeManager unregisterEndpoint:v23, v32, v35];
          }

          v20 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v20);
      }
    }

    if (v39)
    {
      v26 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v39;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "linkDidDisconnect: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained manager:self linkDidDisconnect:v39];
    }

    if (self->_isCentral)
    {
      [(IDSBTLinkManager *)self _advertiseNow];
    }

    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      linkIDToLink = self->_linkIDToLink;
      *buf = 138412290;
      v49 = linkIDToLink;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "links = %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (id)nanoRegistryPluginManager
{
  idsNRPluginManager = self->_idsNRPluginManager;
  if (!idsNRPluginManager)
  {
    v4 = +[IDSNanoRegistryPluginManager sharedInstance];
    v5 = self->_idsNRPluginManager;
    self->_idsNRPluginManager = v4;

    idsNRPluginManager = self->_idsNRPluginManager;
  }

  return idsNRPluginManager;
}

@end