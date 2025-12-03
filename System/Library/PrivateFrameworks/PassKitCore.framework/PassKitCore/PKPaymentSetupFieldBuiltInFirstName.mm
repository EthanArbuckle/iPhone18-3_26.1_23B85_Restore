@interface PKPaymentSetupFieldBuiltInFirstName
- (PKPaymentSetupFieldBuiltInFirstName)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInFirstName

- (PKPaymentSetupFieldBuiltInFirstName)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInFirstName;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"firstName" type:type];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_FirstName.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupFieldText *)v4 setMinLength:1];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:64];
  }

  return v4;
}

@end