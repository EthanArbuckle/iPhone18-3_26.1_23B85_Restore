@interface IXPromisedInMemoryData
- (IXPromisedInMemoryData)initWithCoder:(id)a3;
- (IXPromisedInMemoryData)initWithName:(id)a3 client:(unint64_t)a4 data:(id)a5;
- (IXPromisedInMemoryData)initWithName:(id)a3 client:(unint64_t)a4 data:(id)a5 location:(id)a6;
- (IXPromisedInMemoryData)initWithSeed:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)resetWithCompletion:(id)a3;
@end

@implementation IXPromisedInMemoryData

- (IXPromisedInMemoryData)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryData;
  return [(IXOwnedDataPromise *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = IXPromisedInMemoryData;
  [(IXDataPromise *)&v3 encodeWithCoder:a3];
}

- (IXPromisedInMemoryData)initWithName:(id)a3 client:(unint64_t)a4 data:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [(IXPromisedInMemoryData *)self initWithName:v9 client:a4 data:v8 location:v10];

  return v11;
}

- (IXPromisedInMemoryData)initWithName:(id)a3 client:(unint64_t)a4 data:(id)a5 location:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v26.receiver = self;
  v26.super_class = IXPromisedInMemoryData;
  v13 = -[IXOwnedDataPromise initWithName:client:diskSpaceNeeded:location:](&v26, sel_initWithName_client_diskSpaceNeeded_location_, v10, a4, [v11 length], v12);
  if (!v13)
  {
    goto LABEL_5;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v14 = +[IXServerConnection sharedConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__IXPromisedInMemoryData_initWithName_client_data_location___block_invoke;
  v21[3] = &unk_1E85C5560;
  v21[4] = &v22;
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v21];

  if (!v15)
  {
    _Block_object_dispose(&v22, 8);
    goto LABEL_7;
  }

  v16 = [(IXDataPromise *)v13 seed];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__IXPromisedInMemoryData_initWithName_client_data_location___block_invoke_6;
  v18[3] = &unk_1E85C64B0;
  v20 = &v22;
  v19 = v13;
  [(IXPromisedInMemoryData *)v15 _remote_createInMemoryDataPromiseWithSeed:v16 data:v11 completion:v18];

  LOBYTE(v16) = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  if (v16)
  {
    v15 = 0;
  }

  else
  {
LABEL_5:
    v15 = v13;
  }

LABEL_7:

  return v15;
}

void __60__IXPromisedInMemoryData_initWithName_client_data_location___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[IXPromisedInMemoryData initWithName:client:data:location:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v5 = *MEMORY[0x1E69E9840];
}

void __60__IXPromisedInMemoryData_initWithName_client_data_location___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IXPromisedInMemoryData initWithName:client:data:location:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed tell daemon to set up in memory data promise: %@", &v8, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 32) _updateInitWithSeed:a2 notifyDaemon:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)resetWithCompletion:(id)a3
{
  v3 = kIXLoggingSubsystem;
  v4 = a3;
  v5 = IXGetLoggingHandle(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IXPromisedInMemoryData resetWithCompletion:v5];
  }

  v7 = _CreateError("[IXPromisedInMemoryData resetWithCompletion:]", 87, @"IXErrorDomain", 4uLL, 0, 0, @"Resetting an in-memory data promise doesn't make sense.", v6, v8);
  v4[2](v4, v7);
}

- (IXPromisedInMemoryData)initWithSeed:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryData;
  return [(IXOwnedDataPromise *)&v4 initWithSeed:a3];
}

- (void)resetWithCompletion:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[IXPromisedInMemoryData resetWithCompletion:]";
  v4 = 2112;
  v5 = 0;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: Resetting an in-memory data promise doesn't make sense. : %@", &v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end