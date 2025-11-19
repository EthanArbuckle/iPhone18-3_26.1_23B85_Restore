@interface PKPaymentAuthorizationContinuitySendParam
+ (id)paramWithRemotePaymentRequest:(id)a3;
@end

@implementation PKPaymentAuthorizationContinuitySendParam

+ (id)paramWithRemotePaymentRequest:(id)a3
{
  v4 = a3;
  v5 = [a1 param];
  [v5 setRemotePaymentRequest:v4];

  return v5;
}

@end