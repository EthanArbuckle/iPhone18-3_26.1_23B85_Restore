@interface NSFileManager(CLSNSFileManagerExtensions)
+ (id)temporaryFilePathWithExtension:()CLSNSFileManagerExtensions;
- (id)incrementalPathInDirectory:()CLSNSFileManagerExtensions withFilename:andExtension:;
- (uint64_t)createDirectoryIfNecessary:()CLSNSFileManagerExtensions;
@end

@implementation NSFileManager(CLSNSFileManagerExtensions)

- (id)incrementalPathInDirectory:()CLSNSFileManagerExtensions withFilename:andExtension:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 stringByAppendingPathComponent:v9];
  v12 = [v11 stringByAppendingPathExtension:v10];

  if ([a1 fileExistsAtPath:v12])
  {
    v13 = 2;
    do
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %lu.%@", v9, v13, v10];
      v15 = [v8 stringByAppendingPathComponent:v14];

      ++v13;
      v12 = v15;
    }

    while (([a1 fileExistsAtPath:v15] & 1) != 0);
  }

  else
  {
    v15 = v12;
  }

  return v15;
}

- (uint64_t)createDirectoryIfNecessary:()CLSNSFileManagerExtensions
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0;
  if ([a1 fileExistsAtPath:v4 isDirectory:&v12])
  {
    v5 = v12;
  }

  else
  {
    v11 = 0;
    v5 = [a1 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v11];
    v6 = v11;
    if ((v5 & 1) == 0)
    {
      v7 = +[CLSLogging sharedLogging];
      v8 = [v7 loggingConnection];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 localizedDescription];
        *buf = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v10;
        _os_log_error_impl(&dword_22F907000, v8, OS_LOG_TYPE_ERROR, "An error occured creating a directory at %@: %@", buf, 0x16u);
      }
    }
  }

  return v5 & 1;
}

+ (id)temporaryFilePathWithExtension:()CLSNSFileManagerExtensions
{
  v3 = a3;
  v4 = NSTemporaryDirectory();
  v5 = [MEMORY[0x277CCACA8] cls_generateUUID];
  v6 = [v5 stringByAppendingPathExtension:v3];

  v7 = [v4 stringByAppendingPathComponent:v6];

  return v7;
}

@end