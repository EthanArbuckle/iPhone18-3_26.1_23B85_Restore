@interface PKPaymentSetupFieldBuiltInCardOnFilePrimaryAccountNumber
- (PKPaymentSetupFieldBuiltInCardOnFilePrimaryAccountNumber)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInCardOnFilePrimaryAccountNumber

- (PKPaymentSetupFieldBuiltInCardOnFilePrimaryAccountNumber)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInCardOnFilePrimaryAccountNumber;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"cardOnFilePrimaryAccountNumber" type:a4];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_CardOnFile.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupField *)v4 setSubmissionKey:0];
    [(PKPaymentSetupField *)v4 setSubmissionDestination:0];
    [(PKPaymentSetupField *)v4 setSubmissionSecurity:0];
    [(PKPaymentSetupFieldText *)v4 setMinLength:0];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:0];
    [(PKPaymentSetupFieldText *)v4 setSecureText:0];
    [(PKPaymentSetupFieldText *)v4 setSecureVisibleText:0];
    [(PKPaymentSetupFieldText *)v4 setNumeric:0];
    [(PKPaymentSetupFieldText *)v4 setLuhnCheck:0];
    [(PKPaymentSetupField *)v4 setDisplayFormat:@"XXXX XXXXX"];
  }

  return v4;
}

@end