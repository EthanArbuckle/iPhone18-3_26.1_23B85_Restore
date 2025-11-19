@interface FAFamilyPaymentInfoRequest
- (id)urlString;
@end

@implementation FAFamilyPaymentInfoRequest

- (id)urlString
{
  v2 = [MEMORY[0x277CEC860] urlConfiguration];
  v3 = [v2 familyPaymentInfoURL];

  return v3;
}

@end