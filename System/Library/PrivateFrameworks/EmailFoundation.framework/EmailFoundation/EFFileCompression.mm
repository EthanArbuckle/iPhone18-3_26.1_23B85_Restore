@interface EFFileCompression
+ (BOOL)_compressFile:(const char *)file error:(id *)error;
+ (BOOL)_doCompressFile:(const char *)file errorCode:(int64_t *)code;
+ (BOOL)compressDirectory:(id)directory shouldCancel:(id)cancel error:(id *)error;
+ (BOOL)compressFile:(id)file error:(id *)error;
+ (CompressionQueueContext_s)_compressionQueueContext;
+ (OS_os_log)log;
+ (id)_compressionLock;
@end

@implementation EFFileCompression

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__EFFileCompression_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v2 = log_log_2;

  return v2;
}

void __24__EFFileCompression_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_2;
  log_log_2 = v1;
}

+ (BOOL)compressFile:(id)file error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  fileSystemRepresentation = [fileCopy fileSystemRepresentation];
  v8 = fileSystemRepresentation;
  v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v20.st_blksize = v9;
  *v20.st_qspare = v9;
  v20.st_birthtimespec = v9;
  *&v20.st_size = v9;
  v20.st_mtimespec = v9;
  v20.st_ctimespec = v9;
  *&v20.st_uid = v9;
  v20.st_atimespec = v9;
  *&v20.st_dev = v9;
  if (!fileSystemRepresentation)
  {
    goto LABEL_9;
  }

  if (stat(fileSystemRepresentation, &v20))
  {
    v10 = *__error();
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_10:
    v13 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A998];
    v22[0] = fileCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v12 = [v13 errorWithDomain:*MEMORY[0x1E696A798] code:v10 userInfo:v14];

    v15 = +[EFFileCompression log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EFFileCompression compressFile:error:];
    }

    v11 = 0;
    if (error)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if ((v20.st_mode & 0xF000) != 0x8000)
  {
LABEL_9:
    v10 = 22;
    goto LABEL_10;
  }

  if ((v20.st_flags & 0x20) == 0)
  {
    v19 = 0;
    v11 = [self _compressFile:v8 error:&v19];
    v12 = v19;
    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_14:
  v12 = 0;
  v11 = 1;
  if (error)
  {
LABEL_15:
    v16 = v12;
    *error = v12;
  }

LABEL_16:

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)compressDirectory:(id)directory shouldCancel:(id)cancel error:(id *)error
{
  v49[2] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  cancelCopy = cancel;
  if ([directoryCopy fileSystemRepresentation])
  {
    v34 = strdup([directoryCopy fileSystemRepresentation]);
    v49[0] = v34;
    v49[1] = 0;
    v8 = fts_open(v49, 80, 0);
    v9 = 0;
    v10 = 0;
    v11 = *MEMORY[0x1E696A798];
    v35 = *MEMORY[0x1E696A798];
    v36 = *MEMORY[0x1E696A998];
    v38 = 1;
    while (1)
    {
      v12 = fts_read(v8);
      if (!v12)
      {
LABEL_20:
        if (fts_close(v8) == -1)
        {
          v26 = MEMORY[0x1E696ABC0];
          v27 = *__error();
          v45 = v36;
          v46 = directoryCopy;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v22 = [v26 errorWithDomain:v35 code:v27 userInfo:v28];

          v29 = +[EFFileCompression log];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            ef_publicDescription = [v22 ef_publicDescription];
            [(EFFileCompression *)ef_publicDescription compressDirectory:buf shouldCancel:directoryCopy error:v29];
          }
        }

        else
        {
          v22 = v10;
        }

        free(v34);
        goto LABEL_29;
      }

      v13 = objc_autoreleasePoolPush();
      fts_statp = v12->fts_statp;
      if ((fts_statp->st_mode & 0xF000) == 0x8000 && (fts_statp->st_flags & 0x20) == 0)
      {
        fts_accpath = v12->fts_accpath;
        v40 = v10;
        v16 = [self _compressFile:fts_accpath error:&v40];
        v17 = v40;

        if ((v16 & 1) == 0)
        {
          v21 = 0;
          v38 = 0;
LABEL_18:
          v10 = v17;
          goto LABEL_19;
        }

        v10 = v17;
      }

      if (!cancelCopy)
      {
        goto LABEL_16;
      }

      if (v9 >= 9)
      {
        break;
      }

      v21 = 1;
      ++v9;
LABEL_19:
      objc_autoreleasePoolPop(v13);
      if ((v21 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (cancelCopy[2](cancelCopy))
    {
      v18 = +[EFFileCompression log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = directoryCopy;
        _os_log_impl(&dword_1C6152000, v18, OS_LOG_TYPE_DEFAULT, "Canceling compression of directory %@", buf, 0xCu);
      }

      v19 = MEMORY[0x1E696ABC0];
      v47 = v36;
      v48 = directoryCopy;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v17 = [v19 errorWithDomain:v35 code:4 userInfo:v20];

      v21 = 0;
      ++v9;
      goto LABEL_18;
    }

    v9 = 0;
LABEL_16:
    v21 = 1;
    goto LABEL_19;
  }

  v23 = MEMORY[0x1E696ABC0];
  v41 = *MEMORY[0x1E696A998];
  v42 = directoryCopy;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v22 = [v23 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v24];

  v25 = +[EFFileCompression log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [v22 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    +[EFFileCompression compressDirectory:shouldCancel:error:];
  }

  v38 = 1;
LABEL_29:
  if (error)
  {
    v31 = v22;
    *error = v22;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v38 & 1;
}

+ (BOOL)_compressFile:(const char *)file error:(id *)error
{
  v49[4] = *MEMORY[0x1E69E9840];
  v43 = 0;
  v7 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:file isDirectory:0 relativeToURL:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v42 = 0;
  v9 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:v7 create:1 error:&v42];
  v10 = v42;

  if (v9)
  {
    lastPathComponent = [v7 lastPathComponent];
    v12 = [v9 URLByAppendingPathComponent:lastPathComponent];

    v13 = v12;
    if (copyfile(file, [v12 fileSystemRepresentation], 0, 0x10E000Fu))
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = *__error();
      v48 = *MEMORY[0x1E696A998];
      v49[0] = v7;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v17 = [v14 errorWithDomain:*MEMORY[0x1E696A798] code:v15 userInfo:v16];

      v18 = +[EFFileCompression log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [v17 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        +[EFFileCompression _compressFile:error:];
      }

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager2 removeItemAtURL:v9 error:0];

      if (error)
      {
LABEL_21:
        v38 = v17;
        v22 = 0;
        *error = v17;
LABEL_23:

        v10 = v17;
        goto LABEL_24;
      }
    }

    else
    {
      v23 = v12;
      if ([self _doCompressFile:objc_msgSend(v12 errorCode:{"fileSystemRepresentation"), &v43}])
      {
        v24 = v12;
        fileSystemRepresentation = [v12 fileSystemRepresentation];
        rename(fileSystemRepresentation, file, v26);
        if (!v27)
        {
          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager3 removeItemAtURL:v9 error:0];

          v22 = 1;
          v17 = v10;
          goto LABEL_23;
        }

        v28 = MEMORY[0x1E696ABC0];
        v29 = *__error();
        v44 = *MEMORY[0x1E696A998];
        v45 = v7;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v17 = [v28 errorWithDomain:*MEMORY[0x1E696A798] code:v29 userInfo:v30];

        v31 = +[EFFileCompression log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [v17 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          +[EFFileCompression _compressFile:error:];
        }

        defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager4 removeItemAtURL:v9 error:0];

        if (error)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v33 = MEMORY[0x1E696ABC0];
        v34 = v43;
        v46 = *MEMORY[0x1E696A998];
        v47 = v7;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v17 = [v33 errorWithDomain:*MEMORY[0x1E696A798] code:v34 userInfo:v35];

        v36 = +[EFFileCompression log];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [v17 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          +[EFFileCompression _compressFile:error:];
        }

        defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager5 removeItemAtURL:v9 error:0];

        if (error)
        {
          goto LABEL_21;
        }
      }
    }

    v22 = 0;
    goto LABEL_23;
  }

  v20 = +[EFFileCompression log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [v10 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    +[EFFileCompression _compressFile:error:];
  }

  if (error)
  {
    v21 = v10;
    v22 = 0;
    *error = v10;
  }

  else
  {
    v22 = 0;
  }

LABEL_24:

  v39 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (BOOL)_doCompressFile:(const char *)file errorCode:(int64_t *)code
{
  _compressionLock = [self _compressionLock];
  [_compressionLock lock];
  [self _compressionQueueContext];
  if (CompressFile())
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *code = *__error();
  }

  [_compressionLock unlock];

  return v7;
}

+ (CompressionQueueContext_s)_compressionQueueContext
{
  if (_compressionQueueContext_onceToken != -1)
  {
    +[EFFileCompression _compressionQueueContext];
  }

  return _compressionQueueContext_context;
}

uint64_t __45__EFFileCompression__compressionQueueContext__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698C1B0];
  v3[0] = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  result = CreateCompressionQueue();
  _compressionQueueContext_context = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_compressionLock
{
  if (_compressionLock_onceToken != -1)
  {
    +[EFFileCompression _compressionLock];
  }

  v3 = _compressionLock_fileCompressionLock;

  return v3;
}

void __37__EFFileCompression__compressionLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = _compressionLock_fileCompressionLock;
  _compressionLock_fileCompressionLock = v0;
}

+ (void)compressFile:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ No Invalid URL for compression: %@", v4, v5);
}

+ (void)compressDirectory:(uint64_t)a3 shouldCancel:(NSObject *)a4 error:.cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 138543618;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2112;
  *(a2 + 14) = a3;
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ attempting to close fts for URL %@", a2, a4);
}

+ (void)compressDirectory:shouldCancel:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ No filesystem representation for URL %@", v4, v5);
}

+ (void)_compressFile:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ Attempting to copy file %@ to a temporary location", v4, v5);
}

+ (void)_compressFile:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ Attempting to compress file %@", v4, v5);
}

+ (void)_compressFile:error:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ Attempting to move file %@ back to its original location", v4, v5);
}

+ (void)_compressFile:error:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ Attempting to get the item replacement directory for file %@", v4, v5);
}

@end