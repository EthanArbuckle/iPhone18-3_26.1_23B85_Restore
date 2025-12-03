@interface SSUCacheDirectoryProviderTemporary
- (id)lookupOrCreateCacheDirectory:(id *)directory;
- (void)dealloc;
@end

@implementation SSUCacheDirectoryProviderTemporary

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->__directory)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      directory = self->__directory;
      *buf = 136315394;
      v15 = "[SSUCacheDirectoryProviderTemporary dealloc]";
      v16 = 2112;
      v17 = directory;
      _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Cleaning up temporary cache directory: %@", buf, 0x16u);
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = self->__directory;
    v13 = 0;
    v6 = [defaultManager removeItemAtURL:v5 error:&v13];
    v7 = v13;

    if ((v6 & 1) == 0)
    {
      v8 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = self->__directory;
        *buf = 136315650;
        v15 = "[SSUCacheDirectoryProviderTemporary dealloc]";
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v7;
        _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to remove temporary cache directory: %@. Error: %@.", buf, 0x20u);
      }
    }
  }

  v12.receiver = self;
  v12.super_class = SSUCacheDirectoryProviderTemporary;
  [(SSUCacheDirectoryProviderTemporary *)&v12 dealloc];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)lookupOrCreateCacheDirectory:(id *)directory
{
  v27[2] = *MEMORY[0x1E69E9840];
  directory = self->__directory;
  if (directory)
  {
    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SSUCacheDirectoryProviderTemporary-%p", self];
  v7 = MEMORY[0x1E695DFF8];
  v8 = NSTemporaryDirectory();
  v9 = [v8 stringByAppendingPathComponent:v6];
  v10 = [v7 fileURLWithPath:v9];
  v11 = self->__directory;
  self->__directory = v10;

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v13 = self->__directory;
  v25 = 0;
  v14 = [defaultManager createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v25];
  v15 = v25;

  if (directory && (v14 & 1) == 0)
  {
    v16 = *MEMORY[0x1E696A578];
    v27[0] = @"Could not create cache directory.";
    v17 = *MEMORY[0x1E696A588];
    v26[0] = v16;
    v26[1] = v17;
    v18 = MEMORY[0x1E696AEC0];
    v19 = [v15 description];
    v20 = [v18 stringWithFormat:@"createDirectoryAtURL call failed with error: %@.", v19];
    v27[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    *directory = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSUCacheDirectoryProviderErrorDomain" code:2 userInfo:v21];
  }

  if (v14)
  {
    directory = self->__directory;
LABEL_7:
    directoryCopy = directory;
    goto LABEL_8;
  }

  directoryCopy = 0;
LABEL_8:
  v23 = *MEMORY[0x1E69E9840];

  return directoryCopy;
}

@end