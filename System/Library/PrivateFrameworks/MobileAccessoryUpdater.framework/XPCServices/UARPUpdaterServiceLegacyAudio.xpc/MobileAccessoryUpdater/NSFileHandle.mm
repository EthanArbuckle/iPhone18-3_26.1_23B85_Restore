@interface NSFileHandle
+ (id)uarpCreateFileHandleForWritingToURL:(id)a3 error:(id *)a4;
@end

@implementation NSFileHandle

+ (id)uarpCreateFileHandleForWritingToURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = [v5 path];
    v10 = [v6 removeItemAtPath:v9 error:a4];

    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [v5 path];
  v12 = [v6 createFileAtPath:v11 contents:0 attributes:0];

  if (v12)
  {
    v13 = [NSFileHandle fileHandleForWritingToURL:v5 error:a4];
  }

  else
  {
LABEL_5:
    v13 = 0;
  }

  return v13;
}

@end