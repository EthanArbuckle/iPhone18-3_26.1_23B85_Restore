@interface PKPaymentSetupFieldBuiltInBalance
- (PKPaymentSetupFieldBuiltInBalance)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInBalance

- (PKPaymentSetupFieldBuiltInBalance)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInBalance;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"balance" type:a4];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_Balance_0.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupField *)v4 setReadonly:1];
  }

  return v4;
}

@end