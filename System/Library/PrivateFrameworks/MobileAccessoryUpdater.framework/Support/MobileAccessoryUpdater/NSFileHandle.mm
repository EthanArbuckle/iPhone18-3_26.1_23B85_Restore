@interface NSFileHandle
+ (id)uarpCreateFileHandleForWritingToURL:(id)a3 error:(id *)a4;
@end

@implementation NSFileHandle

+ (id)uarpCreateFileHandleForWritingToURL:(id)a3 error:(id *)a4
{
  v6 = +[NSFileManager defaultManager];
  if (-[NSFileManager fileExistsAtPath:](v6, "fileExistsAtPath:", [a3 path]) && !-[NSFileManager removeItemAtPath:error:](v6, "removeItemAtPath:error:", objc_msgSend(a3, "path"), a4) || !-[NSFileManager createFileAtPath:contents:attributes:](v6, "createFileAtPath:contents:attributes:", objc_msgSend(a3, "path"), 0, 0))
  {
    return 0;
  }

  return [NSFileHandle fileHandleForWritingToURL:a3 error:a4];
}

@end