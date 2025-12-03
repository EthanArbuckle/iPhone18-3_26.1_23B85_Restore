@interface CDPStateHandlerResult
+ (id)resultWithError:(id)error;
+ (id)successResult;
@end

@implementation CDPStateHandlerResult

+ (id)resultWithError:(id)error
{
  errorCopy = error;
  v4 = [objc_opt_class() resultWithCloudDataProtectionEnabled:0 shouldCompleteSignIn:0 error:errorCopy];

  return v4;
}

+ (id)successResult
{
  v2 = objc_opt_class();

  return [v2 resultWithCloudDataProtectionEnabled:1 shouldCompleteSignIn:1 error:0];
}

@end