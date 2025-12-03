@interface PKPaymentSetupFieldBuiltInCity
- (PKPaymentSetupFieldBuiltInCity)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInCity

- (PKPaymentSetupFieldBuiltInCity)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInCity;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"city" type:type];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_City_0.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];
  }

  return v4;
}

@end