@interface MADAVAssetResourceLoaderDelegate
+ (void)unimplementedExceptionForMethodName:(id)a3;
- (void)resourceLoader:(id)a3 didCancelAuthenticationChallenge:(id)a4;
- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4;
@end

@implementation MADAVAssetResourceLoaderDelegate

+ (void)unimplementedExceptionForMethodName:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF30];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADAVAssetResourceLoaderDelegate %@] should not be called", v3];
  v6 = [v4 exceptionWithName:@"NotImplementedException" reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4
{
  v4 = objc_opt_class();

  [v4 unimplementedExceptionForMethodName:@"didCancelLoadingRequest"];
}

- (void)resourceLoader:(id)a3 didCancelAuthenticationChallenge:(id)a4
{
  v4 = objc_opt_class();

  [v4 unimplementedExceptionForMethodName:@"didCancelAuthenticationChallenge"];
}

@end