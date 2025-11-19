@interface PKPaymentSetupFieldBuiltInEmail
- (PKPaymentSetupFieldBuiltInEmail)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInEmail

- (PKPaymentSetupFieldBuiltInEmail)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInEmail;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"email" type:a4];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_Email_0.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupFieldText *)v4 setMinLength:1];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:64];
  }

  return v4;
}

@end