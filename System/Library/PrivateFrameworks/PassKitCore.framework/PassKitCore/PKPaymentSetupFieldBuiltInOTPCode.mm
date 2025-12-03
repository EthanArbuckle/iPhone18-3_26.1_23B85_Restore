@interface PKPaymentSetupFieldBuiltInOTPCode
- (PKPaymentSetupFieldBuiltInOTPCode)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInOTPCode

- (PKPaymentSetupFieldBuiltInOTPCode)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldBuiltInOTPCode;
  v4 = [(PKPaymentSetupFieldText *)&v8 initWithIdentifier:@"otpCode" type:type];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_VerificationCo.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    v6 = PKLocalizedPaymentString(&cfstr_EnterCodeButto.isa, 0);
    [(PKPaymentSetupField *)v4 setLocalizedPlaceholder:v6];

    [(PKPaymentSetupFieldText *)v4 setMinLength:4];
    [(PKPaymentSetupFieldText *)v4 setSecureText:1];
    [(PKPaymentSetupFieldText *)v4 setSecureVisibleText:1];
    [(PKPaymentSetupFieldText *)v4 setNumeric:1];
    [(PKPaymentSetupFieldText *)v4 setLuhnCheck:0];
    [(PKPaymentSetupField *)v4 setDisplayFormat:&stru_1F227FD28];
  }

  return v4;
}

@end