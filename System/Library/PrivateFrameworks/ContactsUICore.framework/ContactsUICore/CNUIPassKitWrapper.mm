@interface CNUIPassKitWrapper
+ (BOOL)isPeerPaymentAvailable;
@end

@implementation CNUIPassKitWrapper

+ (BOOL)isPeerPaymentAvailable
{
  v2 = MGGetBoolAnswer();
  if (v2)
  {
    v3 = softLinkPKPeerPaymentIsAvailable;

    LOBYTE(v2) = v3();
  }

  return v2;
}

@end