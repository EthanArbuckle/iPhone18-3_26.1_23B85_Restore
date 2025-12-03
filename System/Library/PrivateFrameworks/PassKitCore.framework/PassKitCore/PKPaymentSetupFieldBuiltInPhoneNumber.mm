@interface PKPaymentSetupFieldBuiltInPhoneNumber
- (PKPaymentSetupFieldBuiltInPhoneNumber)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (id)_submissionStringForValue:(id)value;
- (id)submissionAttribute;
@end

@implementation PKPaymentSetupFieldBuiltInPhoneNumber

- (PKPaymentSetupFieldBuiltInPhoneNumber)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v11.receiver = self;
  v11.super_class = PKPaymentSetupFieldBuiltInPhoneNumber;
  v4 = [(PKPaymentSetupFieldText *)&v11 initWithIdentifier:@"phoneNumber" type:type];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_Phone_0.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupField *)v4 setSubmissionSecurity:0];
    [(PKPaymentSetupFieldText *)v4 setMinLength:1];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:20];
    [(PKPaymentSetupFieldText *)v4 setSecureText:0];
    [(PKPaymentSetupFieldText *)v4 setSecureVisibleText:0];
    [(PKPaymentSetupFieldText *)v4 setNumeric:1];
    [(PKPaymentSetupFieldText *)v4 setLuhnCheck:0];
    [(PKPaymentSetupFieldText *)v4 setPaddingCharacters:&unk_1F23B3C38];
    v6 = MEMORY[0x1E696AD48];
    v7 = [&unk_1F23B3C38 componentsJoinedByString:&stru_1F227FD28];
    v8 = [v6 characterSetWithCharactersInString:v7];

    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    [v8 formUnionWithCharacterSet:decimalDigitCharacterSet];

    [v8 addCharactersInString:@"+"];
    [(PKPaymentSetupFieldText *)v4 setAllowedCharacters:v8];
  }

  return v4;
}

- (id)submissionAttribute
{
  attribute = [(PKPaymentSetupField *)self attribute];
  currentValue = [(PKPaymentSetupField *)self currentValue];
  v5 = [(PKPaymentSetupFieldBuiltInPhoneNumber *)self _submissionStringForValue:currentValue];
  [attribute setCurrentValue:v5];

  return attribute;
}

- (id)_submissionStringForValue:(id)value
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PKPaymentSetupFieldBuiltInPhoneNumber;
  v4 = [(PKPaymentSetupFieldText *)&v17 _submissionStringForValue:value];
  v5 = PKBestGuessNormalizedPhoneNumber(v4);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  paddingCharacters = [(PKPaymentSetupFieldText *)self paddingCharacters];
  v7 = [paddingCharacters countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(paddingCharacters);
        }

        v5 = [v11 stringByReplacingOccurrencesOfString:*(*(&v13 + 1) + 8 * v10) withString:&stru_1F227FD28];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [paddingCharacters countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

@end