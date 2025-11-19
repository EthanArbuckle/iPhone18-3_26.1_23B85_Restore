@interface IDSBatchIDQueryController
- (IDSBatchIDQueryController)initWithService:(id)a3 delegate:(id)a4 queue:(id)a5;
- (void)dealloc;
- (void)invalidate;
- (void)setDestinations:(id)a3;
@end

@implementation IDSBatchIDQueryController

- (IDSBatchIDQueryController)initWithService:(id)a3 delegate:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_IDSRunningInDaemon())
  {
    v11 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v11);
    }

    v12 = 0;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = IDSBatchIDQueryController;
    v13 = [(IDSBatchIDQueryController *)&v21 init];
    if (v13)
    {
      if (qword_1EAEDC0C8 != -1)
      {
        sub_195B2A844();
      }

      v14 = qword_1EAEDC070;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_195A4FEE0;
      v16[3] = &unk_1E743EEE8;
      v17 = v13;
      v18 = v8;
      v19 = v9;
      v20 = v10;
      dispatch_sync(v14, v16);
    }

    self = v13;
    v12 = self;
  }

  return v12;
}

- (void)dealloc
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A4FFD0;
  block[3] = &unk_1E743E878;
  block[4] = self;
  dispatch_sync(qword_1EAEDC070, block);
  v3.receiver = self;
  v3.super_class = IDSBatchIDQueryController;
  [(IDSBatchIDQueryController *)&v3 dealloc];
}

- (void)setDestinations:(id)a3
{
  v4 = a3;
  v5 = qword_1EAEDC070;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A5007C;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)invalidate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A50100;
  block[3] = &unk_1E743E878;
  block[4] = self;
  dispatch_sync(qword_1EAEDC070, block);
}

@end