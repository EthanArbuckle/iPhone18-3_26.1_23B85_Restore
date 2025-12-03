@interface NSFileManager(CalClassAdditions)
+ (__CFString)mimeTypeForFile:()CalClassAdditions;
- (BOOL)makeCompletePath:()CalClassAdditions mode:;
- (char)makeUniqueDirectoryWithPath:()CalClassAdditions;
- (id)CalTemporaryDirectoryAppropriateForURL:()CalClassAdditions;
- (id)archivedDataAtPath:()CalClassAdditions createPKZipArchive:error:;
- (uint64_t)archivePathToFile:()CalClassAdditions toFile:createPKZipArchive:error:;
- (uint64_t)archiveURLToFile:()CalClassAdditions toFile:createPKZipArchive:error:;
@end

@implementation NSFileManager(CalClassAdditions)

+ (__CFString)mimeTypeForFile:()CalClassAdditions
{
  pathExtension = [a3 pathExtension];
  v4 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
  preferredMIMEType = [v4 preferredMIMEType];
  if ([preferredMIMEType length])
  {
    v6 = preferredMIMEType;
  }

  else
  {
    identifier = [v4 identifier];
    v8 = [identifier isEqualToString:@"com.apple.traditional-mac-plain-text"];

    if (v8)
    {
      v6 = @"text/plain";
    }

    else
    {
      v6 = @"application/octet-stream";
    }
  }

  return v6;
}

- (char)makeUniqueDirectoryWithPath:()CalClassAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([self fileExistsAtPath:v4] & 1) != 0 || !objc_msgSend(self, "makeCompletePath:mode:", v4, 448) || (v5 = v4) == 0)
  {
    strcpy(v19, ".tmp.XXXXXX");
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-T%p", currentThread];
    uTF8String = [v7 UTF8String];
    if (strlen(uTF8String) >= 0x11)
    {
      v9 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NSFileManager(CalClassAdditions) makeUniqueDirectoryWithPath:v9];
      }
    }

    if ([v4 getFileSystemRepresentation:__s maxLength:1053])
    {
      v10 = strlen(__s);
      if (v10 >= 0x400)
      {
        v11 = 1024;
      }

      else
      {
        v11 = v10;
      }

      v12 = strlen(uTF8String);
      snprintf(&__s[v11], v12, "-T%p", currentThread);
      __strlcat_chk();
      v5 = mkdtemp(__s);
      if (!v5 && *__error() == 2 && ([MEMORY[0x1E696AC08] defaultManager], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "stringByDeletingLastPathComponent"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "makeCompletePath:mode:", v14, 448), v14, v13, v15))
      {
        [v4 getFileSystemRepresentation:__s maxLength:1053];
        __strlcat_chk();
        v5 = mkdtemp(__s);
      }

      else
      {
        *__error() = 2;
      }

      if (v5)
      {
        v5 = [self stringWithFileSystemRepresentation:v5 length:strlen(v5)];
      }
    }

    else
    {
      NSLog(&cfstr_WarningInvalid.isa, v4);

      v5 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)makeCompletePath:()CalClassAdditions mode:
{
  v6 = a3;
  if (a4)
  {
    v7 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = [MEMORY[0x1E696AD98] numberWithInt:a4];
    v9 = [v7 initWithObjectsAndKeys:{v8, *MEMORY[0x1E696A370], 0}];
  }

  else
  {
    v9 = 0;
  }

  stringByStandardizingPath = [v6 stringByStandardizingPath];

  pathComponents = [stringByStandardizingPath pathComponents];
  v12 = [pathComponents count];
  v13 = stringByStandardizingPath;
  v14 = v13;
  if (v12)
  {
    v15 = v12;
    v16 = v13;
    while (([self fileExistsAtPath:v16] & 1) == 0)
    {
      stringByDeletingLastPathComponent = [v16 stringByDeletingLastPathComponent];

      v16 = stringByDeletingLastPathComponent;
      if (!--v15)
      {
        goto LABEL_11;
      }
    }

    stringByDeletingLastPathComponent = v16;
  }

  else
  {
    v15 = 0;
    stringByDeletingLastPathComponent = v13;
  }

LABEL_11:
  if (v15 >= v12)
  {
LABEL_15:
    v18 = 1;
  }

  else
  {
    v18 = 0;
    while (1)
    {
      v19 = stringByDeletingLastPathComponent;
      v20 = [pathComponents objectAtIndex:v15];
      stringByDeletingLastPathComponent = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v20];

      if (([self createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:0 attributes:v9 error:0] & 1) == 0)
      {
        break;
      }

      v18 = ++v15 >= v12;
      if (v12 == v15)
      {
        goto LABEL_15;
      }
    }

    NSLog(&cfstr_CouldnTCreateP.isa, stringByDeletingLastPathComponent);
  }

  return v18;
}

- (id)archivedDataAtPath:()CalClassAdditions createPKZipArchive:error:
{
  keys[6] = *MEMORY[0x1E69E9840];
  v8 = a3;
  selfCopy = self;
  v10 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:v8 options:0 error:a5];
  v11 = v10;
  if (!v10)
  {
    v29 = 0;
    goto LABEL_25;
  }

  v35 = selfCopy;
  filename = [v10 filename];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v14 = [defaultManager CalTemporaryDirectoryAppropriateForURL:v8];
  v15 = [v14 URLByAppendingPathComponent:@"com.apple.iCal.SavedAttachment"];
  path = [v15 path];
  v17 = [defaultManager makeUniqueDirectoryWithPath:path];

  v18 = [v17 stringByAppendingPathComponent:filename];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18];
    v20 = [v11 writeToURL:v19 options:0 originalContentsURL:0 error:a5];

    if (v20)
    {
      v21 = BOMCopierNew();
      if (a4)
      {
        v22 = @"createPKZip";
      }

      else
      {
        v22 = @"createCPIO";
      }

      v23 = CFWriteStreamCreateWithAllocatedBuffers(0, 0);
      if (v23)
      {
        v24 = v23;
        if (CFWriteStreamOpen(v23))
        {
          keys[0] = v22;
          keys[1] = @"sequesterResources";
          keys[2] = @"keepParent";
          keys[3] = @"copyResources";
          keys[4] = @"compress";
          keys[5] = @"outputStream";
          v25 = *MEMORY[0x1E695E4D0];
          v26 = *MEMORY[0x1E695E4C0];
          if (a4)
          {
            v27 = *MEMORY[0x1E695E4D0];
          }

          else
          {
            v27 = *MEMORY[0x1E695E4C0];
          }

          values[0] = *MEMORY[0x1E695E4D0];
          values[1] = v27;
          values[2] = v25;
          values[3] = v25;
          if (a4)
          {
            v25 = v26;
          }

          values[4] = v25;
          values[5] = v24;
          v28 = CFDictionaryCreate(0, keys, values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          BOMCopierSetUserData();
          BOMCopierSetFatalErrorHandler();
          BOMCopierSetFatalFileErrorHandler();
          [v18 fileSystemRepresentation];
          v29 = 0;
          if (!BOMCopierCopyWithOptions())
          {
            v29 = CFWriteStreamCopyProperty(v24, *MEMORY[0x1E695E900]);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          if (v21)
          {
            BOMCopierFree();
          }
        }

        else
        {
          v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSData *_archiveForURL(__strong id, NSURL *__strong, BOOL, NSError *__autoreleasing *)"}];
          NSLog(&cfstr_UnableToOpenWr.isa, v34, v24);

          v29 = 0;
        }

        CFRelease(v24);
        if (!v17)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSData *_archiveForURL(__strong id, NSURL *__strong, BOOL, NSError *__autoreleasing *)"}];
      NSLog(&cfstr_UnableToCreate.isa, v30);
    }
  }

  v29 = 0;
  if (v17)
  {
LABEL_23:
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 removeItemAtPath:v17 error:0];
  }

LABEL_24:

  selfCopy = v35;
LABEL_25:

  v32 = *MEMORY[0x1E69E9840];

  return v29;
}

- (uint64_t)archiveURLToFile:()CalClassAdditions toFile:createPKZipArchive:error:
{
  v10 = a4;
  v11 = [self archivedDataAtPath:a3 createPKZipArchive:a5];
  if (v11)
  {
    path = [v10 path];
    v13 = [v11 writeToFile:path options:0 error:a6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (uint64_t)archivePathToFile:()CalClassAdditions toFile:createPKZipArchive:error:
{
  v10 = MEMORY[0x1E695DFF8];
  v11 = a4;
  v12 = [v10 fileURLWithPath:a3];
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];

  v14 = [self archiveURLToFile:v12 toFile:v13 createPKZipArchive:a5 error:a6];
  return v14;
}

- (id)CalTemporaryDirectoryAppropriateForURL:()CalClassAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = NSTemporaryDirectory();
    v5 = [v6 fileURLWithPath:v7];
  }

  v12 = 0;
  v8 = [self URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:&v12];
  v9 = v12;
  if (!v8)
  {
    v10 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(NSFileManager(CalClassAdditions) *)v4 CalTemporaryDirectoryAppropriateForURL:v9, v10];
    }
  }

  return v8;
}

- (void)CalTemporaryDirectoryAppropriateForURL:()CalClassAdditions .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B990D000, log, OS_LOG_TYPE_ERROR, "Error finding temporary directory appropriate for %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end