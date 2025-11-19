@interface _IDSContinuity
- (_IDSContinuity)initWithDelegate:(id)a3 queue:(id)a4 delegateContext:(id)a5;
- (void)_callDelegateWithBlock:(id)a3;
- (void)_daemonDied:(id)a3;
- (void)_handleReconnect;
- (void)continuityDidDiscoverType:(int64_t)a3 withData:(id)a4 fromPeer:(id)a5;
- (void)continuityDidFailToStartAdvertisingOfType:(int64_t)a3 withError:(id)a4;
- (void)continuityDidFailToStartScanningForType:(int64_t)a3 withError:(id)a4;
- (void)continuityDidLosePeer:(id)a3 forType:(int64_t)a4;
- (void)continuityDidStartAdvertisingOfType:(int64_t)a3;
- (void)continuityDidStartScanningForType:(int64_t)a3;
- (void)continuityDidStartTrackingPeer:(id)a3 forType:(int64_t)a4 error:(id)a5;
- (void)continuityDidStopAdvertisingOfType:(int64_t)a3;
- (void)continuityDidStopAdvertisingOfType:(int64_t)a3 withError:(id)a4;
- (void)continuityDidStopScanningForType:(int64_t)a3;
- (void)continuityDidStopTrackingPeer:(id)a3 forType:(int64_t)a4;
- (void)continuityDidUpdateStateToState:(int64_t)a3;
- (void)dealloc;
- (void)startAdvertisingOfType:(int64_t)a3 withData:(id)a4 withOptions:(id)a5;
- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5;
- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6;
- (void)startTrackingPeer:(id)a3 forType:(int64_t)a4;
- (void)stopAdvertisingOfType:(int64_t)a3;
- (void)stopScanningForType:(int64_t)a3;
- (void)stopTrackingPeer:(id)a3 forType:(int64_t)a4;
@end

@implementation _IDSContinuity

- (_IDSContinuity)initWithDelegate:(id)a3 queue:(id)a4 delegateContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSInternalQueueController sharedInstance];
  v12 = [v11 assertQueueIsCurrent];

  if (v12)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B41A4C();
    }
  }

  if (_IDSRunningInDaemon())
  {
    v14 = +[IDSLogging continuity];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    v15 = 0;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = _IDSContinuity;
    v16 = [(_IDSContinuity *)&v26 init];
    if (v16)
    {
      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      [v17 addObserver:v16 selector:sel__daemonDied_ name:@"__k_IDSDaemonDidConnectNotification" object:0];

      v18 = [MEMORY[0x1E6995700] weakRefWithObject:v10];
      delegateContext = v16->_delegateContext;
      v16->_delegateContext = v18;

      v20 = [MEMORY[0x1E6995700] weakRefWithObject:v8];
      delegate = v16->_delegate;
      v16->_delegate = v20;

      objc_storeStrong(&v16->_queue, a4);
      v16->_state = 0;
      v22 = +[IDSDaemonController sharedInstance];
      v23 = [v22 listener];
      [v23 addHandler:v16];

      v24 = +[IDSDaemonController sharedInstance];
      [v24 continuityClientInstanceCreated];
    }

    self = v16;
    v15 = self;
  }

  return v15;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:0 object:0];

  v4 = +[IDSDaemonController sharedInstance];
  v5 = [v4 listener];
  [v5 removeHandler:self];

  v6.receiver = self;
  v6.super_class = _IDSContinuity;
  [(_IDSContinuity *)&v6 dealloc];
}

- (void)startAdvertisingOfType:(int64_t)a3 withData:(id)a4 withOptions:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[IDSInternalQueueController sharedInstance];
  v10 = [v9 assertQueueIsCurrent];

  if (v10)
  {
    v11 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B41AEC();
    }
  }

  v12 = +[IDSDaemonController sharedInstance];
  [v12 continuityStartAdvertisingOfType:a3 withData:v8 withOptions:v7];
}

- (void)stopAdvertisingOfType:(int64_t)a3
{
  v4 = +[IDSInternalQueueController sharedInstance];
  v5 = [v4 assertQueueIsCurrent];

  if (v5)
  {
    v6 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B41B8C();
    }
  }

  v7 = +[IDSDaemonController sharedInstance];
  [v7 continuityStopAdvertisingOfType:a3];
}

- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = +[IDSInternalQueueController sharedInstance];
  v13 = [v12 assertQueueIsCurrent];

  if (v13)
  {
    v14 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B41C2C();
    }
  }

  v15 = [v9 __imArrayByApplyingBlock:&unk_1F09E7460];

  v16 = +[IDSDaemonController sharedInstance];
  [v16 continuityStartScanningForType:a3 withData:v11 mask:v10 peers:v15];
}

- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[IDSInternalQueueController sharedInstance];
  v10 = [v9 assertQueueIsCurrent];

  if (v10)
  {
    v11 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B41CCC();
    }
  }

  v12 = +[IDSDaemonController sharedInstance];
  [v12 continuityStartScanningForType:a3 withData:v8 mask:v7];
}

- (void)stopScanningForType:(int64_t)a3
{
  v4 = +[IDSInternalQueueController sharedInstance];
  v5 = [v4 assertQueueIsCurrent];

  if (v5)
  {
    v6 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B41EAC();
    }
  }

  v7 = +[IDSDaemonController sharedInstance];
  [v7 continuityStopScanningForType:a3];
}

- (void)startTrackingPeer:(id)a3 forType:(int64_t)a4
{
  v5 = a3;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B41F4C();
    }
  }

  v9 = +[IDSDaemonController sharedInstance];
  v10 = [v5 UUIDString];

  [v9 continuityStartTrackingPeer:v10 forType:a4];
}

- (void)stopTrackingPeer:(id)a3 forType:(int64_t)a4
{
  v5 = a3;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B41FEC();
    }
  }

  v9 = +[IDSDaemonController sharedInstance];
  v10 = [v5 UUIDString];

  [v9 continuityStopTrackingPeer:v10 forType:a4];
}

- (void)_handleReconnect
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B4208C();
    }
  }

  self->_state = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195B15CC4;
  v7[3] = &unk_1E7443378;
  v7[4] = self;
  [(_IDSContinuity *)self _callDelegateWithBlock:v7];
  v6 = +[IDSDaemonController sharedInstance];
  [v6 continuityClientInstanceCreated];
}

- (void)_daemonDied:(id)a3
{
  v4 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195B15DBC;
  v5[3] = &unk_1E743E878;
  v5[4] = self;
  [v4 performBlock:v5];
}

- (void)_callDelegateWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[IDSInternalQueueController sharedInstance];
    v6 = [v5 assertQueueIsCurrent];

    if (v6)
    {
      v7 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_195B4212C();
      }
    }

    v8 = [(CUTWeakReference *)self->_delegate object];
    v9 = v8;
    queue = self->_queue;
    if (queue && v8)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_195B15EE8;
      v11[3] = &unk_1E743F110;
      v13 = v4;
      v12 = v9;
      dispatch_async(queue, v11);
    }
  }
}

- (void)continuityDidUpdateStateToState:(int64_t)a3
{
  if (self->_state != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_state = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195B15F7C;
    v5[3] = &unk_1E7443378;
    v5[4] = self;
    [(_IDSContinuity *)self _callDelegateWithBlock:v5];
  }
}

- (void)continuityDidStartAdvertisingOfType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195B16050;
  v3[3] = &unk_1E74433A0;
  v3[4] = self;
  v3[5] = a3;
  [(_IDSContinuity *)self _callDelegateWithBlock:v3];
}

- (void)continuityDidStopAdvertisingOfType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195B16138;
  v3[3] = &unk_1E74433A0;
  v3[4] = self;
  v3[5] = a3;
  [(_IDSContinuity *)self _callDelegateWithBlock:v3];
}

- (void)continuityDidStopAdvertisingOfType:(int64_t)a3 withError:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B16250;
  v8[3] = &unk_1E74433C8;
  v9 = v6;
  v10 = a3;
  v8[4] = self;
  v7 = v6;
  [(_IDSContinuity *)self _callDelegateWithBlock:v8];
}

- (void)continuityDidFailToStartAdvertisingOfType:(int64_t)a3 withError:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B16368;
  v8[3] = &unk_1E74433C8;
  v9 = v6;
  v10 = a3;
  v8[4] = self;
  v7 = v6;
  [(_IDSContinuity *)self _callDelegateWithBlock:v8];
}

- (void)continuityDidStartScanningForType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195B16470;
  v3[3] = &unk_1E74433A0;
  v3[4] = self;
  v3[5] = a3;
  [(_IDSContinuity *)self _callDelegateWithBlock:v3];
}

- (void)continuityDidStopScanningForType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195B16558;
  v3[3] = &unk_1E74433A0;
  v3[4] = self;
  v3[5] = a3;
  [(_IDSContinuity *)self _callDelegateWithBlock:v3];
}

- (void)continuityDidFailToStartScanningForType:(int64_t)a3 withError:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B16670;
  v8[3] = &unk_1E74433C8;
  v9 = v6;
  v10 = a3;
  v8[4] = self;
  v7 = v6;
  [(_IDSContinuity *)self _callDelegateWithBlock:v8];
}

- (void)continuityDidDiscoverType:(int64_t)a3 withData:(id)a4 fromPeer:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195B167D4;
  v12[3] = &unk_1E74433F0;
  v13 = v9;
  v14 = self;
  v15 = v8;
  v16 = a3;
  v10 = v8;
  v11 = v9;
  [(_IDSContinuity *)self _callDelegateWithBlock:v12];
}

- (void)continuityDidLosePeer:(id)a3 forType:(int64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B1691C;
  v8[3] = &unk_1E74433C8;
  v9 = v6;
  v10 = self;
  v11 = a4;
  v7 = v6;
  [(_IDSContinuity *)self _callDelegateWithBlock:v8];
}

- (void)continuityDidStartTrackingPeer:(id)a3 forType:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195B16A90;
  v12[3] = &unk_1E74433F0;
  v13 = v8;
  v14 = self;
  v15 = v9;
  v16 = a4;
  v10 = v9;
  v11 = v8;
  [(_IDSContinuity *)self _callDelegateWithBlock:v12];
}

- (void)continuityDidStopTrackingPeer:(id)a3 forType:(int64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B16BD8;
  v8[3] = &unk_1E74433C8;
  v9 = v6;
  v10 = self;
  v11 = a4;
  v7 = v6;
  [(_IDSContinuity *)self _callDelegateWithBlock:v8];
}

@end