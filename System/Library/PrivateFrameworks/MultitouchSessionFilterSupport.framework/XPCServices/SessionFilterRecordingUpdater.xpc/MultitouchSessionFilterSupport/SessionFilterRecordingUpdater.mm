@interface SessionFilterRecordingUpdater
- (void)appendData:(id)a3 toFileHandle:(id)a4 withReply:(id)a5;
- (void)closeFileWithFileHandle:(id)a3 withReply:(id)a4;
- (void)createDirectoryAtURL:(id)a3 withReply:(id)a4;
- (void)createFileAtURL:(id)a3 withReply:(id)a4;
- (void)deleteItemAtURL:(id)a3 withReply:(id)a4;
- (void)fileExistsAtURL:(id)a3 isDirectory:(BOOL)a4 withReply:(id)a5;
- (void)filesSortedByCreationDateInDirectory:(id)a3 withPathExtension:(id)a4 withReply:(id)a5;
@end

@implementation SessionFilterRecordingUpdater

- (void)createDirectoryAtURL:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v7 = +[NSFileManager defaultManager];
  v8 = [v5 path];
  v9 = [v7 fileExistsAtPath:v8 isDirectory:&v14];

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
    [v11 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:v12 error:&v13];
    v10 = v13;
  }

  v6[2](v6, v10);
}

- (void)filesSortedByCreationDateInDirectory:(id)a3 withPathExtension:(id)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = +[NSFileManager defaultManager];
  v40[0] = NSURLPathKey;
  v40[1] = NSURLIsRegularFileKey;
  v40[2] = NSURLCreationDateKey;
  v40[3] = NSURLContentModificationDateKey;
  v40[4] = NSURLFileSizeKey;
  v12 = [NSArray arrayWithObjects:v40 count:5];
  v38 = 0;
  v13 = [v11 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v12 options:4 error:&v38];
  v14 = v38;

  if (!v14)
  {
    v28 = v13;
    v31 = v10;
    v32 = v8;
    v29 = v9;
    v30 = v7;
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
              v24 = [v20 path];
              v25 = [v24 lastPathComponent];
              v26 = [v25 hasSuffix:v32];

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
    v9 = v29;
    v7 = v30;
    v8 = v32;
    v14 = 0;
    v13 = v28;
  }

  v27 = [v10 copy];
  v9[2](v9, v27, v14);
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

- (void)deleteItemAtURL:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v9 = 0;
  [v7 removeItemAtURL:v6 error:&v9];

  v8 = v9;
  v5[2](v5, v8);
}

- (void)createFileAtURL:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = [a3 path];
  v7 = open([v6 UTF8String], 513, 420);

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
  v5[2](v5, v8);
}

- (void)closeFileWithFileHandle:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (close([v6 fileDescriptor]) == -1)
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
    v9 = [(SessionFilterRecordingUpdater *)self errorDomain];
    v11 = NSLocalizedDescriptionKey;
    v12 = @"No file handle";
    v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:v9 code:0 userInfo:v10];
  }

  v7[2](v7, v8);
}

- (void)appendData:(id)a3 toFileHandle:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = 0;
  if (!v9)
  {
    v14 = [(SessionFilterRecordingUpdater *)self errorDomain];
    v20 = NSLocalizedDescriptionKey;
    v21 = @"No file handle";
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v12 = [NSError errorWithDomain:v14 code:0 userInfo:v15];

LABEL_6:
    goto LABEL_8;
  }

  v18 = 0;
  v11 = [v9 seekToEndReturningOffset:&v19 error:&v18];
  v12 = v18;
  if (v11)
  {
    v17 = 0;
    v13 = [v9 writeData:v8 error:&v17];
    v14 = v17;

    if (!v13)
    {
      v12 = v14;
      goto LABEL_8;
    }

    v16 = 0;
    [v9 getOffset:&v19 error:&v16];
    v12 = v16;
    goto LABEL_6;
  }

LABEL_8:
  v10[2](v10, v19, v12);
}

- (void)fileExistsAtURL:(id)a3 isDirectory:(BOOL)a4 withReply:(id)a5
{
  v13 = 0;
  v7 = a5;
  v8 = a3;
  v9 = +[NSFileManager defaultManager];
  v10 = [v8 path];

  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v13];
  if (a4 == v13)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v7[2](v7, v12);
}

@end