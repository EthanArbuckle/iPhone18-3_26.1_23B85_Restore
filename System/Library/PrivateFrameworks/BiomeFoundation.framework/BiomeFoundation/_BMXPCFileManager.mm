@interface _BMXPCFileManager
- (BOOL)_removeDirectoryAtPath:(id)a3 error:(id *)a4;
- (BOOL)_removeFileAtPath:(id)a3 error:(id *)a4;
- (_BMXPCFileManager)initWithDirectory:(id)a3 cachingOptions:(int64_t)a4 useCase:(id)a5 domain:(unint64_t)a6 user:(unsigned int)a7;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
@end

@implementation _BMXPCFileManager

- (_BMXPCFileManager)initWithDirectory:(id)a3 cachingOptions:(int64_t)a4 useCase:(id)a5 domain:(unint64_t)a6 user:(unsigned int)a7
{
  v12 = a5;
  v17.receiver = self;
  v17.super_class = _BMXPCFileManager;
  v13 = [(BMFileManager *)&v17 initWithDirectory:a3 cachingOptions:a4];
  if (v13)
  {
    v14 = [v12 copy];
    useCase = v13->_useCase;
    v13->_useCase = v14;

    v13->_domain = a6;
    v13->_user = a7;
  }

  return v13;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_connectionWrapper;
  if (![(BMXPCConnectionWrapper *)v5 isValid])
  {
    v6 = [(_BMXPCFileManager *)self _newConnection];

    objc_storeStrong(&self->_connectionWrapper, v6);
    v5 = v6;
  }

  if (!v5)
  {
    v14 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @"Failed to get or create BMXPCConnectionWrapper";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v13 = [v14 errorWithDomain:@"BiomeStorageError" code:7 userInfo:v7];
    v4[2](v4, v13);
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v7 = [(BMXPCConnectionWrapper *)v5 connection];
  if (!v7)
  {
    v15 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"Failed to get connection from BMXPCConnectionWrapper";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v16 = [v15 errorWithDomain:@"BiomeStorageError" code:7 userInfo:v13];
    v4[2](v4, v16);

    goto LABEL_10;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67___BMXPCFileManager__synchronousRemoteObjectProxyWithErrorHandler___block_invoke;
  v19[3] = &unk_1E796B0A0;
  v20 = v5;
  v8 = v4;
  v21 = v8;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v19];
  if (!v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23 = @"Failed to create remote object proxy";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v12 = [v10 errorWithDomain:@"BiomeStorageError" code:7 userInfo:v11];
    v8[2](v8, v12);
  }

  v13 = v20;
LABEL_11:

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_removeFileAtPath:(id)a3 error:(id *)a4
{
  v42[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v23 = _os_activity_create(&dword_1AC15D000, "_BMXPCFileManager._removeFileAtPath:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v23, &state);
  if (v6)
  {
    v34 = 0;
    v35 = 0;
    v7 = [BMPaths getServiceDomain:&v35 subpath:&v34 forPath:v6];
    v8 = v34;
    if (v7)
    {
      if ([(_BMXPCFileManager *)self supportsPathWithDomain:v35])
      {
        v32 = 0;
        v33 = 0;
        v27 = 0;
        v28 = &v27;
        v29 = 0x3032000000;
        v30 = __Block_byref_object_copy__1;
        v31 = __Block_byref_object_dispose__1;
        v9 = MEMORY[0x1E69E9820];
        do
        {
          v26[0] = v9;
          v26[1] = 3221225472;
          v26[2] = __45___BMXPCFileManager__removeFileAtPath_error___block_invoke;
          v26[3] = &unk_1E796B0C8;
          v26[4] = &v27;
          v10 = [(_BMXPCFileManager *)self _synchronousRemoteObjectProxyWithErrorHandler:v26];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __45___BMXPCFileManager__removeFileAtPath_error___block_invoke_2;
          v25[3] = &unk_1E796B0C8;
          v25[4] = &v27;
          [v10 removeFileAtPath:v8 reply:v25];
        }

        while ((BMShouldRetry(v28[5], &v33, 2uLL, 1) & 1) != 0);
        v11 = v28[5];
        v12 = v11 == 0;
        if (a4 && v11)
        {
          *a4 = v11;
        }

        _Block_object_dispose(&v27, 8);

        goto LABEL_15;
      }

      if (a4)
      {
        v15 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A578];
        v38 = @"Wrong domain";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        *a4 = [v15 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v16];
      }
    }

    else if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v40 = @"Unsupported path";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *a4 = [v13 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v14];
    }

    v12 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"_BMXPCFileManager.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"path", v23}];

  v20 = __biome_log_for_category(2);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (a4)
  {
    v21 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42[0] = @"Invalid path";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    *a4 = [v21 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v22];
  }

  v12 = 0;
LABEL_16:
  os_activity_scope_leave(&state);

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)_removeDirectoryAtPath:(id)a3 error:(id *)a4
{
  v42[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v23 = _os_activity_create(&dword_1AC15D000, "_BMXPCFileManager._removeDirectoryAtPath:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v23, &state);
  if (v6)
  {
    v34 = 0;
    v35 = 0;
    v7 = [BMPaths getServiceDomain:&v35 subpath:&v34 forPath:v6];
    v8 = v34;
    if (v7)
    {
      if ([(_BMXPCFileManager *)self supportsPathWithDomain:v35])
      {
        v32 = 0;
        v33 = 0;
        v27 = 0;
        v28 = &v27;
        v29 = 0x3032000000;
        v30 = __Block_byref_object_copy__1;
        v31 = __Block_byref_object_dispose__1;
        v9 = MEMORY[0x1E69E9820];
        do
        {
          v26[0] = v9;
          v26[1] = 3221225472;
          v26[2] = __50___BMXPCFileManager__removeDirectoryAtPath_error___block_invoke;
          v26[3] = &unk_1E796B0C8;
          v26[4] = &v27;
          v10 = [(_BMXPCFileManager *)self _synchronousRemoteObjectProxyWithErrorHandler:v26];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __50___BMXPCFileManager__removeDirectoryAtPath_error___block_invoke_2;
          v25[3] = &unk_1E796B0C8;
          v25[4] = &v27;
          [v10 removeDirectoryAtPath:v8 reply:v25];
        }

        while ((BMShouldRetry(v28[5], &v33, 2uLL, 1) & 1) != 0);
        v11 = v28[5];
        v12 = v11 == 0;
        if (a4 && v11)
        {
          *a4 = v11;
        }

        _Block_object_dispose(&v27, 8);

        goto LABEL_15;
      }

      if (a4)
      {
        v15 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A578];
        v38 = @"Wrong domain";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        *a4 = [v15 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v16];
      }
    }

    else if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v40 = @"Unsupported path";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *a4 = [v13 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v14];
    }

    v12 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"_BMXPCFileManager.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"path", v23}];

  v20 = __biome_log_for_category(2);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (a4)
  {
    v21 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42[0] = @"Invalid path";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    *a4 = [v21 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v22];
  }

  v12 = 0;
LABEL_16:
  os_activity_scope_leave(&state);

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

@end