@interface IDSPairedDeviceManager
+ (id)sharedInstance;
- (IDSPairedDeviceManager)init;
- (NSSet)allowedTrafficClassifiers;
- (void)constructRAResponseDictionary:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)deletePairedDevice:(id)a3 withCompletionBlock:(id)a4 queue:(id)a5;
- (void)deliveryStats:(id)a3;
- (void)device:(id)a3 pairingDeleted:(BOOL)a4;
- (void)dropAllMessagesWithoutAnyAllowedClassifier;
- (void)getDeliveryStatsWithCompletionBlock:(id)a3 queue:(id)a4;
- (void)getLocalDeviceInfoWithCompletionBlock:(id)a3 queue:(id)a4;
- (void)getPairedDeviceInfoWithCompletionBlock:(id)a3 queue:(id)a4;
- (void)setAllowedTrafficClassifiers:(id)a3;
- (void)setPairedDeviceInfo:(id)a3;
@end

@implementation IDSPairedDeviceManager

+ (id)sharedInstance
{
  if (qword_1ED5DE0A8 != -1)
  {
    sub_195B2ADA0();
  }

  v3 = qword_1ED5DE068;

  return v3;
}

- (IDSPairedDeviceManager)init
{
  v8.receiver = self;
  v8.super_class = IDSPairedDeviceManager;
  v2 = [(IDSPairedDeviceManager *)&v8 init];
  if (v2)
  {
    v3 = +[IDSXPCDaemonController weakSharedInstance];
    xpcDaemonController = v2->_xpcDaemonController;
    v2->_xpcDaemonController = v3;

    v5 = +[IDSDaemonController sharedInstance];
    v6 = [v5 listener];
    [v6 addHandler:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[IDSDaemonController sharedInstance];
  v4 = [v3 listener];
  [v4 removeHandler:self];

  v5.receiver = self;
  v5.super_class = IDSPairedDeviceManager;
  [(IDSPairedDeviceManager *)&v5 dealloc];
}

- (NSSet)allowedTrafficClassifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00724;
  v11 = sub_195A03D38;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A56304;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setAllowedTrafficClassifiers:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [[v4 alloc] initWithSet:v5 copyItems:1];

  v7 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A563F4;
  v9[3] = &unk_1E743EA30;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [v7 performBlock:v9];
}

- (void)dropAllMessagesWithoutAnyAllowedClassifier
{
  v2 = +[IDSInternalQueueController sharedInstance];
  [v2 performBlock:&unk_1F09E6060];
}

- (void)setPairedDeviceInfo:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[IDSInternalQueueController sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A56640;
    v6[3] = &unk_1E743E878;
    v7 = v3;
    [v4 performBlock:v6];

    v5 = v7;
  }

  else
  {
    v5 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_195B2ADB4();
    }
  }
}

- (void)deletePairedDevice:(id)a3 withCompletionBlock:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
  if ([v8 length] || !v11)
  {
    if (!v10)
    {
      v10 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
    }

    if (!v9)
    {
      v9 = &unk_1F09E6080;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195A568CC;
    v21[3] = &unk_1E7440268;
    v10 = v10;
    v22 = v10;
    v9 = v9;
    v23 = v9;
    v14 = MEMORY[0x19A8BBEF0](v21);
    v15 = [(IDSPairedDeviceManager *)self xpcDaemonController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195A56990;
    v17[3] = &unk_1E7440290;
    v18 = v8;
    v20 = v14;
    v19 = v11;
    v16 = v14;
    [v15 performTask:v17];

    v12 = v22;
  }

  else
  {
    v12 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2AE28();
    }
  }
}

- (void)getLocalDeviceInfoWithCompletionBlock:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_195A56D28;
    v24[3] = &unk_1E7440268;
    v25 = v7;
    v26 = v6;
    v9 = MEMORY[0x19A8BBEF0](v24);
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Querying local device info from IDSD asynchronously", buf, 2u);
    }

    v11 = [(IDSPairedDeviceManager *)self xpcDaemonController];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195A56DEC;
    v21[3] = &unk_1E74402E0;
    v22 = v9;
    v12 = v9;
    [v11 performTask:v21];

    v13 = v25;
  }

  else
  {
    v13 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B2AE90(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

- (void)getPairedDeviceInfoWithCompletionBlock:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_195A5724C;
    v24[3] = &unk_1E7440268;
    v25 = v7;
    v26 = v6;
    v9 = MEMORY[0x19A8BBEF0](v24);
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Querying paired device info from IDSD asynchronously", buf, 2u);
    }

    v11 = [(IDSPairedDeviceManager *)self xpcDaemonController];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195A57310;
    v21[3] = &unk_1E74402E0;
    v22 = v9;
    v12 = v9;
    [v11 performTask:v21];

    v13 = v25;
  }

  else
  {
    v13 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B2AFD8(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

- (void)getDeliveryStatsWithCompletionBlock:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = +[IDSInternalQueueController sharedInstance];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A576C4;
    v11[3] = &unk_1E7440308;
    v11[4] = self;
    v13 = v6;
    v12 = v8;
    [v9 performBlock:v11];
  }

  else
  {
    v10 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_195B2B120(v10);
    }
  }
}

- (void)device:(id)a3 pairingDeleted:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Received pairing removed notification from daemon, device: %@, deleted: %@", buf, 0x16u);
  }

  if (self->_deleteCompletion)
  {
    v9 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Invoking pairingDelete completion block", buf, 2u);
    }

    v10 = self->_deleteCompletion;
    v11 = [(IDSDelegateInfo *)v10 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A5790C;
    block[3] = &unk_1E743E878;
    v16 = v10;
    v12 = v10;
    dispatch_async(v11, block);

    deleteCompletion = self->_deleteCompletion;
    self->_deleteCompletion = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)deliveryStats:(id)a3
{
  v4 = a3;
  deliveryStatsCompletion = self->_deliveryStatsCompletion;
  if (deliveryStatsCompletion)
  {
    v6 = deliveryStatsCompletion;
    v7 = [(IDSDelegateInfo *)v6 queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A57A3C;
    v10[3] = &unk_1E743EA30;
    v11 = v6;
    v12 = v4;
    v8 = v6;
    dispatch_async(v7, v10);

    v9 = self->_deliveryStatsCompletion;
    self->_deliveryStatsCompletion = 0;
  }
}

- (void)constructRAResponseDictionary:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSPairedDeviceManager *)self xpcDaemonController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A57B6C;
  v11[3] = &unk_1E7440330;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 performTask:v11];
}

@end