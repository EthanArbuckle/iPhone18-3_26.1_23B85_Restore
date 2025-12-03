@interface IDSRealTimeEncryptionProxy
- (IDSRealTimeEncryptionProxy)initWithAccount:(id)account;
- (void)dealloc;
- (void)sendMKMRecoveryRequestToGroup:(id)group;
- (void)setDelegate:(id)delegate queue:(id)queue;
@end

@implementation IDSRealTimeEncryptionProxy

- (IDSRealTimeEncryptionProxy)initWithAccount:(id)account
{
  accountCopy = account;
  if (_IDSRunningInDaemon())
  {
    v5 = +[IDSLogging IDSRealTimeEncryptionProxy];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v5);
    }

    selfCopy = 0;
  }

  else
  {
    v7 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v7 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B44FA4(utilities);
      }
    }

    v14.receiver = self;
    v14.super_class = IDSRealTimeEncryptionProxy;
    v10 = [(IDSRealTimeEncryptionProxy *)&v14 init];
    if (v10)
    {
      v11 = [[_IDSRealTimeEncryptionProxy alloc] initWithAccount:accountCopy];
      internal = v10->_internal;
      v10->_internal = v11;
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
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

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B22708;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  [v8 performBlock:v11];
}

- (void)sendMKMRecoveryRequestToGroup:(id)group
{
  groupCopy = group;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195B227EC;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  [v5 performBlock:v7];
}

@end