@interface CWFSCNetworkConfiguration
- (BOOL)__isIEEE80211NetworkInterfaceName:(id)name;
- (BOOL)isMonitoringEvents;
- (CWFSCNetworkConfiguration)init;
- (id)DNSDomainName;
- (id)DNSSearchDomains;
- (id)DNSServerAddresses;
- (id)IEEE80211NetworkInterfacesNames;
- (id)IPv4Addresses;
- (id)IPv4InterfaceName;
- (id)IPv4Router;
- (id)IPv4ServiceID;
- (id)IPv4ServiceName;
- (id)IPv4SubnetMasks;
- (id)IPv6Addresses;
- (id)IPv6InterfaceName;
- (id)IPv6PrefixLengths;
- (id)IPv6Router;
- (id)IPv6ServiceID;
- (id)IPv6ServiceName;
- (id)__DNSGlobalStateConfig;
- (id)__IPv4GlobalStateConfig;
- (id)__IPv4SetupConfigForServiceID:(id)d;
- (id)__IPv4StateConfigForServiceID:(id)d;
- (id)__IPv6GlobalStateConfig;
- (id)__IPv6SetupConfigForServiceID:(id)d;
- (id)__IPv6StateConfigForServiceID:(id)d;
- (id)__nameForServiceWithID:(id)d;
- (id)__networkInterfaceStateConfig;
- (id)networkInterfaceNames;
- (void)__startEventMonitoring;
- (void)dealloc;
- (void)restartEventMonitoring;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation CWFSCNetworkConfiguration

- (CWFSCNetworkConfiguration)init
{
  v12.receiver = self;
  v12.super_class = CWFSCNetworkConfiguration;
  v2 = [(CWFSCNetworkConfiguration *)&v12 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.corewifi.SC-global-mutex", v3);
  mutexQueue = v2->_mutexQueue;
  v2->_mutexQueue = v4;

  if (!v2->_mutexQueue)
  {
    goto LABEL_6;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.corewifi.SC-global-event", v6);
  eventQueue = v2->_eventQueue;
  v2->_eventQueue = v7;

  if (!v2->_eventQueue || (v11.version = 0, memset(&v11.retain, 0, 24), v11.info = v2, v9 = SCDynamicStoreCreate(*MEMORY[0x1E695E480], @"com.apple.corewifi.SC-global", sub_1E0D123D8, &v11), (v2->_storeRef = v9) == 0) || !SCDynamicStoreSetDisconnectCallBack())
  {
LABEL_6:

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  storeRef = self->_storeRef;
  if (storeRef)
  {
    CFRelease(storeRef);
  }

  v4.receiver = self;
  v4.super_class = CWFSCNetworkConfiguration;
  [(CWFSCNetworkConfiguration *)&v4 dealloc];
}

- (void)__startEventMonitoring
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  v4 = *MEMORY[0x1E69822F0];
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], *MEMORY[0x1E6982338]);
  if (!NetworkGlobalEntity)
  {
    goto LABEL_16;
  }

  v6 = NetworkGlobalEntity;
  v7 = SCDynamicStoreKeyCreateNetworkGlobalEntity(v3, v4, *MEMORY[0x1E6982340]);
  if (!v7)
  {
    CFRelease(v6);
LABEL_16:
    v14 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v8 = v7;
  v9 = SCDynamicStoreKeyCreateNetworkGlobalEntity(v3, v4, *MEMORY[0x1E6982330]);
  if (!v9)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v10 = SCDynamicStoreKeyCreateNetworkGlobalEntity(v3, v4, *MEMORY[0x1E6982328]);
  if (!v10)
  {
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(v3, v4);
  v12 = NetworkInterface;
  if (NetworkInterface)
  {
    v17[0] = NetworkInterface;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v16[0] = v6;
    v16[1] = v8;
    v16[2] = v9;
    v16[3] = v10;
    v16[4] = *MEMORY[0x1E69822E8];
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];
    if (SCDynamicStoreSetNotificationKeys(self->_storeRef, v13, v14))
    {
      SCDynamicStoreSetDispatchQueue(self->_storeRef, self->_eventQueue);
    }

    goto LABEL_8;
  }

LABEL_19:
  v13 = 0;
  v14 = 0;
LABEL_8:
  CFRelease(v6);
  CFRelease(v8);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_14:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)restartEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D12948;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)startEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D12A0C;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)stopEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D12AD8;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (BOOL)isMonitoringEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0D12BF8;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)__IPv4StateConfigForServiceID:(id)d
{
  dCopy = d;
  if (dCopy && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], dCopy, *MEMORY[0x1E6982338])) != 0)
  {
    v6 = NetworkServiceEntity;
    v7 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v7)
    {
      v8 = v7;
      v9 = [v7 copy];
      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)__IPv6StateConfigForServiceID:(id)d
{
  dCopy = d;
  if (dCopy && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], dCopy, *MEMORY[0x1E6982340])) != 0)
  {
    v6 = NetworkServiceEntity;
    v7 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v7)
    {
      v8 = v7;
      v9 = [v7 copy];
      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)__IPv4SetupConfigForServiceID:(id)d
{
  dCopy = d;
  if (dCopy && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822E8], dCopy, *MEMORY[0x1E6982338])) != 0)
  {
    v6 = NetworkServiceEntity;
    v7 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v7)
    {
      v8 = v7;
      v9 = [v7 copy];
      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)__IPv6SetupConfigForServiceID:(id)d
{
  dCopy = d;
  if (dCopy && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822E8], dCopy, *MEMORY[0x1E6982340])) != 0)
  {
    v6 = NetworkServiceEntity;
    v7 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v7)
    {
      v8 = v7;
      v9 = [v7 copy];
      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)__IPv4GlobalStateConfig
{
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], *MEMORY[0x1E6982338]);
  if (NetworkGlobalEntity)
  {
    v4 = NetworkGlobalEntity;
    v5 = SCDynamicStoreCopyValue(self->_storeRef, NetworkGlobalEntity);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 copy];
      CFRelease(v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)__IPv6GlobalStateConfig
{
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], *MEMORY[0x1E6982340]);
  if (NetworkGlobalEntity)
  {
    v4 = NetworkGlobalEntity;
    v5 = SCDynamicStoreCopyValue(self->_storeRef, NetworkGlobalEntity);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 copy];
      CFRelease(v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)__DNSGlobalStateConfig
{
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], *MEMORY[0x1E6982330]);
  if (NetworkGlobalEntity)
  {
    v4 = NetworkGlobalEntity;
    v5 = SCDynamicStoreCopyValue(self->_storeRef, NetworkGlobalEntity);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 copy];
      CFRelease(v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)__nameForServiceWithID:(id)d
{
  dCopy = d;
  v4 = *MEMORY[0x1E695E480];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v7 = SCPreferencesCreate(v4, processName, 0);

  if (v7)
  {
    v8 = SCNetworkServiceCopy(v7, dCopy);
    if (v8)
    {
      v9 = v8;
      Name = SCNetworkServiceGetName(v8);
      if (Name)
      {
        v11 = [(__CFString *)Name copy];
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v11 = 0;
      v9 = v7;
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)IPv4InterfaceName
{
  __IPv4GlobalStateConfig = [(CWFSCNetworkConfiguration *)self __IPv4GlobalStateConfig];
  v3 = [__IPv4GlobalStateConfig objectForKeyedSubscript:*MEMORY[0x1E6982300]];

  return v3;
}

- (id)IPv4ServiceID
{
  __IPv4GlobalStateConfig = [(CWFSCNetworkConfiguration *)self __IPv4GlobalStateConfig];
  v3 = [__IPv4GlobalStateConfig objectForKeyedSubscript:*MEMORY[0x1E6982308]];

  return v3;
}

- (id)IPv4ServiceName
{
  iPv4ServiceID = [(CWFSCNetworkConfiguration *)self IPv4ServiceID];
  v4 = [(CWFSCNetworkConfiguration *)self __nameForServiceWithID:iPv4ServiceID];

  return v4;
}

- (id)IPv4Addresses
{
  iPv4ServiceID = [(CWFSCNetworkConfiguration *)self IPv4ServiceID];
  v4 = [(CWFSCNetworkConfiguration *)self __IPv4StateConfigForServiceID:iPv4ServiceID];
  v5 = *MEMORY[0x1E6982478];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982478]];

  if (!v6)
  {
    v7 = [(CWFSCNetworkConfiguration *)self __IPv4SetupConfigForServiceID:iPv4ServiceID];
    v6 = [v7 objectForKeyedSubscript:v5];
  }

  return v6;
}

- (id)IPv4Router
{
  __IPv4GlobalStateConfig = [(CWFSCNetworkConfiguration *)self __IPv4GlobalStateConfig];
  v3 = [__IPv4GlobalStateConfig objectForKeyedSubscript:*MEMORY[0x1E69824C0]];

  return v3;
}

- (id)IPv4SubnetMasks
{
  __IPv4GlobalStateConfig = [(CWFSCNetworkConfiguration *)self __IPv4GlobalStateConfig];
  v3 = [__IPv4GlobalStateConfig objectForKeyedSubscript:*MEMORY[0x1E69824C8]];

  return v3;
}

- (id)IPv6InterfaceName
{
  __IPv6GlobalStateConfig = [(CWFSCNetworkConfiguration *)self __IPv6GlobalStateConfig];
  v3 = [__IPv6GlobalStateConfig objectForKeyedSubscript:*MEMORY[0x1E6982300]];

  return v3;
}

- (id)IPv6ServiceID
{
  __IPv6GlobalStateConfig = [(CWFSCNetworkConfiguration *)self __IPv6GlobalStateConfig];
  v3 = [__IPv6GlobalStateConfig objectForKeyedSubscript:*MEMORY[0x1E6982308]];

  return v3;
}

- (id)IPv6Addresses
{
  iPv6ServiceID = [(CWFSCNetworkConfiguration *)self IPv6ServiceID];
  v4 = [(CWFSCNetworkConfiguration *)self __IPv6StateConfigForServiceID:iPv6ServiceID];
  v5 = *MEMORY[0x1E69824D8];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69824D8]];

  if (!v6)
  {
    v7 = [(CWFSCNetworkConfiguration *)self __IPv6SetupConfigForServiceID:iPv6ServiceID];
    v6 = [v7 objectForKeyedSubscript:v5];
  }

  return v6;
}

- (id)IPv6ServiceName
{
  iPv6ServiceID = [(CWFSCNetworkConfiguration *)self IPv6ServiceID];
  v4 = [(CWFSCNetworkConfiguration *)self __nameForServiceWithID:iPv6ServiceID];

  return v4;
}

- (id)IPv6Router
{
  __IPv6GlobalStateConfig = [(CWFSCNetworkConfiguration *)self __IPv6GlobalStateConfig];
  v3 = [__IPv6GlobalStateConfig objectForKeyedSubscript:*MEMORY[0x1E6982528]];

  return v3;
}

- (id)IPv6PrefixLengths
{
  __IPv6GlobalStateConfig = [(CWFSCNetworkConfiguration *)self __IPv6GlobalStateConfig];
  v3 = [__IPv6GlobalStateConfig objectForKeyedSubscript:*MEMORY[0x1E6982500]];

  return v3;
}

- (id)DNSServerAddresses
{
  __DNSGlobalStateConfig = [(CWFSCNetworkConfiguration *)self __DNSGlobalStateConfig];
  v3 = [__DNSGlobalStateConfig objectForKeyedSubscript:*MEMORY[0x1E69823D8]];

  return v3;
}

- (id)DNSDomainName
{
  __DNSGlobalStateConfig = [(CWFSCNetworkConfiguration *)self __DNSGlobalStateConfig];
  v3 = [__DNSGlobalStateConfig objectForKeyedSubscript:*MEMORY[0x1E69823C8]];

  return v3;
}

- (id)DNSSearchDomains
{
  __DNSGlobalStateConfig = [(CWFSCNetworkConfiguration *)self __DNSGlobalStateConfig];
  v3 = [__DNSGlobalStateConfig objectForKeyedSubscript:*MEMORY[0x1E69823D0]];

  return v3;
}

- (id)__networkInterfaceStateConfig
{
  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0]);
  if (NetworkInterface)
  {
    v4 = NetworkInterface;
    v5 = SCDynamicStoreCopyValue(self->_storeRef, NetworkInterface);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 copy];
      CFRelease(v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)networkInterfaceNames
{
  __networkInterfaceStateConfig = [(CWFSCNetworkConfiguration *)self __networkInterfaceStateConfig];
  v3 = [__networkInterfaceStateConfig objectForKeyedSubscript:*MEMORY[0x1E69822F8]];

  return v3;
}

- (BOOL)__isIEEE80211NetworkInterfaceName:(id)name
{
  v13 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = nameCopy;
  memset(v12, 0, 44);
  v11[0] = 0;
  v11[1] = 0;
  if (nameCopy && [nameCopy length] && objc_msgSend(v4, "length") <= 0x10 && (v5 = socket(2, 2, 0), v5 != -1))
  {
    v6 = v5;
    [v4 getCString:v11 maxLength:16 encoding:30];
    if (LOBYTE(v11[0]))
    {
      __strlcpy_chk();
      if (ioctl(v6, 0xC02C6938uLL, v12))
      {
        v7 = 0;
      }

      else
      {
        v7 = (v12[1] & 0xE0) == 128;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    close(v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)IEEE80211NetworkInterfacesNames
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  networkInterfaceNames = [(CWFSCNetworkConfiguration *)self networkInterfaceNames];
  v4 = [networkInterfaceNames countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    array = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(networkInterfaceNames);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([(CWFSCNetworkConfiguration *)self __isIEEE80211NetworkInterfaceName:v9])
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObject:v9];
        }
      }

      v5 = [networkInterfaceNames countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    array = 0;
  }

  v10 = [array copy];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end