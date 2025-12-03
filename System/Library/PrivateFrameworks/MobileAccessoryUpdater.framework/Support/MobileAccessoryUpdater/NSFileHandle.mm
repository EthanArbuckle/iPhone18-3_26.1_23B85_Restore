@interface NSFileHandle
+ (id)uarpCreateFileHandleForWritingToURL:(id)l error:(id *)error;
@end

@implementation NSFileHandle

+ (id)uarpCreateFileHandleForWritingToURL:(id)l error:(id *)error
{
  v6 = +[NSFileManager defaultManager];
  if (-[NSFileManager fileExistsAtPath:](v6, "fileExistsAtPath:", [l path]) && !-[NSFileManager removeItemAtPath:error:](v6, "removeItemAtPath:error:", objc_msgSend(l, "path"), error) || !-[NSFileManager createFileAtPath:contents:attributes:](v6, "createFileAtPath:contents:attributes:", objc_msgSend(l, "path"), 0, 0))
  {
    return 0;
  }

  return [NSFileHandle fileHandleForWritingToURL:l error:error];
}

@end