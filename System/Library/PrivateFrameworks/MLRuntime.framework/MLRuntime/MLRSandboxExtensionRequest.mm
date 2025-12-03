@interface MLRSandboxExtensionRequest
- (MLRSandboxExtensionRequest)initWithURLs:(id)ls requireWrite:(BOOL)write;
@end

@implementation MLRSandboxExtensionRequest

- (MLRSandboxExtensionRequest)initWithURLs:(id)ls requireWrite:(BOOL)write
{
  lsCopy = ls;
  v11.receiver = self;
  v11.super_class = MLRSandboxExtensionRequest;
  v8 = [(MLRSandboxExtensionRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_URLs, ls);
    v9->_requireWrite = write;
  }

  return v9;
}

@end