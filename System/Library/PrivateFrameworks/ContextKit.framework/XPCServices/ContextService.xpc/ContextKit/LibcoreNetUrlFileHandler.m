@interface LibcoreNetUrlFileHandler
- (id)openConnectionWithJavaNetURL:(id)a3 withJavaNetProxy:(id)a4;
@end

@implementation LibcoreNetUrlFileHandler

- (id)openConnectionWithJavaNetURL:(id)a3 withJavaNetProxy:(id)a4
{
  if (!a3)
  {
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(@"url == null");
    objc_exception_throw(v11);
  }

  v6 = [a3 getHost];
  if (!v6 || (v7 = v6, ([(__CFString *)v6 isEmpty]& 1) != 0) || [(__CFString *)v7 equalsIgnoreCase:@"localhost"])
  {
    v8 = new_LibcoreNetUrlFileURLConnection_initWithJavaNetURL_(a3);

    return v8;
  }

  else
  {
    v10 = new_JavaNetURL_initWithNSString_withNSString_withNSString_(@"ftp", v7, [a3 getFile]);
    if (a4)
    {

      return [(JavaNetURL *)v10 openConnectionWithJavaNetProxy:a4];
    }

    else
    {

      return [(JavaNetURL *)v10 openConnection];
    }
  }
}

@end