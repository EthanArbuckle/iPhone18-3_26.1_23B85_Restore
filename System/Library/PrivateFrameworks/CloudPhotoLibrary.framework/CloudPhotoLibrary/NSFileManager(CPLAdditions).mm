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
  path = [a3 path];
  v5 = [self fileExistsAtPath:path];

  return v5;
}

- (BOOL)cplIsFileDoesNotExistError:()CPLAdditions
{
  v3 = a3;
  domain = [v3 domain];
  if (![domain isEqualToString:*MEMORY[0x1E696A250]])
  {

    goto LABEL_5;
  }

  if ([v3 code] == 4)
  {
    v5 = 1;
LABEL_10:

    goto LABEL_11;
  }

  code = [v3 code];

  if (code != 260)
  {
LABEL_5:
    cplUnderlyingPOSIXError = [v3 cplUnderlyingPOSIXError];
    domain = cplUnderlyingPOSIXError;
    if (cplUnderlyingPOSIXError)
    {
      v5 = [cplUnderlyingPOSIXError code] == 2;
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
  domain = [v3 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [v3 code];

    if (code == 516)
    {
      v6 = 1;
      goto LABEL_9;
    }
  }

  else
  {
  }

  cplUnderlyingPOSIXError = [v3 cplUnderlyingPOSIXError];
  v8 = cplUnderlyingPOSIXError;
  if (cplUnderlyingPOSIXError)
  {
    v6 = [cplUnderlyingPOSIXError code] == 17;
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
  fileSystemRepresentation = [v8 fileSystemRepresentation];
  fileSystemRepresentation2 = [v9 fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v12);
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

  if (![self cplCopyItemAtURL:v8 toURL:v9 error:a5])
  {
    goto LABEL_13;
  }

  [self removeItemAtURL:v8 error:0];
LABEL_5:
  v27 = *MEMORY[0x1E696A3A0];
  v28[0] = *MEMORY[0x1E696A388];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  path = [v9 path];
  v22 = 0;
  v16 = [self setAttributes:v14 ofItemAtPath:path error:&v22];
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
    path = [v8 path];
    v17 = 0;
    v12 = [self setAttributes:v10 ofItemAtPath:path error:&v17];
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