@interface NSFileHandle
+ (id)uarpCreateFileHandleForWritingToURL:(id)l error:(id *)error;
@end

@implementation NSFileHandle

+ (id)uarpCreateFileHandleForWritingToURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v8 = [v6 fileExistsAtPath:path];

  if (v8)
  {
    path2 = [lCopy path];
    v10 = [v6 removeItemAtPath:path2 error:error];

    if (!v10)
    {
      goto LABEL_5;
    }
  }

  path3 = [lCopy path];
  v12 = [v6 createFileAtPath:path3 contents:0 attributes:0];

  if (v12)
  {
    v13 = [NSFileHandle fileHandleForWritingToURL:lCopy error:error];
  }

  else
  {
LABEL_5:
    v13 = 0;
  }

  return v13;
}

@end