@interface PKPaymentSetupFieldBuiltInPostalCode
- (PKPaymentSetupFieldBuiltInPostalCode)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInPostalCode

- (PKPaymentSetupFieldBuiltInPostalCode)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldBuiltInPostalCode;
  v4 = [(PKPaymentSetupFieldText *)&v8 initWithIdentifier:@"postalCode" type:type];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_PostalCode.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupFieldText *)v4 setMinLength:5];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:10];
    [(PKPaymentSetupField *)v4 setDisplayFormat:@"XXXXX-XXXX"];
    [(PKPaymentSetupFieldText *)v4 setNumeric:1];
    decimalDigitCharacterSet = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
    [decimalDigitCharacterSet addCharactersInString:@"-"];
    [(PKPaymentSetupFieldText *)v4 setAllowedCharacters:decimalDigitCharacterSet];
    [(PKPaymentSetupFieldText *)v4 setKeepPaddingCharactersForSubmission:1];
  }

  return v4;
}

@end