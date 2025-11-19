@interface IDSBTLinkManager
- (IDSBTLinkManager)initWithDelegate:(id)a3 pairedDevice:(id)a4;
- (id)nanoRegistryPluginManager;
- (void)_advertiseNow;
- (void)_connectNow;
- (void)_stopAdvertising;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)connect;
- (void)dealloc;
- (void)obliterateConnectionInfo;
- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)removeLink:(id)a3;
- (void)scalablePipeManager:(id)a3 didRegisterEndpoint:(id)a4 error:(id)a5;
- (void)scalablePipeManager:(id)a3 didUnregisterEndpoint:(id)a4;
- (void)scalablePipeManager:(id)a3 pipeDidConnect:(id)a4;
- (void)scalablePipeManager:(id)a3 pipeDidDisconnect:(id)a4 error:(id)a5;
- (void)scalablePipeManagerDidUpdateState:(id)a3;
- (void)setLinkPreferences:(id)a3;
- (void)start;
- (void)startDatagramLink;
- (void)startDatagramLinkWithEndpointIdentifier:(id)a3;
- (void)startDatagramLinkWithName:(id)a3;
- (void)stop;
- (void)stopDatagramLink;
- (void)stopDatagramLinkWithEndpointIdentifier:(id)a3;
- (void)stopDatagramLinkWithName:(id)a3;
- (void)updatePairedDevice:(id)a3;
@end

@implementation IDSBTLinkManager

- (IDSBTLinkManager)initWithDelegate:(id)a3 pairedDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  if (v7)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "using %@ UUID from LinkManager", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v35 = v7;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v35 = v7;
          _IDSLogV();
        }
      }
    }

    v11 = [(IDSBTLinkManager *)v7 copy];
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
      v21 = [v20 BOOLValue];
    }

    else
    {
      v21 = 1;
    }

    v8->_useSkywalkChannel = v21;
    objc_storeWeak(&v8->_delegate, v6);
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
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "============= Old BTLinkManager %@ stopping =============", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v4 = self;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v4 = self;
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
    v6 = [(IDSBTLinkManager *)self nanoRegistryPluginManager];
    [v6 notifyWatchDidStartAdvertisingWithPeripheralManager:*p_peripheralManager];
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
    v4 = [(IDSBTLinkManager *)self nanoRegistryPluginManager];
    [v4 notifyWatchDidStopAdvertisingWithPeripheralManager:self->_peripheralManager];
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
        v10 = [v9 firstObject];
        pipePeripheral = self->_pipePeripheral;
        self->_pipePeripheral = v10;

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

- (void)removeLink:(id)a3
{
  v4 = a3;
  v5 = [v4 linkID];
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005BA2B8;
  block[3] = &unk_100BD6E18;
  v10 = v4;
  v11 = v5;
  v12 = self;
  v7 = v5;
  v8 = v4;
  dispatch_async(managerQueue, block);
}

- (void)updatePairedDevice:(id)a3
{
  v4 = a3;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005BA4A8;
  v7[3] = &unk_100BD6E40;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)setLinkPreferences:(id)a3
{
  v4 = a3;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005BB204;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)startDatagramLinkWithName:(id)a3
{
  v4 = a3;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005BB8C8;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(managerQueue, v7);
}

- (void)stopDatagramLinkWithName:(id)a3
{
  v4 = a3;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005BB9C8;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(managerQueue, v7);
}

- (void)startDatagramLinkWithEndpointIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

  v7 = [NSNumber numberWithUnsignedInteger:v6 + 1];
  [(NSMutableDictionary *)self->_datagramPipeRegistration setObject:v7 forKeyedSubscript:v4];

  if (self->_pipeRegistered)
  {
    if (v6)
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *v20 = v4;
        *&v20[8] = 1024;
        *&v20[10] = v6;
        v21 = 1024;
        v22 = v6 + 1;
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
        *&v20[6] = v4;
        v21 = 1024;
        v22 = 1;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registering datagram link type %d endpoint %@ registrationCount 0 => %u", buf, 0x18u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v15 = v4;
          v16 = 1;
          v14 = v10;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v15 = v4;
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
      [(CBScalablePipeManager *)pipeManager registerEndpoint:v4 type:v10 priority:3 options:v13];
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

- (void)stopDatagramLinkWithEndpointIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_datagramPipeRegistration objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

  if (v6 == 1)
  {
    [(NSMutableDictionary *)self->_datagramPipeRegistration setObject:0 forKeyedSubscript:v4];
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v4;
      v16 = 1024;
      v17 = 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unregistering datagram link endpoint %@ registrationCount %u => 0", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = v4;
        v12 = 1;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v11 = v4;
          v12 = 1;
          _IDSLogV();
        }
      }
    }

    [(CBScalablePipeManager *)self->_pipeManager unregisterEndpoint:v4, v11, v12];
  }

  else if (v6)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = v4;
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = v6 - 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not unregistering datagram link endpoint %@ registrationCount %u => %u", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v12 = v6;
        v13 = (v6 - 1);
        v11 = v4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v12 = v6;
          v13 = (v6 - 1);
          v11 = v4;
          _IDSLogV();
        }
      }
    }

    v10 = [NSNumber numberWithUnsignedInteger:v6 - 1, v11, v12, v13];
    [(NSMutableDictionary *)self->_datagramPipeRegistration setObject:v10 forKeyedSubscript:v4];
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
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

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (([v4 state] & 0x8000000000000000) != 0 || objc_msgSend(v4, "state") > 5)
    {
      v6 = "UnexpectedState";
    }

    else
    {
      v6 = (&_centralManagerStateStrings)[[v4 state]];
    }

    *buf = 138412546;
    v13 = v4;
    v14 = 2080;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ didUpdateState %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v7 = ([v4 state] & 0x8000000000000000) != 0 || objc_msgSend(v4, "state") > 5 ? "UnexpectedState" : (&_centralManagerStateStrings)[objc_msgSend(v4, "state")];
    v10 = v4;
    v11 = v7;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (([v4 state] & 0x8000000000000000) != 0 || objc_msgSend(v4, "state") > 5)
      {
        v8 = "UnexpectedState";
      }

      else
      {
        v8 = (&_centralManagerStateStrings)[[v4 state]];
      }

      v10 = v4;
      v11 = v8;
      _IDSLogV();
    }
  }

  if ([v4 state] == 5)
  {
    [(IDSBTLinkManager *)self _connectNow];
  }

  else if ([v4 state] <= 4)
  {
    self->_isPipeConnectingOrConnected = 0;
    if ([v4 state] <= 3)
    {
      pipePeripheral = self->_pipePeripheral;
      self->_pipePeripheral = 0;
    }
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
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

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ didFailToConnectPeripheral %@ err %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = v9;
      v16 = v10;
      v14 = v8;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = v9;
        v16 = v10;
        v14 = v8;
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

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ didDisconnectPeripheral %@ err %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = v9;
      v16 = v10;
      v14 = v8;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = v9;
        v16 = v10;
        v14 = v8;
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

- (void)peripheralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (([v4 state] & 0x8000000000000000) != 0 || objc_msgSend(v4, "state") > 5)
    {
      v6 = "UnexpectedState";
    }

    else
    {
      v6 = (&_peripheralManagerStateStrings)[[v4 state]];
    }

    *buf = 138412546;
    v12 = v4;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ didUpdateState %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v7 = ([v4 state] & 0x8000000000000000) != 0 || objc_msgSend(v4, "state") > 5 ? "UnexpectedState" : (&_peripheralManagerStateStrings)[objc_msgSend(v4, "state")];
    v9 = v4;
    v10 = v7;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (([v4 state] & 0x8000000000000000) != 0 || objc_msgSend(v4, "state") > 5)
      {
        v8 = "UnexpectedState";
      }

      else
      {
        v8 = (&_peripheralManagerStateStrings)[[v4 state]];
      }

      v9 = v4;
      v10 = v8;
      _IDSLogV();
    }
  }

  if ([v4 state] == 5)
  {
    [(IDSBTLinkManager *)self _advertiseNow];
  }

  else if ([v4 state] <= 4 && objc_msgSend(v4, "state") <= 3)
  {
    self->_isAdvertising = 0;
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
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

  if (v7)
  {
    self->_isAdvertising = 0;
  }
}

- (void)scalablePipeManagerDidUpdateState:(id)a3
{
  v38 = a3;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (([(__CFString *)v38 state]& 0x8000000000000000) != 0 || [(__CFString *)v38 state]> 5)
    {
      v5 = "UnexpectedState";
    }

    else
    {
      v5 = (&off_100BE1028)[[(__CFString *)v38 state]];
    }

    *buf = 136315138;
    v47 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " => Pipe did update state: %s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v6 = ([(__CFString *)v38 state]& 0x8000000000000000) != 0 || [(__CFString *)v38 state]> 5 ? "UnexpectedState" : (&off_100BE1028)[[(__CFString *)v38 state]];
    v33 = v6;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (([(__CFString *)v38 state]& 0x8000000000000000) != 0 || [(__CFString *)v38 state]> 5)
      {
        v7 = "UnexpectedState";
      }

      else
      {
        v7 = (&off_100BE1028)[[(__CFString *)v38 state]];
      }

      v33 = v7;
      _IDSLogV();
    }
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (([(__CFString *)v38 state]& 0x8000000000000000) != 0 || [(__CFString *)v38 state]> 5)
    {
      v9 = "UnexpectedState";
    }

    else
    {
      v9 = (&off_100BE1028)[[(__CFString *)v38 state]];
    }

    *buf = 138412546;
    v47 = v38;
    v48 = 2080;
    v49 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ didUpdateState %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    if (([(__CFString *)v38 state]& 0x8000000000000000) != 0 || [(__CFString *)v38 state]> 5)
    {
      v10 = "UnexpectedState";
    }

    else
    {
      v10 = (&off_100BE1028)[[(__CFString *)v38 state]];
    }

    v35 = v10;
    v33 = v38;
    _IDSLogV();
  }

  if ([(__CFString *)v38 state:v33]== 5)
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
        v47 = v38;
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
        v34 = v38;
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
      [(__CFString *)v38 registerEndpoint:@"com.apple.ids" type:!isCentral priority:1 options:v24];
    }

    self->_isPoweredOn = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained manager:self didPowerStateChange:1];
  }

  else
  {
    if ([(__CFString *)v38 state]> 4)
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

    if ([(__CFString *)v38 state]<= 3)
    {
      self->_pipeRegistered = 0;
    }
  }

LABEL_83:
}

- (void)scalablePipeManager:(id)a3 didRegisterEndpoint:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " => Pipe did register endpoint: %@  error: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = v9;
      v14 = v10;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = v9;
        v14 = v10;
        _IDSLogV();
      }
    }
  }

  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ didRegisterEndpoint id %@ err %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = v9;
    v15 = v10;
    v13 = v8;
    _IDSLogV();
  }

  self->_pipeRegistered = 1;
  [(IDSBTLinkManager *)self _connectNow:v13];
}

- (void)scalablePipeManager:(id)a3 didUnregisterEndpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " => Pipe did unregister endpoint: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v18 = v7;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v18 = v7;
        _IDSLogV();
      }
    }
  }

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ didUnregisterEndpoint id %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = v6;
    v20 = v7;
    _IDSLogV();
  }

  if ([(__CFString *)v7 isEqualToString:@"com.apple.ids", v18, v20])
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

      v24 = v6;
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
      v19 = v6;
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

    [(__CFString *)v6 registerEndpoint:@"com.apple.ids" type:!isCentral priority:1 options:0, v19, v21, v22];
  }
}

- (void)scalablePipeManager:(id)a3 pipeDidConnect:(id)a4
{
  v50 = a3;
  v51 = a4;
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v60 = v51;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " => Pipe did connect: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v41 = v51;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v41 = v51;
        _IDSLogV();
      }
    }
  }

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v60 = v50;
    *&v60[8] = 2112;
    *&v60[10] = v51;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ pipeDidConnect %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v41 = v50;
    v44 = v51;
    _IDSLogV();
  }

  v8 = [v51 name];
  v9 = [v8 hasPrefix:@"com.apple.ids.datagram"];

  v10 = [v51 name];
  v11 = [v10 isEqualToString:@"com.apple.ids"];

  if ((v11 | v9))
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v51 name];
      *buf = 138412546;
      *v60 = v50;
      *&v60[8] = 2112;
      *&v60[10] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ got a new pipe for service %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v51 name];
      v45 = v42 = v50;
      _IDSLogV();
    }

    v14 = [v51 peer];
    v15 = [v14 identifier];
    v49 = [v15 UUIDString];

    if (v49)
    {
      if ([(NSString *)self->_pipePeripheralUUIDString isEqualToString:@"LOCAL-SETUP-STARTED"])
      {
        v16 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v60 = v49;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "pipe UUID is not set yet - deferring verification for %@ until addPairedDevice", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v43 = v49;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v43 = v49;
              _IDSLogV();
            }
          }
        }

        if (v9)
        {
          v17 = [v51 name];
          [(IDSBTLinkManager *)self stopDatagramLinkWithEndpointIdentifier:v17];

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

        [(NSMutableArray *)pendingPipes addObject:v51, v43];
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

      if ([(NSString *)self->_pipePeripheralUUIDString isEqualToString:v49])
      {
        v19 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v60 = v49;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Pipe UUID %@ match", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v43 = v49;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v43 = v49;
              _IDSLogV();
            }
          }
        }

        if (v9)
        {
          v48 = [[IDSBTDatagramLink alloc] initWithPipe:v51 withDeviceUniqueID:0 cbuuid:v49];
        }

        else
        {
          v48 = [[IDSBTLink alloc] initWithPipe:v51 useSkywalkChannel:self->_useSkywalkChannel withDeviceUniqueID:0 cbuuid:v49];
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
            [(NSMutableDictionary *)self->_linkIDToDatagramLink setObject:v48 forKey:v49];
          }

          else
          {
            [(NSMutableDictionary *)self->_linkIDToLink setObject:v48 forKey:v49];
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
          *v60 = v49;
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
          *v60 = v49;
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

- (void)scalablePipeManager:(id)a3 pipeDidDisconnect:(id)a4 error:(id)a5
{
  v40 = a3;
  v8 = a4;
  v41 = a5;
  v42 = v8;
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v49 = v8;
    v50 = 2112;
    v51 = v41;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " => Pipe did disconnect: %@   error: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v30 = v8;
      v33 = v41;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v30 = v8;
        v33 = v41;
        _IDSLogV();
      }
    }
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v49 = v40;
    v50 = 2112;
    v51 = v8;
    v52 = 2112;
    v53 = v41;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ pipeDidDisconnect %@ err %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v33 = v8;
    v36 = v41;
    v30 = v40;
    _IDSLogV();
  }

  v11 = [(NSMutableDictionary *)v8 name:v30];
  v12 = [v11 hasPrefix:@"com.apple.ids.datagram"];

  v13 = [(NSMutableDictionary *)v42 name];
  v14 = [v13 isEqualToString:@"com.apple.ids"];

  if ((v14 | v12))
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(NSMutableDictionary *)v42 name];
      *buf = 138412802;
      v49 = v40;
      v50 = 2112;
      v51 = v42;
      v52 = 2112;
      v53 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ pipe %@ disconnected for service %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [(NSMutableDictionary *)v42 name];
      v37 = v34 = v42;
      v31 = v40;
      _IDSLogV();
    }

    v17 = [(NSMutableDictionary *)v42 peer:v31];
    v18 = [v17 identifier];
    v38 = [v18 UUIDString];

    if (v12)
    {
      v39 = [(NSMutableDictionary *)self->_linkIDToDatagramLink objectForKey:v38];
      [(NSMutableDictionary *)self->_linkIDToDatagramLink removeObjectForKey:v38];
    }

    else
    {
      v39 = [(NSMutableDictionary *)self->_linkIDToLink objectForKey:v38];
      [(NSMutableDictionary *)self->_linkIDToLink removeObjectForKey:v38];
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