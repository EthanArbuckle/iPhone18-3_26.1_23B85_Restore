@interface PKPeerPaymentRecipient(NanoPassKit)
- (id)npkSanitizedAddress;
@end

@implementation PKPeerPaymentRecipient(NanoPassKit)

- (id)npkSanitizedAddress
{
  v1 = [a1 address];
  v2 = PKIDSSanitizedAddress();

  return v2;
}

@end