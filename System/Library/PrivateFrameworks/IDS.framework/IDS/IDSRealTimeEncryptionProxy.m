@interface IDSRealTimeEncryptionProxy
- (IDSRealTimeEncryptionProxy)initWithAccount:(id)a3;
- (void)dealloc;
- (void)sendMKMRecoveryRequestToGroup:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
@end

@implementation IDSRealTimeEncryptionProxy

- (IDSRealTimeEncryptionProxy)initWithAccount:(id)a3
{
  v4 = a3;
  if (_IDSRunningInDaemon())
  {
    v5 = +[IDSLogging IDSRealTimeEncryptionProxy];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v5);
    }

    v6 = 0;
  }

  else
  {
    v7 = +[IDSInternalQueueController sharedInstance];
    v8 = [v7 assertQueueIsCurrent];

    if (v8)
    {
      v9 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_195B44FA4(v9);
      }
    }

    v14.receiver = self;
    v14.super_class = IDSRealTimeEncryptionProxy;
    v10 = [(IDSRealTimeEncryptionProxy *)&v14 init];
    if (v10)
    {
      v11 = [[_IDSRealTimeEncryptionProxy alloc] initWithAccount:v4];
      internal = v10->_internal;
      v10->_internal = v11;
    }

    self = v10;
    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_195A00844;
  v6[4] = sub_195A03DC8;
  v7 = self->_internal;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195B22600;
  v5[3] = &unk_1E743E648;
  v5[4] = v6;
  [v3 performBlock:v5 waitUntilDone:0];

  _Block_object_dispose(v6, 8);
  v4.receiver = self;
  v4.super_class = IDSRealTimeEncryptionProxy;
  [(IDSRealTimeEncryptionProxy *)&v4 dealloc];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B22708;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)sendMKMRecoveryRequestToGroup:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195B227EC;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

@end