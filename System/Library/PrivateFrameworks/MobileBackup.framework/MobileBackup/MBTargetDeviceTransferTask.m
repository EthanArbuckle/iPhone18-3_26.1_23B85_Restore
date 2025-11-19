@interface MBTargetDeviceTransferTask
- (BOOL)_startWithError:(id *)a3;
- (MBTargetDeviceTransferTask)initWithFileTransferSession:(id)a3;
- (void)_cancel;
- (void)_finishWithError:(id)a3;
- (void)cancel;
- (void)manager:(id)a3 didFinishDeviceTransferWithError:(id)a4;
- (void)manager:(id)a3 didUpdateDeviceTransferProgress:(id)a4;
- (void)start;
- (void)startDataTransferWithPreflightInfo:(id)a3 completionHandler:(id)a4;
- (void)startKeychainDataImportWithKeychainInfo:(id)a3 completionHandler:(id)a4;
- (void)startKeychainDataTransferWithCompletionHandler:(id)a3;
- (void)startPreflightWithCompletionHandler:(id)a3;
@end

@implementation MBTargetDeviceTransferTask

- (MBTargetDeviceTransferTask)initWithFileTransferSession:(id)a3
{
  v4.receiver = self;
  v4.super_class = MBTargetDeviceTransferTask;
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
    [MBTargetDeviceTransferTask _startWithError:];
  }

  v16 = v15;
  v17 = [v15 startDeviceTransferWithTaskType:-[MBTargetDeviceTransferTask taskType](self sessionInfo:"taskType") error:{v13, a3}];

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)start
{
  v2.receiver = self;
  v2.super_class = MBTargetDeviceTransferTask;
  [(MBDeviceTransferTask *)&v2 start];
}

- (void)_cancel
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MBDeviceTransferTask *)self manager];
  if (!v4)
  {
    [MBTargetDeviceTransferTask _cancel];
  }

  v5 = v4;
  v19 = 0;
  v6 = [v4 cancelDeviceTransferWithTaskType:-[MBTargetDeviceTransferTask taskType](self error:{"taskType"), &v19}];
  v7 = v19;
  if ((v6 & 1) == 0)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(MBTargetDeviceTransferTask *)self taskType];
      *buf = 134218242;
      v21 = v9;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_ERROR, "Failed to cancel device transfer from target. taskType: %ld error:%@", buf, 0x16u);
      v10 = [(MBTargetDeviceTransferTask *)self taskType];
      _MBLog(@"E ", "Failed to cancel device transfer from target. taskType: %ld error:%@", v11, v12, v13, v14, v15, v16, v10);
    }
  }

  v17 = [MBError errorWithCode:202 format:@"Target device transfer canceled"];

  [(MBTargetDeviceTransferTask *)self _finishWithError:v17];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = MBTargetDeviceTransferTask;
  [(MBDeviceTransferTask *)&v2 cancel];
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(v5);

  [(MBDeviceTransferTask *)self setProgressHandler:0];
  v6.receiver = self;
  v6.super_class = MBTargetDeviceTransferTask;
  [(MBDeviceTransferTask *)&v6 _finishWithError:v4];
}

- (void)startPreflightWithCompletionHandler:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 0;
  atomic_compare_exchange_strong(&self->_startedPreflight, &v5, 1u);
  if (v5)
  {
    [MBTargetDeviceTransferTask startPreflightWithCompletionHandler:];
  }

  v6 = v4;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "%@: Starting the preflight", &buf, 0xCu);
    _MBLog(@"Df", "%@: Starting the preflight", v8, v9, v10, v11, v12, v13, self);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__1;
  v28[4] = __Block_byref_object_dispose__1;
  v29 = 0;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v15 = [(MBDeviceTransferTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke;
  block[3] = &unk_1E86848B0;
  block[4] = self;
  v26 = v28;
  v16 = v14;
  v25 = v16;
  p_buf = &buf;
  dispatch_async(v15, block);

  v17 = [(MBDeviceTransferTask *)self queue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_3;
  v20[3] = &unk_1E86848D8;
  v22 = &buf;
  v23 = v28;
  v20[4] = self;
  v21 = v6;
  v18 = v6;
  dispatch_group_notify(v16, v17, v20);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&buf, 8);

  v19 = *MEMORY[0x1E69E9840];
}

void __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [v2 _handleCompletionWithError:&v11];
  v4 = v11;
  v5 = v11;
  if (v3)
  {
    if (([*(a1 + 32) started] & 1) == 0)
    {
      __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) manager];
    if (!v6)
    {
      __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_cold_2();
    }

    v7 = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E8684888;
    v10 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v9 = *(a1 + 40);
    [v7 startPreflightWithCompletionHandler:v8];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
    dispatch_group_leave(*(a1 + 40));
  }
}

void __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_3(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[7] + 8) + 40);
  if (*(*(a1[6] + 8) + 40))
  {
    if (!v2)
    {
      v3 = MBGetDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = a1[4];
        v5 = *(*(a1[6] + 8) + 40);
        *buf = 138412546;
        v27 = v4;
        v28 = 2112;
        v29 = v5;
        _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "%@: Finished the preflight: %@", buf, 0x16u);
        v6 = a1[4];
        v24 = *(*(a1[6] + 8) + 40);
        _MBLog(@"Df", "%@: Finished the preflight: %@", v7, v8, v9, v10, v11, v12, v6);
      }

      goto LABEL_8;
    }
  }

  else if (!v2)
  {
    __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_3_cold_1();
  }

  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v13 = a1[4];
    v14 = *(*(a1[7] + 8) + 40);
    *buf = 138412546;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_ERROR, "%@: Failed the preflight: %@", buf, 0x16u);
    v15 = a1[4];
    v25 = *(*(a1[7] + 8) + 40);
    _MBLog(@"E ", "%@: Failed the preflight: %@", v16, v17, v18, v19, v20, v21, v15);
  }

LABEL_8:

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startKeychainDataTransferWithCompletionHandler:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 0;
  atomic_compare_exchange_strong(&self->_startedKeychainDataTransfer, &v5, 1u);
  if (v5)
  {
    [MBTargetDeviceTransferTask startKeychainDataTransferWithCompletionHandler:];
  }

  v6 = v4;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "%@: Starting the keychain data transfer", &buf, 0xCu);
    _MBLog(@"Df", "%@: Starting the keychain data transfer", v8, v9, v10, v11, v12, v13, self);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__1;
  v28[4] = __Block_byref_object_dispose__1;
  v29 = 0;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v15 = [(MBDeviceTransferTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke;
  block[3] = &unk_1E86848B0;
  block[4] = self;
  v26 = v28;
  v16 = v14;
  v25 = v16;
  p_buf = &buf;
  dispatch_async(v15, block);

  v17 = [(MBDeviceTransferTask *)self queue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_3;
  v20[3] = &unk_1E86848D8;
  v22 = &buf;
  v23 = v28;
  v20[4] = self;
  v21 = v6;
  v18 = v6;
  dispatch_group_notify(v16, v17, v20);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&buf, 8);

  v19 = *MEMORY[0x1E69E9840];
}

void __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [v2 _handleCompletionWithError:&v11];
  v4 = v11;
  v5 = v11;
  if (v3)
  {
    if (([*(a1 + 32) started] & 1) == 0)
    {
      __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) manager];
    if (!v6)
    {
      __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_cold_2();
    }

    v7 = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E8684900;
    v10 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v9 = *(a1 + 40);
    [v7 startKeychainDataTransferWithCompletionHandler:v8];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
    dispatch_group_leave(*(a1 + 40));
  }
}

void __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_3(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[7] + 8) + 40);
  if (*(*(a1[6] + 8) + 40))
  {
    if (!v2)
    {
      v3 = MBGetDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = a1[4];
        v5 = *(*(a1[6] + 8) + 40);
        *buf = 138412546;
        v27 = v4;
        v28 = 2112;
        v29 = v5;
        _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "%@: Finished the keychain data transfer: %@", buf, 0x16u);
        v6 = a1[4];
        v24 = *(*(a1[6] + 8) + 40);
        _MBLog(@"Df", "%@: Finished the keychain data transfer: %@", v7, v8, v9, v10, v11, v12, v6);
      }

      goto LABEL_8;
    }
  }

  else if (!v2)
  {
    __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_3_cold_1();
  }

  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v13 = a1[4];
    v14 = *(*(a1[7] + 8) + 40);
    *buf = 138412546;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_ERROR, "%@: Failed the keychain data transfer: %@", buf, 0x16u);
    v15 = a1[4];
    v25 = *(*(a1[7] + 8) + 40);
    _MBLog(@"E ", "%@: Failed the keychain data transfer: %@", v16, v17, v18, v19, v20, v21, v15);
  }

LABEL_8:

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startKeychainDataImportWithKeychainInfo:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [MBTargetDeviceTransferTask startKeychainDataImportWithKeychainInfo:completionHandler:];
  }

  v8 = 0;
  atomic_compare_exchange_strong(&self->_startedKeychainDataImport, &v8, 1u);
  if (v8)
  {
    [MBTargetDeviceTransferTask startKeychainDataImportWithKeychainInfo:completionHandler:];
  }

  v9 = v7;
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_DEFAULT, "%@: Starting the keychain data import", &buf, 0xCu);
    _MBLog(@"Df", "%@: Starting the keychain data import", v11, v12, v13, v14, v15, v16, self);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = [(MBDeviceTransferTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke;
  block[3] = &unk_1E8684928;
  block[4] = self;
  p_buf = &buf;
  v19 = v17;
  v28 = v19;
  v20 = v6;
  v29 = v20;
  dispatch_async(v18, block);

  v21 = [(MBDeviceTransferTask *)self queue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_3;
  v24[3] = &unk_1E8684950;
  v25 = v9;
  v26 = &buf;
  v24[4] = self;
  v22 = v9;
  dispatch_group_notify(v19, v21, v24);

  _Block_object_dispose(&buf, 8);
  v23 = *MEMORY[0x1E69E9840];
}

void __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 _handleCompletionWithError:&v12];
  v4 = v12;
  v5 = v12;
  if (v3)
  {
    if (([*(a1 + 32) started] & 1) == 0)
    {
      __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) manager];
    if (!v6)
    {
      __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_cold_2();
    }

    v7 = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_2;
    v9[3] = &unk_1E8684690;
    v8 = *(a1 + 48);
    v11 = *(a1 + 56);
    v10 = *(a1 + 40);
    [v7 startKeychainDataImportWithKeychainInfo:v8 completionHandler:v9];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
    dispatch_group_leave(*(a1 + 40));
  }
}

void __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_3(uint64_t *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[6] + 8) + 40);
  v3 = MBGetDefaultLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = *(*(a1[6] + 8) + 40);
      *buf = 138412546;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_ERROR, "%@: Failed the keychain data import: %@", buf, 0x16u);
      v7 = a1[4];
      v23 = *(*(a1[6] + 8) + 40);
      _MBLog(@"E ", "%@: Failed the keychain data import: %@", v8, v9, v10, v11, v12, v13, v7);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a1[4];
    *buf = 138412290;
    v25 = v14;
    _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_DEFAULT, "%@: Finished the keychain data import", buf, 0xCu);
    _MBLog(@"Df", "%@: Finished the keychain data import", v15, v16, v17, v18, v19, v20, a1[4]);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, *(*(a1[6] + 8) + 40));
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startDataTransferWithPreflightInfo:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [MBTargetDeviceTransferTask startDataTransferWithPreflightInfo:completionHandler:];
  }

  v8 = 0;
  atomic_compare_exchange_strong(&self->_startedDataTransfer, &v8, 1u);
  if (v8)
  {
    [MBTargetDeviceTransferTask startDataTransferWithPreflightInfo:completionHandler:];
  }

  v9 = v7;
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_DEFAULT, "%@: Starting the data transfer", &buf, 0xCu);
    _MBLog(@"Df", "%@: Starting the data transfer", v11, v12, v13, v14, v15, v16, self);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = [(MBDeviceTransferTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke;
  block[3] = &unk_1E8684928;
  block[4] = self;
  p_buf = &buf;
  v19 = v17;
  v28 = v19;
  v20 = v6;
  v29 = v20;
  dispatch_async(v18, block);

  v21 = [(MBDeviceTransferTask *)self queue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_3;
  v24[3] = &unk_1E8684950;
  v25 = v9;
  v26 = &buf;
  v24[4] = self;
  v22 = v9;
  dispatch_group_notify(v19, v21, v24);

  _Block_object_dispose(&buf, 8);
  v23 = *MEMORY[0x1E69E9840];
}

void __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 _handleCompletionWithError:&v12];
  v4 = v12;
  v5 = v12;
  if (v3)
  {
    if (([*(a1 + 32) started] & 1) == 0)
    {
      __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) manager];
    if (!v6)
    {
      __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_cold_2();
    }

    v7 = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_2;
    v9[3] = &unk_1E8684690;
    v8 = *(a1 + 48);
    v11 = *(a1 + 56);
    v10 = *(a1 + 40);
    [v7 startDataTransferWithPreflightInfo:v8 completionHandler:v9];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
    dispatch_group_leave(*(a1 + 40));
  }
}

void __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_3(uint64_t *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[6] + 8) + 40);
  v3 = MBGetDefaultLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = *(*(a1[6] + 8) + 40);
      *buf = 138412546;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_ERROR, "%@: Failed the data transfer: %@", buf, 0x16u);
      v7 = a1[4];
      v23 = *(*(a1[6] + 8) + 40);
      _MBLog(@"E ", "%@: Failed the data transfer: %@", v8, v9, v10, v11, v12, v13, v7);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a1[4];
    *buf = 138412290;
    v25 = v14;
    _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_DEFAULT, "%@: Finished the data transfer", buf, 0xCu);
    _MBLog(@"Df", "%@: Finished the data transfer", v15, v16, v17, v18, v19, v20, a1[4]);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, *(*(a1[6] + 8) + 40));
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)manager:(id)a3 didFinishDeviceTransferWithError:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (![(MBDeviceTransferTask *)self finished])
  {
    v6 = MBGetDefaultLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = self;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_ERROR, "%@: Failed the target transfer task: %@", buf, 0x16u);
        _MBLog(@"E ", "%@: Failed the target transfer task: %@", v8, v9, v10, v11, v12, v13, self);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = self;
      _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "%@: Finished the target transfer task", buf, 0xCu);
      _MBLog(@"Df", "%@: Finished the target transfer task", v14, v15, v16, v17, v18, v19, self);
    }

    [(MBTargetDeviceTransferTask *)self _finishWithError:v5];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)manager:(id)a3 didUpdateDeviceTransferProgress:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (![(MBDeviceTransferTask *)self finished])
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_DEFAULT, "Updated progress: %@", buf, 0xCu);
      _MBLog(@"Df", "Updated progress: %@", v7, v8, v9, v10, v11, v12, v5);
    }

    v13 = [(MBDeviceTransferTask *)self progressHandler];

    if (v13)
    {
      v14 = [(MBDeviceTransferTask *)self progressHandler];
      (v14)[2](v14, v5);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end