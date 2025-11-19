@interface IXPromisedTransferToPath
- (BOOL)_doInitWithError:(id *)a3;
- (BOOL)shouldCopy;
- (BOOL)tryDeltaCopy;
- (IXPromisedTransferToPath)initWithCoder:(id)a3;
- (IXPromisedTransferToPath)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5;
- (IXPromisedTransferToPath)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5 location:(id)a6;
- (IXPromisedTransferToPath)initWithName:(id)a3 client:(unint64_t)a4 transferPath:(id)a5 diskSpaceNeeded:(unint64_t)a6;
- (IXPromisedTransferToPath)initWithName:(id)a3 client:(unint64_t)a4 transferPath:(id)a5 diskSpaceNeeded:(unint64_t)a6 location:(id)a7;
- (IXPromisedTransferToPath)initWithName:(id)a3 client:(unint64_t)a4 transferPath:(id)a5 diskSpaceNeeded:(unint64_t)a6 location:(id)a7 error:(id *)a8;
- (IXPromisedTransferToPath)initWithSeed:(id)a3;
- (NSURL)transferPath;
- (void)encodeWithCoder:(id)a3;
- (void)setTransferPath:(id)a3;
@end

@implementation IXPromisedTransferToPath

- (IXPromisedTransferToPath)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedTransferToPath;
  return [(IXOwnedDataPromise *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = IXPromisedTransferToPath;
  [(IXDataPromise *)&v3 encodeWithCoder:a3];
}

- (BOOL)_doInitWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__IXPromisedTransferToPath__doInitWithError___block_invoke;
  v11[3] = &unk_1E85C5560;
  v11[4] = &v12;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];

  if (v6)
  {
    v7 = [(IXDataPromise *)self seed];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__IXPromisedTransferToPath__doInitWithError___block_invoke_3;
    v10[3] = &unk_1E85C6090;
    v10[4] = self;
    v10[5] = &v12;
    v10[6] = &v18;
    [v6 _remote_createTransferToPathDataPromiseWithSeed:v7 completion:v10];
  }

  v8 = *(v19 + 24);
  if (a3 && (v19[3] & 1) == 0)
  {
    *a3 = v13[5];
    v8 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v8 & 1;
}

void __45__IXPromisedTransferToPath__doInitWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXPromisedTransferToPath _doInitWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __45__IXPromisedTransferToPath__doInitWithError___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IXPromisedTransferToPath _doInitWithError:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed tell daemon to set up transfer to path promise: %@", &v9, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    [*(a1 + 32) _updateInitWithSeed:a2 notifyDaemon:0];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (IXPromisedTransferToPath)initWithName:(id)a3 client:(unint64_t)a4 transferPath:(id)a5 diskSpaceNeeded:(unint64_t)a6 location:(id)a7 error:(id *)a8
{
  v14 = a5;
  v20.receiver = self;
  v20.super_class = IXPromisedTransferToPath;
  v15 = [(IXOwnedDataPromise *)&v20 initWithName:a3 client:a4 diskSpaceNeeded:a6 location:a7];
  v16 = v15;
  if (v15 && (-[IXDataPromise seed](v15, "seed"), v17 = objc_claimAutoreleasedReturnValue(), [v17 setTransferPath:v14], v17, !-[IXPromisedTransferToPath _doInitWithError:](v16, "_doInitWithError:", a8)))
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  return v18;
}

- (IXPromisedTransferToPath)initWithName:(id)a3 client:(unint64_t)a4 transferPath:(id)a5 diskSpaceNeeded:(unint64_t)a6
{
  v10 = a5;
  v16.receiver = self;
  v16.super_class = IXPromisedTransferToPath;
  v11 = [(IXOwnedDataPromise *)&v16 initWithName:a3 client:a4 diskSpaceNeeded:a6];
  v12 = v11;
  if (!v11 || (-[IXDataPromise seed](v11, "seed"), v13 = objc_claimAutoreleasedReturnValue(), [v13 setTransferPath:v10], v13, v14 = 0, -[IXPromisedTransferToPath _doInitWithError:](v12, "_doInitWithError:", 0)))
  {
    v14 = v12;
  }

  return v14;
}

- (IXPromisedTransferToPath)initWithName:(id)a3 client:(unint64_t)a4 transferPath:(id)a5 diskSpaceNeeded:(unint64_t)a6 location:(id)a7
{
  v12 = a5;
  v18.receiver = self;
  v18.super_class = IXPromisedTransferToPath;
  v13 = [(IXOwnedDataPromise *)&v18 initWithName:a3 client:a4 diskSpaceNeeded:a6 location:a7];
  v14 = v13;
  if (!v13 || (-[IXDataPromise seed](v13, "seed"), v15 = objc_claimAutoreleasedReturnValue(), [v15 setTransferPath:v12], v15, v16 = 0, -[IXPromisedTransferToPath _doInitWithError:](v14, "_doInitWithError:", 0)))
  {
    v16 = v14;
  }

  return v16;
}

- (IXPromisedTransferToPath)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5 location:(id)a6
{
  v10.receiver = self;
  v10.super_class = IXPromisedTransferToPath;
  v6 = [(IXOwnedDataPromise *)&v10 initWithName:a3 client:a4 diskSpaceNeeded:a5 location:a6];
  v7 = v6;
  if (!v6 || (v8 = 0, [(IXPromisedTransferToPath *)v6 _doInitWithError:0]))
  {
    v8 = v7;
  }

  return v8;
}

- (IXPromisedTransferToPath)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = IXPromisedTransferToPath;
  v5 = [(IXOwnedDataPromise *)&v9 initWithName:a3 client:a4 diskSpaceNeeded:a5];
  v6 = v5;
  if (!v5 || (v7 = 0, [(IXPromisedTransferToPath *)v5 _doInitWithError:0]))
  {
    v7 = v6;
  }

  return v7;
}

- (NSURL)transferPath
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 transferPath];

  return v3;
}

- (void)setTransferPath:(id)a3
{
  v4 = a3;
  v5 = +[IXServerConnection sharedConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  [v6 _remote_IXSPromisedTransferToPath:v7 setTransferPath:v4];

  v8 = [(IXDataPromise *)self seed];
  [v8 setTransferPath:v4];
}

void __44__IXPromisedTransferToPath_setTransferPath___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXPromisedTransferToPath setTransferPath:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Remote object proxy signaled error while setting transfer path: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldCopy
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 shouldCopy];

  return v3;
}

void __42__IXPromisedTransferToPath_setShouldCopy___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXPromisedTransferToPath setShouldCopy:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Remote object proxy signaled error while setting shouldCopy: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)tryDeltaCopy
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 tryDeltaCopy];

  return v3;
}

void __44__IXPromisedTransferToPath_setTryDeltaCopy___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXPromisedTransferToPath setTryDeltaCopy:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Remote object proxy signaled error while setting tryDeltaCopy: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (IXPromisedTransferToPath)initWithSeed:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedTransferToPath;
  return [(IXOwnedDataPromise *)&v4 initWithSeed:a3];
}

- (void)setComplete:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[IXPromisedTransferToPath setComplete:]";
  v4 = 2112;
  v5 = 0;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: transferPath was not set, but must be set before complete=YES can be set : %@", &v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end