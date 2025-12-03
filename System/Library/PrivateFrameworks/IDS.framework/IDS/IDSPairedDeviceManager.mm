@interface IDSPairedDeviceManager
+ (id)sharedInstance;
- (IDSPairedDeviceManager)init;
- (NSSet)allowedTrafficClassifiers;
- (void)constructRAResponseDictionary:(id)dictionary completionHandler:(id)handler;
- (void)dealloc;
- (void)deletePairedDevice:(id)device withCompletionBlock:(id)block queue:(id)queue;
- (void)deliveryStats:(id)stats;
- (void)device:(id)device pairingDeleted:(BOOL)deleted;
- (void)dropAllMessagesWithoutAnyAllowedClassifier;
- (void)getDeliveryStatsWithCompletionBlock:(id)block queue:(id)queue;
- (void)getLocalDeviceInfoWithCompletionBlock:(id)block queue:(id)queue;
- (void)getPairedDeviceInfoWithCompletionBlock:(id)block queue:(id)queue;
- (void)setAllowedTrafficClassifiers:(id)classifiers;
- (void)setPairedDeviceInfo:(id)info;
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
    listener = [v5 listener];
    [listener addHandler:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[IDSDaemonController sharedInstance];
  listener = [v3 listener];
  [listener removeHandler:self];

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

- (void)setAllowedTrafficClassifiers:(id)classifiers
{
  v4 = MEMORY[0x1E695DFD8];
  classifiersCopy = classifiers;
  v6 = [[v4 alloc] initWithSet:classifiersCopy copyItems:1];

  v7 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A563F4;
  v9[3] = &unk_1E743EA30;
  v10 = v6;
  selfCopy = self;
  v8 = v6;
  [v7 performBlock:v9];
}

- (void)dropAllMessagesWithoutAnyAllowedClassifier
{
  v2 = +[IDSInternalQueueController sharedInstance];
  [v2 performBlock:&unk_1F09E6060];
}

- (void)setPairedDeviceInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy count])
  {
    v4 = +[IDSInternalQueueController sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A56640;
    v6[3] = &unk_1E743E878;
    v7 = infoCopy;
    [v4 performBlock:v6];

    warning = v7;
  }

  else
  {
    warning = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_FAULT))
    {
      sub_195B2ADB4();
    }
  }
}

- (void)deletePairedDevice:(id)device withCompletionBlock:(id)block queue:(id)queue
{
  deviceCopy = device;
  blockCopy = block;
  queueCopy = queue;
  v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:deviceCopy];
  if ([deviceCopy length] || !v11)
  {
    if (!queueCopy)
    {
      queueCopy = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
    }

    if (!blockCopy)
    {
      blockCopy = &unk_1F09E6080;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195A568CC;
    v21[3] = &unk_1E7440268;
    queueCopy = queueCopy;
    v22 = queueCopy;
    blockCopy = blockCopy;
    v23 = blockCopy;
    v14 = MEMORY[0x19A8BBEF0](v21);
    xpcDaemonController = [(IDSPairedDeviceManager *)self xpcDaemonController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195A56990;
    v17[3] = &unk_1E7440290;
    v18 = deviceCopy;
    v20 = v14;
    v19 = v11;
    v16 = v14;
    [xpcDaemonController performTask:v17];

    registration = v22;
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_195B2AE28();
    }
  }
}

- (void)getLocalDeviceInfoWithCompletionBlock:(id)block queue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v8 = queueCopy;
  if (blockCopy && queueCopy)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_195A56D28;
    v24[3] = &unk_1E7440268;
    v25 = queueCopy;
    v26 = blockCopy;
    v9 = MEMORY[0x19A8BBEF0](v24);
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Querying local device info from IDSD asynchronously", buf, 2u);
    }

    xpcDaemonController = [(IDSPairedDeviceManager *)self xpcDaemonController];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195A56DEC;
    v21[3] = &unk_1E74402E0;
    v22 = v9;
    v12 = v9;
    [xpcDaemonController performTask:v21];

    registration2 = v25;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B2AE90(registration2, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

- (void)getPairedDeviceInfoWithCompletionBlock:(id)block queue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v8 = queueCopy;
  if (blockCopy && queueCopy)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_195A5724C;
    v24[3] = &unk_1E7440268;
    v25 = queueCopy;
    v26 = blockCopy;
    v9 = MEMORY[0x19A8BBEF0](v24);
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Querying paired device info from IDSD asynchronously", buf, 2u);
    }

    xpcDaemonController = [(IDSPairedDeviceManager *)self xpcDaemonController];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195A57310;
    v21[3] = &unk_1E74402E0;
    v22 = v9;
    v12 = v9;
    [xpcDaemonController performTask:v21];

    registration2 = v25;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195B2AFD8(registration2, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

- (void)getDeliveryStatsWithCompletionBlock:(id)block queue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v8 = queueCopy;
  if (blockCopy && queueCopy)
  {
    v9 = +[IDSInternalQueueController sharedInstance];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A576C4;
    v11[3] = &unk_1E7440308;
    v11[4] = self;
    v13 = blockCopy;
    v12 = v8;
    [v9 performBlock:v11];
  }

  else
  {
    warning = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_FAULT))
    {
      sub_195B2B120(warning);
    }
  }
}

- (void)device:(id)device pairingDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  v21 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (deletedCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v18 = deviceCopy;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Received pairing removed notification from daemon, device: %@, deleted: %@", buf, 0x16u);
  }

  if (self->_deleteCompletion)
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "Invoking pairingDelete completion block", buf, 2u);
    }

    v10 = self->_deleteCompletion;
    queue = [(IDSDelegateInfo *)v10 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A5790C;
    block[3] = &unk_1E743E878;
    v16 = v10;
    v12 = v10;
    dispatch_async(queue, block);

    deleteCompletion = self->_deleteCompletion;
    self->_deleteCompletion = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)deliveryStats:(id)stats
{
  statsCopy = stats;
  deliveryStatsCompletion = self->_deliveryStatsCompletion;
  if (deliveryStatsCompletion)
  {
    v6 = deliveryStatsCompletion;
    queue = [(IDSDelegateInfo *)v6 queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A57A3C;
    v10[3] = &unk_1E743EA30;
    v11 = v6;
    v12 = statsCopy;
    v8 = v6;
    dispatch_async(queue, v10);

    v9 = self->_deliveryStatsCompletion;
    self->_deliveryStatsCompletion = 0;
  }
}

- (void)constructRAResponseDictionary:(id)dictionary completionHandler:(id)handler
{
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  xpcDaemonController = [(IDSPairedDeviceManager *)self xpcDaemonController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A57B6C;
  v11[3] = &unk_1E7440330;
  v12 = dictionaryCopy;
  v13 = handlerCopy;
  v9 = dictionaryCopy;
  v10 = handlerCopy;
  [xpcDaemonController performTask:v11];
}

@end