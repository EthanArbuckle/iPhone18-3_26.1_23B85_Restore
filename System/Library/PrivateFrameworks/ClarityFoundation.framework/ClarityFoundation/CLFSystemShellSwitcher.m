@interface CLFSystemShellSwitcher
+ (CLFSystemShellSwitcher)sharedSystemShellSwitcher;
- (BOOL)_createFileWithError:(id *)a3;
- (BOOL)_removeFileWithError:(id *)a3;
- (BOOL)setClarityBoardEnabled:(BOOL)a3 error:(id *)a4;
- (void)signalSiriAvailability;
@end

@implementation CLFSystemShellSwitcher

+ (CLFSystemShellSwitcher)sharedSystemShellSwitcher
{
  if (sharedSystemShellSwitcher_onceToken != -1)
  {
    +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
  }

  v3 = sharedSystemShellSwitcher_SharedSystemShellSwitcher;

  return v3;
}

uint64_t __51__CLFSystemShellSwitcher_sharedSystemShellSwitcher__block_invoke()
{
  sharedSystemShellSwitcher_SharedSystemShellSwitcher = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)setClarityBoardEnabled:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v7 = +[CLFLog commonLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = v5;
    _os_log_impl(&dword_1E115B000, v7, OS_LOG_TYPE_DEFAULT, "Set ClarityBoard enabled: %i", buf, 8u);
  }

  if (v5)
  {
    v8 = +[(CLFSettings_GeneratedCode *)CLFSettings];
    [v8 setRestartReason:@"enableClarityBoard"];

    v9 = +[(CLFSettings_GeneratedCode *)CLFSettings];
    [v9 setShouldShowTripleClickInstructions:1];

    if (![(CLFSystemShellSwitcher *)self _createFileWithError:a4])
    {
LABEL_12:
      LOBYTE(v10) = 0;
      goto LABEL_14;
    }

LABEL_7:
    v11 = reboot3();
    if (!v11)
    {
      LOBYTE(v10) = 1;
      goto LABEL_14;
    }

    v12 = v11;
    v13 = +[CLFLog commonLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [CLFSystemShellSwitcher setClarityBoardEnabled:v12 error:v13];
    }

    if (a4)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{v12, @"RebootErrorCode"}];
      v19 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CLFSystemShellSwitcher" code:5 userInfo:v15];
    }

    goto LABEL_12;
  }

  v10 = [(CLFSystemShellSwitcher *)self _removeFileWithError:a4];
  if (v10)
  {
    goto LABEL_7;
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_createFileWithError:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [(CLFSystemShellSwitcher *)self _directoryURL];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v18 = 0;
    v6 = [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v18];
    v7 = v18;
    if (!v6)
    {
      v14 = +[CLFLog commonLog];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [CLFSystemShellSwitcher _createFileWithError:];
      }

      if (a3)
      {
        if (v7)
        {
          v19 = *MEMORY[0x1E696AA08];
          v20 = v7;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        }

        [MEMORY[0x1E696ABC0] errorWithDomain:@"CLFSystemShellSwitcher" code:3 userInfo:0];
        *a3 = LOBYTE(v10) = 0;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      goto LABEL_25;
    }

    v8 = [v4 URLByAppendingPathComponent:@"ClarityBoardEnabled"];
    v9 = [MEMORY[0x1E695DEF0] data];
    v17 = 0;
    v10 = [v9 writeToURL:v8 options:0x10000000 error:&v17];
    v11 = v17;

    v12 = +[CLFLog commonLog];
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v8;
        _os_log_impl(&dword_1E115B000, v13, OS_LOG_TYPE_DEFAULT, "Created file at %@.", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [CLFSystemShellSwitcher _createFileWithError:];
      }

      if (!a3)
      {
        goto LABEL_24;
      }

      if (v11)
      {
        v21 = *MEMORY[0x1E696AA08];
        v22 = v11;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      }

      else
      {
        v13 = 0;
      }

      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CLFSystemShellSwitcher" code:2 userInfo:v13];
    }

LABEL_24:
LABEL_25:

    goto LABEL_26;
  }

  if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"CLFSystemShellSwitcher" code:1 userInfo:0];
    *a3 = LOBYTE(v10) = 0;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

LABEL_26:

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_removeFileWithError:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [(CLFSystemShellSwitcher *)self _directoryURL];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v4 URLByAppendingPathComponent:@"ClarityBoardEnabled"];
    v16 = 0;
    v7 = [v5 removeItemAtURL:v6 error:&v16];
    v8 = v16;
    v9 = v8;
    if (v7)
    {
      v10 = +[CLFLog commonLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&dword_1E115B000, v10, OS_LOG_TYPE_DEFAULT, "Removed file at %@.", buf, 0xCu);
      }

LABEL_20:

      goto LABEL_21;
    }

    v11 = [v8 domain];
    if ([v11 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v12 = [v9 code];

      if (v12 == 4)
      {
        LOBYTE(v7) = 1;
        goto LABEL_21;
      }
    }

    else
    {
    }

    v13 = +[CLFLog commonLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [CLFSystemShellSwitcher _removeFileWithError:];
    }

    if (a3)
    {
      if (v9)
      {
        v17 = *MEMORY[0x1E696AA08];
        v18 = v9;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      }

      else
      {
        v10 = 0;
      }

      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CLFSystemShellSwitcher" code:4 userInfo:v10];
      goto LABEL_20;
    }

    LOBYTE(v7) = 0;
LABEL_21:

    goto LABEL_22;
  }

  if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"CLFSystemShellSwitcher" code:1 userInfo:0];
    *a3 = LOBYTE(v7) = 0;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

LABEL_22:

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)signalSiriAvailability
{
  v3 = +[CLFLog commonLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E115B000, v3, OS_LOG_TYPE_DEFAULT, "Siri is now available", buf, 2u);
  }

  v4 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CLFSystemShellSwitcher_signalSiriAvailability__block_invoke;
  block[3] = &unk_1E8704EF8;
  block[4] = self;
  dispatch_async(v4, block);
}

void __48__CLFSystemShellSwitcher_signalSiriAvailability__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isClarityBoardEnabled])
  {
    v1 = MEMORY[0x1E695DF20];
    v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v3 = [v2 pathForResource:@"CLFSiriAXBundles" ofType:@"plist"];
    v4 = [v1 dictionaryWithContentsOfFile:v3];

    v5 = [v4 objectForKey:@"SiriAXBundles"];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/System/Library/AccessibilityBundles/%@.axbundle", *(*(&v13 + 1) + 8 * v9)];
          v11 = [MEMORY[0x1E696AAE8] bundleWithPath:v10];
          [v11 load];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setClarityBoardEnabled:(int)a1 error:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_1E115B000, a2, OS_LOG_TYPE_FAULT, "Unable to initiate user-space reboot. Error code: %i", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_createFileWithError:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1E115B000, v0, v1, "Error creating directory at %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_createFileWithError:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1E115B000, v0, v1, "Error creating file at %@: %@.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_removeFileWithError:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1E115B000, v0, v1, "Error removing file at %@: %@.");
  v2 = *MEMORY[0x1E69E9840];
}

@end