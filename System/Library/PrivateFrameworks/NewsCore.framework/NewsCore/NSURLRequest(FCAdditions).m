@interface NSURLRequest(FCAdditions)
+ (id)fcRequestWithURL:()FCAdditions;
+ (id)fcRequestWithURL:()FCAdditions cachePolicy:timeoutInterval:;
+ (void)setupFeldsparUserAgent;
@end

@implementation NSURLRequest(FCAdditions)

+ (void)setupFeldsparUserAgent
{
  v0 = objc_opt_class();
  FCSwizzleClassMethods(v0, sel_fcRequestWithURL_, sel_requestWithURL_);
  v1 = objc_opt_class();

  FCSwizzleClassMethods(v1, sel_fcRequestWithURL_cachePolicy_timeoutInterval_, sel_requestWithURL_cachePolicy_timeoutInterval_);
}

+ (id)fcRequestWithURL:()FCAdditions cachePolicy:timeoutInterval:
{
  v8 = MEMORY[0x1E695AC18];
  v9 = a4;
  v10 = [[v8 alloc] initWithURL:v9 cachePolicy:a5 timeoutInterval:a2];

  v11 = [MEMORY[0x1E695AC68] overrideUserAgent];
  [v10 setValue:v11 forHTTPHeaderField:@"User-Agent"];

  if (objc_opt_class() == a1)
  {
    v12 = v10;
  }

  else
  {
    v12 = [objc_alloc(objc_opt_class()) _initWithCFURLRequest:{objc_msgSend(v10, "_CFURLRequest")}];
  }

  v13 = v12;

  return v13;
}

+ (id)fcRequestWithURL:()FCAdditions
{
  v4 = MEMORY[0x1E695AC18];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:v5];

  v7 = [MEMORY[0x1E695AC68] overrideUserAgent];
  [v6 setValue:v7 forHTTPHeaderField:@"User-Agent"];

  if (objc_opt_class() == a1)
  {
    v8 = v6;
  }

  else
  {
    v8 = [objc_alloc(objc_opt_class()) _initWithCFURLRequest:{objc_msgSend(v6, "_CFURLRequest")}];
  }

  v9 = v8;

  return v9;
}

@end