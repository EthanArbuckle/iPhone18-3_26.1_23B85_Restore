@interface PKPaymentSetupFieldBuiltInLastName
- (PKPaymentSetupFieldBuiltInLastName)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInLastName

- (PKPaymentSetupFieldBuiltInLastName)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInLastName;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"lastName" type:a4];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_LastName.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupFieldText *)v4 setMinLength:1];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:64];
  }

  return v4;
}

@end