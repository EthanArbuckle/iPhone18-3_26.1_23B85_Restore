@interface FAFamilyPaymentCardUIRequest
- (id)urlString;
@end

@implementation FAFamilyPaymentCardUIRequest

- (id)urlString
{
  v2 = [MEMORY[0x277CEC860] urlConfiguration];
  v3 = [v2 familyPaymentCardUIURL];

  return v3;
}

@end