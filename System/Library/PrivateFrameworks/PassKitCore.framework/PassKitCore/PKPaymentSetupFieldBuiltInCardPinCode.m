@interface PKPaymentSetupFieldBuiltInCardPinCode
- (PKPaymentSetupFieldBuiltInCardPinCode)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInCardPinCode

- (PKPaymentSetupFieldBuiltInCardPinCode)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldBuiltInCardPinCode;
  v4 = [(PKPaymentSetupFieldText *)&v8 initWithIdentifier:@"cardPIN" type:a4];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_CardPinCode.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    v6 = PKLocalizedPaymentString(&cfstr_CardPinCodePla.isa, 0);
    [(PKPaymentSetupField *)v4 setLocalizedPlaceholder:v6];

    [(PKPaymentSetupField *)v4 setSubmissionKey:@"cardPIN"];
    [(PKPaymentSetupField *)v4 setSubmissionDestination:@"enable"];
    [(PKPaymentSetupField *)v4 setSubmissionSecurity:2];
    [(PKPaymentSetupField *)v4 setFieldSubmissionEncryptionScheme:@"EV_ECC_v3"];
    [(PKPaymentSetupFieldText *)v4 setMinLength:4];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:12];
    [(PKPaymentSetupFieldText *)v4 setSecureText:1];
    [(PKPaymentSetupFieldText *)v4 setSecureTextVisibility:0];
    [(PKPaymentSetupFieldText *)v4 setNumeric:1];
    [(PKPaymentSetupFieldText *)v4 setLuhnCheck:0];
    [(PKPaymentSetupField *)v4 setDisplayFormat:&stru_1F227FD28];
    [(PKPaymentSetupField *)v4 setOptional:0];
  }

  return v4;
}

@end