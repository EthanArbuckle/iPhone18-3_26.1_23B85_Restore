@interface LibcoreNetUrlFileHandler
- (id)openConnectionWithJavaNetURL:(id)l withJavaNetProxy:(id)proxy;
@end

@implementation LibcoreNetUrlFileHandler

- (id)openConnectionWithJavaNetURL:(id)l withJavaNetProxy:(id)proxy
{
  if (!l)
  {
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(@"url == null");
    objc_exception_throw(v11);
  }

  getHost = [l getHost];
  if (!getHost || (v7 = getHost, ([(__CFString *)getHost isEmpty]& 1) != 0) || [(__CFString *)v7 equalsIgnoreCase:@"localhost"])
  {
    v8 = new_LibcoreNetUrlFileURLConnection_initWithJavaNetURL_(l);

    return v8;
  }

  else
  {
    v10 = new_JavaNetURL_initWithNSString_withNSString_withNSString_(@"ftp", v7, [l getFile]);
    if (proxy)
    {

      return [(JavaNetURL *)v10 openConnectionWithJavaNetProxy:proxy];
    }

    else
    {

      return [(JavaNetURL *)v10 openConnection];
    }
  }
}

@end