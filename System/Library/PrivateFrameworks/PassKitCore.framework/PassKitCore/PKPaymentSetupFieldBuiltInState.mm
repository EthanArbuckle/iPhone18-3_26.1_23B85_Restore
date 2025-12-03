@interface PKPaymentSetupFieldBuiltInState
- (PKPaymentSetupFieldBuiltInState)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInState

- (PKPaymentSetupFieldBuiltInState)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInState;
  v4 = [(PKPaymentSetupField *)&v7 initWithIdentifier:@"state" type:type];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_State_2.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];
  }

  return v4;
}

@end