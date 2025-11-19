@interface CDPStateHandlerResult
+ (id)resultWithError:(id)a3;
+ (id)successResult;
@end

@implementation CDPStateHandlerResult

+ (id)resultWithError:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() resultWithCloudDataProtectionEnabled:0 shouldCompleteSignIn:0 error:v3];

  return v4;
}

+ (id)successResult
{
  v2 = objc_opt_class();

  return [v2 resultWithCloudDataProtectionEnabled:1 shouldCompleteSignIn:1 error:0];
}

@end