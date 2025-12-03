@interface PKPaymentSetupFieldBuiltInSSN
- (PKPaymentSetupFieldBuiltInSSN)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInSSN

- (PKPaymentSetupFieldBuiltInSSN)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldBuiltInSSN;
  v4 = [(PKPaymentSetupFieldText *)&v8 initWithIdentifier:@"ssnFull" type:type];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_Ssn.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    v6 = PKLocalizedPaymentString(&cfstr_SsnPlaceholder.isa, 0);
    [(PKPaymentSetupField *)v4 setLocalizedPlaceholder:v6];

    [(PKPaymentSetupField *)v4 setSubmissionSecurity:1];
    [(PKPaymentSetupFieldText *)v4 setMinLength:9];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:9];
    [(PKPaymentSetupFieldText *)v4 setSecureText:1];
    [(PKPaymentSetupFieldText *)v4 setSecureVisibleText:1];
    [(PKPaymentSetupFieldText *)v4 setNumeric:1];
    [(PKPaymentSetupFieldText *)v4 setLuhnCheck:0];
    [(PKPaymentSetupField *)v4 setDisplayFormat:@"XXX-XX-XXXX"];
  }

  return v4;
}

@end