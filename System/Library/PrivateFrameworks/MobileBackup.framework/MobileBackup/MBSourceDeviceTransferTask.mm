@interface MBSourceDeviceTransferTask
- (BOOL)_startWithError:(id *)a3;
- (MBSourceDeviceTransferTask)initWithFileTransferSession:(id)a3;
- (void)_cancel;
- (void)_finishWithError:(id)a3;
- (void)_shortenPrebuddyExpirationIfNeeded;
- (void)cancel;
- (void)manager:(id)a3 didFinishDeviceTransferKeychainTransfer:(id)a4;
- (void)manager:(id)a3 didFinishDeviceTransferWithError:(id)a4;
- (void)manager:(id)a3 didUpdateDeviceTransferProgress:(id)a4;
- (void)start;
@end

@implementation MBSourceDeviceTransferTask

- (MBSourceDeviceTransferTask)initWithFileTransferSession:(id)a3
{
  v4.receiver = self;
  v4.super_class = MBSourceDeviceTransferTask;
  return [(MBDeviceTransferTask *)&v4 initWithFileTransferSession:a3];
}

- (BOOL)_startWithError:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = self;
    _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_DEFAULT, "%@: Starting the device transfer task", buf, 0xCu);
    _MBLog(@"Df", "%@: Starting the device transfer task", v7, v8, v9, v10, v11, v12, self);
  }

  v13 = objc_opt_new();
  v14 = [(MBDeviceTransferTask *)self fileTransferSession];
  [v13 setFileTransferSession:v14];

  v15 = [(MBDeviceTransferTask *)self manager];
  if (!v15)
  {
    [MBSourceDeviceTransferTask _startWithError:];
  }

  v16 = v15;
  v17 = [v15 startDeviceTransferWithTaskType:-[MBSourceDeviceTransferTask taskType](self sessionInfo:"taskType") error:{v13, a3}];

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)start
{
  v2.receiver = self;
  v2.super_class = MBSourceDeviceTransferTask;
  [(MBDeviceTransferTask *)&v2 start];
}

- (void)_cancel
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MBDeviceTransferTask *)self manager];
  v18 = 0;
  v5 = [v4 cancelDeviceTransferWithTaskType:-[MBSourceDeviceTransferTask taskType](self error:{"taskType"), &v18}];
  v6 = v18;

  if ((v5 & 1) == 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(MBSourceDeviceTransferTask *)self taskType];
      *buf = 134218242;
      v20 = v8;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_ERROR, "Failed to cancel device transfer from source. taskType: %ld error:%@", buf, 0x16u);
      v9 = [(MBSourceDeviceTransferTask *)self taskType];
      _MBLog(@"E ", "Failed to cancel device transfer from source. taskType: %ld error:%@", v10, v11, v12, v13, v14, v15, v9);
    }
  }

  v16 = [MBError errorWithCode:202 format:@"Source device transfer canceled"];

  [(MBSourceDeviceTransferTask *)self _finishWithError:v16];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = MBSourceDeviceTransferTask;
  [(MBDeviceTransferTask *)&v2 cancel];
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(v5);

  [(MBDeviceTransferTask *)self setProgressHandler:0];
  v6.receiver = self;
  v6.super_class = MBSourceDeviceTransferTask;
  [(MBDeviceTransferTask *)&v6 _finishWithError:v4];
}

- (void)_shortenPrebuddyExpirationIfNeeded
{
  v2 = +[MBPrebuddyManager sharedManager];
  [v2 shortenPrebuddyExpiration];
}

- (void)manager:(id)a3 didFinishDeviceTransferWithError:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_ERROR, "%@: Failed the source transfer task: %@", buf, 0x16u);
      _MBLog(@"E ", "%@: Failed the source transfer task: %@", v9, v10, v11, v12, v13, v14, self);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = self;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "%@: Finished the source transfer task", buf, 0xCu);
      _MBLog(@"Df", "%@: Finished the source transfer task", v15, v16, v17, v18, v19, v20, self);
    }

    [(MBSourceDeviceTransferTask *)self _shortenPrebuddyExpirationIfNeeded];
  }

  [(MBSourceDeviceTransferTask *)self _finishWithError:v5];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)manager:(id)a3 didFinishDeviceTransferKeychainTransfer:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[MBSourceDeviceTransferTask manager:didFinishDeviceTransferKeychainTransfer:]", "MBSourceDeviceTransferTask.m", 96, "0 && Unexpected call");
}

- (void)manager:(id)a3 didUpdateDeviceTransferProgress:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "Updated progress: %@", buf, 0xCu);
    _MBLog(@"Df", "Updated progress: %@", v8, v9, v10, v11, v12, v13, v5);
  }

  v14 = [(MBDeviceTransferTask *)self progressHandler];

  if (v14)
  {
    v15 = [(MBDeviceTransferTask *)self progressHandler];
    (v15)[2](v15, v5);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end