@interface IDSContinuity
- (IDSContinuity)initWithDelegate:(id)delegate queue:(id)queue;
- (int64_t)state;
- (void)dealloc;
- (void)startAdvertisingOfType:(int64_t)type withData:(id)data withOptions:(id)options;
- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers withOptions:(id)options;
- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers withOptions:(id)options boostedScan:(BOOL)scan duplicates:(BOOL)duplicates;
- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask withOptions:(id)options;
- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask withOptions:(id)options boostedScan:(BOOL)scan duplicates:(BOOL)duplicates;
- (void)startTrackingPeer:(id)peer;
- (void)stopAdvertisingOfType:(int64_t)type;
- (void)stopScanningForType:(int64_t)type;
- (void)stopTrackingPeer:(id)peer;
@end

@implementation IDSContinuity

- (int64_t)state
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A0605C;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (IDSContinuity)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsNotCurrent = [v8 assertQueueIsNotCurrent];

  if (assertQueueIsNotCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B26824(utilities);
    }
  }

  if (_IDSRunningInDaemon())
  {
    v11 = +[IDSLogging continuity];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v11);
    }

    selfCopy = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = IDSContinuity;
    v13 = [(IDSContinuity *)&v20 init];
    if (v13)
    {
      v14 = +[IDSInternalQueueController sharedInstance];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_195A0F064;
      v16[3] = &unk_1E743E620;
      v17 = v13;
      v18 = delegateCopy;
      v19 = queueCopy;
      [v14 performBlock:v16];
    }

    self = v13;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_195A00674;
  v6[4] = sub_195A03CE0;
  v7 = self->_internal;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A0F1E4;
  v5[3] = &unk_1E743E648;
  v5[4] = v6;
  [v3 performBlock:v5 waitUntilDone:0];

  _Block_object_dispose(v6, 8);
  v4.receiver = self;
  v4.super_class = IDSContinuity;
  [(IDSContinuity *)&v4 dealloc];
}

- (void)startAdvertisingOfType:(int64_t)type withData:(id)data withOptions:(id)options
{
  dataCopy = data;
  optionsCopy = options;
  v10 = +[IDSInternalQueueController sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A0F2F8;
  v13[3] = &unk_1E743E698;
  v13[4] = self;
  v14 = dataCopy;
  v15 = optionsCopy;
  typeCopy = type;
  v11 = optionsCopy;
  v12 = dataCopy;
  [v10 performBlock:v13];
}

- (void)stopAdvertisingOfType:(int64_t)type
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A0F3A8;
  v6[3] = &unk_1E743E6C0;
  v6[4] = self;
  v6[5] = type;
  [v5 performBlock:v6];
}

- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers withOptions:(id)options
{
  dataCopy = data;
  maskCopy = mask;
  peersCopy = peers;
  v14 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A0F4DC;
  v18[3] = &unk_1E743E6E8;
  v21 = peersCopy;
  typeCopy = type;
  v18[4] = self;
  v19 = dataCopy;
  v20 = maskCopy;
  v15 = peersCopy;
  v16 = maskCopy;
  v17 = dataCopy;
  [v14 performBlock:v18];
}

- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask withOptions:(id)options
{
  dataCopy = data;
  maskCopy = mask;
  v11 = +[IDSInternalQueueController sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A0F5DC;
  v14[3] = &unk_1E743E698;
  v14[4] = self;
  v15 = dataCopy;
  v16 = maskCopy;
  typeCopy = type;
  v12 = maskCopy;
  v13 = dataCopy;
  [v11 performBlock:v14];
}

- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers withOptions:(id)options boostedScan:(BOOL)scan duplicates:(BOOL)duplicates
{
  dataCopy = data;
  maskCopy = mask;
  peersCopy = peers;
  v17 = +[IDSInternalQueueController sharedInstance];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195A0F740;
  v21[3] = &unk_1E743E710;
  v24 = peersCopy;
  typeCopy = type;
  v21[4] = self;
  v22 = dataCopy;
  v23 = maskCopy;
  scanCopy = scan;
  duplicatesCopy = duplicates;
  v18 = peersCopy;
  v19 = maskCopy;
  v20 = dataCopy;
  [v17 performBlock:v21];
}

- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask withOptions:(id)options boostedScan:(BOOL)scan duplicates:(BOOL)duplicates
{
  dataCopy = data;
  maskCopy = mask;
  v15 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A0F860;
  v18[3] = &unk_1E743E738;
  v18[4] = self;
  v19 = dataCopy;
  v20 = maskCopy;
  typeCopy = type;
  scanCopy = scan;
  duplicatesCopy = duplicates;
  v16 = maskCopy;
  v17 = dataCopy;
  [v15 performBlock:v18];
}

- (void)stopScanningForType:(int64_t)type
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A0F918;
  v6[3] = &unk_1E743E6C0;
  v6[4] = self;
  v6[5] = type;
  [v5 performBlock:v6];
}

- (void)startTrackingPeer:(id)peer
{
  v3 = +[IDSLogging continuity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B26974(v3);
  }
}

- (void)stopTrackingPeer:(id)peer
{
  v3 = +[IDSLogging continuity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B269F8(v3);
  }
}

@end