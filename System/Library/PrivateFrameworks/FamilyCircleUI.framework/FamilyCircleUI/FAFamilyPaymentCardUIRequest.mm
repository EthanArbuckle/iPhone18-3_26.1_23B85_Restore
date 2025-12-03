@interface FAFamilyPaymentCardUIRequest
- (id)urlString;
@end

@implementation FAFamilyPaymentCardUIRequest

- (id)urlString
{
  urlConfiguration = [MEMORY[0x277CEC860] urlConfiguration];
  familyPaymentCardUIURL = [urlConfiguration familyPaymentCardUIURL];

  return familyPaymentCardUIURL;
}

@end