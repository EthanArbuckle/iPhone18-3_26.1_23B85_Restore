@interface _IDSContinuity
- (_IDSContinuity)initWithDelegate:(id)delegate queue:(id)queue delegateContext:(id)context;
- (void)_callDelegateWithBlock:(id)block;
- (void)_daemonDied:(id)died;
- (void)_handleReconnect;
- (void)continuityDidDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer;
- (void)continuityDidFailToStartAdvertisingOfType:(int64_t)type withError:(id)error;
- (void)continuityDidFailToStartScanningForType:(int64_t)type withError:(id)error;
- (void)continuityDidLosePeer:(id)peer forType:(int64_t)type;
- (void)continuityDidStartAdvertisingOfType:(int64_t)type;
- (void)continuityDidStartScanningForType:(int64_t)type;
- (void)continuityDidStartTrackingPeer:(id)peer forType:(int64_t)type error:(id)error;
- (void)continuityDidStopAdvertisingOfType:(int64_t)type;
- (void)continuityDidStopAdvertisingOfType:(int64_t)type withError:(id)error;
- (void)continuityDidStopScanningForType:(int64_t)type;
- (void)continuityDidStopTrackingPeer:(id)peer forType:(int64_t)type;
- (void)continuityDidUpdateStateToState:(int64_t)state;
- (void)dealloc;
- (void)startAdvertisingOfType:(int64_t)type withData:(id)data withOptions:(id)options;
- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask;
- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers;
- (void)startTrackingPeer:(id)peer forType:(int64_t)type;
- (void)stopAdvertisingOfType:(int64_t)type;
- (void)stopScanningForType:(int64_t)type;
- (void)stopTrackingPeer:(id)peer forType:(int64_t)type;
@end

@implementation _IDSContinuity

- (_IDSContinuity)initWithDelegate:(id)delegate queue:(id)queue delegateContext:(id)context
{
  delegateCopy = delegate;
  queueCopy = queue;
  contextCopy = context;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
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

    selfCopy = 0;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = _IDSContinuity;
    v16 = [(_IDSContinuity *)&v26 init];
    if (v16)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v16 selector:sel__daemonDied_ name:@"__k_IDSDaemonDidConnectNotification" object:0];

      v18 = [MEMORY[0x1E6995700] weakRefWithObject:contextCopy];
      delegateContext = v16->_delegateContext;
      v16->_delegateContext = v18;

      v20 = [MEMORY[0x1E6995700] weakRefWithObject:delegateCopy];
      delegate = v16->_delegate;
      v16->_delegate = v20;

      objc_storeStrong(&v16->_queue, queue);
      v16->_state = 0;
      v22 = +[IDSDaemonController sharedInstance];
      listener = [v22 listener];
      [listener addHandler:v16];

      v24 = +[IDSDaemonController sharedInstance];
      [v24 continuityClientInstanceCreated];
    }

    self = v16;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  v4 = +[IDSDaemonController sharedInstance];
  listener = [v4 listener];
  [listener removeHandler:self];

  v6.receiver = self;
  v6.super_class = _IDSContinuity;
  [(_IDSContinuity *)&v6 dealloc];
}

- (void)startAdvertisingOfType:(int64_t)type withData:(id)data withOptions:(id)options
{
  optionsCopy = options;
  dataCopy = data;
  v9 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v9 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B41AEC();
    }
  }

  v12 = +[IDSDaemonController sharedInstance];
  [v12 continuityStartAdvertisingOfType:type withData:dataCopy withOptions:optionsCopy];
}

- (void)stopAdvertisingOfType:(int64_t)type
{
  v4 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v4 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B41B8C();
    }
  }

  v7 = +[IDSDaemonController sharedInstance];
  [v7 continuityStopAdvertisingOfType:type];
}

- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers
{
  peersCopy = peers;
  maskCopy = mask;
  dataCopy = data;
  v12 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v12 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B41C2C();
    }
  }

  v15 = [peersCopy __imArrayByApplyingBlock:&unk_1F09E7460];

  v16 = +[IDSDaemonController sharedInstance];
  [v16 continuityStartScanningForType:type withData:dataCopy mask:maskCopy peers:v15];
}

- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask
{
  maskCopy = mask;
  dataCopy = data;
  v9 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v9 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B41CCC();
    }
  }

  v12 = +[IDSDaemonController sharedInstance];
  [v12 continuityStartScanningForType:type withData:dataCopy mask:maskCopy];
}

- (void)stopScanningForType:(int64_t)type
{
  v4 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v4 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B41EAC();
    }
  }

  v7 = +[IDSDaemonController sharedInstance];
  [v7 continuityStopScanningForType:type];
}

- (void)startTrackingPeer:(id)peer forType:(int64_t)type
{
  peerCopy = peer;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B41F4C();
    }
  }

  v9 = +[IDSDaemonController sharedInstance];
  uUIDString = [peerCopy UUIDString];

  [v9 continuityStartTrackingPeer:uUIDString forType:type];
}

- (void)stopTrackingPeer:(id)peer forType:(int64_t)type
{
  peerCopy = peer;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B41FEC();
    }
  }

  v9 = +[IDSDaemonController sharedInstance];
  uUIDString = [peerCopy UUIDString];

  [v9 continuityStopTrackingPeer:uUIDString forType:type];
}

- (void)_handleReconnect
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
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

- (void)_daemonDied:(id)died
{
  v4 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195B15DBC;
  v5[3] = &unk_1E743E878;
  v5[4] = self;
  [v4 performBlock:v5];
}

- (void)_callDelegateWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v5 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B4212C();
      }
    }

    object = [(CUTWeakReference *)self->_delegate object];
    v9 = object;
    queue = self->_queue;
    if (queue && object)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_195B15EE8;
      v11[3] = &unk_1E743F110;
      v13 = blockCopy;
      v12 = v9;
      dispatch_async(queue, v11);
    }
  }
}

- (void)continuityDidUpdateStateToState:(int64_t)state
{
  if (self->_state != state)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_state = state;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195B15F7C;
    v5[3] = &unk_1E7443378;
    v5[4] = self;
    [(_IDSContinuity *)self _callDelegateWithBlock:v5];
  }
}

- (void)continuityDidStartAdvertisingOfType:(int64_t)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195B16050;
  v3[3] = &unk_1E74433A0;
  v3[4] = self;
  v3[5] = type;
  [(_IDSContinuity *)self _callDelegateWithBlock:v3];
}

- (void)continuityDidStopAdvertisingOfType:(int64_t)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195B16138;
  v3[3] = &unk_1E74433A0;
  v3[4] = self;
  v3[5] = type;
  [(_IDSContinuity *)self _callDelegateWithBlock:v3];
}

- (void)continuityDidStopAdvertisingOfType:(int64_t)type withError:(id)error
{
  errorCopy = error;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B16250;
  v8[3] = &unk_1E74433C8;
  v9 = errorCopy;
  typeCopy = type;
  v8[4] = self;
  v7 = errorCopy;
  [(_IDSContinuity *)self _callDelegateWithBlock:v8];
}

- (void)continuityDidFailToStartAdvertisingOfType:(int64_t)type withError:(id)error
{
  errorCopy = error;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B16368;
  v8[3] = &unk_1E74433C8;
  v9 = errorCopy;
  typeCopy = type;
  v8[4] = self;
  v7 = errorCopy;
  [(_IDSContinuity *)self _callDelegateWithBlock:v8];
}

- (void)continuityDidStartScanningForType:(int64_t)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195B16470;
  v3[3] = &unk_1E74433A0;
  v3[4] = self;
  v3[5] = type;
  [(_IDSContinuity *)self _callDelegateWithBlock:v3];
}

- (void)continuityDidStopScanningForType:(int64_t)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195B16558;
  v3[3] = &unk_1E74433A0;
  v3[4] = self;
  v3[5] = type;
  [(_IDSContinuity *)self _callDelegateWithBlock:v3];
}

- (void)continuityDidFailToStartScanningForType:(int64_t)type withError:(id)error
{
  errorCopy = error;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B16670;
  v8[3] = &unk_1E74433C8;
  v9 = errorCopy;
  typeCopy = type;
  v8[4] = self;
  v7 = errorCopy;
  [(_IDSContinuity *)self _callDelegateWithBlock:v8];
}

- (void)continuityDidDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer
{
  dataCopy = data;
  peerCopy = peer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195B167D4;
  v12[3] = &unk_1E74433F0;
  v13 = peerCopy;
  selfCopy = self;
  v15 = dataCopy;
  typeCopy = type;
  v10 = dataCopy;
  v11 = peerCopy;
  [(_IDSContinuity *)self _callDelegateWithBlock:v12];
}

- (void)continuityDidLosePeer:(id)peer forType:(int64_t)type
{
  peerCopy = peer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B1691C;
  v8[3] = &unk_1E74433C8;
  v9 = peerCopy;
  selfCopy = self;
  typeCopy = type;
  v7 = peerCopy;
  [(_IDSContinuity *)self _callDelegateWithBlock:v8];
}

- (void)continuityDidStartTrackingPeer:(id)peer forType:(int64_t)type error:(id)error
{
  peerCopy = peer;
  errorCopy = error;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195B16A90;
  v12[3] = &unk_1E74433F0;
  v13 = peerCopy;
  selfCopy = self;
  v15 = errorCopy;
  typeCopy = type;
  v10 = errorCopy;
  v11 = peerCopy;
  [(_IDSContinuity *)self _callDelegateWithBlock:v12];
}

- (void)continuityDidStopTrackingPeer:(id)peer forType:(int64_t)type
{
  peerCopy = peer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B16BD8;
  v8[3] = &unk_1E74433C8;
  v9 = peerCopy;
  selfCopy = self;
  typeCopy = type;
  v7 = peerCopy;
  [(_IDSContinuity *)self _callDelegateWithBlock:v8];
}

@end