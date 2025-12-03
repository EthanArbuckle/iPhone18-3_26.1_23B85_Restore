@interface MBSourceDeviceTransferTask
- (BOOL)_startWithError:(id *)error;
- (MBSourceDeviceTransferTask)initWithFileTransferSession:(id)session;
- (void)_cancel;
- (void)_finishWithError:(id)error;
- (void)_shortenPrebuddyExpirationIfNeeded;
- (void)cancel;
- (void)manager:(id)manager didFinishDeviceTransferKeychainTransfer:(id)transfer;
- (void)manager:(id)manager didFinishDeviceTransferWithError:(id)error;
- (void)manager:(id)manager didUpdateDeviceTransferProgress:(id)progress;
- (void)start;
@end

@implementation MBSourceDeviceTransferTask

- (MBSourceDeviceTransferTask)initWithFileTransferSession:(id)session
{
  v4.receiver = self;
  v4.super_class = MBSourceDeviceTransferTask;
  return [(MBDeviceTransferTask *)&v4 initWithFileTransferSession:session];
}

- (BOOL)_startWithError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_DEFAULT, "%@: Starting the device transfer task", buf, 0xCu);
    _MBLog(@"Df", "%@: Starting the device transfer task", v7, v8, v9, v10, v11, v12, self);
  }

  v13 = objc_opt_new();
  fileTransferSession = [(MBDeviceTransferTask *)self fileTransferSession];
  [v13 setFileTransferSession:fileTransferSession];

  manager = [(MBDeviceTransferTask *)self manager];
  if (!manager)
  {
    [MBSourceDeviceTransferTask _startWithError:];
  }

  v16 = manager;
  v17 = [manager startDeviceTransferWithTaskType:-[MBSourceDeviceTransferTask taskType](self sessionInfo:"taskType") error:{v13, error}];

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
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  manager = [(MBDeviceTransferTask *)self manager];
  v18 = 0;
  v5 = [manager cancelDeviceTransferWithTaskType:-[MBSourceDeviceTransferTask taskType](self error:{"taskType"), &v18}];
  v6 = v18;

  if ((v5 & 1) == 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      taskType = [(MBSourceDeviceTransferTask *)self taskType];
      *buf = 134218242;
      v20 = taskType;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_ERROR, "Failed to cancel device transfer from source. taskType: %ld error:%@", buf, 0x16u);
      taskType2 = [(MBSourceDeviceTransferTask *)self taskType];
      _MBLog(@"E ", "Failed to cancel device transfer from source. taskType: %ld error:%@", v10, v11, v12, v13, v14, v15, taskType2);
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

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MBDeviceTransferTask *)self setProgressHandler:0];
  v6.receiver = self;
  v6.super_class = MBSourceDeviceTransferTask;
  [(MBDeviceTransferTask *)&v6 _finishWithError:errorCopy];
}

- (void)_shortenPrebuddyExpirationIfNeeded
{
  v2 = +[MBPrebuddyManager sharedManager];
  [v2 shortenPrebuddyExpiration];
}

- (void)manager:(id)manager didFinishDeviceTransferWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = MBGetDefaultLog();
  v8 = v7;
  if (errorCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v24 = 2112;
      v25 = errorCopy;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_ERROR, "%@: Failed the source transfer task: %@", buf, 0x16u);
      _MBLog(@"E ", "%@: Failed the source transfer task: %@", v9, v10, v11, v12, v13, v14, self);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "%@: Finished the source transfer task", buf, 0xCu);
      _MBLog(@"Df", "%@: Finished the source transfer task", v15, v16, v17, v18, v19, v20, self);
    }

    [(MBSourceDeviceTransferTask *)self _shortenPrebuddyExpirationIfNeeded];
  }

  [(MBSourceDeviceTransferTask *)self _finishWithError:errorCopy];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)manager:(id)manager didFinishDeviceTransferKeychainTransfer:(id)transfer
{
  managerCopy = manager;
  transferCopy = transfer;
  __assert_rtn("[MBSourceDeviceTransferTask manager:didFinishDeviceTransferKeychainTransfer:]", "MBSourceDeviceTransferTask.m", 96, "0 && Unexpected call");
}

- (void)manager:(id)manager didUpdateDeviceTransferProgress:(id)progress
{
  v19 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = progressCopy;
    _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "Updated progress: %@", buf, 0xCu);
    _MBLog(@"Df", "Updated progress: %@", v8, v9, v10, v11, v12, v13, progressCopy);
  }

  progressHandler = [(MBDeviceTransferTask *)self progressHandler];

  if (progressHandler)
  {
    progressHandler2 = [(MBDeviceTransferTask *)self progressHandler];
    (progressHandler2)[2](progressHandler2, progressCopy);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end