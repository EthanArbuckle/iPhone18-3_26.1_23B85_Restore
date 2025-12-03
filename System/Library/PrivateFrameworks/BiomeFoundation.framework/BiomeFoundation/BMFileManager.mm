@interface BMFileManager
+ (BMFileManager)fileManagerWithDirectAccessToDirectory:(id)directory cachingOptions:(int64_t)options;
+ (id)globalWeakFileHandleCache;
- (BMFileManager)init;
- (BMFileManager)initWithDirectory:(id)directory cachingOptions:(int64_t)options;
- (BMFileManagerDelegate)delegate;
- (BOOL)_removeDirectoryAtPath:(id)path error:(id *)error;
- (BOOL)_removeFileAtPath:(id)path error:(id *)error;
- (BOOL)acquireLockfile:(id)lockfile andRunBlock:(id)block;
- (BOOL)changePermissionsOfFileAtPath:(id)path mode:(unsigned __int16)mode error:(id *)error;
- (BOOL)createDirectoryAtPath:(id)path error:(id *)error;
- (BOOL)fileExistsAtPath:(id)path error:(id *)error;
- (BOOL)removeDirectoryAtPath:(id)path error:(id *)error;
- (BOOL)removeFileAtPath:(id)path error:(id *)error;
- (BOOL)replaceFileAtPath:(id)path withData:(id)data protection:(int)protection flags:(int)flags error:(id *)error;
- (id)_fileHandleForFileAtPath:(id)path flags:(int)flags protection:(int)protection error:(id *)error;
- (id)contentsOfDirectoryAtPath:(id)path error:(id *)error;
- (id)dataWithContentsOfFileAtPath:(id)path error:(id *)error;
- (id)fileHandleForFileAtPath:(id)path flags:(int)flags protection:(int)protection error:(id *)error;
- (id)replaceFileAtPath:(id)path withFileHandle:(id)handle protection:(int)protection flags:(int)flags error:(id *)error;
- (id)temporaryFileHandleWithProtection:(int)protection error:(id *)error;
- (unint64_t)modificationTimeOfFileAtPath:(id)path error:(id *)error;
- (unint64_t)sizeOfFileAtPath:(id)path error:(id *)error;
@end

@implementation BMFileManager

+ (id)globalWeakFileHandleCache
{
  if (globalWeakFileHandleCache_onceToken != -1)
  {
    +[BMFileManager globalWeakFileHandleCache];
  }

  v3 = globalWeakFileHandleCache_cache;

  return v3;
}

- (BMFileManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

uint64_t __42__BMFileManager_globalWeakFileHandleCache__block_invoke()
{
  v0 = +[BMCache weakCache];
  v1 = globalWeakFileHandleCache_cache;
  globalWeakFileHandleCache_cache = v0;

  v2 = globalWeakFileHandleCache_cache;

  return [v2 setIsExpiredBlock:&__block_literal_global_5];
}

+ (BMFileManager)fileManagerWithDirectAccessToDirectory:(id)directory cachingOptions:(int64_t)options
{
  directoryCopy = directory;
  v6 = [[_BMDirectFileManager alloc] initWithDirectory:directoryCopy cachingOptions:options];

  return v6;
}

- (BMFileManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BMFileManager.m" lineNumber:71 description:@"Use designated initializer"];

  return 0;
}

- (BMFileManager)initWithDirectory:(id)directory cachingOptions:(int64_t)options
{
  directoryCopy = directory;
  v15.receiver = self;
  v15.super_class = BMFileManager;
  v7 = [(BMFileManager *)&v15 init];
  if (v7)
  {
    v8 = [directoryCopy copy];
    directory = v7->_directory;
    v7->_directory = v8;

    v7->_cachingOptions = options;
    if (options)
    {
      if ((options & 2) != 0)
      {
        v11 = +[BMFileManager globalWeakFileHandleCache];
        v12 = [BMCache strongCacheWithFallbackCache:v11];
        fileHandleCache = v7->_fileHandleCache;
        v7->_fileHandleCache = v12;
      }

      else
      {
        v10 = +[BMCache strongCache];
        v11 = v7->_fileHandleCache;
        v7->_fileHandleCache = v10;
      }

      [(BMCache *)v7->_fileHandleCache setIsExpiredBlock:&__block_literal_global_13];
    }
  }

  return v7;
}

- (BOOL)fileExistsAtPath:(id)path error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if ([pathCopy length])
  {
    v6 = access([pathCopy fileSystemRepresentation], 0);
    v7 = __error();
    if (error && v6 && *v7 != 2)
    {
      v8 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A278];
      v9 = MEMORY[0x1E696AEC0];
      v10 = __error();
      v11 = strerror(*v10);
      v12 = [v9 stringWithFormat:@"access(): %s: %d", v11, *__error()];
      v21 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      *error = [v8 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v13];
    }

    LOBYTE(error) = v6 == 0;
  }

  else
  {
    v14 = __biome_log_for_category(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BMFileManager fileExistsAtPath:error:];
    }

    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A278];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path"];
      v23[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *error = [v15 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v17];

      LOBYTE(error) = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)contentsOfDirectoryAtPath:(id)path error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    [BMFileManager contentsOfDirectoryAtPath:error:];
  }

  if (![pathCopy length])
  {
    v15 = __biome_log_for_category(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BMFileManager fileExistsAtPath:error:];
    }

    if (!error)
    {
      v14 = 0;
      goto LABEL_21;
    }

    v16 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path"];
    v37[0] = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [v16 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v12];
    *error = v14 = 0;
    goto LABEL_19;
  }

  v7 = [(BMFileManager *)self fileHandleForFileAtPath:pathCopy flags:554696704 protection:0xFFFFFFFFLL error:error];
  v8 = v7;
  if (v7)
  {
    v9 = fcntl([v7 fd], 67, 3);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = v9;
      v11 = objc_opt_new();
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__0;
      v32 = __Block_byref_object_dispose__0;
      v33 = 0;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __49__BMFileManager_contentsOfDirectoryAtPath_error___block_invoke;
      v24[3] = &unk_1E796B2B0;
      v27 = v10;
      v26 = &v28;
      v12 = v11;
      v25 = v12;
      [v8 performWithInProcessLock:v24];
      if (error && (v13 = v29[5]) != 0)
      {
        v14 = 0;
        *error = v13;
      }

      else
      {
        v14 = v12;
      }

      _Block_object_dispose(&v28, 8);
      goto LABEL_19;
    }

    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A278];
      v18 = MEMORY[0x1E696AEC0];
      v19 = __error();
      v20 = strerror(*v19);
      v12 = [v18 stringWithFormat:@"fcntl(F_DUPFD_CLOEXEC): %s: %d", v20, *__error()];
      v35 = v12;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [v17 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v21];

      v14 = 0;
LABEL_19:

      goto LABEL_20;
    }
  }

  v14 = 0;
LABEL_20:

LABEL_21:
  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

void __49__BMFileManager_contentsOfDirectoryAtPath_error___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = fdopendir(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    memset(&v28, 0, 512);
    v25 = 0;
    v4 = readdir_r(v2, &v28, &v25);
    for (i = v4 == 0; !v4 && v25; i = v4 == 0)
    {
      if (v28.d_ino)
      {
        v6 = v28.d_namlen == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6 && (v28.d_namlen != 1 || v28.d_name[0] != 46) && (v28.d_namlen != 2 || v28.d_name[0] != 46 || v28.d_name[1] != 46))
      {
        v7 = objc_alloc(MEMORY[0x1E696AEC0]);
        v8 = [v7 initWithBytes:v28.d_name length:v28.d_namlen encoding:_NSDefaultFileSystemEncoding()];
        if ([v8 length])
        {
          [*(a1 + 32) addObject:v8];
        }
      }

      v4 = readdir_r(v3, &v28, &v25);
    }

    if (!i)
    {
      v9 = __biome_log_for_category(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __49__BMFileManager_contentsOfDirectoryAtPath_error___block_invoke_cold_1(v4, v9);
      }

      v10 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A278];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"readdir_r(): %s: %d", strerror(v4), v4];
      v27 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v13 = [v10 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v12];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    rewinddir(v3);
    if (closedir(v3) == -1)
    {
      v16 = __biome_log_for_category(2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __49__BMFileManager_contentsOfDirectoryAtPath_error___block_invoke_cold_2(v16);
      }
    }
  }

  else
  {
    v17 = *__error();
    v18 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A278];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fdopendir(): %s: %d", strerror(v17), v17];
    v30[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v21 = [v18 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v20];
    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    close(*(a1 + 48));
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)fileHandleForFileAtPath:(id)path flags:(int)flags protection:(int)protection error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    [BMFileManager fileHandleForFileAtPath:flags:protection:error:];
  }

  if ([pathCopy length])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__0;
    v39 = __Block_byref_object_dispose__0;
    v40 = 0;
    v11 = objc_autoreleasePoolPush();
    v12 = BMDataProtectionClassFromOSProtectionClass(protection);
    v13 = [[BMFileAttributes alloc] initWithPath:pathCopy mode:BMFileAccessModeFromOFlags(flags) protectionClass:v12];
    cachingOptions = self->_cachingOptions;
    delegate = [(BMFileManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v16 = [delegate cachingOptionsForFileHandleWithAttributes:v13];
    }

    else
    {
      v16 = cachingOptions & 2;
    }

    v22 = self->_cachingOptions;
    if (v22 & 1) != 0 && (v16)
    {
      v23 = self->_fileHandleCache;
    }

    else
    {
      v24 = 0;
      if ((v22 & 2) == 0 || (v16 & 2) == 0)
      {
LABEL_19:
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __64__BMFileManager_fileHandleForFileAtPath_flags_protection_error___block_invoke;
        v30[3] = &unk_1E796B2D8;
        v30[4] = self;
        flagsCopy = flags;
        protectionCopy = protection;
        v31 = pathCopy;
        v32 = &v35;
        v25 = MEMORY[0x1AC5AD7D0](v30);
        v26 = v25;
        if (v24)
        {
          [(BMCache *)v24 cachedObjectWithKey:v13 missHandler:v25];
        }

        else
        {
          (*(v25 + 16))(v25);
        }
        v21 = ;

        objc_autoreleasePoolPop(v11);
        if (error)
        {
          v27 = v36[5];
          if (v27)
          {
            *error = v27;
          }
        }

        _Block_object_dispose(&v35, 8);

        goto LABEL_26;
      }

      v23 = +[BMFileManager globalWeakFileHandleCache];
    }

    v24 = v23;
    goto LABEL_19;
  }

  v17 = __biome_log_for_category(2);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (error)
  {
    v18 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A278];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path"];
    v42[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    *error = [v18 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v20];
  }

  v21 = 0;
LABEL_26:

  v28 = *MEMORY[0x1E69E9840];

  return v21;
}

id __64__BMFileManager_fileHandleForFileAtPath_flags_protection_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _fileHandleForFileAtPath:v1 flags:v3 protection:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  return v6;
}

- (BOOL)removeFileAtPath:(id)path error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    [BMFileManager removeFileAtPath:error:];
  }

  if ([pathCopy length])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__0;
    v27[4] = __Block_byref_object_dispose__0;
    v28 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __40__BMFileManager_removeFileAtPath_error___block_invoke;
    v23[3] = &unk_1E796B300;
    v25 = &v29;
    v23[4] = self;
    v7 = pathCopy;
    v24 = v7;
    v26 = v27;
    v8 = MEMORY[0x1AC5AD7D0](v23);
    cachingOptions = self->_cachingOptions;
    if (cachingOptions)
    {
      v10 = self->_fileHandleCache;
    }

    else
    {
      if ((cachingOptions & 2) == 0)
      {
        goto LABEL_15;
      }

      v10 = +[BMFileManager globalWeakFileHandleCache];
    }

    v16 = v10;
    if (v10)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __40__BMFileManager_removeFileAtPath_error___block_invoke_2;
      v21[3] = &unk_1E796B328;
      v22 = v7;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __40__BMFileManager_removeFileAtPath_error___block_invoke_3;
      v19[3] = &unk_1E796B350;
      v20 = v8;
      [(BMCache *)v16 pruneCacheWithBlock:v21 completion:v19];

LABEL_16:
      v15 = *(v30 + 24);

      _Block_object_dispose(v27, 8);
      _Block_object_dispose(&v29, 8);
      goto LABEL_17;
    }

LABEL_15:
    v8[2](v8);
    v16 = 0;
    goto LABEL_16;
  }

  v11 = __biome_log_for_category(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A278];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path"];
    v34[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    *error = [v12 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v14];
  }

  v15 = 0;
LABEL_17:

  v17 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

void __40__BMFileManager_removeFileAtPath_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _removeFileAtPath:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

uint64_t __40__BMFileManager_removeFileAtPath_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)removeDirectoryAtPath:(id)path error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    [BMFileManager removeDirectoryAtPath:error:];
  }

  if ([pathCopy length])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__0;
    v33 = __Block_byref_object_dispose__0;
    v34 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __45__BMFileManager_removeDirectoryAtPath_error___block_invoke;
    v25[3] = &unk_1E796B300;
    v27 = &v35;
    v25[4] = self;
    v7 = pathCopy;
    v26 = v7;
    v28 = &v29;
    v8 = MEMORY[0x1AC5AD7D0](v25);
    cachingOptions = self->_cachingOptions;
    if (cachingOptions)
    {
      v15 = self->_fileHandleCache;
    }

    else
    {
      if ((cachingOptions & 2) == 0)
      {
        v10 = 0;
LABEL_14:
        if ([v7 hasSuffix:@"/"])
        {
          v16 = v7;
        }

        else
        {
          v16 = [v7 stringByAppendingString:@"/"];
        }

        v17 = v16;
        if (v10)
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __45__BMFileManager_removeDirectoryAtPath_error___block_invoke_2;
          v23[3] = &unk_1E796B328;
          v24 = v16;
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __45__BMFileManager_removeDirectoryAtPath_error___block_invoke_3;
          v21[3] = &unk_1E796B350;
          v22 = v8;
          [(BMCache *)v10 pruneCacheWithBlock:v23 completion:v21];
        }

        else
        {
          v8[2](v8);
        }

        v18 = v36;
        if (error && (v36[3] & 1) == 0)
        {
          *error = v30[5];
          v18 = v36;
        }

        LOBYTE(error) = *(v18 + 24);

        _Block_object_dispose(&v29, 8);
        _Block_object_dispose(&v35, 8);
        goto LABEL_24;
      }

      v15 = +[BMFileManager globalWeakFileHandleCache];
    }

    v10 = v15;
    goto LABEL_14;
  }

  v11 = __biome_log_for_category(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A278];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path"];
    v40[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    *error = [v12 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v14];

    LOBYTE(error) = 0;
  }

LABEL_24:

  v19 = *MEMORY[0x1E69E9840];
  return error & 1;
}

void __45__BMFileManager_removeDirectoryAtPath_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _removeDirectoryAtPath:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

uint64_t __45__BMFileManager_removeDirectoryAtPath_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

- (BOOL)createDirectoryAtPath:(id)path error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    [BMFileManager createDirectoryAtPath:error:];
  }

  if ([pathCopy length])
  {
    v7 = [(BMFileManager *)self fileHandleForFileAtPath:pathCopy flags:537920000 protection:0xFFFFFFFFLL error:error];
    LOBYTE(error) = v7 != 0;
  }

  else
  {
    v8 = __biome_log_for_category(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMFileManager fileExistsAtPath:error:];
    }

    if (error)
    {
      v9 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A278];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path"];
      v15[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *error = [v9 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v11];

      LOBYTE(error) = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return error;
}

- (unint64_t)sizeOfFileAtPath:(id)path error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    [BMFileManager sizeOfFileAtPath:error:];
  }

  if ([pathCopy length])
  {
    v23 = 0;
    v7 = [(BMFileManager *)self fileHandleForFileAtPath:pathCopy flags:0x8000 protection:0xFFFFFFFFLL error:&v23];
    v8 = v23;
    v9 = v8;
    if (!v7 || v8)
    {
      if (error)
      {
        v13 = v8;
        st_size = 0;
        *error = v9;
        goto LABEL_18;
      }
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
      if (fstat([v7 fd], &v22) != -1)
      {
        st_size = v22.st_size;
LABEL_18:

        goto LABEL_19;
      }

      if (error)
      {
        v14 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E696A278];
        v15 = MEMORY[0x1E696AEC0];
        v16 = __error();
        v17 = strerror(*v16);
        v18 = [v15 stringWithFormat:@"fstat(): %s: %d", v17, *__error()];
        v25 = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        *error = [v14 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v19];
      }
    }

    st_size = 0;
    goto LABEL_18;
  }

  v11 = __biome_log_for_category(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A278];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path"];
    v27[0] = v9;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v12 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v7];
    *error = st_size = 0;
    goto LABEL_18;
  }

  st_size = 0;
LABEL_19:

  v20 = *MEMORY[0x1E69E9840];
  return st_size;
}

- (BOOL)acquireLockfile:(id)lockfile andRunBlock:(id)block
{
  lockfileCopy = lockfile;
  blockCopy = block;
  if (!lockfileCopy)
  {
    [BMFileManager acquireLockfile:andRunBlock:];
  }

  if ([lockfileCopy length])
  {
    v23 = 0;
    v8 = [(BMFileManager *)self fileHandleForFileAtPath:lockfileCopy flags:536871424 protection:4 error:&v23];
    v9 = v23;
    v10 = v9;
    if (!v8 || v9)
    {
      v12 = __biome_log_for_category(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(BMFileManager *)lockfileCopy acquireLockfile:v10 andRunBlock:v12];
      }

      v11 = 0;
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __45__BMFileManager_acquireLockfile_andRunBlock___block_invoke;
      v14[3] = &unk_1E796B378;
      v15 = v8;
      v16 = lockfileCopy;
      v18 = &v19;
      v17 = blockCopy;
      [v15 performWithInProcessLock:v14];
      v11 = *(v20 + 24);

      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v10 = __biome_log_for_category(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BMFileManager fileExistsAtPath:error:];
    }

    v11 = 0;
  }

  return v11 & 1;
}

void __45__BMFileManager_acquireLockfile_andRunBlock___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) fd];
  v3 = +[BMProcess current];
  v4 = [v3 runningBoardAssertionWithExplanation:@"BiomeFileLock"];

  if (flock(v2, 2))
  {
    v5 = __biome_log_for_category(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 40);
      v7 = __error();
      __45__BMFileManager_acquireLockfile_andRunBlock___block_invoke_cold_1(v6, v7, v12);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
    if (flock(v2, 8))
    {
      v8 = __biome_log_for_category(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = *(a1 + 40);
        v10 = __error();
        __45__BMFileManager_acquireLockfile_andRunBlock___block_invoke_cold_2(v9, v10, v12);
      }
    }
  }

  [v4 invalidate];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dataWithContentsOfFileAtPath:(id)path error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    [BMFileManager dataWithContentsOfFileAtPath:error:];
  }

  if ([pathCopy length])
  {
    v7 = [(BMFileManager *)self fileHandleForFileAtPath:pathCopy flags:0x20000000 protection:0xFFFFFFFFLL error:error];
    v8 = v7;
    if (v7)
    {
      error = [v7 readDataWithError:error];
    }

    else
    {
      error = 0;
    }
  }

  else
  {
    v9 = __biome_log_for_category(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFileManager fileExistsAtPath:error:];
    }

    if (error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A278];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path"];
      v16[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [v10 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v12];

      error = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return error;
}

- (unint64_t)modificationTimeOfFileAtPath:(id)path error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    [BMFileManager modificationTimeOfFileAtPath:error:];
  }

  if ([pathCopy length])
  {
    v23 = 0;
    v7 = [(BMFileManager *)self fileHandleForFileAtPath:pathCopy flags:0x8000 protection:0xFFFFFFFFLL error:&v23];
    v8 = v23;
    v9 = v8;
    if (!v7 || v8)
    {
      if (error)
      {
        v13 = v8;
        tv_sec = 0;
        *error = v9;
        goto LABEL_18;
      }
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
      if (fstat([v7 fd], &v22) != -1)
      {
        tv_sec = v22.st_mtimespec.tv_sec;
LABEL_18:

        goto LABEL_19;
      }

      if (error)
      {
        v14 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E696A278];
        v15 = MEMORY[0x1E696AEC0];
        v16 = __error();
        v17 = strerror(*v16);
        v18 = [v15 stringWithFormat:@"fstat(): %s: %d", v17, *__error()];
        v25 = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        *error = [v14 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v19];
      }
    }

    tv_sec = 0;
    goto LABEL_18;
  }

  v11 = __biome_log_for_category(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A278];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path"];
    v27[0] = v9;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v12 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v7];
    *error = tv_sec = 0;
    goto LABEL_18;
  }

  tv_sec = 0;
LABEL_19:

  v20 = *MEMORY[0x1E69E9840];
  return tv_sec;
}

- (BOOL)changePermissionsOfFileAtPath:(id)path mode:(unsigned __int16)mode error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    [BMFileManager changePermissionsOfFileAtPath:mode:error:];
  }

  if ([pathCopy length])
  {
    v24 = 0;
    v9 = [(BMFileManager *)self fileHandleForFileAtPath:pathCopy flags:0 protection:0xFFFFFFFFLL error:&v24];
    v10 = v24;
    v11 = v10;
    if (!v9 || v10)
    {
      if (error)
      {
        v15 = v10;
        v12 = 0;
        *error = v11;
        goto LABEL_18;
      }
    }

    else
    {
      if (fchmod([v9 fd], mode) != -1)
      {
        v12 = 1;
LABEL_18:

        goto LABEL_19;
      }

      if (error)
      {
        v16 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A278];
        v17 = MEMORY[0x1E696AEC0];
        v18 = __error();
        v19 = strerror(*v18);
        v20 = [v17 stringWithFormat:@"fchmod(): %s: %d", v19, *__error()];
        v26 = v20;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        *error = [v16 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v21];
      }
    }

    v12 = 0;
    goto LABEL_18;
  }

  v13 = __biome_log_for_category(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (error)
  {
    v14 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A278];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path"];
    v28[0] = v11;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    [v14 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v9];
    *error = v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_19:

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)_fileHandleForFileAtPath:(id)path flags:(int)flags protection:(int)protection error:(id *)error
{
  OUTLINED_FUNCTION_2();
  v6 = objc_opt_class();
  OUTLINED_FUNCTION_4_0(v6);
  return 0;
}

- (BOOL)_removeFileAtPath:(id)path error:(id *)error
{
  OUTLINED_FUNCTION_2();
  v4 = objc_opt_class();
  OUTLINED_FUNCTION_4_0(v4);
  return 0;
}

- (BOOL)_removeDirectoryAtPath:(id)path error:(id *)error
{
  OUTLINED_FUNCTION_2();
  v4 = objc_opt_class();
  OUTLINED_FUNCTION_4_0(v4);
  return 0;
}

- (id)temporaryFileHandleWithProtection:(int)protection error:(id *)error
{
  OUTLINED_FUNCTION_2();
  v4 = objc_opt_class();
  OUTLINED_FUNCTION_4_0(v4);
  return 0;
}

- (BOOL)replaceFileAtPath:(id)path withData:(id)data protection:(int)protection flags:(int)flags error:(id *)error
{
  OUTLINED_FUNCTION_2();
  v7 = objc_opt_class();
  OUTLINED_FUNCTION_4_0(v7);
  return 0;
}

- (id)replaceFileAtPath:(id)path withFileHandle:(id)handle protection:(int)protection flags:(int)flags error:(id *)error
{
  OUTLINED_FUNCTION_2();
  v7 = objc_opt_class();
  OUTLINED_FUNCTION_4_0(v7);
  return 0;
}

- (void)fileExistsAtPath:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

- (void)contentsOfDirectoryAtPath:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

void __49__BMFileManager_contentsOfDirectoryAtPath_error___block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_FAULT, "contentsOfDirectoryAtPath:error: %{darwin.errno}d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __49__BMFileManager_contentsOfDirectoryAtPath_error___block_invoke_cold_2(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_1AC15D000, a1, OS_LOG_TYPE_FAULT, "closedir(): %{darwin.errno}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)fileHandleForFileAtPath:flags:protection:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

- (void)removeFileAtPath:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

- (void)removeDirectoryAtPath:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

- (void)createDirectoryAtPath:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

- (void)sizeOfFileAtPath:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

- (void)acquireLockfile:andRunBlock:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

- (void)acquireLockfile:(os_log_t)log andRunBlock:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1AC15D000, log, OS_LOG_TYPE_FAULT, "Failed to open lockfile %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __45__BMFileManager_acquireLockfile_andRunBlock___block_invoke_cold_1(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  OUTLINED_FUNCTION_5(a1, 5.778e-34, a2, a3);
  _os_log_fault_impl(&dword_1AC15D000, v5, OS_LOG_TYPE_FAULT, "Failed to acquire lockfile %@: %{darwin.errno}d", v4, 0x12u);
}

void __45__BMFileManager_acquireLockfile_andRunBlock___block_invoke_cold_2(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  OUTLINED_FUNCTION_5(a1, 5.778e-34, a2, a3);
  _os_log_fault_impl(&dword_1AC15D000, v5, OS_LOG_TYPE_FAULT, "Failed to unlock lockfile %@: %{darwin.errno}d", v4, 0x12u);
}

- (void)dataWithContentsOfFileAtPath:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

- (void)modificationTimeOfFileAtPath:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

- (void)changePermissionsOfFileAtPath:mode:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path" object:? file:? lineNumber:? description:?];
}

@end