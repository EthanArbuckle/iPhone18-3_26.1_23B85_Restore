@interface FAFamilyPaymentInfoRequest
- (id)urlString;
@end

@implementation FAFamilyPaymentInfoRequest

- (id)urlString
{
  urlConfiguration = [MEMORY[0x277CEC860] urlConfiguration];
  familyPaymentInfoURL = [urlConfiguration familyPaymentInfoURL];

  return familyPaymentInfoURL;
}

@end