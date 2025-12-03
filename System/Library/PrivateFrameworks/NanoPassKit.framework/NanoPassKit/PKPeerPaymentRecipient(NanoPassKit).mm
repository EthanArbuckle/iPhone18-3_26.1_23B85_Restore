@interface PKPeerPaymentRecipient(NanoPassKit)
- (id)npkSanitizedAddress;
@end

@implementation PKPeerPaymentRecipient(NanoPassKit)

- (id)npkSanitizedAddress
{
  address = [self address];
  v2 = PKIDSSanitizedAddress();

  return v2;
}

@end