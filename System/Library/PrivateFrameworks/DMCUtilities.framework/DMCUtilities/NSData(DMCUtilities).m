@interface NSData(DMCUtilities)
+ (id)_DMCCreateFolderExistError;
+ (uint64_t)DMCDataWithCFData:()DMCUtilities;
- (id)DMCHexString;
- (id)DMCSHA256Hash;
- (uint64_t)DMCAtomicWriteToPath:()DMCUtilities writeOptions:error:;
- (uint64_t)DMCAtomicWriteToURL:()DMCUtilities writeOptions:error:;
@end

@implementation NSData(DMCUtilities)

- (id)DMCHexString
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  v3 = [a1 bytes];
  v4 = v10 - ((2 * v2 + 16) & 0xFFFFFFFFFFFFFFF0);
  if (v2)
  {
    v5 = v10 - ((2 * v2 + 16) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v6 = *v3++;
      *v5 = DMCHexString_digits[v6 >> 4];
      v4 = v5 + 2;
      v5[1] = DMCHexString_digits[v6 & 0xF];
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  *v4 = 0;
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:? encoding:?];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)DMCSHA256Hash
{
  v5 = *MEMORY[0x1E69E9840];
  CC_SHA256([a1 bytes], objc_msgSend(a1, "length"), md);
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (uint64_t)DMCAtomicWriteToPath:()DMCUtilities writeOptions:error:
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v42 = 0;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:v8 isDirectory:&v42];
  v11 = v42;

  if (!v10 || (v11 & 1) == 0)
  {
    v38 = a5;
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];
    v15 = [v14 URLByDeletingLastPathComponent];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [v17 UUIDString];
    v19 = [v18 substringToIndex:8];
    v20 = [v14 lastPathComponent];
    v21 = [v16 stringWithFormat:@".temp-%@-%@", v19, v20];

    v22 = v15;
    v23 = [v15 URLByAppendingPathComponent:v21];
    v41 = 0;
    LOBYTE(v20) = [a1 writeToURL:v23 options:a4 error:&v41];
    v24 = v41;
    if (v20)
    {
      v25 = [MEMORY[0x1E696AC08] defaultManager];
      v40 = v24;
      v26 = [v25 replaceItemAtURL:v14 withItemAtURL:v23 backupItemName:0 options:1 resultingItemURL:0 error:&v40];
      v27 = v40;

      v28 = *DMCLogObjects();
      v29 = v14;
      if (v26)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v44 = v14;
          _os_log_impl(&dword_1B1630000, v28, OS_LOG_TYPE_DEBUG, "Wrote file atomically in-place: %{public}@", buf, 0xCu);
        }

        v13 = 1;
        v24 = v27;
        goto LABEL_25;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v27;
        _os_log_impl(&dword_1B1630000, v28, OS_LOG_TYPE_ERROR, "Failed to replace original file: %{public}@", buf, 0xCu);
      }

      if (v38)
      {
        v32 = v27;
        *v38 = v27;
      }

      v33 = [MEMORY[0x1E696AC08] defaultManager];
      v39 = v27;
      v34 = [v33 removeItemAtURL:v23 error:&v39];
      v24 = v39;

      if ((v34 & 1) == 0)
      {
        v35 = *DMCLogObjects();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v44 = v24;
          _os_log_impl(&dword_1B1630000, v35, OS_LOG_TYPE_ERROR, "Failed to remove temporary file: %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v30 = *DMCLogObjects();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v24;
        _os_log_impl(&dword_1B1630000, v30, OS_LOG_TYPE_ERROR, "Failed to write temporary file: %{public}@", buf, 0xCu);
      }

      v29 = v14;
      if (v38)
      {
        v31 = v24;
        v13 = 0;
        *v38 = v24;
LABEL_25:

        goto LABEL_26;
      }
    }

    v13 = 0;
    goto LABEL_25;
  }

  v12 = *DMCLogObjects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v44 = v8;
    _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Failed to write temporary file since a directory is present: %{public}@", buf, 0xCu);
  }

  if (a5)
  {
    [MEMORY[0x1E695DEF0] _DMCCreateFolderExistError];
    *a5 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_26:

  v36 = *MEMORY[0x1E69E9840];
  return v13;
}

- (uint64_t)DMCAtomicWriteToURL:()DMCUtilities writeOptions:error:
{
  v8 = [a3 path];
  v9 = [a1 DMCAtomicWriteToPath:v8 writeOptions:a4 error:a5];

  return v9;
}

+ (uint64_t)DMCDataWithCFData:()DMCUtilities
{
  v4 = MEMORY[0x1E695DEF0];
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  return [v4 dataWithBytes:BytePtr length:Length];
}

+ (id)_DMCCreateFolderExistError
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = DMCErrorArray(@"ERROR_DIRECTORY_EXIST_AT_DESTINATION", a2, a3, a4, a5, a6, a7, a8, 0);
  v10 = [v8 DMCErrorWithDomain:@"DMCInternalErrorDomain" code:5 descriptionArray:v9 errorType:0];

  return v10;
}

@end