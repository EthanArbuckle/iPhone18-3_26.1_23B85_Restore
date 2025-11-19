@interface MBDeviceTransferTask
- (BOOL)_handleCompletionWithError:(id *)a3;
- (MBDeviceTransferTask)initWithFileTransferSession:(id)a3;
- (MBManager)manager;
- (OS_dispatch_queue)queue;
- (void)_finishWithError:(id)a3;
- (void)_suspend;
- (void)cancel;
- (void)dealloc;
- (void)manager:(id)a3 didUpdateDeviceTransferConnectionInfo:(id)a4;
- (void)managerDidLoseConnectionToService:(id)a3;
- (void)setQueue:(id)a3;
- (void)start;
@end

@implementation MBDeviceTransferTask

- (OS_dispatch_queue)queue
{
  v2 = self;
  objc_sync_enter(v2);
  queue = v2->_queue;
  if (!queue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);

    v6 = objc_opt_class();
    Name = class_getName(v6);
    v8 = dispatch_queue_create(Name, v5);
    v9 = v2->_queue;
    v2->_queue = v8;

    queue = v2->_queue;
  }

  v10 = queue;
  objc_sync_exit(v2);

  return v10;
}

- (void)setQueue:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  queue = obj->_queue;
  obj->_queue = v4;

  objc_sync_exit(obj);
}

- (MBManager)manager
{
  v3 = [(MBDeviceTransferTask *)self queue];
  if (!v3)
  {
    [MBDeviceTransferTask manager];
  }

  v4 = v3;
  v5 = self;
  objc_sync_enter(v5);
  manager = v5->_manager;
  if (!manager)
  {
    v7 = [[MBManager alloc] initWithDelegate:v5 eventQueue:v4];
    v8 = v5->_manager;
    v5->_manager = v7;

    manager = v5->_manager;
  }

  v9 = manager;
  objc_sync_exit(v5);

  return v9;
}

- (MBDeviceTransferTask)initWithFileTransferSession:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MBDeviceTransferTask initWithFileTransferSession:];
  }

  v5 = v4;
  v17.receiver = self;
  v17.super_class = MBDeviceTransferTask;
  v6 = [(MBDeviceTransferTask *)&v17 init];
  v7 = v6;
  if (v6)
  {
    [(MBDeviceTransferTask *)v6 setFileTransferSession:v5];
  }

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "%@: init, fileTransferSession:%@", buf, 0x16u);
    _MBLog(@"Df", "%@: init, fileTransferSession:%@", v9, v10, v11, v12, v13, v14, v7);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = self;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "%@: dealloc", buf, 0xCu);
    _MBLog(@"Df", "%@: dealloc", v4, v5, v6, v7, v8, v9, self);
  }

  v11.receiver = self;
  v11.super_class = MBDeviceTransferTask;
  [(MBDeviceTransferTask *)&v11 dealloc];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v2 = atomic_load(&self->_started);
  if (v2)
  {
    [MBDeviceTransferTask start];
  }

  v4 = [(MBDeviceTransferTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MBDeviceTransferTask_start__block_invoke;
  block[3] = &unk_1E8684358;
  block[4] = self;
  dispatch_async(v4, block);
}

void __29__MBDeviceTransferTask_start__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_1DEB5D000, v2, OS_LOG_TYPE_DEFAULT, "%@: Starting", buf, 0xCu);
    _MBLog(@"Df", "%@: Starting", v4, v5, v6, v7, v8, v9, *(a1 + 32));
  }

  v10 = [*(a1 + 32) canceled];
  v11 = *(a1 + 32);
  if (v10)
  {
    [v11 _cancel];
  }

  else
  {
    v17 = 0;
    v12 = [v11 _startWithError:&v17];
    v13 = v17;
    v14 = v13;
    if ((v12 & 1) == 0 && !v13)
    {
      __29__MBDeviceTransferTask_start__block_invoke_cold_1();
    }

    v15 = *(a1 + 32);
    if (v12)
    {
      if (atomic_exchange(v15 + 24, 1u))
      {
        __29__MBDeviceTransferTask_start__block_invoke_cold_2();
      }
    }

    else
    {
      [(atomic_uchar *)v15 _finishWithError:v14];
    }

    if ([*(a1 + 32) canceled])
    {
      [*(a1 + 32) _cancel];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v15 = *MEMORY[0x1E69E9840];
  if ((atomic_exchange(&self->_canceled, 1u) & 1) == 0 && [(MBDeviceTransferTask *)self started])
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = self;
      _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "%@: Canceling", buf, 0xCu);
      _MBLog(@"Df", "%@: Canceling", v4, v5, v6, v7, v8, v9, self);
    }

    v10 = [(MBDeviceTransferTask *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__MBDeviceTransferTask_cancel__block_invoke;
    block[3] = &unk_1E8684358;
    block[4] = self;
    dispatch_async(v10, block);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_finishWithError:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(v5);

  if ((atomic_exchange(&self->_finished, 1u) & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = self;
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_ERROR, "%@: Finishing the device transfer task: %@", buf, 0x16u);
        _MBLog(@"E ", "%@: Finishing the device transfer task: %@", v8, v9, v10, v11, v12, v13, self);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = self;
      _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "%@: Finishing the device transfer task", buf, 0xCu);
      _MBLog(@"Df", "%@: Finishing the device transfer task", v14, v15, v16, v17, v18, v19, self);
    }

    [(MBDeviceTransferTask *)self setCompletionError:v4];
    v20 = [(MBDeviceTransferTask *)self completionHandler];
    if (v20)
    {
      [(MBDeviceTransferTask *)self setProgressHandler:0];
      [(MBDeviceTransferTask *)self setConnectionInfoHandler:0];
      [(MBDeviceTransferTask *)self setConnectionStateHandler:0];
      [(MBDeviceTransferTask *)self setCompletionHandler:0];
      (v20)[2](v20, v4);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)_handleCompletionWithError:(id *)a3
{
  if (!a3)
  {
    [MBDeviceTransferTask _handleCompletionWithError:];
  }

  v5 = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(MBDeviceTransferTask *)self canceled])
  {
    v6 = @"Canceled";
    v7 = 202;
    goto LABEL_4;
  }

  if ([(MBDeviceTransferTask *)self finished])
  {
    v8 = [(MBDeviceTransferTask *)self completionError];
    if (v8)
    {
      goto LABEL_8;
    }

    v6 = @"Invalid state (finished)";
    v7 = 1;
LABEL_4:
    v8 = [MBError errorWithCode:v7 format:v6];
    if (!v8)
    {
      return 1;
    }

LABEL_8:
    v9 = v8;
    *a3 = v9;

    return 0;
  }

  return 1;
}

- (void)_suspend
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = self;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "%@: Suspending", buf, 0xCu);
    _MBLog(@"Df", "%@: Suspending", v4, v5, v6, v7, v8, v9, self);
  }

  if (atomic_exchange(&self->_suspended, 1u))
  {
    [MBDeviceTransferTask _suspend];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)managerDidLoseConnectionToService:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(MBDeviceTransferTask *)self started])
  {
    v6 = [MBError errorWithCode:19 format:@"XPC connection interrupted"];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_ERROR, "Lost connection, error:%@", buf, 0xCu);
      _MBLog(@"E ", "Lost connection, error:%@", v8, v9, v10, v11, v12, v13, v6);
    }

    [(MBDeviceTransferTask *)self _finishWithError:v6];
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      *buf = 138543362;
      v24 = v14;
      _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring %{public}@", buf, 0xCu);

      v15 = NSStringFromSelector(a2);
      _MBLog(@"Df", "Ignoring %{public}@", v16, v17, v18, v19, v20, v21, v15);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)manager:(id)a3 didUpdateDeviceTransferConnectionInfo:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (!v6)
  {
    [MBDeviceTransferTask manager:didUpdateDeviceTransferConnectionInfo:];
  }

  v7 = v6;
  if ([v6 connectionState] != 1 && objc_msgSend(v7, "connectionState") != 2)
  {
    [MBDeviceTransferTask manager:didUpdateDeviceTransferConnectionInfo:];
  }

  v8 = [(MBDeviceTransferTask *)self connectionStateHandler];

  if (v8)
  {
    v9 = [(MBDeviceTransferTask *)self connectionStateHandler];
    v9[2](v9, [v7 connectionState]);
  }

  v10 = [(MBDeviceTransferTask *)self connectionInfoHandler];

  if (v10)
  {
    v11 = [(MBDeviceTransferTask *)self connectionInfoHandler];
    (v11)[2](v11, v7);
  }
}

@end