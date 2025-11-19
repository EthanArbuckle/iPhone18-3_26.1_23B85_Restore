@interface IXPromisedOutOfBandTransfer
- (IXPromisedOutOfBandTransfer)initWithCoder:(id)a3;
- (IXPromisedOutOfBandTransfer)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5;
- (IXPromisedOutOfBandTransfer)initWithSeed:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXPromisedOutOfBandTransfer

- (IXPromisedOutOfBandTransfer)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5
{
  v8 = a3;
  v22.receiver = self;
  v22.super_class = IXPromisedOutOfBandTransfer;
  v9 = [(IXDataPromise *)&v22 initWithName:v8 client:a4 diskSpaceNeeded:a5];
  if (!v9)
  {
    goto LABEL_5;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = +[IXServerConnection sharedConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__IXPromisedOutOfBandTransfer_initWithName_client_diskSpaceNeeded___block_invoke;
  v17[3] = &unk_1E85C5560;
  v17[4] = &v18;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v17];

  if (!v11)
  {
    _Block_object_dispose(&v18, 8);
    goto LABEL_7;
  }

  v12 = [(IXDataPromise *)v9 seed];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__IXPromisedOutOfBandTransfer_initWithName_client_diskSpaceNeeded___block_invoke_1;
  v14[3] = &unk_1E85C66A0;
  v16 = &v18;
  v15 = v9;
  [(IXPromisedOutOfBandTransfer *)v11 _remote_createOutOfBandTransferPromiseWithSeed:v12 completion:v14];

  LOBYTE(v12) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  if (v12)
  {
    v11 = 0;
  }

  else
  {
LABEL_5:
    v11 = v9;
  }

LABEL_7:

  return v11;
}

void __67__IXPromisedOutOfBandTransfer_initWithName_client_diskSpaceNeeded___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[IXPromisedOutOfBandTransfer initWithName:client:diskSpaceNeeded:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v5 = *MEMORY[0x1E69E9840];
}

void __67__IXPromisedOutOfBandTransfer_initWithName_client_diskSpaceNeeded___block_invoke_1(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IXPromisedOutOfBandTransfer initWithName:client:diskSpaceNeeded:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed tell daemon to set up out of band transfer promise: %@", &v8, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 32) _updateInitWithSeed:a2 notifyDaemon:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (IXPromisedOutOfBandTransfer)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedOutOfBandTransfer;
  return [(IXOpaqueDataPromise *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = IXPromisedOutOfBandTransfer;
  [(IXOpaqueDataPromise *)&v3 encodeWithCoder:a3];
}

- (IXPromisedOutOfBandTransfer)initWithSeed:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedOutOfBandTransfer;
  return [(IXDataPromise *)&v4 initWithSeed:a3];
}

@end