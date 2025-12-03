@interface CRKConcreteIDSAddressTranslator
- (id)destinationAddressForAppleID:(id)d;
@end

@implementation CRKConcreteIDSAddressTranslator

- (id)destinationAddressForAppleID:(id)d
{
  v3 = MEMORY[0x245D3A120](d, a2);

  return v3;
}

@end