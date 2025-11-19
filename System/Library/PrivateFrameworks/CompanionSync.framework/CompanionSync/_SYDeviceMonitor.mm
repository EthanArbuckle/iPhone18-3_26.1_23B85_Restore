@interface _SYDeviceMonitor
+ (id)sharedInstance;
- (_SYDeviceMonitor)init;
- (id)allDevices;
- (id)currentTargetableDevice;
- (id)deviceForNRDevice:(id)a3;
- (id)deviceForPairingID:(id)a3;
- (void)_clearDeviceList;
- (void)_deviceDidBecomeActive:(id)a3;
- (void)_deviceDidBecomeInactive:(id)a3;
- (void)_rebuildDeviceList;
- (void)addNRDevice:(id)a3;
- (void)deviceBecameTargetable:(id)a3;
- (void)removeNRDevice:(id)a3;
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

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v2 selector:sel__deviceDidBecomeActive_ name:*MEMORY[0x1E69B3660] object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__deviceDidBecomeActive_ name:*MEMORY[0x1E69B3678] object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v2 selector:sel__deviceDidBecomeInactive_ name:*MEMORY[0x1E69B3668] object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v2 selector:sel__deviceDidBecomeInactive_ name:*MEMORY[0x1E69B3688] object:0];

    [(_SYDeviceMonitor *)v2 _rebuildDeviceList];
    v12 = [(_SYDeviceMonitor *)v2 currentTargetableDevice];
    v13 = [v12 pairingID];
    currentTargetDeviceUUID = v2->_currentTargetDeviceUUID;
    v2->_currentTargetDeviceUUID = v13;

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

- (void)deviceBecameTargetable:(id)a3
{
  v9 = a3;
  v4 = [v9 pairingID];
  v5 = [v4 isEqual:self->_currentTargetDeviceUUID];

  if ((v5 & 1) == 0)
  {
    v6 = [v9 pairingID];
    currentTargetDeviceUUID = self->_currentTargetDeviceUUID;
    self->_currentTargetDeviceUUID = v6;

    if (v9)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"SYDeviceTargetedNewDeviceNotification" object:v9];
    }
  }
}

- (void)_deviceDidBecomeActive:(id)a3
{
  v4 = [a3 userInfo];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B3658]];

  v5 = [(_SYDeviceMonitor *)self deviceForNRDevice:v8];

  if (!v5)
  {
    [(_SYDeviceMonitor *)self addNRDevice:v8];
  }

  v6 = [(_SYDeviceMonitor *)self deviceForNRDevice:v8];
  if ([v6 isTargetable])
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"SYDeviceTargetabilityChangedNotification" object:v6];
  }
}

- (void)_deviceDidBecomeInactive:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B3658]];

  v5 = [(_SYDeviceMonitor *)self deviceForNRDevice:v7];
  if (v5)
  {
    [(_SYDeviceMonitor *)self removeNRDevice:v7];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"SYDeviceRemovedNotification" object:v5];
  }
}

- (void)addNRDevice:(id)a3
{
  v4 = a3;
  v5 = [[SYDevice alloc] initWithNRDevice:v4];

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

- (void)removeNRDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:*MEMORY[0x1E69B3610]];
  syncQ = self->_syncQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___SYDeviceMonitor_removeNRDevice___block_invoke;
  block[3] = &unk_1E86CA0F8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_barrier_sync(syncQ, block);
}

- (id)deviceForNRDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:*MEMORY[0x1E69B3610]];
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
    v10 = v4;
    v11 = &v12;
    dispatch_sync(syncQ, block);
    v6 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  return v6;
}

- (id)deviceForPairingID:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  v6 = v4;
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