@interface PKPaymentSetupFieldBuiltInPostalCode
- (PKPaymentSetupFieldBuiltInPostalCode)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInPostalCode

- (PKPaymentSetupFieldBuiltInPostalCode)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldBuiltInPostalCode;
  v4 = [(PKPaymentSetupFieldText *)&v8 initWithIdentifier:@"postalCode" type:a4];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_PostalCode.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupFieldText *)v4 setMinLength:5];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:10];
    [(PKPaymentSetupField *)v4 setDisplayFormat:@"XXXXX-XXXX"];
    [(PKPaymentSetupFieldText *)v4 setNumeric:1];
    v6 = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
    [v6 addCharactersInString:@"-"];
    [(PKPaymentSetupFieldText *)v4 setAllowedCharacters:v6];
    [(PKPaymentSetupFieldText *)v4 setKeepPaddingCharactersForSubmission:1];
  }

  return v4;
}

@end