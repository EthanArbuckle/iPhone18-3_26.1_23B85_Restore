@interface CWFSCNetworkInterface
- (BOOL)isLinkActive;
- (BOOL)isMonitoringEvents;
- (CWFSCNetworkInterface)init;
- (CWFSCNetworkInterface)initWithInterfaceName:(id)a3;
- (id)IPv4Addresses;
- (id)IPv4BroadcastAddresses;
- (id)IPv4SubnetMasks;
- (id)IPv6Addresses;
- (id)IPv6Flags;
- (id)IPv6PrefixLengths;
- (id)__IPv4StateConfig;
- (id)__IPv6StateConfig;
- (id)__linkStateConfig;
- (id)__networkInterfaceHardwareAddress;
- (id)airPortSetupConfiguration;
- (id)airPortStateConfiguration;
- (void)__startEventMonitoring;
- (void)dealloc;
- (void)restartEventMonitoring;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation CWFSCNetworkInterface

- (CWFSCNetworkInterface)initWithInterfaceName:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CWFSCNetworkInterface;
  v5 = [(CWFSCNetworkInterface *)&v25 init];
  v6 = v5;
  if (!v4 || !v5)
  {
    goto LABEL_8;
  }

  v7 = [v4 copy];
  interfaceName = v6->_interfaceName;
  v6->_interfaceName = v7;

  v9 = [(CWFSCNetworkInterface *)v6 __networkInterfaceHardwareAddress];
  v10 = [v9 copy];
  hardwareAddress = v6->_hardwareAddress;
  v6->_hardwareAddress = v10;

  if (!v6->_hardwareAddress)
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = 136446978;
      v27 = "[CWFSCNetworkInterface initWithInterfaceName:]";
      v28 = 2082;
      v29 = "CWFSCNetworkInterface.m";
      v30 = 1024;
      v31 = 80;
      v32 = 2114;
      v33 = v4;
      _os_log_send_and_compose_impl();
    }
  }

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.corewifi.SC-interface-mutex", v12);
  mutexQueue = v6->_mutexQueue;
  v6->_mutexQueue = v13;

  if (!v6->_mutexQueue)
  {
    goto LABEL_8;
  }

  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create("com.apple.corewifi.SC-interface-event", v15);
  eventQueue = v6->_eventQueue;
  v6->_eventQueue = v16;

  if (!v6->_eventQueue || (context.version = 0, memset(&context.retain, 0, 24), context.info = v6, v18 = SCDynamicStoreCreate(*MEMORY[0x1E695E480], @"com.apple.corewifi.SC-interface", sub_1E0D30DD0, &context), (v6->_storeRef = v18) == 0) || !SCDynamicStoreSetDisconnectCallBack())
  {
LABEL_8:

    v6 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CWFSCNetworkInterface)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[CWFSCNetworkInterface init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)dealloc
{
  storeRef = self->_storeRef;
  if (storeRef)
  {
    CFRelease(storeRef);
  }

  v4.receiver = self;
  v4.super_class = CWFSCNetworkInterface;
  [(CWFSCNetworkInterface *)&v4 dealloc];
}

- (void)__startEventMonitoring
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  v4 = *MEMORY[0x1E69822F0];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], self->_interfaceName, *MEMORY[0x1E6982338]);
  if (!NetworkInterfaceEntity)
  {
LABEL_6:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = NetworkInterfaceEntity;
  v7 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v3, v4, self->_interfaceName, *MEMORY[0x1E6982340]);
  if (v7)
  {
    v8 = v7;
    v12[0] = v6;
    v12[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    if (SCDynamicStoreSetNotificationKeys(self->_storeRef, v9, 0))
    {
      SCDynamicStoreSetDispatchQueue(self->_storeRef, self->_eventQueue);
    }

    CFRelease(v6);
    CFRelease(v8);

    goto LABEL_6;
  }

  v11 = *MEMORY[0x1E69E9840];

  CFRelease(v6);
}

- (void)restartEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D31308;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)startEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D313CC;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)stopEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D31498;
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
  v5[2] = sub_1E0D315B8;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)airPortStateConfiguration
{
  interfaceName = self->_interfaceName;
  if (interfaceName && (NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], interfaceName, *MEMORY[0x1E6982318])) != 0)
  {
    v5 = NetworkInterfaceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkInterfaceEntity);
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

- (id)airPortSetupConfiguration
{
  interfaceName = self->_interfaceName;
  if (interfaceName && (NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822E8], interfaceName, *MEMORY[0x1E6982318])) != 0)
  {
    v5 = NetworkInterfaceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkInterfaceEntity);
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

- (id)__IPv4StateConfig
{
  interfaceName = self->_interfaceName;
  if (interfaceName && (NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], interfaceName, *MEMORY[0x1E6982338])) != 0)
  {
    v5 = NetworkInterfaceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkInterfaceEntity);
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
  interfaceName = self->_interfaceName;
  if (interfaceName && (NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], interfaceName, *MEMORY[0x1E6982340])) != 0)
  {
    v5 = NetworkInterfaceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkInterfaceEntity);
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

- (id)__linkStateConfig
{
  interfaceName = self->_interfaceName;
  if (interfaceName && (NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], interfaceName, *MEMORY[0x1E6982350])) != 0)
  {
    v5 = NetworkInterfaceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkInterfaceEntity);
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

- (id)IPv4Addresses
{
  v2 = [(CWFSCNetworkInterface *)self __IPv4StateConfig];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6982478]];

  return v3;
}

- (id)IPv4BroadcastAddresses
{
  v2 = [(CWFSCNetworkInterface *)self __IPv4StateConfig];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6982480]];

  return v3;
}

- (id)IPv4SubnetMasks
{
  v2 = [(CWFSCNetworkInterface *)self __IPv4StateConfig];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69824C8]];

  return v3;
}

- (id)IPv6Addresses
{
  v2 = [(CWFSCNetworkInterface *)self __IPv6StateConfig];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69824D8]];

  return v3;
}

- (id)IPv6Flags
{
  v2 = [(CWFSCNetworkInterface *)self __IPv6StateConfig];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69824F0]];

  return v3;
}

- (id)IPv6PrefixLengths
{
  v2 = [(CWFSCNetworkInterface *)self __IPv6StateConfig];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6982500]];

  return v3;
}

- (BOOL)isLinkActive
{
  v2 = [(CWFSCNetworkInterface *)self __linkStateConfig];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6982548]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)__networkInterfaceHardwareAddress
{
  v3 = SCNetworkInterfaceCopyAll();
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count < 1)
    {
LABEL_8:
      v10 = 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        if (ValueAtIndex)
        {
          do
          {
            v9 = ValueAtIndex;
            ValueAtIndex = SCNetworkInterfaceGetInterface(ValueAtIndex);
          }

          while (ValueAtIndex);
          if ([(__CFString *)SCNetworkInterfaceGetBSDName(v9) isEqualToString:self->_interfaceName])
          {
            break;
          }
        }

        if (++v7 == v6)
        {
          goto LABEL_8;
        }
      }

      HardwareAddressString = SCNetworkInterfaceGetHardwareAddressString(v9);
      v12 = CWFCorrectEthernetAddressString(HardwareAddressString);
      v10 = [v12 copy];
    }

    CFRelease(v4);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end