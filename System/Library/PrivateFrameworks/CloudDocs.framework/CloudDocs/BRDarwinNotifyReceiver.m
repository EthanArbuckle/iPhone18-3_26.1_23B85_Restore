@interface BRDarwinNotifyReceiver
- (id)initForEventName:(id)a3 withQueue:(id)a4 handler:(id)a5;
- (unint64_t)lastState;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BRDarwinNotifyReceiver

- (id)initForEventName:(id)a3 withQueue:(id)a4 handler:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 length];
  if (v11 && v10 && v12)
  {
    v45.receiver = self;
    v45.super_class = BRDarwinNotifyReceiver;
    v13 = [(BRDarwinNotifyReceiver *)&v45 init];
    v14 = v13;
    if (!v13)
    {
      goto LABEL_15;
    }

    v13->_token = -1;
    objc_storeStrong(&v13->_eventName, a3);
    objc_storeStrong(&v14->_queue, a4);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __61__BRDarwinNotifyReceiver_initForEventName_withQueue_handler___block_invoke;
    v41[3] = &unk_1E7A14B68;
    v15 = v14;
    v42 = v15;
    v34 = v9;
    v16 = v9;
    v43 = v16;
    v44 = v11;
    v17 = MEMORY[0x1B26FEA90](v41);
    v18 = [v16 UTF8String];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __61__BRDarwinNotifyReceiver_initForEventName_withQueue_handler___block_invoke_2;
    v38[3] = &unk_1E7A14B90;
    self = v15;
    v39 = self;
    v19 = v17;
    v40 = v19;
    v20 = v38;
    v21 = MEMORY[0x1E69DF068];
    v35 = v10;
    v22 = v10;
    v23 = [v21 sharedManager];
    v24 = [v23 br_currentPersonaID];

    handler = MEMORY[0x1E69E9820];
    *&v47 = 3221225472;
    *(&v47 + 1) = __br_notify_register_dispatch_block_invoke_0;
    v48 = &unk_1E7A14940;
    v50 = v20;
    v51 = v18;
    v49 = v24;
    v25 = v24;
    v26 = notify_register_dispatch(v18, &v14->_token, v22, &handler);

    if (v26)
    {
      v27 = brc_bread_crumbs("[BRDarwinNotifyReceiver initForEventName:withQueue:handler:]", 116);
      v28 = brc_default_log(1, 0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(handler) = 67109378;
        HIDWORD(handler) = v26;
        LOWORD(v47) = 2112;
        *(&v47 + 2) = v27;
        _os_log_impl(&dword_1AE2A9000, v28, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't add observer: error code %d%@", &handler, 0x12u);
      }
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__BRDarwinNotifyReceiver_initForEventName_withQueue_handler___block_invoke_22;
      block[3] = &unk_1E7A14BB8;
      v37 = v19;
      dispatch_async(v22, block);
      v27 = v37;
    }

    v10 = v35;

    v9 = v34;
    if (!v26)
    {
LABEL_15:
      self = v14;
      v31 = self;
      goto LABEL_16;
    }
  }

  else
  {
    v29 = brc_bread_crumbs("[BRDarwinNotifyReceiver initForEventName:withQueue:handler:]", 88);
    v30 = brc_default_log(0, 0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      [BRDarwinNotifySender initForEventName:];
    }
  }

  v31 = 0;
LABEL_16:

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t __61__BRDarwinNotifyReceiver_initForEventName_withQueue_handler___block_invoke(uint64_t a1)
{
  v4 = 0;
  result = brc_notify_get_state(*(*(a1 + 32) + 16), &v4, [*(a1 + 40) UTF8String]);
  if (!result)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    *(*(a1 + 32) + 32) = v4;
    objc_sync_exit(v3);

    return (*(*(a1 + 48) + 16))();
  }

  return result;
}

uint64_t __61__BRDarwinNotifyReceiver_initForEventName_withQueue_handler___block_invoke_2(uint64_t result, int a2)
{
  if (*(*(result + 32) + 16) == a2)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

- (void)dealloc
{
  [(BRDarwinNotifyReceiver *)self invalidate];
  v3.receiver = self;
  v3.super_class = BRDarwinNotifyReceiver;
  [(BRDarwinNotifyReceiver *)&v3 dealloc];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__BRDarwinNotifyReceiver_invalidate__block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __36__BRDarwinNotifyReceiver_invalidate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(*(a1 + 32) + 16) = -1;
  }

  return result;
}

- (unint64_t)lastState
{
  v2 = self;
  objc_sync_enter(v2);
  lastState = v2->_lastState;
  objc_sync_exit(v2);

  return lastState;
}

@end