@interface PKPaymentSetupFieldBuiltInAddressLine1
- (PKPaymentSetupFieldBuiltInAddressLine1)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInAddressLine1

- (PKPaymentSetupFieldBuiltInAddressLine1)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  if ([(__CFString *)v6 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = @"addressLine1";
  }

  v11.receiver = self;
  v11.super_class = PKPaymentSetupFieldBuiltInAddressLine1;
  v8 = [(PKPaymentSetupFieldText *)&v11 initWithIdentifier:v7 type:a4];
  if (v8)
  {
    v9 = PKLocalizedPaymentString(&cfstr_Street1_0.isa, 0);
    [(PKPaymentSetupField *)v8 _setLocalizedDisplayName:v9];

    [(PKPaymentSetupFieldText *)v8 setMinLength:1];
    [(PKPaymentSetupFieldText *)v8 setMaxLength:50];
  }

  return v8;
}

@end