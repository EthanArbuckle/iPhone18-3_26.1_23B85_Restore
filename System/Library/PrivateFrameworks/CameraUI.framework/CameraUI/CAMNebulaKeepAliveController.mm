@interface CAMNebulaKeepAliveController
- (CAMNebulaKeepAliveController)init;
- (id)_keepAliveFilePath;
- (void)removeKeepAliveFileIfNotKeptForAnyIdentifiers;
- (void)startKeepAliveForIdentifier:(id)a3;
- (void)stopKeepAliveForIdentifier:(id)a3;
@end

@implementation CAMNebulaKeepAliveController

- (CAMNebulaKeepAliveController)init
{
  v12.receiver = self;
  v12.super_class = CAMNebulaKeepAliveController;
  v2 = [(CAMNebulaKeepAliveController *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.camera.nebula.keep-alive", v3);
    syncQueue = v2->__syncQueue;
    v2->__syncQueue = v4;

    v6 = [(CAMNebulaKeepAliveController *)v2 _syncQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__CAMNebulaKeepAliveController_init__block_invoke;
    block[3] = &unk_1E76F77B0;
    v7 = v2;
    v11 = v7;
    dispatch_sync(v6, block);

    v8 = v7;
  }

  return v2;
}

uint64_t __36__CAMNebulaKeepAliveController_init__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 12) = -1;
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)_keepAliveFilePath
{
  v3 = [MEMORY[0x1E69BF168] nebuladkeepalivepath];
  v4 = [v3 stringByDeletingLastPathComponent];
  if (![(CAMNebulaKeepAliveController *)self _didCreateKeepAliveDirectory])
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

    [(CAMNebulaKeepAliveController *)self _setDidCreateKeepAliveDirectory:1];
  }

  return v3;
}

- (void)startKeepAliveForIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(CAMNebulaKeepAliveController *)self _syncQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__CAMNebulaKeepAliveController_startKeepAliveForIdentifier___block_invoke;
    v6[3] = &unk_1E76F7960;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

uint64_t __60__CAMNebulaKeepAliveController_startKeepAliveForIdentifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) _nebuladKeepAliveFileDescriptor] & 0x80000000) != 0)
  {
    v2 = [*(a1 + 32) _keepAliveFilePath];
    v3 = open([v2 fileSystemRepresentation], 641, 438);
    if ((v3 & 0x80000000) != 0)
    {
      v4 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = __error();
        v6 = strerror(*v5);
        *buf = 138543618;
        v9 = v2;
        v10 = 2080;
        v11 = v6;
        _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Error opening keep alive file at path: %{public}@, error: %s", buf, 0x16u);
      }
    }

    else
    {
      [*(a1 + 32) _setNebuladKeepAliveFileDescriptor:v3];
    }
  }

  return [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
}

- (void)stopKeepAliveForIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(CAMNebulaKeepAliveController *)self _syncQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__CAMNebulaKeepAliveController_stopKeepAliveForIdentifier___block_invoke;
    v6[3] = &unk_1E76F7960;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

void __59__CAMNebulaKeepAliveController_stopKeepAliveForIdentifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 24) count])
  {
    v2 = [*(a1 + 32) _nebuladKeepAliveFileDescriptor];
    [*(a1 + 32) _setNebuladKeepAliveFileDescriptor:0xFFFFFFFFLL];
    v4 = [*(a1 + 32) _keepAliveFilePath];
    flock(v2, 8);
    close(v2);
    v3 = v4;
    unlink([v4 fileSystemRepresentation]);
  }
}

- (void)removeKeepAliveFileIfNotKeptForAnyIdentifiers
{
  v3 = [(CAMNebulaKeepAliveController *)self _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CAMNebulaKeepAliveController_removeKeepAliveFileIfNotKeptForAnyIdentifiers__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __77__CAMNebulaKeepAliveController_removeKeepAliveFileIfNotKeptForAnyIdentifiers__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (![*(*(a1 + 32) + 24) count])
  {
    [*(a1 + 32) _setNebuladKeepAliveFileDescriptor:0xFFFFFFFFLL];
    v2 = [*(a1 + 32) _keepAliveFilePath];
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v3 fileExistsAtPath:v2];

    if (v4)
    {
      v5 = [MEMORY[0x1E696AC08] defaultManager];
      v9 = 0;
      v6 = [v5 removeItemAtPath:v2 error:&v9];
      v7 = v9;

      if ((v6 & 1) == 0)
      {
        v8 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v11 = v2;
          v12 = 2114;
          v13 = v7;
          _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Error removing keep alive file at path: %{public}@, error: %{public}@", buf, 0x16u);
        }
      }
    }
  }
}

@end