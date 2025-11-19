@interface CWFSCNetworkService
- (BOOL)__refreshServiceID;
- (BOOL)__updateServiceID;
- (BOOL)isMonitoringEvents;
- (BOOL)refreshServiceID;
- (CWFSCNetworkService)init;
- (CWFSCNetworkService)initWithInterfaceName:(id)a3;
- (NSString)serviceID;
- (id)DHCPLeaseExpirationTimestamp;
- (id)DHCPLeaseStartTimestamp;
- (id)DHCPServerID;
- (id)DHCPv6ServerID;
- (id)DNSDomainName;
- (id)DNSServerAddresses;
- (id)IPv4ARPResolvedHardwareAddress;
- (id)IPv4ARPResolvedIPAddress;
- (id)IPv4Addresses;
- (id)IPv4ConfigMethod;
- (id)IPv4NetworkSignature;
- (id)IPv4Router;
- (id)IPv4SubnetMasks;
- (id)IPv6Addresses;
- (id)IPv6ConfigMethod;
- (id)IPv6NetworkSignature;
- (id)IPv6Router;
- (id)__DHCPInfo;
- (id)__DHCPStateConfig;
- (id)__DHCPv6StateConfig;
- (id)__DNSSetupConfig;
- (id)__DNSStateConfig;
- (id)__IPv4SetupConfig;
- (id)__IPv4StateConfig;
- (id)__IPv6SetupConfig;
- (id)__IPv6StateConfig;
- (id)__proxiesSetupConfig;
- (id)__serviceStateConfig;
- (id)serviceName;
- (void)__refreshNotificationKeys;
- (void)dealloc;
- (void)restartEventMonitoring;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation CWFSCNetworkService

- (CWFSCNetworkService)initWithInterfaceName:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CWFSCNetworkService;
  v5 = [(CWFSCNetworkService *)&v24 init];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [v4 copy];
    interfaceName = v6->_interfaceName;
    v6->_interfaceName = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.corewifi.SC-service-mutex", v10);
    mutexQueue = v6->_mutexQueue;
    v6->_mutexQueue = v11;

    if (!v6->_mutexQueue)
    {
      goto LABEL_10;
    }

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.corewifi.SC-service-event", v13);
    eventQueue = v6->_eventQueue;
    v6->_eventQueue = v14;

    if (!v6->_eventQueue)
    {
      goto LABEL_10;
    }

    v16 = *MEMORY[0x1E695E480];
    v17 = SCPreferencesCreate(*MEMORY[0x1E695E480], @"com.apple.corewifi.SC-service", 0);
    v6->_prefsRef = v17;
    if (!v17)
    {
      goto LABEL_10;
    }

    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = v6;
    v18 = SCDynamicStoreCreate(v16, @"com.apple.corewifi.SC-service", sub_1E0C92A58, &context);
    v6->_storeRef = v18;
    if (v18 && SCDynamicStoreSetDisconnectCallBack())
    {
      v19 = v6->_mutexQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0C92E44;
      block[3] = &unk_1E86E6010;
      v7 = v6;
      v22 = v7;
      dispatch_async(v19, block);
      v6 = v22;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }
  }

  return v7;
}

- (CWFSCNetworkService)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[CWFSCNetworkService init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)dealloc
{
  storeRef = self->_storeRef;
  if (storeRef)
  {
    CFRelease(storeRef);
  }

  prefsRef = self->_prefsRef;
  if (prefsRef)
  {
    CFRelease(prefsRef);
  }

  v5.receiver = self;
  v5.super_class = CWFSCNetworkService;
  [(CWFSCNetworkService *)&v5 dealloc];
}

- (BOOL)__updateServiceID
{
  SCPreferencesSynchronize(self->_prefsRef);
  v3 = SCNetworkSetCopyCurrent(self->_prefsRef);
  if (v3)
  {
    v4 = v3;
    v5 = SCNetworkSetCopyServices(v3);
    if (v5)
    {
      v6 = v5;
      ServiceOrder = SCNetworkSetGetServiceOrder(v4);
      cf = v4;
      if (ServiceOrder && (v8 = ServiceOrder, CFArrayGetCount(ServiceOrder) >= 1))
      {
        v33 = 0;
        v9 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
          if (ValueAtIndex && (v11 = ValueAtIndex, CFArrayGetCount(v6) >= 1))
          {
            v12 = 0;
            do
            {
              v13 = CFArrayGetValueAtIndex(v6, v12);
              v14 = v13;
              if (v13)
              {
                ServiceID = SCNetworkServiceGetServiceID(v13);
                if (!ServiceID)
                {
                  goto LABEL_20;
                }

                v16 = ServiceID;
                Name = SCNetworkServiceGetName(v14);
                if (!Name)
                {
                  goto LABEL_20;
                }

                v18 = Name;
                if (!CFEqual(v16, v11))
                {
                  goto LABEL_20;
                }

                Interface = SCNetworkServiceGetInterface(v14);
                if (!Interface)
                {
                  goto LABEL_20;
                }

                do
                {
                  v20 = Interface;
                  Interface = SCNetworkInterfaceGetInterface(Interface);
                }

                while (Interface);
                if (SCNetworkInterfaceGetInterfaceType(v20) && (BSDName = SCNetworkInterfaceGetBSDName(v20)) != 0 && CFEqual(BSDName, self->_interfaceName) && SCNetworkServiceGetEnabled(v14))
                {
                  v14 = [(__CFString *)v16 copy];
                  v22 = [(__CFString *)v18 copy];

                  v33 = v22;
                }

                else
                {
LABEL_20:
                  v14 = 0;
                }
              }

              ++v12;
            }

            while (CFArrayGetCount(v6) > v12 && !v14);
          }

          else
          {
            v14 = 0;
          }

          ++v9;
        }

        while (CFArrayGetCount(v8) > v9 && !v14);
      }

      else
      {
        v33 = 0;
        v14 = 0;
      }

      CFRelease(cf);
      v23 = v33;
    }

    else
    {
      v23 = 0;
      v14 = 0;
      v6 = v4;
    }

    CFRelease(v6);
  }

  else
  {
    v23 = 0;
    v14 = 0;
  }

  v24 = self->_serviceID;
  if (v24 == v14 || v14 && v24 && ([(NSString *)v24 isEqual:v14]& 1) != 0)
  {
    v25 = 0;
  }

  else
  {
    v26 = [(__SCNetworkService *)v14 copy];
    v27 = self->_serviceID;
    self->_serviceID = v26;

    v25 = 1;
  }

  serviceName = self->_serviceName;
  if (serviceName != v23 && (!serviceName || !v23 || ([(NSString *)serviceName isEqual:v23]& 1) == 0))
  {
    v29 = [(NSString *)v23 copy];
    v30 = self->_serviceName;
    self->_serviceName = v29;
  }

  return v25;
}

- (void)__refreshNotificationKeys
{
  v19[5] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822E8], *MEMORY[0x1E69822E0], 0);
  if (NetworkServiceEntity)
  {
    v5 = NetworkServiceEntity;
    serviceID = self->_serviceID;
    if (serviceID)
    {
      v7 = *MEMORY[0x1E69822F0];
      v8 = SCDynamicStoreKeyCreateNetworkServiceEntity(v3, *MEMORY[0x1E69822F0], serviceID, *MEMORY[0x1E6982338]);
      if (!v8)
      {
        v15 = 0;
LABEL_20:
        CFRelease(v5);

        goto LABEL_21;
      }

      v9 = v8;
      v10 = SCDynamicStoreKeyCreateNetworkServiceEntity(v3, v7, self->_serviceID, *MEMORY[0x1E6982340]);
      if (!v10)
      {
        v15 = 0;
        v14 = 0;
        v12 = 0;
        v11 = 0;
        goto LABEL_11;
      }

      v11 = SCDynamicStoreKeyCreateNetworkServiceEntity(v3, v7, self->_serviceID, *MEMORY[0x1E6982328]);
      if (!v11)
      {
        v15 = 0;
        v14 = 0;
        v12 = 0;
        goto LABEL_11;
      }

      v12 = SCDynamicStoreKeyCreateNetworkServiceEntity(v3, v7, self->_serviceID, *MEMORY[0x1E6982330]);
      if (!v12)
      {
        v15 = 0;
        v14 = 0;
        goto LABEL_11;
      }

      v13 = SCDynamicStoreKeyCreateNetworkServiceEntity(v3, v7, self->_serviceID, 0);
      v14 = v13;
      if (!v13)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v19[0] = v9;
      v19[1] = v10;
      v19[2] = v11;
      v19[3] = v12;
      v19[4] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v9 = 0;
    }

    storeRef = self->_storeRef;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
    SCDynamicStoreSetNotificationKeys(storeRef, v15, v17);

    if (!v9)
    {
LABEL_12:
      if (v10)
      {
        CFRelease(v10);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      goto LABEL_20;
    }

LABEL_11:
    CFRelease(v9);
    goto LABEL_12;
  }

LABEL_21:
  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)__refreshServiceID
{
  v3 = [(CWFSCNetworkService *)self __updateServiceID];
  if (v3)
  {
    [(CWFSCNetworkService *)self __refreshNotificationKeys];
  }

  return v3;
}

- (BOOL)refreshServiceID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C934D4;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)restartEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C93598;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)startEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C93668;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)stopEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C93738;
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
  v5[2] = sub_1E0C93858;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)__IPv4StateConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], serviceID, *MEMORY[0x1E6982338])) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__DHCPStateConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], serviceID, *MEMORY[0x1E6982328])) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__IPv6StateConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], serviceID, *MEMORY[0x1E6982340])) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__DHCPv6StateConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], serviceID, @"DHCPv6")) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__IPv4SetupConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822E8], serviceID, *MEMORY[0x1E6982338])) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__IPv6SetupConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822E8], serviceID, *MEMORY[0x1E6982340])) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__DNSStateConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], serviceID, *MEMORY[0x1E6982330])) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__DNSSetupConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822E8], serviceID, *MEMORY[0x1E6982330])) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__proxiesSetupConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822E8], serviceID, *MEMORY[0x1E6982360])) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__serviceStateConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], serviceID, 0)) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)IPv4ARPResolvedHardwareAddress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9407C;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = CWFCorrectEthernetAddressString(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)IPv4ARPResolvedIPAddress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C94234;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)IPv4Router
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C943EC;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)IPv4Addresses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C945A4;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)IPv4SubnetMasks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9475C;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)IPv6Router
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C94914;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)IPv6Addresses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C94ACC;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)IPv6ConfigMethod
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C94C84;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)IPv4ConfigMethod
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C94DF4;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)DNSDomainName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C94F64;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)DNSServerAddresses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9511C;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)serviceID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C952D4;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)serviceName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C95420;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)__DHCPInfo
{
  serviceID = self->_serviceID;
  if (serviceID && (v3 = SCDynamicStoreCopyDHCPInfo(self->_storeRef, serviceID)) != 0)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)DHCPLeaseStartTimestamp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C955DC;
  v5[3] = &unk_1E86E6A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)DHCPLeaseExpirationTimestamp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9574C;
  v5[3] = &unk_1E86E6A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)IPv4NetworkSignature
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C958BC;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)IPv6NetworkSignature
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C95A28;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)DHCPServerID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C95B94;
  v5[3] = &unk_1E86E6A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)DHCPv6ServerID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D70;
  v10 = sub_1E0BC61F4;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C95D08;
  v5[3] = &unk_1E86E6A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end