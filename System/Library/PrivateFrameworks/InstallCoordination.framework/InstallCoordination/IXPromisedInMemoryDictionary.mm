@interface IXPromisedInMemoryDictionary
- (IXPromisedInMemoryDictionary)initWithCoder:(id)a3;
- (IXPromisedInMemoryDictionary)initWithName:(id)a3 client:(unint64_t)a4 dictionary:(id)a5;
- (IXPromisedInMemoryDictionary)initWithName:(id)a3 client:(unint64_t)a4 dictionary:(id)a5 location:(id)a6;
- (IXPromisedInMemoryDictionary)initWithSeed:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)resetWithCompletion:(id)a3;
@end

@implementation IXPromisedInMemoryDictionary

- (IXPromisedInMemoryDictionary)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryDictionary;
  return [(IXOwnedDataPromise *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = IXPromisedInMemoryDictionary;
  [(IXDataPromise *)&v3 encodeWithCoder:a3];
}

- (IXPromisedInMemoryDictionary)initWithName:(id)a3 client:(unint64_t)a4 dictionary:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [(IXPromisedInMemoryDictionary *)self initWithName:v9 client:a4 dictionary:v8 location:v10];

  return v11;
}

- (IXPromisedInMemoryDictionary)initWithName:(id)a3 client:(unint64_t)a4 dictionary:(id)a5 location:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v27 = 0;
  v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:200 options:0 error:&v27];
  v14 = v27;
  if (v13)
  {
    v26.receiver = self;
    v26.super_class = IXPromisedInMemoryDictionary;
    self = -[IXOwnedDataPromise initWithName:client:diskSpaceNeeded:location:](&v26, sel_initWithName_client_diskSpaceNeeded_location_, v10, a4, [v13 length], v12);
    if (!self)
    {
      goto LABEL_9;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v29 = 0;
    v15 = +[IXServerConnection sharedConnection];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72__IXPromisedInMemoryDictionary_initWithName_client_dictionary_location___block_invoke;
    v25[3] = &unk_1E85C5560;
    v25[4] = buf;
    v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v25];

    if (!v16)
    {
      _Block_object_dispose(buf, 8);
      goto LABEL_11;
    }

    v17 = [(IXDataPromise *)self seed];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__IXPromisedInMemoryDictionary_initWithName_client_dictionary_location___block_invoke_7;
    v22[3] = &unk_1E85C6A00;
    v24 = buf;
    v18 = self;
    v23 = v18;
    [(IXPromisedInMemoryDictionary *)v16 _remote_createInMemoryDictionaryPromiseWithSeed:v17 dictionary:v11 completion:v22];

    LOBYTE(v17) = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (v17)
    {
      v16 = 0;
      self = v18;
    }

    else
    {
LABEL_9:
      self = self;
      v16 = self;
    }
  }

  else
  {
    v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[IXPromisedInMemoryDictionary initWithName:client:dictionary:location:]";
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&dword_1DA47A000, v19, OS_LOG_TYPE_DEFAULT, "%s: Failed to serialize dictionary: %@", buf, 0x16u);
    }

    v16 = 0;
  }

LABEL_11:

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

void __72__IXPromisedInMemoryDictionary_initWithName_client_dictionary_location___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[IXPromisedInMemoryDictionary initWithName:client:dictionary:location:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v5 = *MEMORY[0x1E69E9840];
}

void __72__IXPromisedInMemoryDictionary_initWithName_client_dictionary_location___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IXPromisedInMemoryDictionary initWithName:client:dictionary:location:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed tell daemon to set up in memory dictionary promise: %@", &v8, 0x16u);
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
    [IXPromisedInMemoryDictionary resetWithCompletion:v5];
  }

  v7 = _CreateError("[IXPromisedInMemoryDictionary resetWithCompletion:]", 96, @"IXErrorDomain", 4uLL, 0, 0, @"Resetting an in-memory dictionary promise doesn't make sense.", v6, v8);
  v4[2](v4, v7);
}

- (IXPromisedInMemoryDictionary)initWithSeed:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryDictionary;
  return [(IXOwnedDataPromise *)&v4 initWithSeed:a3];
}

- (void)resetWithCompletion:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[IXPromisedInMemoryDictionary resetWithCompletion:]";
  v4 = 2112;
  v5 = 0;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: Resetting an in-memory dictionary promise doesn't make sense. : %@", &v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end