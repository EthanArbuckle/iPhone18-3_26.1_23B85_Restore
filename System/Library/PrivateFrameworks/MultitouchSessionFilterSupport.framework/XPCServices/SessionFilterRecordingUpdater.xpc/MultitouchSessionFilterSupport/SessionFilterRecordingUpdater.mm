@interface SessionFilterRecordingUpdater
- (void)appendData:(id)data toFileHandle:(id)handle withReply:(id)reply;
- (void)closeFileWithFileHandle:(id)handle withReply:(id)reply;
- (void)createDirectoryAtURL:(id)l withReply:(id)reply;
- (void)createFileAtURL:(id)l withReply:(id)reply;
- (void)deleteItemAtURL:(id)l withReply:(id)reply;
- (void)fileExistsAtURL:(id)l isDirectory:(BOOL)directory withReply:(id)reply;
- (void)filesSortedByCreationDateInDirectory:(id)directory withPathExtension:(id)extension withReply:(id)reply;
@end

@implementation SessionFilterRecordingUpdater

- (void)createDirectoryAtURL:(id)l withReply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  v14 = 0;
  v7 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v9 = [v7 fileExistsAtPath:path isDirectory:&v14];

  if (v9 && (v14 & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v11 = +[NSFileManager defaultManager];
    v15 = NSFileProtectionKey;
    v16 = NSFileProtectionCompleteUnlessOpen;
    v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = 0;
    [v11 createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:v12 error:&v13];
    v10 = v13;
  }

  replyCopy[2](replyCopy, v10);
}

- (void)filesSortedByCreationDateInDirectory:(id)directory withPathExtension:(id)extension withReply:(id)reply
{
  directoryCopy = directory;
  extensionCopy = extension;
  replyCopy = reply;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = +[NSFileManager defaultManager];
  v40[0] = NSURLPathKey;
  v40[1] = NSURLIsRegularFileKey;
  v40[2] = NSURLCreationDateKey;
  v40[3] = NSURLContentModificationDateKey;
  v40[4] = NSURLFileSizeKey;
  v12 = [NSArray arrayWithObjects:v40 count:5];
  v38 = 0;
  v13 = [v11 contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:v12 options:4 error:&v38];
  v14 = v38;

  if (!v14)
  {
    v28 = v13;
    v31 = v10;
    v32 = extensionCopy;
    v29 = replyCopy;
    v30 = directoryCopy;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          v33 = 0;
          v21 = [v20 getResourceValue:&v33 forKey:NSURLIsRegularFileKey error:0];
          v22 = v33;
          v23 = v22;
          if (v21)
          {
            if ([v22 BOOLValue])
            {
              path = [v20 path];
              lastPathComponent = [path lastPathComponent];
              v26 = [lastPathComponent hasSuffix:v32];

              if (v26)
              {
                [v31 addObject:v20];
              }
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v17);
    }

    v10 = v31;
    [v31 sortUsingComparator:&__block_literal_global_1];
    replyCopy = v29;
    directoryCopy = v30;
    extensionCopy = v32;
    v14 = 0;
    v13 = v28;
  }

  v27 = [v10 copy];
  replyCopy[2](replyCopy, v27, v14);
}

int64_t __98__SessionFilterRecordingUpdater_filesSortedByCreationDateInDirectory_withPathExtension_withReply___block_invoke(id a1, NSURL *a2, NSURL *a3)
{
  v9 = 0;
  v4 = a3;
  [(NSURL *)a2 getResourceValue:&v9 forKey:NSURLCreationDateKey error:0];
  v8 = 0;
  v5 = v9;
  [(NSURL *)v4 getResourceValue:&v8 forKey:NSURLCreationDateKey error:0];

  v6 = [v5 compare:v8];
  return v6;
}

- (void)deleteItemAtURL:(id)l withReply:(id)reply
{
  replyCopy = reply;
  lCopy = l;
  v7 = +[NSFileManager defaultManager];
  v9 = 0;
  [v7 removeItemAtURL:lCopy error:&v9];

  v8 = v9;
  replyCopy[2](replyCopy, v8);
}

- (void)createFileAtURL:(id)l withReply:(id)reply
{
  replyCopy = reply;
  path = [l path];
  v7 = open([path UTF8String], 513, 420);

  if (v7 == -1)
  {
    v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    v8 = 0;
  }

  else
  {
    v8 = [[NSFileHandle alloc] initWithFileDescriptor:v7 closeOnDealloc:1];
    v9 = 0;
  }

  v10 = v9;
  replyCopy[2](replyCopy, v8);
}

- (void)closeFileWithFileHandle:(id)handle withReply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  if (handleCopy)
  {
    if (close([handleCopy fileDescriptor]) == -1)
    {
      v8 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    errorDomain = [(SessionFilterRecordingUpdater *)self errorDomain];
    v11 = NSLocalizedDescriptionKey;
    v12 = @"No file handle";
    v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:errorDomain code:0 userInfo:v10];
  }

  replyCopy[2](replyCopy, v8);
}

- (void)appendData:(id)data toFileHandle:(id)handle withReply:(id)reply
{
  dataCopy = data;
  handleCopy = handle;
  replyCopy = reply;
  v19 = 0;
  if (!handleCopy)
  {
    errorDomain = [(SessionFilterRecordingUpdater *)self errorDomain];
    v20 = NSLocalizedDescriptionKey;
    v21 = @"No file handle";
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v12 = [NSError errorWithDomain:errorDomain code:0 userInfo:v15];

LABEL_6:
    goto LABEL_8;
  }

  v18 = 0;
  v11 = [handleCopy seekToEndReturningOffset:&v19 error:&v18];
  v12 = v18;
  if (v11)
  {
    v17 = 0;
    v13 = [handleCopy writeData:dataCopy error:&v17];
    errorDomain = v17;

    if (!v13)
    {
      v12 = errorDomain;
      goto LABEL_8;
    }

    v16 = 0;
    [handleCopy getOffset:&v19 error:&v16];
    v12 = v16;
    goto LABEL_6;
  }

LABEL_8:
  replyCopy[2](replyCopy, v19, v12);
}

- (void)fileExistsAtURL:(id)l isDirectory:(BOOL)directory withReply:(id)reply
{
  v13 = 0;
  replyCopy = reply;
  lCopy = l;
  v9 = +[NSFileManager defaultManager];
  path = [lCopy path];

  v11 = [v9 fileExistsAtPath:path isDirectory:&v13];
  if (directory == v13)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  replyCopy[2](replyCopy, v12);
}

@end