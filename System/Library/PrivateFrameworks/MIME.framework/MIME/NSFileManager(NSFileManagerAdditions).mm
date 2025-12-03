@interface NSFileManager(NSFileManagerAdditions)
- (BOOL)mf_setValue:()NSFileManagerAdditions forExtendedAttribute:ofItemAtPath:error:;
- (id)mf_copyFileAtURLToContainer:()NSFileManagerAdditions securityScoped:preferredFileName:error:;
- (id)mf_fileModificationDateAtPath:()NSFileManagerAdditions traverseLink:;
- (id)mf_makeUniqueFileInDirectory:()NSFileManagerAdditions;
- (id)mf_pathsAtDirectory:()NSFileManagerAdditions beginningWithString:;
- (id)mf_valueForExtendedAttribute:()NSFileManagerAdditions ofItemAtPath:error:;
- (id)mf_verifyProtectionClassesForFilesInDirectory:()NSFileManagerAdditions usingBlock:;
- (uint64_t)mf_canWriteToDirectoryAtPath:()NSFileManagerAdditions;
- (uint64_t)mf_protectFileAtPath:()NSFileManagerAdditions withClass:error:;
- (uint64_t)mf_sizeForDirectoryAtPath:()NSFileManagerAdditions error:;
- (uint64_t)mf_sizeForDirectoryAtURL:()NSFileManagerAdditions error:;
@end

@implementation NSFileManager(NSFileManagerAdditions)

- (id)mf_makeUniqueFileInDirectory:()NSFileManagerAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = -86;
  if (![self fileExistsAtPath:v4 isDirectory:&v14] || (v14 & 1) == 0)
  {
    v10 = 0;
    goto LABEL_12;
  }

  memset(__b, 170, sizeof(__b));
  v5 = MEMORY[0x1E696AEC0];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  v7 = [v5 stringWithFormat:@"Mail-T%p.tmp.XXXXXX", currentThread];
  v8 = [v4 stringByAppendingPathComponent:v7];

  if (([v8 getFileSystemRepresentation:__b maxLength:1025] & 1) == 0)
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_1D36B2000, v11, OS_LOG_TYPE_DEFAULT, "#Warning *** Warning: invalid path %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v9 = mktemp(__b);
  if (!v9)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = [self stringWithFileSystemRepresentation:v9 length:strlen(v9)];
LABEL_11:

LABEL_12:
  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (uint64_t)mf_canWriteToDirectoryAtPath:()NSFileManagerAdditions
{
  v4 = a3;
  v8 = 0;
  if ([self fileExistsAtPath:v4 isDirectory:&v8])
  {
    if (v8 == 1)
    {
      v5 = [self isWritableFileAtPath:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    stringByDeletingLastPathComponent = [v4 stringByDeletingLastPathComponent];
    v5 = [self mf_canWriteToDirectoryAtPath:stringByDeletingLastPathComponent];
  }

  return v5;
}

- (id)mf_copyFileAtURLToContainer:()NSFileManagerAdditions securityScoped:preferredFileName:error:
{
  v9 = a3;
  v10 = a5;
  v11 = MEMORY[0x1E695DFF8];
  v12 = NSTemporaryDirectory();
  v13 = [v11 fileURLWithPath:v12];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v16 = [v13 URLByAppendingPathComponent:uUIDString isDirectory:1];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:a6])
  {
    if (v10)
    {
      lastPathComponent = v10;
    }

    else
    {
      lastPathComponent = [v9 lastPathComponent];
    }

    v21 = lastPathComponent;
    v20 = [v16 URLByAppendingPathComponent:lastPathComponent];

    if (a4)
    {
      [v9 startAccessingSecurityScopedResource];
    }

    v22 = [defaultManager copyItemAtURL:v9 toURL:v20 error:a6];
    if (a4)
    {
      [v9 stopAccessingSecurityScopedResource];
    }

    if (v22)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    v19 = v23;
  }

  else
  {
    v19 = 0;
    v20 = v16;
  }

  return v19;
}

- (id)mf_fileModificationDateAtPath:()NSFileManagerAdditions traverseLink:
{
  v5 = a3;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v11.st_blksize = v6;
  *v11.st_qspare = v6;
  v11.st_birthtimespec = v6;
  *&v11.st_size = v6;
  v11.st_mtimespec = v6;
  v11.st_ctimespec = v6;
  fileSystemRepresentation = [v5 fileSystemRepresentation];
  if (a4)
  {
    v8 = stat(fileSystemRepresentation, &v11);
  }

  else
  {
    v8 = lstat(fileSystemRepresentation, &v11);
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v11.st_mtimespec.tv_sec];
  }

  return v9;
}

- (uint64_t)mf_sizeForDirectoryAtPath:()NSFileManagerAdditions error:
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v7 = [self mf_sizeForDirectoryAtURL:v6 error:a4];

  return v7;
}

- (uint64_t)mf_sizeForDirectoryAtURL:()NSFileManagerAdditions error:
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  [v5 fileSystemRepresentation];
  if ((dirstat_np() & 0x80000000) != 0)
  {
    if (a4)
    {
      v13[0] = *MEMORY[0x1E696A578];
      v7 = MEMORY[0x1E696AEC0];
      v8 = __error();
      v9 = [v7 stringWithUTF8String:strerror(*v8)];
      v13[1] = *MEMORY[0x1E696A998];
      v14[0] = v9;
      v14[1] = v5;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v10];
    }

    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)mf_pathsAtDirectory:()NSFileManagerAdditions beginningWithString:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [self contentsOfDirectoryAtPath:v6 error:0];
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 hasPrefix:{v7, v18}])
        {
          v15 = [v6 stringByAppendingPathComponent:v14];
          [array addObject:v15];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];

  return array;
}

- (uint64_t)mf_protectFileAtPath:()NSFileManagerAdditions withClass:error:
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v8)
  {
    v9 = *MEMORY[0x1E696A3A0];
    switch(a4)
    {
      case 3:
        v17 = *MEMORY[0x1E696A3A0];
        v18 = *MEMORY[0x1E696A388];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        break;
      case 2:
        v19 = *MEMORY[0x1E696A3A0];
        v20 = *MEMORY[0x1E696A380];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        break;
      case 1:
        v21 = *MEMORY[0x1E696A3A0];
        v22[0] = *MEMORY[0x1E696A378];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        break;
      default:
        v15 = *MEMORY[0x1E696A3A0];
        v16 = *MEMORY[0x1E696A3A8];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        break;
    }

    v12 = v10;
    v11 = [self setAttributes:v10 ofItemAtPath:v8 error:a5];
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)mf_setValue:()NSFileManagerAdditions forExtendedAttribute:ofItemAtPath:error:
{
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    v13 = setxattr(-[__CFString fileSystemRepresentation](v11, "fileSystemRepresentation"), [v10 UTF8String], objc_msgSend(v9, "bytes"), objc_msgSend(v9, "length"), 0, 0);
  }

  else
  {
    v13 = removexattr(-[__CFString fileSystemRepresentation](v11, "fileSystemRepresentation"), [v10 UTF8String], 0);
  }

  v14 = v13;
  if (a6 && v13)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *__error();
    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = &stru_1F4F33820;
    }

    v21 = *MEMORY[0x1E696A368];
    v22[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    *a6 = [v15 errorWithDomain:*MEMORY[0x1E696A798] code:v16 userInfo:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14 == 0;
}

- (id)mf_valueForExtendedAttribute:()NSFileManagerAdditions ofItemAtPath:error:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  fileSystemRepresentation = [(__CFString *)v8 fileSystemRepresentation];
  uTF8String = [v7 UTF8String];
  v11 = getxattr(fileSystemRepresentation, uTF8String, 0, 0, 0, 0);
  if (v11 < 0)
  {
    if (a5)
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = *__error();
      if (v8)
      {
        v20 = v8;
      }

      else
      {
        v20 = &stru_1F4F33820;
      }

      v23 = *MEMORY[0x1E696A368];
      v24 = v20;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v17 = [v18 errorWithDomain:*MEMORY[0x1E696A798] code:v19 userInfo:v16];
      v12 = 0;
      goto LABEL_13;
    }

    v12 = 0;
  }

  else
  {
    v12 = [MFMutableData dataWithCapacity:v11];
    v13 = getxattr(fileSystemRepresentation, uTF8String, [v12 mutableBytes], v11, 0, 0);
    if (a5 && v13 != v11)
    {
      v14 = MEMORY[0x1E696ABC0];
      if (v8)
      {
        v15 = v8;
      }

      else
      {
        v15 = &stru_1F4F33820;
      }

      v25 = *MEMORY[0x1E696A368];
      v26[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v17 = [v14 errorWithDomain:*MEMORY[0x1E696A798] code:5 userInfo:v16];
LABEL_13:
      *a5 = v17;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)mf_verifyProtectionClassesForFilesInDirectory:()NSFileManagerAdditions usingBlock:
{
  v33[1] = *MEMORY[0x1E69E9840];
  v22 = a3;
  v26 = a4;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = *MEMORY[0x1E695DAF0];
  v33[0] = *MEMORY[0x1E695DAF0];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v7 = [self enumeratorAtURL:v22 includingPropertiesForKeys:v6 options:0 errorHandler:&__block_literal_global_10];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = *v29;
    v10 = *MEMORY[0x1E695DAF8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = v26[2](v26, v12);
        v14 = v10;
        v15 = v14;
        if (v13)
        {
          v27 = 0;
          v16 = [v12 getResourceValue:&v27 forKey:v25 error:0];
          v17 = v27;

          if (v16 && ([v17 isEqualToString:v13] & 1) == 0)
          {
            uRLByStandardizingPath = [v12 URLByStandardizingPath];
            standardizedURL = [uRLByStandardizingPath standardizedURL];
            [v23 setObject:v13 forKeyedSubscript:standardizedURL];
          }
        }

        else
        {
          v17 = v14;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v23;
}

@end