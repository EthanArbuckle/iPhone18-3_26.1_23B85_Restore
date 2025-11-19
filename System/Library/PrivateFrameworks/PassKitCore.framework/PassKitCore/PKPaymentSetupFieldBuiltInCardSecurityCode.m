@interface PKPaymentSetupFieldBuiltInCardSecurityCode
- (PKPaymentSetupFieldBuiltInCardSecurityCode)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInCardSecurityCode

- (PKPaymentSetupFieldBuiltInCardSecurityCode)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInCardSecurityCode;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"cardSecurityCode" type:a4];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_SecurityCode.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupField *)v4 setSubmissionKey:@"cardSecurityCode"];
    [(PKPaymentSetupField *)v4 setSubmissionDestination:@"enable"];
    [(PKPaymentSetupField *)v4 setSubmissionSecurity:1];
    [(PKPaymentSetupFieldText *)v4 setMinLength:3];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:4];
    [(PKPaymentSetupFieldText *)v4 setSecureText:1];
    [(PKPaymentSetupFieldText *)v4 setSecureVisibleText:1];
    [(PKPaymentSetupFieldText *)v4 setNumeric:1];
    [(PKPaymentSetupFieldText *)v4 setLuhnCheck:0];
    [(PKPaymentSetupField *)v4 setDisplayFormat:&stru_1F227FD28];
  }

  return v4;
}

@end