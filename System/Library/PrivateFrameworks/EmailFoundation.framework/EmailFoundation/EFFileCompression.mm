@interface EFFileCompression
+ (BOOL)_compressFile:(const char *)a3 error:(id *)a4;
+ (BOOL)_doCompressFile:(const char *)a3 errorCode:(int64_t *)a4;
+ (BOOL)compressDirectory:(id)a3 shouldCancel:(id)a4 error:(id *)a5;
+ (BOOL)compressFile:(id)a3 error:(id *)a4;
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
  block[4] = a1;
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

+ (BOOL)compressFile:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 fileSystemRepresentation];
  v8 = v7;
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
  if (!v7)
  {
    goto LABEL_9;
  }

  if (stat(v7, &v20))
  {
    v10 = *__error();
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_10:
    v13 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A998];
    v22[0] = v6;
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
    if (a4)
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
    v11 = [a1 _compressFile:v8 error:&v19];
    v12 = v19;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_14:
  v12 = 0;
  v11 = 1;
  if (a4)
  {
LABEL_15:
    v16 = v12;
    *a4 = v12;
  }

LABEL_16:

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)compressDirectory:(id)a3 shouldCancel:(id)a4 error:(id *)a5
{
  v49[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 fileSystemRepresentation])
  {
    v34 = strdup([v6 fileSystemRepresentation]);
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
          v46 = v6;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v22 = [v26 errorWithDomain:v35 code:v27 userInfo:v28];

          v29 = +[EFFileCompression log];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = [v22 ef_publicDescription];
            [(EFFileCompression *)v30 compressDirectory:buf shouldCancel:v6 error:v29];
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
        v16 = [a1 _compressFile:fts_accpath error:&v40];
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

      if (!v7)
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

    if (v7[2](v7))
    {
      v18 = +[EFFileCompression log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v6;
        _os_log_impl(&dword_1C6152000, v18, OS_LOG_TYPE_DEFAULT, "Canceling compression of directory %@", buf, 0xCu);
      }

      v19 = MEMORY[0x1E696ABC0];
      v47 = v36;
      v48 = v6;
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
  v42 = v6;
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
  if (a5)
  {
    v31 = v22;
    *a5 = v22;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v38 & 1;
}

+ (BOOL)_compressFile:(const char *)a3 error:(id *)a4
{
  v49[4] = *MEMORY[0x1E69E9840];
  v43 = 0;
  v7 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:a3 isDirectory:0 relativeToURL:0];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v42 = 0;
  v9 = [v8 URLForDirectory:99 inDomain:1 appropriateForURL:v7 create:1 error:&v42];
  v10 = v42;

  if (v9)
  {
    v11 = [v7 lastPathComponent];
    v12 = [v9 URLByAppendingPathComponent:v11];

    v13 = v12;
    if (copyfile(a3, [v12 fileSystemRepresentation], 0, 0x10E000Fu))
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

      v19 = [MEMORY[0x1E696AC08] defaultManager];
      [v19 removeItemAtURL:v9 error:0];

      if (a4)
      {
LABEL_21:
        v38 = v17;
        v22 = 0;
        *a4 = v17;
LABEL_23:

        v10 = v17;
        goto LABEL_24;
      }
    }

    else
    {
      v23 = v12;
      if ([a1 _doCompressFile:objc_msgSend(v12 errorCode:{"fileSystemRepresentation"), &v43}])
      {
        v24 = v12;
        v25 = [v12 fileSystemRepresentation];
        rename(v25, a3, v26);
        if (!v27)
        {
          v41 = [MEMORY[0x1E696AC08] defaultManager];
          [v41 removeItemAtURL:v9 error:0];

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

        v32 = [MEMORY[0x1E696AC08] defaultManager];
        [v32 removeItemAtURL:v9 error:0];

        if (a4)
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

        v37 = [MEMORY[0x1E696AC08] defaultManager];
        [v37 removeItemAtURL:v9 error:0];

        if (a4)
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

  if (a4)
  {
    v21 = v10;
    v22 = 0;
    *a4 = v10;
  }

  else
  {
    v22 = 0;
  }

LABEL_24:

  v39 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (BOOL)_doCompressFile:(const char *)a3 errorCode:(int64_t *)a4
{
  v6 = [a1 _compressionLock];
  [v6 lock];
  [a1 _compressionQueueContext];
  if (CompressFile())
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a4 = *__error();
  }

  [v6 unlock];

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