@interface PKPaymentSetupFieldBuiltInBalance
- (PKPaymentSetupFieldBuiltInBalance)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInBalance

- (PKPaymentSetupFieldBuiltInBalance)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInBalance;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"balance" type:type];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_Balance_0.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupField *)v4 setReadonly:1];
  }

  return v4;
}

@end