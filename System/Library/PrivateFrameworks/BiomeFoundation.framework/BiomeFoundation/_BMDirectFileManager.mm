@interface _BMDirectFileManager
- (BOOL)_removeDirectoryAtPath:(id)path error:(id *)error;
- (BOOL)_removeFileAtPath:(id)path error:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (_BMDirectFileManager)initWithDirectory:(id)directory cachingOptions:(int64_t)options;
- (id)_openTemporaryDirectoryWithError:(id *)error;
- (id)_temporaryFileHandleWithProtection:(int)protection unlink:(BOOL)unlink error:(id *)error;
@end

@implementation _BMDirectFileManager

- (_BMDirectFileManager)initWithDirectory:(id)directory cachingOptions:(int64_t)options
{
  directoryCopy = directory;
  v12.receiver = self;
  v12.super_class = _BMDirectFileManager;
  v7 = [(BMFileManager *)&v12 initWithDirectory:directoryCopy cachingOptions:options];
  if (v7)
  {
    v8 = +[BMProcess current];
    [v8 enforceDatavaultEntitlementRestrictions];

    v7->_setUpLock._os_unfair_lock_opaque = 0;
    v9 = [directoryCopy copy];
    directory = v7->_directory;
    v7->_directory = v9;
  }

  return v7;
}

- (BOOL)setUpWithError:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_setUpLock);
  if (self->_directoryHandle)
  {
    goto LABEL_4;
  }

  v5 = bm_openat_dprotected(4294967293, self->_directory, 1049344, 3);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = [[BMFileAttributes alloc] initWithPath:self->_directory mode:1 protectionClass:BMDataProtectionClassFromOSProtectionClass(3)];
    v7 = [[BMFileHandle alloc] initWithFileDescriptor:v5 attributes:v6];
    directoryHandle = self->_directoryHandle;
    self->_directoryHandle = v7;

LABEL_4:
    LOBYTE(error) = 1;
    goto LABEL_5;
  }

  if (error)
  {
    v11 = *__error();
    v12 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(v11)];
    v16[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v12 errorWithDomain:*MEMORY[0x1E696A798] code:v11 userInfo:v14];

    LOBYTE(error) = 0;
  }

LABEL_5:
  os_unfair_lock_unlock(&self->_setUpLock);
  v9 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)_removeFileAtPath:(id)path error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([(_BMDirectFileManager *)self setUpWithError:error])
  {
    if (pathCopy)
    {
      v7 = bm_subpath(self->_directory, pathCopy);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = pathCopy;
      }

      v10 = v9;

      if (bm_validate_pathat([(BMFileHandle *)self->_directoryHandle fd], v10))
      {
        if (unlinkat(-[BMFileHandle fd](self->_directoryHandle, "fd"), [v10 fileSystemRepresentation], 0) != -1 || *__error() == 2)
        {
          v11 = 1;
LABEL_19:

          goto LABEL_20;
        }

        v20 = __biome_log_for_category(2);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [_BMDirectFileManager _removeFileAtPath:error:];
        }

        if (error)
        {
          v21 = MEMORY[0x1E696ABC0];
          v22 = *MEMORY[0x1E696A578];
          v23 = @"Unlink failed";
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          v16 = v21;
          v17 = 1;
          goto LABEL_17;
        }
      }

      else if (error)
      {
        v14 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E696A578];
        v25 = @"Invalid parameter";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v16 = v14;
        v17 = 2;
LABEL_17:
        *error = [v16 errorWithDomain:@"BiomeStorageError" code:v17 userInfo:v15];
      }

      v11 = 0;
      goto LABEL_19;
    }

    v12 = __biome_log_for_category(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BMFileManager fileExistsAtPath:error:];
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A578];
      v27[0] = @"Invalid path";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      [v13 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v10];
      *error = v11 = 0;
      goto LABEL_19;
    }
  }

  v11 = 0;
LABEL_20:

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_removeDirectoryAtPath:(id)path error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([(_BMDirectFileManager *)self setUpWithError:error])
  {
    if (pathCopy)
    {
      v7 = bm_subpath(self->_directory, pathCopy);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = pathCopy;
      }

      v10 = v9;

      if (bm_validate_pathat([(BMFileHandle *)self->_directoryHandle fd], v10))
      {
        v11 = [(BMFileHandle *)self->_directoryHandle fd];
        v12 = 1;
        if ((removefileat(v11, [v10 fileSystemRepresentation], 0, 1u) & 0x80000000) == 0 || *__error() == 2)
        {
          goto LABEL_22;
        }

        v13 = __biome_log_for_category(2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [_BMDirectFileManager _removeDirectoryAtPath:error:];
        }

        if (!error)
        {
          goto LABEL_21;
        }

        v14 = MEMORY[0x1E696ABC0];
        v23 = *MEMORY[0x1E696A578];
        v24 = @"Remove directory failed";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v16 = v14;
        v17 = 1;
      }

      else
      {
        if (!error)
        {
LABEL_21:
          v12 = 0;
          goto LABEL_22;
        }

        v20 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A578];
        v26 = @"Invalid parameter";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v16 = v20;
        v17 = 2;
      }

      *error = [v16 errorWithDomain:@"BiomeStorageError" code:v17 userInfo:v15];

      goto LABEL_21;
    }

    v18 = __biome_log_for_category(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [BMFileManager fileExistsAtPath:error:];
    }

    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"Invalid path";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      [v19 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v10];
      *error = v12 = 0;
LABEL_22:

      goto LABEL_23;
    }
  }

  v12 = 0;
LABEL_23:

  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)_openTemporaryDirectoryWithError:(id *)error
{
  v26 = 0;
  directory = [(BMFileManager *)self directory];
  v6 = [BMPaths getServiceDomain:&v26 subpath:0 forPath:directory];

  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = [BMPaths biomeTemporaryDirectoryForDomain:v26];
  v8 = [BMFileAttributes alloc];
  v9 = BMFileAccessModeFromOFlags(512);
  v10 = [(BMFileAttributes *)v8 initWithPath:v7 mode:v9 protectionClass:BMDataProtectionClassFromOSProtectionClass(4)];
  fileHandleCache = self->super._fileHandleCache;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __57___BMDirectFileManager__openTemporaryDirectoryWithError___block_invoke;
  v22 = &unk_1E796B5B8;
  v25 = 0x420100200;
  v23 = v7;
  v24 = v10;
  v12 = v10;
  v13 = v7;
  v14 = [(BMCache *)fileHandleCache cachedObjectWithKey:v12 missHandler:&v19];

  if (!v14)
  {
LABEL_3:
    directory = self->_directory;
    v16 = [BMStoreDirectory tmp:v19];
    v17 = [(NSString *)directory stringByAppendingPathComponent:v16];

    v14 = [(BMFileManager *)self fileHandleForFileAtPath:v17 flags:537920000 protection:4 error:error];
  }

  return v14;
}

- (id)_temporaryFileHandleWithProtection:(int)protection unlink:(BOOL)unlink error:(id *)error
{
  unlinkCopy = unlink;
  v36[2] = *MEMORY[0x1E69E9840];
  if (![(_BMDirectFileManager *)self setUpWithError:error])
  {
    v15 = 0;
    goto LABEL_20;
  }

  v30 = 0;
  v9 = [(_BMDirectFileManager *)self _openTemporaryDirectoryWithError:&v30];
  v10 = v30;
  v11 = v10;
  if (v9)
  {
    v29 = 0;
    v12 = bm_new_temporary_file([v9 fd], protection, unlinkCopy, &v29);
    v13 = v29;
    if ((v12 & 0x80000000) != 0)
    {
      if (!error)
      {
        v15 = 0;
        goto LABEL_18;
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696AA08];
      v33[0] = *MEMORY[0x1E696A578];
      v33[1] = v19;
      v34[0] = @"Failed to create temporary file";
      v34[1] = v14;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
      [v18 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v20];
      *error = v15 = 0;
    }

    else
    {
      if (unlinkCopy)
      {
        v14 = @"<tmp>";
      }

      else
      {
        attributes = [v9 attributes];
        path = [attributes path];
        v14 = [path stringByAppendingPathComponent:v13];
      }

      v20 = [[BMFileAttributes alloc] initWithPath:v14 mode:2 protectionClass:BMDataProtectionClassFromOSProtectionClass(protection)];
      v23 = [[BMFileHandle alloc] initWithFileDescriptor:v12 attributes:v20];
      v15 = v23;
      if (v23)
      {
        v24 = v23;
      }

      else if (error)
      {
        v25 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A578];
        v32 = @"Unspecified failure";
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        *error = [v25 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v26];
      }
    }
  }

  else
  {
    if (!error)
    {
      v15 = 0;
      goto LABEL_19;
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696AA08];
    v35[0] = *MEMORY[0x1E696A578];
    v35[1] = v17;
    v36[0] = @"Failed to open temporary directory";
    v36[1] = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v16 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v13];
    *error = v15 = 0;
  }

LABEL_18:

LABEL_19:
LABEL_20:
  v27 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_fileHandleForFileAtPath:flags:protection:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_5_1(&dword_1AC15D000, v0, v1, "fcntl(%d, F_GETPROTECTIONCLASS) failed: %{darwin.errno}d");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_removeFileAtPath:error:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_8(&dword_1AC15D000, v1, v2, "unlinkat() failed: %{darwin.errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_removeDirectoryAtPath:error:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_8(&dword_1AC15D000, v1, v2, "removefileat() failed: %{darwin.errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)replaceFileAtPath:(uint64_t)a1 withData:(NSObject *)a2 protection:flags:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_ERROR, "overwriteWithData:error: failed with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)replaceFileAtPath:withData:protection:flags:error:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_8(&dword_1AC15D000, v1, v2, "renameat() failed: %{darwin.errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)replaceFileAtPath:withData:protection:flags:error:.cold.3()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_8(&dword_1AC15D000, v1, v2, "bm_openat_dprotected() failed: %{darwin.errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end