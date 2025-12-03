@interface MADAVAssetResourceLoaderDelegate
+ (void)unimplementedExceptionForMethodName:(id)name;
- (void)resourceLoader:(id)loader didCancelAuthenticationChallenge:(id)challenge;
- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request;
@end

@implementation MADAVAssetResourceLoaderDelegate

+ (void)unimplementedExceptionForMethodName:(id)name
{
  nameCopy = name;
  v4 = MEMORY[0x1E695DF30];
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADAVAssetResourceLoaderDelegate %@] should not be called", nameCopy];
  v6 = [v4 exceptionWithName:@"NotImplementedException" reason:nameCopy userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request
{
  v4 = objc_opt_class();

  [v4 unimplementedExceptionForMethodName:@"didCancelLoadingRequest"];
}

- (void)resourceLoader:(id)loader didCancelAuthenticationChallenge:(id)challenge
{
  v4 = objc_opt_class();

  [v4 unimplementedExceptionForMethodName:@"didCancelAuthenticationChallenge"];
}

@end