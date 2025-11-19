@interface IDSContinuity
- (IDSContinuity)initWithDelegate:(id)a3 queue:(id)a4;
- (int64_t)state;
- (void)dealloc;
- (void)startAdvertisingOfType:(int64_t)a3 withData:(id)a4 withOptions:(id)a5;
- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6 withOptions:(id)a7;
- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6 withOptions:(id)a7 boostedScan:(BOOL)a8 duplicates:(BOOL)a9;
- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 withOptions:(id)a6;
- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 withOptions:(id)a6 boostedScan:(BOOL)a7 duplicates:(BOOL)a8;
- (void)startTrackingPeer:(id)a3;
- (void)stopAdvertisingOfType:(int64_t)a3;
- (void)stopScanningForType:(int64_t)a3;
- (void)stopTrackingPeer:(id)a3;
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

- (IDSContinuity)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsNotCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B26824(v10);
    }
  }

  if (_IDSRunningInDaemon())
  {
    v11 = +[IDSLogging continuity];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v11);
    }

    v12 = 0;
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
      v18 = v6;
      v19 = v7;
      [v14 performBlock:v16];
    }

    self = v13;
    v12 = self;
  }

  return v12;
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

- (void)startAdvertisingOfType:(int64_t)a3 withData:(id)a4 withOptions:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A0F2F8;
  v13[3] = &unk_1E743E698;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  [v10 performBlock:v13];
}

- (void)stopAdvertisingOfType:(int64_t)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A0F3A8;
  v6[3] = &unk_1E743E6C0;
  v6[4] = self;
  v6[5] = a3;
  [v5 performBlock:v6];
}

- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6 withOptions:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A0F4DC;
  v18[3] = &unk_1E743E6E8;
  v21 = v13;
  v22 = a3;
  v18[4] = self;
  v19 = v11;
  v20 = v12;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  [v14 performBlock:v18];
}

- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 withOptions:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = +[IDSInternalQueueController sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A0F5DC;
  v14[3] = &unk_1E743E698;
  v14[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = a3;
  v12 = v10;
  v13 = v9;
  [v11 performBlock:v14];
}

- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6 withOptions:(id)a7 boostedScan:(BOOL)a8 duplicates:(BOOL)a9
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = +[IDSInternalQueueController sharedInstance];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195A0F740;
  v21[3] = &unk_1E743E710;
  v24 = v16;
  v25 = a3;
  v21[4] = self;
  v22 = v14;
  v23 = v15;
  v26 = a8;
  v27 = a9;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [v17 performBlock:v21];
}

- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 withOptions:(id)a6 boostedScan:(BOOL)a7 duplicates:(BOOL)a8
{
  v13 = a4;
  v14 = a5;
  v15 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A0F860;
  v18[3] = &unk_1E743E738;
  v18[4] = self;
  v19 = v13;
  v20 = v14;
  v21 = a3;
  v22 = a7;
  v23 = a8;
  v16 = v14;
  v17 = v13;
  [v15 performBlock:v18];
}

- (void)stopScanningForType:(int64_t)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A0F918;
  v6[3] = &unk_1E743E6C0;
  v6[4] = self;
  v6[5] = a3;
  [v5 performBlock:v6];
}

- (void)startTrackingPeer:(id)a3
{
  v3 = +[IDSLogging continuity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B26974(v3);
  }
}

- (void)stopTrackingPeer:(id)a3
{
  v3 = +[IDSLogging continuity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B269F8(v3);
  }
}

@end