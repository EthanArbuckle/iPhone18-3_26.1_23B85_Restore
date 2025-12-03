@interface NSURL(ICTesting)
- (void)ic_updateFlagToExcludeFromBackupNow:()ICTesting;
@end

@implementation NSURL(ICTesting)

- (void)ic_updateFlagToExcludeFromBackupNow:()ICTesting
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.notes", "Application");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  v7 = *MEMORY[0x1E695E300];
  if (v6)
  {
    *buf = 138412802;
    v17 = v7;
    v18 = 1024;
    v19 = a3;
    v20 = 2112;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_1D4576000, v5, OS_LOG_TYPE_DEBUG, "Updating backup exclusion flag %@ to %d for %@", buf, 0x1Cu);
  }

  v8 = *MEMORY[0x1E695DB80];
  v24[1] = v7;
  v25[0] = MEMORY[0x1E695E110];
  v24[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v25[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v15 = 0;
  v11 = [self setResourceValues:v10 error:&v15];
  v12 = v15;
  v13 = v12;
  if ((v11 & 1) == 0 && [v12 code] != 4)
  {
    v14 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v17 = v7;
      v18 = 1024;
      v19 = a3;
      v20 = 2112;
      selfCopy2 = self;
      v22 = 2112;
      v23 = v13;
      _os_log_error_impl(&dword_1D4576000, v14, OS_LOG_TYPE_ERROR, "Error marking %@=%d for %@: %@", buf, 0x26u);
    }
  }
}

@end