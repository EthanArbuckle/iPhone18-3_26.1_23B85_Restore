@interface PKPaymentSetupFieldBuiltInCity
- (PKPaymentSetupFieldBuiltInCity)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInCity

- (PKPaymentSetupFieldBuiltInCity)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInCity;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"city" type:a4];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_City_0.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];
  }

  return v4;
}

@end