@interface MLRSandboxExtensionRequest
- (MLRSandboxExtensionRequest)initWithURLs:(id)a3 requireWrite:(BOOL)a4;
@end

@implementation MLRSandboxExtensionRequest

- (MLRSandboxExtensionRequest)initWithURLs:(id)a3 requireWrite:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MLRSandboxExtensionRequest;
  v8 = [(MLRSandboxExtensionRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_URLs, a3);
    v9->_requireWrite = a4;
  }

  return v9;
}

@end