@interface PKPaymentSetupFieldBuiltInCountryCode
- (PKPaymentSetupFieldBuiltInCountryCode)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInCountryCode

- (PKPaymentSetupFieldBuiltInCountryCode)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInCountryCode;
  v4 = [(PKPaymentSetupField *)&v7 initWithIdentifier:@"countryCode" type:type];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_CountryCode.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];
  }

  return v4;
}

@end