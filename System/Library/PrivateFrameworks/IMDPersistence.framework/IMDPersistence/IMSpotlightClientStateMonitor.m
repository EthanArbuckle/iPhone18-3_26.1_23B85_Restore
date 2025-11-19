@interface IMSpotlightClientStateMonitor
- (IMSpotlightClientState)clientState;
- (IMSpotlightClientStateMonitor)initWithChangeHandler:(id)a3;
- (void)_updateClientState;
- (void)cancel;
- (void)dealloc;
@end

@implementation IMSpotlightClientStateMonitor

- (IMSpotlightClientStateMonitor)initWithChangeHandler:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = IMSpotlightClientStateMonitor;
  v5 = [(IMSpotlightClientStateMonitor *)&v24 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.imdpersistence.IMSpotlightClientStateMonitor", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = _Block_copy(v4);
    changeHandler = v5->_changeHandler;
    v5->_changeHandler = v11;

    objc_initWeak(&location, v5);
    v13 = v5->_queue;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = sub_1B7B91C1C;
    v21 = &unk_1E7CBB650;
    objc_copyWeak(&v22, &location);
    v5->_clientStateToken = IMDispatchForNotify();
    v14 = v5->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B91C5C;
    block[3] = &unk_1E7CB6AE0;
    v17 = v5;
    dispatch_async(v14, block);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  notify_cancel(self->_clientStateToken);
  v3.receiver = self;
  v3.super_class = IMSpotlightClientStateMonitor;
  [(IMSpotlightClientStateMonitor *)&v3 dealloc];
}

- (void)_updateClientState
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1B7AE1A44;
  v22 = sub_1B7AE2538;
  v23 = 0;
  v4 = objc_msgSend_synchronousSpotlightQueryProvider(IMDPersistenceService, a2, v2);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7B91E5C;
  v17[3] = &unk_1E7CBB678;
  v17[4] = &v18;
  objc_msgSend_fetchSpotlightClientStateWithCompletion_(v4, v5, v17);

  v8 = objc_msgSend_lock(self, v6, v7);
  objc_msgSend_lock(v8, v9, v10);

  objc_storeStrong(&self->_clientState, v19[5]);
  if (self->_changeHandler)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B91E6C;
    block[3] = &unk_1E7CBB6A0;
    block[4] = self;
    block[5] = &v18;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v13 = objc_msgSend_lock(self, v11, v12);
  objc_msgSend_unlock(v13, v14, v15);

  _Block_object_dispose(&v18, 8);
}

- (IMSpotlightClientState)clientState
{
  v4 = objc_msgSend_lock(self, a2, v2);
  objc_msgSend_lock(v4, v5, v6);

  v9 = objc_msgSend_copy(self->_clientState, v7, v8);
  v12 = objc_msgSend_lock(self, v10, v11);
  objc_msgSend_unlock(v12, v13, v14);

  return v9;
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B91F68;
  block[3] = &unk_1E7CB6AE0;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end