@interface _SYDeviceMonitor
+ (id)sharedInstance;
- (_SYDeviceMonitor)init;
- (id)allDevices;
- (id)currentTargetableDevice;
- (id)deviceForNRDevice:(id)device;
- (id)deviceForPairingID:(id)d;
- (void)_clearDeviceList;
- (void)_deviceDidBecomeActive:(id)active;
- (void)_deviceDidBecomeInactive:(id)inactive;
- (void)_rebuildDeviceList;
- (void)addNRDevice:(id)device;
- (void)deviceBecameTargetable:(id)targetable;
- (void)removeNRDevice:(id)device;
@end

@implementation _SYDeviceMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_SYDeviceMonitor sharedInstance];
  }

  v3 = sharedInstance___singleton;

  return v3;
}

- (id)currentTargetableDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  syncQ = self->_syncQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43___SYDeviceMonitor_currentTargetableDevice__block_invoke;
  v5[3] = &unk_1E86CB108;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (_SYDeviceMonitor)init
{
  v17.receiver = self;
  v17.super_class = _SYDeviceMonitor;
  v2 = [(_SYDeviceMonitor *)&v17 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
    devices = v2->_devices;
    v2->_devices = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("_SYDeviceMonitor RWLock", v5);
    syncQ = v2->_syncQ;
    v2->_syncQ = v6;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__deviceDidBecomeActive_ name:*MEMORY[0x1E69B3660] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__deviceDidBecomeActive_ name:*MEMORY[0x1E69B3678] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__deviceDidBecomeInactive_ name:*MEMORY[0x1E69B3668] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel__deviceDidBecomeInactive_ name:*MEMORY[0x1E69B3688] object:0];

    [(_SYDeviceMonitor *)v2 _rebuildDeviceList];
    currentTargetableDevice = [(_SYDeviceMonitor *)v2 currentTargetableDevice];
    pairingID = [currentTargetableDevice pairingID];
    currentTargetDeviceUUID = v2->_currentTargetDeviceUUID;
    v2->_currentTargetDeviceUUID = pairingID;

    v15 = v2;
  }

  return v2;
}

- (void)_rebuildDeviceList
{
  syncQ = self->_syncQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___SYDeviceMonitor__rebuildDeviceList__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_barrier_sync(syncQ, block);
}

- (void)_clearDeviceList
{
  syncQ = self->_syncQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36___SYDeviceMonitor__clearDeviceList__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_barrier_sync(syncQ, block);
}

- (void)deviceBecameTargetable:(id)targetable
{
  targetableCopy = targetable;
  pairingID = [targetableCopy pairingID];
  v5 = [pairingID isEqual:self->_currentTargetDeviceUUID];

  if ((v5 & 1) == 0)
  {
    pairingID2 = [targetableCopy pairingID];
    currentTargetDeviceUUID = self->_currentTargetDeviceUUID;
    self->_currentTargetDeviceUUID = pairingID2;

    if (targetableCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"SYDeviceTargetedNewDeviceNotification" object:targetableCopy];
    }
  }
}

- (void)_deviceDidBecomeActive:(id)active
{
  userInfo = [active userInfo];
  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69B3658]];

  v5 = [(_SYDeviceMonitor *)self deviceForNRDevice:v8];

  if (!v5)
  {
    [(_SYDeviceMonitor *)self addNRDevice:v8];
  }

  v6 = [(_SYDeviceMonitor *)self deviceForNRDevice:v8];
  if ([v6 isTargetable])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SYDeviceTargetabilityChangedNotification" object:v6];
  }
}

- (void)_deviceDidBecomeInactive:(id)inactive
{
  userInfo = [inactive userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69B3658]];

  v5 = [(_SYDeviceMonitor *)self deviceForNRDevice:v7];
  if (v5)
  {
    [(_SYDeviceMonitor *)self removeNRDevice:v7];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SYDeviceRemovedNotification" object:v5];
  }
}

- (void)addNRDevice:(id)device
{
  deviceCopy = device;
  v5 = [[SYDevice alloc] initWithNRDevice:deviceCopy];

  syncQ = self->_syncQ;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32___SYDeviceMonitor_addNRDevice___block_invoke;
  v8[3] = &unk_1E86C9E90;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_barrier_sync(syncQ, v8);
}

- (void)removeNRDevice:(id)device
{
  deviceCopy = device;
  v5 = [deviceCopy valueForProperty:*MEMORY[0x1E69B3610]];
  syncQ = self->_syncQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___SYDeviceMonitor_removeNRDevice___block_invoke;
  block[3] = &unk_1E86CA0F8;
  block[4] = self;
  v10 = v5;
  v11 = deviceCopy;
  v7 = deviceCopy;
  v8 = v5;
  dispatch_barrier_sync(syncQ, block);
}

- (id)deviceForNRDevice:(id)device
{
  deviceCopy = device;
  v5 = [deviceCopy valueForProperty:*MEMORY[0x1E69B3610]];
  if (v5)
  {
    v6 = [(_SYDeviceMonitor *)self deviceForPairingID:v5];
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__9;
    v16 = __Block_byref_object_dispose__9;
    v17 = 0;
    syncQ = self->_syncQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38___SYDeviceMonitor_deviceForNRDevice___block_invoke;
    block[3] = &unk_1E86CB0E0;
    block[4] = self;
    v10 = deviceCopy;
    v11 = &v12;
    dispatch_sync(syncQ, block);
    v6 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  return v6;
}

- (id)deviceForPairingID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  syncQ = self->_syncQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___SYDeviceMonitor_deviceForPairingID___block_invoke;
  block[3] = &unk_1E86CB0E0;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(syncQ, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)allDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  syncQ = self->_syncQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30___SYDeviceMonitor_allDevices__block_invoke;
  v5[3] = &unk_1E86C9FD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end