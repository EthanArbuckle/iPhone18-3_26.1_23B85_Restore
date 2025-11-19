@interface EMPersistenceLayoutManager
+ (NSString)baseMailDirectoryPath;
+ (NSURL)baseMailDirectory;
+ (NSURL)mailAccountDirectory;
+ (NSURL)mailDataDirectory;
+ (OS_os_log)log;
+ (id)_nonContainerizedBaseMailDirectoryPathCreated:(BOOL *)a3;
@end

@implementation EMPersistenceLayoutManager

+ (NSURL)mailDataDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [a1 mailDataDirectoryPath];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

+ (NSString)baseMailDirectoryPath
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__EMPersistenceLayoutManager_baseMailDirectoryPath__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (baseMailDirectoryPath_onceToken != -1)
  {
    dispatch_once(&baseMailDirectoryPath_onceToken, block);
  }

  v2 = baseMailDirectoryPath_mailDirectory;

  return v2;
}

void __51__EMPersistenceLayoutManager_baseMailDirectoryPath__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v1 = [*(a1 + 32) _nonContainerizedBaseMailDirectoryPathCreated:&v10];
  v2 = baseMailDirectoryPath_mailDirectory;
  baseMailDirectoryPath_mailDirectory = v1;

  if (v10 == 1)
  {
    v3 = open([baseMailDirectoryPath_mailDirectory fileSystemRepresentation], 0);
    if (v3 < 0)
    {
      v8 = +[EMPersistenceLayoutManager log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = baseMailDirectoryPath_mailDirectory;
        _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "Could not open fd for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v4 = v3;
      v5 = fcntl(v3, 64, 4);
      if (v5)
      {
        v6 = v5;
        v7 = +[EMPersistenceLayoutManager log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v12 = baseMailDirectoryPath_mailDirectory;
          v13 = 1024;
          v14 = v6;
          _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "Could not set protection class on %{public}@: %d", buf, 0x12u);
        }
      }

      close(v4);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (NSURL)mailAccountDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [a1 mailAccountDirectoryPath];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__EMPersistenceLayoutManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_31 != -1)
  {
    dispatch_once(&log_onceToken_31, block);
  }

  v2 = log_log_31;

  return v2;
}

void __33__EMPersistenceLayoutManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_31;
  log_log_31 = v1;
}

+ (NSURL)baseMailDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [a1 baseMailDirectoryPath];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

+ (id)_nonContainerizedBaseMailDirectoryPathCreated:(BOOL *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = EFNonContainerizedHomeDirectory();
  v7 = [v6 URLByAppendingPathComponent:@"Library"];
  v8 = [v7 URLByAppendingPathComponent:@"Mail"];

  if (!v8)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"EMPersistenceLayoutManager.m" lineNumber:55 description:@"Unable to get mail directory"];
  }

  *a3 = 0;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:0 attributes:0 error:&v20];
  v11 = v20;

  if (v10)
  {
    *a3 = 1;
  }

  else
  {
    v12 = [v11 ef_match];
    v13 = v12[2](v12, *MEMORY[0x1E696A250], 516);

    if ((v13 & 1) == 0)
    {
      v14 = +[EMPersistenceLayoutManager log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v11 ef_publicDescription];
        [(EMPersistenceLayoutManager *)v15 _nonContainerizedBaseMailDirectoryPathCreated:buf, v14];
      }
    }
  }

  v16 = [v8 path];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (void)_nonContainerizedBaseMailDirectoryPathCreated:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Failed to create Mail directory:\n%{public}@", buf, 0xCu);
}

@end