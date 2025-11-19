@interface IDSCellularLinkMonitor
+ (id)sharedInstance;
- (BOOL)_dataContextUsable:(id)a3 dataStatus:(id)a4;
- (BOOL)_updateCellularDataInterface:(BOOL)a3;
- (BOOL)_updateCellularDataInterfaceNameByConnectionState:(int)a3 isStateActiveRequired:(BOOL)a4 interfaceName:(id)a5;
- (BOOL)_updateCellularMTU;
- (BOOL)_updateDataBearerSoMask;
- (BOOL)_updateDataBearerSoMaskWithCTDataStatus:(id)a3;
- (BOOL)_updateRadioAccessTechnology;
- (BOOL)_updateRadioAccessTechnologyWithCTDataStatus:(id)a3;
- (BOOL)dataUsable;
- (BOOL)dropIPPackets:(id)a3 localAddress:(sockaddr *)a4 remoteAddress:(sockaddr *)a5 isRelay:(BOOL)a6 channelNumberMSB:(unsigned __int8)a7 ifname:(id)a8;
- (BOOL)isSlicedCellularInterfaceActive:(id)a3;
- (BOOL)setPacketNotificationFilter:(const sockaddr *)a3 remote:(const sockaddr *)a4 uniqueTag:(unsigned int)a5 callType:(unsigned __int8)a6 ifname:(id)a7;
- (IDSCellularLinkMonitor)init;
- (NSString)cellularDataInterfaceName;
- (id)_getCTXPCServiceSubscriptionContext;
- (id)_getCurrentDataSimContext:(id)a3 inContextArray:(id)a4;
- (id)_getDataStatus;
- (unsigned)cellularMTU;
- (unsigned)dataSoMaskBits;
- (unsigned)radioAccessTechnology;
- (void)_notifyClientDataBearerSoMask:(id)a3;
- (void)_setupCTServerConnection;
- (void)_updateDataStatus;
- (void)addCellularLinkDelegate:(id)a3;
- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5;
- (void)currentCellularSignalStrength:(int *)a3 signalStrength:(int *)a4 signalGrade:(int *)a5;
- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4;
- (void)dealloc;
- (void)preferredDataSimChanged:(id)a3;
- (void)processCTConnectionStateChangeNotification:(id)a3 connectionStatus:(id)a4;
- (void)registerCellularDataStatusNotification:(BOOL)a3;
- (void)removeCellularLinkDelegate:(id)a3;
- (void)removePacketNotificationFilter;
- (void)reset;
- (void)setRemoteDeviceVersion:(unsigned int)a3;
- (void)updateProtocolQualityOfService:(BOOL)a3 localAddress:(sockaddr *)a4;
@end

@implementation IDSCellularLinkMonitor

+ (id)sharedInstance
{
  if (qword_1ED5DF6C0 != -1)
  {
    sub_1A7E14574();
  }

  v3 = qword_1ED5DF710;

  return v3;
}

- (IDSCellularLinkMonitor)init
{
  v6.receiver = self;
  v6.super_class = IDSCellularLinkMonitor;
  v2 = [(IDSCellularLinkMonitor *)&v6 init];
  if (v2)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "IDSCellularLinkMonitor init", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"IDSCellularLinkMonitor init");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSCellularLinkMonitor init");
        }
      }
    }

    [(IDSCellularLinkMonitor *)v2 _setupCTServerConnection];
    [(IDSCellularLinkMonitor *)v2 _updateCellularDataInterface:0];
    [(IDSCellularLinkMonitor *)v2 _updateRadioAccessTechnology];
    [(IDSCellularLinkMonitor *)v2 _updateCellularMTU];
    [(IDSCellularLinkMonitor *)v2 _updateDataStatus];
  }

  return v2;
}

- (void)dealloc
{
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
    self->_ctServerConnection = 0;
  }

  [(CoreTelephonyClient *)self->_ctClient setDelegate:0];
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "IDSCellularLinkMonitor dealloc", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"IDSCellularLinkMonitor dealloc");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSCellularLinkMonitor dealloc");
      }
    }
  }

  v5.receiver = self;
  v5.super_class = IDSCellularLinkMonitor;
  [(IDSCellularLinkMonitor *)&v5 dealloc];
}

- (void)addCellularLinkDelegate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A7B55A04;
    v6[3] = &unk_1E77E0250;
    v6[4] = self;
    v7 = v4;
    IDSTransportThreadAddBlock(v6);
  }
}

- (void)removeCellularLinkDelegate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A7B55C1C;
    v6[3] = &unk_1E77E0250;
    v7 = v4;
    v8 = self;
    IDSTransportThreadAddBlock(v6);
  }
}

- (void)_setupCTServerConnection
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self->_ctServerConnection)
  {
    v3 = im_primary_queue();
    self->_ctServerConnection = _CTServerConnectionCreateOnTargetQueue();

    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      ctServerConnection = self->_ctServerConnection;
      *buf = 138412290;
      v11 = ctServerConnection;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "created CT server connection %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"created CT server connection %@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"created CT server connection %@.");
      }
    }

    v6 = objc_alloc(MEMORY[0x1E69650A0]);
    v7 = im_primary_queue();
    v8 = [v6 initWithQueue:v7];
    ctClient = self->_ctClient;
    self->_ctClient = v8;
  }
}

- (id)_getCurrentDataSimContext:(id)a3 inContextArray:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v5;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "currentDataSimContext: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v17 = v5;
      _IDSLogTransport(@"GL", @"IDS", @"currentDataSimContext: %@");
      if (_IDSShouldLog())
      {
        v17 = v5;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"currentDataSimContext: %@");
      }
    }
  }

  if (!v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 userDataPreferred];
          v15 = [v14 intValue] == 0;

          if (!v15)
          {
            v8 = v13;

            goto LABEL_19;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  v8 = v5;
LABEL_19:

  return v8;
}

- (id)_getCTXPCServiceSubscriptionContext
{
  v18 = *MEMORY[0x1E69E9840];
  ctClient = self->_ctClient;
  v15 = 0;
  v4 = [(CoreTelephonyClient *)ctClient getSubscriptionInfoWithError:&v15];
  v5 = v15;
  v6 = [v4 subscriptions];

  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "getCTXPCServiceSubscriptionContext: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = v6;
      _IDSLogTransport(@"GL", @"IDS", @"getCTXPCServiceSubscriptionContext: %@");
      if (_IDSShouldLog())
      {
        v13 = v6;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"getCTXPCServiceSubscriptionContext: %@");
      }
    }
  }

  v8 = self->_ctClient;
  v14 = v5;
  v9 = [(CoreTelephonyClient *)v8 getCurrentDataSubscriptionContextSync:&v14, v13];
  v10 = v14;

  v11 = [(IDSCellularLinkMonitor *)self _getCurrentDataSimContext:v9 inContextArray:v6];

  return v11;
}

- (BOOL)_updateCellularDataInterfaceNameByConnectionState:(int)a3 isStateActiveRequired:(BOOL)a4 interfaceName:(id)a5
{
  v6 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (!a3 && v6)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "_updateCellularDataInterfaceNameByConnectionState: connectionStatus state is inactive, return", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_updateCellularDataInterfaceNameByConnectionState: connectionStatus state is inactive, return");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateCellularDataInterfaceNameByConnectionState: connectionStatus state is inactive, return");
        }
      }
    }

LABEL_16:
    v14 = 0;
    goto LABEL_24;
  }

  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "newCelularDataInterfaceName: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v18 = v9;
      _IDSLogTransport(@"GL", @"IDS", @"newCelularDataInterfaceName: %@");
      if (_IDSShouldLog())
      {
        v18 = v9;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"newCelularDataInterfaceName: %@");
      }
    }
  }

  cellularDataInterfaceName = self->_cellularDataInterfaceName;
  p_cellularDataInterfaceName = &self->_cellularDataInterfaceName;
  if (([(NSString *)cellularDataInterfaceName isEqualToIgnoringCase:v9, v18]& 1) != 0)
  {
    goto LABEL_16;
  }

  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *p_cellularDataInterfaceName;
    *buf = 138412546;
    v20 = v16;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "update cellular data interface name [%@->%@].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update cellular data interface name [%@->%@].");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update cellular data interface name [%@->%@].");
      }
    }
  }

  objc_storeStrong(p_cellularDataInterfaceName, a5);
  v14 = 1;
LABEL_24:

  return v14;
}

- (BOOL)_updateCellularDataInterface:(BOOL)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    v3 = a3;
    v5 = [(IDSCellularLinkMonitor *)self _getCTXPCServiceSubscriptionContext];
    if (v5)
    {
      ctClient = self->_ctClient;
      v17 = 0;
      v7 = [(CoreTelephonyClient *)ctClient getConnectionState:v5 connectionType:0 error:&v17];
      v8 = v17;
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v7;
        _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "_updateCellularDataInterface: connectionStatus: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"_updateCellularDataInterface: connectionStatus: %@");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateCellularDataInterface: connectionStatus: %@");
          }
        }
      }

      if (v7)
      {
        v10 = [v7 state];
        v11 = [v7 interfaceName];
        v12 = [(IDSCellularLinkMonitor *)self _updateCellularDataInterfaceNameByConnectionState:v10 isStateActiveRequired:v3 interfaceName:v11];
      }

      else
      {
        v15 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v19 = v8;
          v20 = 2112;
          v21 = v5;
          _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "getConnectionState failed: %@ %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"getConnectionState failed: %@ %@");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"getConnectionState failed: %@ %@");
            }
          }
        }

        v12 = 0;
      }
    }

    else
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "_updateCellularDataInterface: failed to get context", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"_updateCellularDataInterface: failed to get context");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateCellularDataInterface: failed to get context");
          }
        }
      }

      v8 = 0;
      v12 = 0;
    }
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "failed to get cellular data interface name due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get cellular data interface name due to invalid CT server connection.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get cellular data interface name due to invalid CT server connection.");
        }
      }
    }

    return 0;
  }

  return v12;
}

- (id)_getDataStatus
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    v3 = [(IDSCellularLinkMonitor *)self _getCTXPCServiceSubscriptionContext];
    if (v3)
    {
      ctClient = self->_ctClient;
      v12 = 0;
      v5 = [(CoreTelephonyClient *)ctClient getDataStatus:v3 error:&v12];
      v6 = v12;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v10 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v14 = v6;
          v15 = 2112;
          v16 = v3;
          _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "getDataStatus failed: %@ %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"getDataStatus failed: %@ %@");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"getDataStatus failed: %@ %@");
            }
          }
        }
      }
    }

    else
    {
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "_getDataStatus: failed to get context", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"_getDataStatus: failed to get context");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"_getDataStatus: failed to get context");
          }
        }
      }

      v5 = 0;
    }
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "failed to get data status due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get data status due to invalid CT server connection.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get data status due to invalid CT server connection.");
        }
      }
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_updateRadioAccessTechnology
{
  v3 = [(IDSCellularLinkMonitor *)self _getDataStatus];
  if (v3)
  {
    v4 = [(IDSCellularLinkMonitor *)self _updateRadioAccessTechnologyWithCTDataStatus:v3];
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "_updateRadioAccessTechnology failed to get data status", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_updateRadioAccessTechnology failed to get data status");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateRadioAccessTechnology failed to get data status");
        }
      }
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)_updateRadioAccessTechnologyWithCTDataStatus:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 indicator];
  v6 = [v4 radioTechnology];
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    remoteDeviceVersion = self->_remoteDeviceVersion;
    *buf = 67109890;
    *v18 = v6;
    *&v18[4] = 1024;
    *&v18[6] = v5;
    *v19 = 2112;
    *&v19[2] = v4;
    v20 = 1024;
    v21 = remoteDeviceVersion;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "_updateRadioAccessTechnology: radioAccessTech: %d, data indicator: %d, data status: %@, _remoteDeviceVersion: %u", buf, 0x1Eu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_updateRadioAccessTechnology: radioAccessTech: %d, data indicator: %d, data status: %@, _remoteDeviceVersion: %u");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateRadioAccessTechnology: radioAccessTech: %d, data indicator: %d, data status: %@, _remoteDeviceVersion: %u");
      }
    }
  }

  if (v6 > 6)
  {
    if ((v6 - 7) >= 2)
    {
      if (v6 == 9)
      {
        v9 = 7;
        goto LABEL_39;
      }

      if (v6 != 10)
      {
        goto LABEL_31;
      }

      if (self->_remoteDeviceVersion != 1)
      {
        v9 = 8;
        goto LABEL_39;
      }

      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "remote is preAzul that doesn't support NR, change NR to LTE", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"remote is preAzul that doesn't support NR, change NR to LTE");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"remote is preAzul that doesn't support NR, change NR to LTE");
          }
        }
      }
    }

    v9 = 5;
    goto LABEL_39;
  }

  if (v6 > 3)
  {
    if ((v6 - 4) < 2)
    {
      v9 = 3;
      goto LABEL_39;
    }
  }

  else
  {
    switch(v6)
    {
      case 0:
        v9 = 2;
        goto LABEL_39;
      case 2:
        if ((v5 - 3) >= 3)
        {
          v9 = 1;
        }

        else
        {
          v9 = 6;
        }

        goto LABEL_39;
      case 3:
        v9 = 4;
        goto LABEL_39;
    }
  }

LABEL_31:
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v18 = v6;
    _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "receive unknown RAT: %d.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"receive unknown RAT: %d.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive unknown RAT: %d.");
      }
    }
  }

  v9 = 10;
LABEL_39:
  radioAccessTechnology = self->_radioAccessTechnology;
  if (radioAccessTechnology != v9)
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
      v15 = IDSRadioAccessTechnologyToString(v9);
      *buf = 136315394;
      *v18 = v14;
      *&v18[8] = 2080;
      *v19 = v15;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "update cellular RAT [%s->%s].", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
        IDSRadioAccessTechnologyToString(v9);
        _IDSLogTransport(@"GL", @"IDS", @"update cellular RAT [%s->%s].");
        if (_IDSShouldLog())
        {
          IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
          IDSRadioAccessTechnologyToString(v9);
          _IDSLogV(0, @"IDSFoundation", @"GL", @"update cellular RAT [%s->%s].");
        }
      }
    }

    self->_radioAccessTechnology = v9;
  }

  return radioAccessTechnology != v9;
}

- (BOOL)_updateDataBearerSoMask
{
  v3 = [(IDSCellularLinkMonitor *)self _getDataStatus];
  if (v3)
  {
    v4 = [(IDSCellularLinkMonitor *)self _updateDataBearerSoMaskWithCTDataStatus:v3];
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "_updateDataBearerSoMask failed  to get data status", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_updateDataBearerSoMask failed  to get data status");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataBearerSoMask failed  to get data status");
        }
      }
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)_updateDataBearerSoMaskWithCTDataStatus:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "_updateDataBearerSoMask: No CTDataStatus", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_updateDataBearerSoMask: No CTDataStatus");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataBearerSoMask: No CTDataStatus");
        }
      }
    }

    goto LABEL_16;
  }

  v6 = [v4 indicator];
  v7 = [v5 radioTechnology];
  v8 = [v5 dataBearerSoMask];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    dataSoMaskBits = self->_dataSoMaskBits;
    *buf = 67110146;
    v15 = v7;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = dataSoMaskBits;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "_updateDataBearerSoMask: radioAccessTech: %d, data indicator: %d, soMask: %u, _dataSoMaskBits: %u, data status: %@", buf, 0x24u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_updateDataBearerSoMask: radioAccessTech: %d, data indicator: %d, soMask: %u, _dataSoMaskBits: %u, data status: %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataBearerSoMask: radioAccessTech: %d, data indicator: %d, soMask: %u, _dataSoMaskBits: %u, data status: %@");
      }
    }
  }

  if (v8 == self->_dataSoMaskBits)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  self->_dataSoMaskBits = v8;
  v11 = 1;
LABEL_17:

  return v11;
}

- (BOOL)_updateCellularMTU
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    v2 = _CTServerConnectionCopyCurrentMTU();
    v3 = v2;
    if (!v2)
    {
LABEL_15:
      LOBYTE(v6) = 0;
      return v6;
    }

    v4 = HIDWORD(v2);
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = v3;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "failed to get cellular MTU (error:%d.%d)", buf, 0xEu);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (v6)
    {
      v6 = _IDSShouldLogTransport();
      if (v6)
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get cellular MTU (error:%d.%d)");
        v6 = _IDSShouldLog();
        if (v6)
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get cellular MTU (error:%d.%d)");
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "failed to get cellular MTU due to invalid CT server connection.", buf, 2u);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (v6)
    {
      v6 = _IDSShouldLogTransport();
      if (v6)
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get cellular MTU due to invalid CT server connection.");
        v6 = _IDSShouldLog();
        if (v6)
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get cellular MTU due to invalid CT server connection.");
          goto LABEL_15;
        }
      }
    }
  }

  return v6;
}

- (BOOL)_dataContextUsable:(id)a3 dataStatus:(id)a4
{
  result = 0;
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [v6 cellularDataPossible];
    v9 = [v7 state];

    LODWORD(v7) = [v6 indicator];
    if (v7)
    {
      v10 = v9 == 2;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    return v11 & v8;
  }

  return result;
}

- (void)_updateDataStatus
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(IDSCellularLinkMonitor *)self _getCTXPCServiceSubscriptionContext];
  if (v3)
  {
    ctClient = self->_ctClient;
    v16 = 0;
    v5 = [(CoreTelephonyClient *)ctClient getConnectionState:v3 connectionType:0 error:&v16];
    v6 = v16;
    if (v5)
    {
      v7 = [(IDSCellularLinkMonitor *)self _getDataStatus];
      if (v7)
      {
        v8 = [(IDSCellularLinkMonitor *)self _dataContextUsable:v5 dataStatus:v7];
        v9 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          dataUsable = self->_dataUsable;
          *buf = 67109890;
          *v18 = v8;
          *&v18[4] = 1024;
          *&v18[6] = dataUsable;
          *v19 = 2112;
          *&v19[2] = v5;
          v20 = 2112;
          v21 = v7;
          _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "_updateDataStatus: %d %d, connection status: %@, data status: %@", buf, 0x22u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"_updateDataStatus: %d %d, connection status: %@, data status: %@");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataStatus: %d %d, connection status: %@, data status: %@");
            }
          }
        }

        if (self->_dataUsable != v8)
        {
          self->_dataUsable = v8;
          v11 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = @"NO";
            if (v8)
            {
              v12 = @"YES";
            }

            *buf = 138412290;
            *v18 = v12;
            _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "cellular data usable: %@.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"cellular data usable: %@.");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"cellular data usable: %@.");
              }
            }
          }
        }
      }

      else
      {
        v15 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "_updateDataStatus failed to get data status", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"_updateDataStatus failed to get data status");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataStatus failed to get data status");
            }
          }
        }
      }
    }

    else
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v18 = v6;
        *&v18[8] = 2112;
        *v19 = v3;
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "getConnectionState failed: %@ %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"getConnectionState failed: %@ %@");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"getConnectionState failed: %@ %@");
          }
        }
      }
    }
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "_updateDataStatus: failed to get context", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_updateDataStatus: failed to get context");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataStatus: failed to get context");
        }
      }
    }

    v6 = 0;
  }
}

- (void)processCTConnectionStateChangeNotification:(id)a3 connectionStatus:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  ctClient = self->_ctClient;
  v45 = 0;
  v9 = [(CoreTelephonyClient *)ctClient getDataStatus:v6 error:&v45];
  v40 = v45;
  if (v9)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v48 = v7;
      v49 = 2112;
      *v50 = v9;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "processCTConnectionStateChangeNotification: %@ %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v33 = v7;
        v35 = v9;
        _IDSLogTransport(@"GL", @"IDS", @"processCTConnectionStateChangeNotification: %@ %@");
        if (_IDSShouldLog())
        {
          v33 = v7;
          v35 = v9;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processCTConnectionStateChangeNotification: %@ %@");
        }
      }
    }

    v11 = [v9 indicator];
    v12 = [(IDSCellularLinkMonitor *)self _dataContextUsable:v7 dataStatus:v9];
    v13 = v12;
    dataUsable = self->_dataUsable;
    if (dataUsable != v12)
    {
      self->_dataUsable = v12;
    }

    v15 = dataUsable != v12;
    v16 = [(IDSCellularLinkMonitor *)self _updateCellularDataInterface:0];
    v17 = [(IDSCellularLinkMonitor *)self _updateCellularMTU];
    if ([(IDSCellularLinkMonitor *)self _updateRadioAccessTechnologyWithCTDataStatus:v9]|| v17 || v15 || v16)
    {
      v18 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        cellularDataInterfaceName = self->_cellularDataInterfaceName;
        cellularMTU = self->_cellularMTU;
        v21 = IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
        v22 = @"NO";
        *buf = 138413314;
        if (v13)
        {
          v22 = @"YES";
        }

        v48 = v22;
        v49 = 1024;
        *v50 = v11;
        *&v50[4] = 2112;
        *&v50[6] = cellularDataInterfaceName;
        v51 = 1024;
        v52 = cellularMTU;
        v53 = 2080;
        v54 = v21;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "cellular data usable: %@ (indicator:%d, if:[%@], mtu:%u, RAT:[%s]).", buf, 0x2Cu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v23 = v13 ? @"YES" : @"NO";
        v24 = self->_cellularDataInterfaceName;
        v38 = self->_cellularMTU;
        v39 = IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
        v36 = v11;
        v37 = v24;
        v34 = v23;
        _IDSLogTransport(@"GL", @"IDS", @"cellular data usable: %@ (indicator:%d, if:[%@], mtu:%u, RAT:[%s]).");
        if (_IDSShouldLog())
        {
          v25 = self->_cellularDataInterfaceName;
          v38 = self->_cellularMTU;
          v39 = IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
          v36 = v11;
          v37 = v25;
          v34 = v23;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"cellular data usable: %@ (indicator:%d, if:[%@], mtu:%u, RAT:[%s]).");
        }
      }

      v26 = [(NSHashTable *)self->_cellularLinkDelegates allObjects:v34];
      v27 = [v26 copy];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v28 = v27;
      v29 = [v28 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v29)
      {
        v30 = *v42;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v42 != v30)
            {
              objc_enumerationMutation(v28);
            }

            [*(*(&v41 + 1) + 8 * i) cellularRadioAccessTechnologyDidChange:v13];
          }

          v29 = [v28 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v29);
      }
    }
  }

  else
  {
    v32 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v48 = v40;
      v49 = 2112;
      *v50 = v6;
      _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "getDataStatus failed: %@ %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"getDataStatus failed: %@ %@");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"getDataStatus failed: %@ %@");
        }
      }
    }
  }
}

- (void)reset
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "reset cellular link monitor %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"reset cellular link monitor %@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"reset cellular link monitor %@.");
      }
    }
  }

  cellularDataInterfaceName = self->_cellularDataInterfaceName;
  self->_cellularDataInterfaceName = 0;

  *&self->_radioAccessTechnology = 10;
  self->_dataUsable = 0;
  *&self->_dataSoMaskBits = 0;
}

- (NSString)cellularDataInterfaceName
{
  cellularDataInterfaceName = self->_cellularDataInterfaceName;
  if (!cellularDataInterfaceName)
  {
    [(IDSCellularLinkMonitor *)self _updateCellularDataInterface:1];
    cellularDataInterfaceName = self->_cellularDataInterfaceName;
  }

  return cellularDataInterfaceName;
}

- (unsigned)radioAccessTechnology
{
  result = self->_radioAccessTechnology;
  if (result == 10)
  {
    [(IDSCellularLinkMonitor *)self _updateRadioAccessTechnology];
    return self->_radioAccessTechnology;
  }

  else if (result == 8 && self->_remoteDeviceVersion == 1)
  {
    result = 5;
    self->_radioAccessTechnology = 5;
  }

  return result;
}

- (unsigned)cellularMTU
{
  result = self->_cellularMTU;
  if (!result)
  {
    [(IDSCellularLinkMonitor *)self _updateCellularMTU];
    return self->_cellularMTU;
  }

  return result;
}

- (BOOL)dataUsable
{
  if (self->_dataUsable)
  {
    return 1;
  }

  else
  {
    [(IDSCellularLinkMonitor *)self _updateDataStatus];
    return self->_dataUsable;
  }
}

- (unsigned)dataSoMaskBits
{
  result = self->_dataSoMaskBits;
  if (!result)
  {
    [(IDSCellularLinkMonitor *)self _updateDataBearerSoMask];
    return self->_dataSoMaskBits;
  }

  return result;
}

- (void)removePacketNotificationFilter
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection && self->_notificationRegInfo)
  {
    _CTServerConnectionSetPacketNotificationFilter();
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      notificationRegInfo = self->_notificationRegInfo;
      *buf = 138412290;
      v7 = notificationRegInfo;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "removed packet notification filter for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"removed packet notification filter for %@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"removed packet notification filter for %@.");
      }
    }

    v5 = self->_notificationRegInfo;
    self->_notificationRegInfo = 0;
  }
}

- (BOOL)setPacketNotificationFilter:(const sockaddr *)a3 remote:(const sockaddr *)a4 uniqueTag:(unsigned int)a5 callType:(unsigned __int8)a6 ifname:(id)a7
{
  v7 = a6;
  *&v38[5] = *MEMORY[0x1E69E9840];
  v12 = a7;
  if (!self->_ctServerConnection)
  {
    v24 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "failed to set packet notification filter due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to set packet notification filter due to invalid CT server connection.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to set packet notification filter due to invalid CT server connection.");
        }
      }
    }

    goto LABEL_34;
  }

  if (a3->sa_family != a4->sa_family)
  {
    v25 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "failed to set packet notification filter due to address family mismatch.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to set packet notification filter due to address family mismatch.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to set packet notification filter due to address family mismatch.");
        }
      }
    }

LABEL_34:
    v26 = 0;
    goto LABEL_60;
  }

  [(IDSCellularLinkMonitor *)self removePacketNotificationFilter];
  if (!self->_notificationRegInfo)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    notificationRegInfo = self->_notificationRegInfo;
    self->_notificationRegInfo = Mutable;
  }

  if (v12)
  {
    CFDictionarySetValue(self->_notificationRegInfo, *MEMORY[0x1E6965278], v12);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v7];
  if (v16)
  {
    CFDictionarySetValue(v15, *MEMORY[0x1E69652F0], v16);
  }

  v17 = [MEMORY[0x1E696AD98] numberWithInt:bswap32(a5)];
  if (v17)
  {
    CFDictionarySetValue(v15, *MEMORY[0x1E6965368], v17);
  }

  v18 = *a3->sa_data;
  if (a3->sa_family == 2)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithShort:v18];
    if (v19)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965300], v19);
    }

    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&a3->sa_data[2] length:4];
    if (v20)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E69652F8], v20);
    }

    v21 = [MEMORY[0x1E696AD98] numberWithShort:*a4->sa_data];
    if (v21)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965350], v21);
    }

    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&a4->sa_data[2] length:4];

    if (v22)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965348], v22);
    }

    if (!v15)
    {
      goto LABEL_46;
    }

    v23 = MEMORY[0x1E6965318];
  }

  else
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v18];
    if (v27)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965300], v27);
    }

    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:&a3->sa_data[6] length:16];
    if (v28)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E69652F8], v28);
    }

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*a4->sa_data];
    if (v29)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965350], v29);
    }

    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&a4->sa_data[6] length:16];

    if (v22)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965348], v22);
    }

    if (!v15)
    {
      goto LABEL_46;
    }

    v23 = MEMORY[0x1E6965320];
  }

  CFDictionarySetValue(self->_notificationRegInfo, *v23, v15);
LABEL_46:
  v30 = _CTServerConnectionSetPacketNotificationFilter();
  v31 = v30;
  v26 = v30 == 0;
  if (v30)
  {
    v32 = HIDWORD(v30);
    v33 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v38[0] = v31;
      LOWORD(v38[1]) = 1024;
      *(&v38[1] + 2) = v32;
      _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "failed to set packet notification filter (error: %d.%d).", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to set packet notification filter (error: %d.%d).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to set packet notification filter (error: %d.%d).");
        }
      }
    }
  }

  else
  {
    v34 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = self->_notificationRegInfo;
      *buf = 138412290;
      *v38 = v35;
      _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "set packet notification filter for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"set packet notification filter for %@.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"set packet notification filter for %@.");
        }
      }
    }
  }

LABEL_60:
  return v26;
}

- (void)setRemoteDeviceVersion:(unsigned int)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = a3;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "CellularLinkMonitor: set remote device version: %u", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"CellularLinkMonitor: set remote device version: %u");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"CellularLinkMonitor: set remote device version: %u");
      }
    }
  }

  self->_remoteDeviceVersion = a3;
}

- (BOOL)dropIPPackets:(id)a3 localAddress:(sockaddr *)a4 remoteAddress:(sockaddr *)a5 isRelay:(BOOL)a6 channelNumberMSB:(unsigned __int8)a7 ifname:(id)a8
{
  v9 = a7;
  v10 = a6;
  v77 = *MEMORY[0x1E69E9840];
  v14 = a3;
  value = a8;
  v53 = v14;
  if (!self->_ctServerConnection)
  {
    v43 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v43, OS_LOG_TYPE_DEFAULT, "failed to drop IP packets due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to drop IP packets due to invalid CT server connection.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to drop IP packets due to invalid CT server connection.");
        }
      }
    }

    goto LABEL_98;
  }

  if (!a4 || !a5)
  {
    v44 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v44, OS_LOG_TYPE_DEFAULT, "failed to drop IP packets due to invalid address.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to drop IP packets due to invalid address.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to drop IP packets due to invalid address.");
        }
      }
    }

LABEL_98:
    v45 = 0;
    goto LABEL_123;
  }

  if (a4->sa_family == 2)
  {
    v15 = 28;
  }

  else
  {
    v15 = 48;
  }

  if (a4->sa_family == 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v65 = *a4->sa_data;
  v66 = v15;
  v64 = *a5->sa_data;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v14;
  v17 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (!v17)
  {

    goto LABEL_114;
  }

  v18 = 0;
  v19 = 0;
  if (v10)
  {
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  v54 = v20 + v66;
  v62 = *MEMORY[0x1E6965310];
  v61 = *MEMORY[0x1E6965350];
  v60 = *MEMORY[0x1E6965300];
  v59 = *MEMORY[0x1E6965338];
  v55 = *MEMORY[0x1E6965340];
  v58 = *MEMORY[0x1E6965360];
  v57 = *MEMORY[0x1E6965358];
  v56 = *MEMORY[0x1E6965308];
  v63 = *v70;
  for (i = *v70; ; i = *v70)
  {
    if (i != v63)
    {
      objc_enumerationMutation(obj);
    }

    v22 = *(*(&v69 + 1) + 8 * v19);
    v23 = v66;
    if (!v9)
    {
      if (v22)
      {
        v24 = @"qos-family-offset-bytes" == 0;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = CFDictionaryGetValue(*(*(&v69 + 1) + 8 * v19), @"qos-family-offset-bytes");
      }

      v23 = v54 + [v25 intValue];
    }

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = [MEMORY[0x1E696AD98] numberWithChar:v16];
    if (v27)
    {
      CFDictionarySetValue(v26, v62, v27);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v74 = v62;
      *&v74[8] = 2080;
      v75 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v65];
    if (v28)
    {
      CFDictionarySetValue(v26, v61, v28);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v74 = v61;
      *&v74[8] = 2080;
      v75 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v64];
    if (v29)
    {
      CFDictionarySetValue(v26, v60, v29);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v74 = v60;
      *&v74[8] = 2080;
      v75 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v30 = [MEMORY[0x1E696AD98] numberWithChar:v23];
    if (v30)
    {
      CFDictionarySetValue(v26, v59, v30);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v74 = v59;
      *&v74[8] = 2080;
      v75 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    if (v9)
    {
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v9];
      if (v31)
      {
        CFDictionarySetValue(v26, v55, v31);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v74 = v55;
        *&v74[8] = 2080;
        v75 = "newPayloadDictionary";
        _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
      }
    }

    else if (v22 && @"qos-family-payload-type" && (v32 = CFDictionaryGetValue(v22, @"qos-family-payload-type")) != 0)
    {
      v33 = v32;
      CFDictionarySetValue(v26, v55, v32);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v74 = v55;
      *&v74[8] = 2080;
      v75 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v34 = 0;
    if (v22 && @"qos-family-transaction-id")
    {
      v34 = CFDictionaryGetValue(v22, @"qos-family-transaction-id");
    }

    v35 = [v34 unsignedShortValue];
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v35)];
    if (v36)
    {
      CFDictionarySetValue(v26, v58, v36);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v74 = v58;
      *&v74[8] = 2080;
      v75 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v37 = v22 != 0 && @"qos-family-timestamp-value" != 0 ? CFDictionaryGetValue(v22, @"qos-family-timestamp-value") : 0;
    v38 = [v37 unsignedIntValue];
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(v38)];
    if (v39)
    {
      CFDictionarySetValue(v26, v57, v39);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v74 = v57;
      *&v74[8] = 2080;
      v75 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v40 = v22 != 0 && @"qos-family-drop-operation" != 0 ? CFDictionaryGetValue(v22, @"qos-family-drop-operation") : 0;
    v41 = [v40 unsignedShortValue];
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v41)];
    if (v42)
    {
      CFDictionarySetValue(v26, v56, v42);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v74 = v56;
      *&v74[8] = 2080;
      v75 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    if (!v18)
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if (value && v18)
    {
      CFArrayAppendValue(v18, value);
    }

    if (v18 && v26)
    {
      CFArrayAppendValue(v18, v26);
    }

    if (++v19 >= v17)
    {
      break;
    }

LABEL_85:
    ;
  }

  v17 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v17)
  {
    v19 = 0;
    goto LABEL_85;
  }

  if (!v18)
  {
LABEL_114:
    v51 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "dropIPPackets failed due to invalid payloadArray.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"dropIPPackets failed due to invalid payloadArray.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"dropIPPackets failed due to invalid payloadArray.");
        }
      }
    }

    v18 = 0;
LABEL_121:
    v45 = 0;
    goto LABEL_122;
  }

  v46 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v74 = v18;
    _os_log_impl(&dword_1A7AD9000, v46, OS_LOG_TYPE_DEFAULT, "drop IP packets for payload array %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"drop IP packets for payload array %@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"drop IP packets for payload array %@.");
      }
    }
  }

  v47 = _CTServerConnectionDropIPPackets();
  v48 = v47;
  if (v47)
  {
    v49 = HIDWORD(v47);
    v50 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v74 = v48;
      *&v74[4] = 1024;
      *&v74[6] = v49;
      _os_log_impl(&dword_1A7AD9000, v50, OS_LOG_TYPE_DEFAULT, "CTServerConnectionDropIPPackets failed (error: %d.%d).", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"CTServerConnectionDropIPPackets failed (error: %d.%d).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"CTServerConnectionDropIPPackets failed (error: %d.%d).");
        }
      }
    }

    goto LABEL_121;
  }

  v45 = 1;
LABEL_122:

LABEL_123:
  return v45;
}

- (void)updateProtocolQualityOfService:(BOOL)a3 localAddress:(sockaddr *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    if (a4)
    {
      v4 = a3;
      if (a4->sa_family == 30)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      updated = _CTServerConnectionUpdateProtocolQualityOfService();
      v7 = updated;
      if (updated)
      {
        v8 = HIDWORD(updated);
        v9 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v15 = v7;
          *&v15[4] = 1024;
          *&v15[6] = v8;
          _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "failed to update protocol QoS (error: %d.%d)", buf, 0xEu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to update protocol QoS (error: %d.%d)");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to update protocol QoS (error: %d.%d)");
          }
        }
      }

      else
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = @"NO";
          if (v4)
          {
            v13 = @"YES";
          }

          *buf = 138412546;
          *v15 = v13;
          *&v15[8] = 1024;
          v16 = v5;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "update procotol QoS (isGood:%@, addressFamily:%d).", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"update procotol QoS (isGood:%@, addressFamily:%d).");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"update procotol QoS (isGood:%@, addressFamily:%d).");
            }
          }
        }
      }
    }

    else
    {
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "updateProtocolQualityOfService failed due to invalid address.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"updateProtocolQualityOfService failed due to invalid address.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"updateProtocolQualityOfService failed due to invalid address.");
          }
        }
      }
    }
  }

  else
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "failed to update protocol QoS due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to update protocol QoS due to invalid CT server connection.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to update protocol QoS due to invalid CT server connection.");
        }
      }
    }
  }
}

- (void)currentCellularSignalStrength:(int *)a3 signalStrength:(int *)a4 signalGrade:(int *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    *a3 = 0;
    *a4 = 100;
    *a5 = 0;
    v9 = [(IDSCellularLinkMonitor *)self _getCTXPCServiceSubscriptionContext];
    if (v9)
    {
      ctClient = self->_ctClient;
      v21 = 0;
      v11 = [(CoreTelephonyClient *)ctClient getSignalStrengthInfo:v9 error:&v21];
      v12 = v21;
      if (v11)
      {
        v13 = [v11 bars];
        *a5 = [v13 intValue];

        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *a3;
          v16 = *a4;
          v17 = *a5;
          *buf = 67109632;
          *v23 = v15;
          *&v23[4] = 1024;
          *&v23[6] = v16;
          LOWORD(v24) = 1024;
          *(&v24 + 2) = v17;
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "current cellular signal strength  [Raw: %d Strength: %d  Grade: %d]", buf, 0x14u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"current cellular signal strength  [Raw: %d Strength: %d  Grade: %d]");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"current cellular signal strength  [Raw: %d Strength: %d  Grade: %d]");
          }
        }
      }

      else
      {
        v20 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v23 = v12;
          *&v23[8] = 2112;
          v24 = v9;
          _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "getSignalStrengthInfo failed: %@ %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"getSignalStrengthInfo failed: %@ %@");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"getSignalStrengthInfo failed: %@ %@");
            }
          }
        }
      }
    }

    else
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "currentCellularSignalStrength: failed to get context", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"currentCellularSignalStrength: failed to get context");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"currentCellularSignalStrength: failed to get context");
          }
        }
      }
    }
  }

  else
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "failed to get cellular signal strength due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get cellular signal strength due to invalid CT server connection.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get cellular signal strength due to invalid CT server connection.");
        }
      }
    }
  }
}

- (void)registerCellularDataStatusNotification:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    v3 = a3;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "registerCellularDataStatusNotification: %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"registerCellularDataStatusNotification: %@.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"registerCellularDataStatusNotification: %@.");
        }
      }
    }

    ctClient = self->_ctClient;
    if (v3)
    {
      [(CoreTelephonyClient *)ctClient setDelegate:self];
    }

    else
    {
      [(CoreTelephonyClient *)ctClient setDelegate:0];
    }
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "registerCellularDataStatusNotification failed due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"registerCellularDataStatusNotification failed due to invalid CT server connection.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"registerCellularDataStatusNotification failed due to invalid CT server connection.");
        }
      }
    }
  }
}

- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = a4;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "connectionStateChanged, connection type: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"connectionStateChanged, connection type: %d");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"connectionStateChanged, connection type: %d");
      }
    }
  }

  if (!a4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A7B5ADA4;
    v10[3] = &unk_1E77E0250;
    v11 = v7;
    v12 = v8;
    IDSTransportThreadAddBlock(v10);
  }
}

- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  ctClient = self->_ctClient;
  v14 = 0;
  v9 = [(CoreTelephonyClient *)ctClient getPreferredDataSubscriptionContextSync:&v14];
  v10 = v14;
  v11 = [v9 isEqual:v6];

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    *buf = 138412802;
    v16 = v6;
    v17 = 2112;
    if (v11)
    {
      v13 = @"YES";
    }

    v18 = v13;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "Received CT data status changed callback { context: %@, isRelevant: %@, dataStatus: %@ }", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"Received CT data status changed callback { context: %@, isRelevant: %@, dataStatus: %@ }");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"Received CT data status changed callback { context: %@, isRelevant: %@, dataStatus: %@ }");
      }
    }
  }

  if (v11)
  {
    [(IDSCellularLinkMonitor *)self _notifyClientDataBearerSoMask:v7];
  }
}

- (void)_notifyClientDataBearerSoMask:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(IDSCellularLinkMonitor *)self _updateDataBearerSoMaskWithCTDataStatus:v4])
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      dataSoMaskBits = self->_dataSoMaskBits;
      *buf = 67109120;
      v23 = dataSoMaskBits;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "_updateClientDataBearerSoMask: update AVC cellular so Mask: %u", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v15 = self->_dataSoMaskBits;
        _IDSLogTransport(@"GL", @"IDS", @"_updateClientDataBearerSoMask: update AVC cellular so Mask: %u");
        if (_IDSShouldLog())
        {
          v15 = self->_dataSoMaskBits;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateClientDataBearerSoMask: update AVC cellular so Mask: %u");
        }
      }
    }

    v7 = [(NSHashTable *)self->_cellularLinkDelegates allObjects];
    v8 = [v7 copy];

    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      *buf = 67109120;
      v23 = v10;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "[delegates count]: %u", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v16 = [v8 count];
        _IDSLogTransport(@"GL", @"IDS", @"[delegates count]: %u");
        if (_IDSShouldLog())
        {
          v16 = [v8 count];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"[delegates count]: %u");
        }
      }
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * v14++) cellularSoMaskDidChange:{self->_dataSoMaskBits, v16}];
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)preferredDataSimChanged:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "preferredDataSimChanged %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"preferredDataSimChanged %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"preferredDataSimChanged %@");
      }
    }
  }
}

- (BOOL)isSlicedCellularInterfaceActive:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(CoreTelephonyClient *)self->_ctClient getPreferredDataSubscriptionContextSync:0];
    if (v6)
    {
      v7 = 28;
      while (1)
      {
        v8 = [(CoreTelephonyClient *)self->_ctClient getConnectionState:v6 connectionType:v7 error:0];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 interfaceName];
          v11 = [v10 isEqualToIgnoringCase:v5];

          if (v11)
          {
            break;
          }
        }

        v7 = (v7 + 1);
        if (v7 == 36)
        {
          goto LABEL_8;
        }
      }

      v12 = 1;
    }

    else
    {
LABEL_8:
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end