@interface NSFileManager(CPLAdditions)
- (BOOL)cplCopyItemAtURL:()CPLAdditions toURL:error:;
- (BOOL)cplIsFileDoesNotExistError:()CPLAdditions;
- (BOOL)cplIsFileExistsError:()CPLAdditions;
- (uint64_t)cplFileExistsAtURL:()CPLAdditions;
- (uint64_t)cplMoveItemAtURL:()CPLAdditions toURL:error:;
@end

@implementation NSFileManager(CPLAdditions)

- (uint64_t)cplFileExistsAtURL:()CPLAdditions
{
  v4 = [a3 path];
  v5 = [a1 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)cplIsFileDoesNotExistError:()CPLAdditions
{
  v3 = a3;
  v4 = [v3 domain];
  if (![v4 isEqualToString:*MEMORY[0x1E696A250]])
  {

    goto LABEL_5;
  }

  if ([v3 code] == 4)
  {
    v5 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v7 = [v3 code];

  if (v7 != 260)
  {
LABEL_5:
    v6 = [v3 cplUnderlyingPOSIXError];
    v4 = v6;
    if (v6)
    {
      v5 = [v6 code] == 2;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_10;
  }

  v5 = 1;
LABEL_11:

  return v5;
}

- (BOOL)cplIsFileExistsError:()CPLAdditions
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [v3 code];

    if (v5 == 516)
    {
      v6 = 1;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = [v3 cplUnderlyingPOSIXError];
  v8 = v7;
  if (v7)
  {
    v6 = [v7 code] == 17;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:
  return v6;
}

- (uint64_t)cplMoveItemAtURL:()CPLAdditions toURL:error:
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 fileSystemRepresentation];
  v11 = [v9 fileSystemRepresentation];
  rename(v10, v11, v12);
  if (!v13)
  {
    goto LABEL_5;
  }

  if (*__error() != 18)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      *a5 = v19 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  if (![a1 cplCopyItemAtURL:v8 toURL:v9 error:a5])
  {
    goto LABEL_13;
  }

  [a1 removeItemAtURL:v8 error:0];
LABEL_5:
  v27 = *MEMORY[0x1E696A3A0];
  v28[0] = *MEMORY[0x1E696A388];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v15 = [v9 path];
  v22 = 0;
  v16 = [a1 setAttributes:v14 ofItemAtPath:v15 error:&v22];
  v17 = v22;

  if ((v16 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v18 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v9;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@: %@", buf, 0x16u);
    }
  }

  v19 = 1;
LABEL_14:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)cplCopyItemAtURL:()CPLAdditions toURL:error:
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = copyfile([a3 fileSystemRepresentation], objc_msgSend(v8, "fileSystemRepresentation"), 0, 0x1200008u);
  if (v9)
  {
    if (a5)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    }
  }

  else
  {
    v22 = *MEMORY[0x1E696A3A0];
    v23[0] = *MEMORY[0x1E696A388];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v11 = [v8 path];
    v17 = 0;
    v12 = [a1 setAttributes:v10 ofItemAtPath:v11 error:&v17];
    v13 = v17;

    if ((v12 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@: %@", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

@end