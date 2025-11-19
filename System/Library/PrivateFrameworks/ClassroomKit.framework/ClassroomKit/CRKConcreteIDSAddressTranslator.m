@interface CRKConcreteIDSAddressTranslator
- (id)destinationAddressForAppleID:(id)a3;
@end

@implementation CRKConcreteIDSAddressTranslator

- (id)destinationAddressForAppleID:(id)a3
{
  v3 = MEMORY[0x245D3A120](a3, a2);

  return v3;
}

@end