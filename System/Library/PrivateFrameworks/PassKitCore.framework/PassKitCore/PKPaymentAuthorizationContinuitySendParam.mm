@interface PKPaymentAuthorizationContinuitySendParam
+ (id)paramWithRemotePaymentRequest:(id)request;
@end

@implementation PKPaymentAuthorizationContinuitySendParam

+ (id)paramWithRemotePaymentRequest:(id)request
{
  requestCopy = request;
  param = [self param];
  [param setRemotePaymentRequest:requestCopy];

  return param;
}

@end