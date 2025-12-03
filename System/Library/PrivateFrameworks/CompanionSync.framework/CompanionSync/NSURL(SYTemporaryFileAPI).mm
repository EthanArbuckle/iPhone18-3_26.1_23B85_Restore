@interface NSURL(SYTemporaryFileAPI)
+ (id)_SYTemporaryFileURL:()SYTemporaryFileAPI;
@end

@implementation NSURL(SYTemporaryFileAPI)

+ (id)_SYTemporaryFileURL:()SYTemporaryFileAPI
{
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"CompanionSync"];

  v6 = v5;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager fileExistsAtPath:v6];

  if (v8)
  {

LABEL_4:
    v12 = [v6 stringByAppendingPathComponent:@"XXXXXXXX"];
    v13 = strdup([v12 UTF8String]);
    v14 = mkstemp(v13);
    if (v14 == -1)
    {
      if (a3)
      {
        v15 = *__error();
        v16 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = [v16 initWithDomain:*MEMORY[0x1E696A798] code:v15 userInfo:0];
        v11 = 0;
        *a3 = v17;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      close(v14);
      v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v13 isDirectory:0 relativeToURL:0];
    }

    free(v13);

    goto LABEL_10;
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [defaultManager2 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:a3];

  v11 = 0;
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_10:

  return v11;
}

@end