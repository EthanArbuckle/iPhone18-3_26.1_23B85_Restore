@interface FMDFMIPSharedStateManager
+ (id)sharedInstance;
- (BOOL)_removeSharedInfo;
- (BOOL)_writeSharedInfo:(id)a3;
- (BOOL)fmipActive;
- (FMDFMIPSharedStateManager)init;
- (id)_fmipSharedFileURL;
- (id)_readSharedInfo;
- (unint64_t)lostModeType;
- (void)_removeSharedInfo;
- (void)recalculateLostMode;
@end

@implementation FMDFMIPSharedStateManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[FMDFMIPSharedStateManager sharedInstance];
  }

  v3 = sharedInstance__instance_1;

  return v3;
}

uint64_t __43__FMDFMIPSharedStateManager_sharedInstance__block_invoke()
{
  sharedInstance__instance_1 = objc_alloc_init(FMDFMIPSharedStateManager);

  return MEMORY[0x1EEE66BB8]();
}

- (FMDFMIPSharedStateManager)init
{
  v6.receiver = self;
  v6.super_class = FMDFMIPSharedStateManager;
  v2 = [(FMDFMIPSharedStateManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.icloud.FindMyDevice.stateManager", 0);
    stateManagerQueue = v2->_stateManagerQueue;
    v2->_stateManagerQueue = v3;
  }

  return v2;
}

- (void)recalculateLostMode
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = +[FMDFMIPManager sharedInstance];
  v4 = [v3 lostModeInfo];

  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = [v4 lostModeType];
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "Updating shared file with lost mode - %lu", buf, 0xCu);
  }

  v6 = [(FMDFMIPSharedStateManager *)self _readSharedInfo];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "lostModeType")}];
    [v8 setObject:v9 forKey:@"fmipLostModeType"];
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "lostModeType", @"fmipLostModeType"}];
    v12 = v9;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  [(FMDFMIPSharedStateManager *)self _writeSharedInfo:v8];
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)fmipActive
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(FMDFMIPSharedStateManager *)self _readSharedInfo];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"fmipActive"];
    v5 = [v4 BOOLValue];

    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v5;
      _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "Shared file found. Returning FMiP active - %i", v9, 8u);
    }
  }

  else
  {
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "Shared file not found. Returning FMiP active as - NO", v9, 2u);
    }

    LOBYTE(v5) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)lostModeType
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(FMDFMIPSharedStateManager *)self _readSharedInfo];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"fmipLostModeType"];
    v5 = [v4 integerValue];

    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v5;
      _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "Shared file found. Returning lost mode type as - %lu", &v9, 0xCu);
    }
  }

  else
  {
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "Shared file not found. Returning lost mode type as - FMDLostModeTypeNone", &v9, 2u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_readSharedInfo
{
  v2 = [(FMDFMIPSharedStateManager *)self _fmipSharedFileURL];
  if (v2 && ([MEMORY[0x1E696AC08] defaultManager], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "path"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "fileExistsAtPath:", v4), v4, v3, v5))
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_writeSharedInfo:(id)a3
{
  v4 = a3;
  v5 = [(FMDFMIPSharedStateManager *)self _fmipSharedFileURL];
  if (v5 && (v11 = 0, [v4 writeToURL:v5 error:&v11], (v6 = v11) != 0))
  {
    v7 = v6;
    v8 = LogCategory_Unspecified();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(FMDFMIPSharedStateManager *)v7 _writeSharedInfo:v8];
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_removeSharedInfo
{
  v2 = [(FMDFMIPSharedStateManager *)self _fmipSharedFileURL];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0;
  [v3 removeItemAtURL:v2 error:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = LogCategory_Unspecified();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(FMDFMIPSharedStateManager *)v4 _removeSharedInfo];
    }
  }

  return v4 == 0;
}

- (id)_fmipSharedFileURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  stateManagerQueue = self->_stateManagerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__FMDFMIPSharedStateManager__fmipSharedFileURL__block_invoke;
  v5[3] = &unk_1E86BD588;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateManagerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __47__FMDFMIPSharedStateManager__fmipSharedFileURL__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) fmipSharedFileStaticURL];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E699BE08]);
    v5 = [v4 initWithIdentifier:FMDManagedSystemGroupContainerIdentifier];
    v6 = [v5 url];
    v7 = [v6 fm_preferencesPathURLForDomain:@"FMIPStateInfo"];
    [*v2 setFmipSharedFileStaticURL:v7];

    v8 = LogCategory_Unspecified();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __47__FMDFMIPSharedStateManager__fmipSharedFileURL__block_invoke_cold_1(v2, v8);
    }
  }

  v9 = [*(a1 + 32) fmipSharedFileStaticURL];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (void)_writeSharedInfo:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF650000, a2, OS_LOG_TYPE_ERROR, "Could not write the shared file. Error - %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_removeSharedInfo
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF650000, a2, OS_LOG_TYPE_ERROR, "Could not remove the shared file. Error - %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __47__FMDFMIPSharedStateManager__fmipSharedFileURL__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*a1 fmipSharedFileStaticURL];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1DF650000, a2, OS_LOG_TYPE_DEBUG, "Container path URL %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end