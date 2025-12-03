@interface CWFHotspotClientManager
+ (id)sharedInstance;
- (CWFHotspotClientManager)init;
- (void)clientAssociated:(id)associated thisDeviceMACAddress:(id)address;
- (void)clientAssociatedToHostPersonalHotspot:(id)hotspot;
- (void)clientDisassociated:(id)disassociated;
- (void)dealloc;
- (void)didDiscoverDevice:(id)device;
- (void)didFetchWifiInfoForDevice:(id)device;
- (void)didLoseDevice:(id)device;
- (void)hotspotDisabled;
@end

@implementation CWFHotspotClientManager

+ (id)sharedInstance
{
  if (qword_1ED7E3960 != -1)
  {
    dispatch_once(&qword_1ED7E3960, &unk_1F5B89B10);
  }

  v3 = qword_1ED7E3968;

  return v3;
}

- (CWFHotspotClientManager)init
{
  v12.receiver = self;
  v12.super_class = CWFHotspotClientManager;
  v2 = [(CWFHotspotClientManager *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deviceDiscoveryManager = v2->_deviceDiscoveryManager;
    v2->_deviceDiscoveryManager = v3;

    [(CWFDeviceDiscoveryManager *)v2->_deviceDiscoveryManager registerDelegate:v2];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);

    v7 = dispatch_queue_create("com.apple.corewifi.HotspotClientManagerQueue", v6);
    hotspotQueue = v2->_hotspotQueue;
    v2->_hotspotQueue = v7;

    v9 = objc_opt_new();
    activeHotspotClients = v2->_activeHotspotClients;
    v2->_activeHotspotClients = v9;
  }

  return v2;
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CWFGetPHOSLog();
  if (v3)
  {
    v4 = CWFGetPHOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446978;
    v12 = "[CWFHotspotClientManager dealloc]";
    v13 = 2082;
    v14 = "CWFHotspotClientManager.m";
    v15 = 1024;
    v16 = 56;
    v17 = 2080;
    v18 = "[CWFHotspotClientManager dealloc]";
    _os_log_send_and_compose_impl();
  }

  [(CWFDeviceDiscoveryManager *)self->_deviceDiscoveryManager invalidate];
  [(CWFDeviceDiscoveryManager *)self->_deviceDiscoveryManager unregisterDelegate:self];
  [(NSMutableSet *)self->_activeHotspotClients removeAllObjects];
  activeHotspotClients = self->_activeHotspotClients;
  self->_activeHotspotClients = 0;

  deviceDiscoveryManager = self->_deviceDiscoveryManager;
  self->_deviceDiscoveryManager = 0;

  hotspotQueue = self->_hotspotQueue;
  self->_hotspotQueue = 0;

  v10.receiver = self;
  v10.super_class = CWFHotspotClientManager;
  [(CWFHotspotClientManager *)&v10 dealloc];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)clientAssociatedToHostPersonalHotspot:(id)hotspot
{
  hotspotCopy = hotspot;
  objc_initWeak(&location, self);
  hotspotQueue = self->_hotspotQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C55618;
  block[3] = &unk_1E86E7058;
  objc_copyWeak(&v9, &location);
  v8 = hotspotCopy;
  v6 = hotspotCopy;
  dispatch_async(hotspotQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)clientAssociated:(id)associated thisDeviceMACAddress:(id)address
{
  v24 = *MEMORY[0x1E69E9840];
  associatedCopy = associated;
  addressCopy = address;
  if (associatedCopy)
  {
    objc_initWeak(location, self);
    hotspotQueue = self->_hotspotQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C5587C;
    block[3] = &unk_1E86E70A8;
    objc_copyWeak(&v16, location);
    v14 = associatedCopy;
    v15 = addressCopy;
    dispatch_async(hotspotQueue, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = CWFGetPHOSLog();
    if (v9)
    {
      v10 = CWFGetPHOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "[CWFHotspotClientManager clientAssociated:thisDeviceMACAddress:]";
      v18 = 2082;
      v19 = "CWFHotspotClientManager.m";
      v20 = 1024;
      v21 = 80;
      v22 = 2080;
      v23 = "[CWFHotspotClientManager clientAssociated:thisDeviceMACAddress:]";
      _os_log_send_and_compose_impl();
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)clientDisassociated:(id)disassociated
{
  v20 = *MEMORY[0x1E69E9840];
  disassociatedCopy = disassociated;
  if (disassociatedCopy)
  {
    objc_initWeak(location, self);
    hotspotQueue = self->_hotspotQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C55D54;
    block[3] = &unk_1E86E7058;
    objc_copyWeak(&v12, location);
    v11 = disassociatedCopy;
    dispatch_async(hotspotQueue, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = CWFGetPHOSLog();
    if (v6)
    {
      v7 = CWFGetPHOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "[CWFHotspotClientManager clientDisassociated:]";
      v14 = 2082;
      v15 = "CWFHotspotClientManager.m";
      v16 = 1024;
      v17 = 116;
      v18 = 2080;
      v19 = "[CWFHotspotClientManager clientDisassociated:]";
      _os_log_send_and_compose_impl();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)hotspotDisabled
{
  objc_initWeak(&location, self);
  hotspotQueue = self->_hotspotQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0C55FD0;
  v4[3] = &unk_1E86E6190;
  objc_copyWeak(&v5, &location);
  dispatch_async(hotspotQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)didDiscoverDevice:(id)device
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CWFGetPHOSLog();
  if (v3)
  {
    v4 = CWFGetPHOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)didLoseDevice:(id)device
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CWFGetPHOSLog();
  if (v3)
  {
    v4 = CWFGetPHOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)didFetchWifiInfoForDevice:(id)device
{
  v21 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = CWFGetPHOSLog();
  if (v5)
  {
    v6 = CWFGetPHOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136446978;
    *&location[4] = "[CWFHotspotClientManager didFetchWifiInfoForDevice:]";
    v15 = 2082;
    v16 = "CWFHotspotClientManager.m";
    v17 = 1024;
    v18 = 164;
    v19 = 2080;
    v20 = "[CWFHotspotClientManager didFetchWifiInfoForDevice:]";
    _os_log_send_and_compose_impl();
  }

  objc_initWeak(location, self);
  hotspotQueue = self->_hotspotQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C5653C;
  block[3] = &unk_1E86E7058;
  objc_copyWeak(&v13, location);
  v12 = deviceCopy;
  v9 = deviceCopy;
  dispatch_async(hotspotQueue, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(location);
  v10 = *MEMORY[0x1E69E9840];
}

@end