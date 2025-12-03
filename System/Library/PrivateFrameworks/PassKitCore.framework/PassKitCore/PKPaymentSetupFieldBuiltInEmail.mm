@interface PKPaymentSetupFieldBuiltInEmail
- (PKPaymentSetupFieldBuiltInEmail)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInEmail

- (PKPaymentSetupFieldBuiltInEmail)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInEmail;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"email" type:type];
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