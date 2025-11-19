@interface PKPaymentSetupFieldBuiltInPrimaryAccountNumber
- (PKPaymentSetupFieldBuiltInPrimaryAccountNumber)initWithIdentifier:(id)a3 type:(unint64_t)a4;
- (id)compactLocalizedDisplayName;
- (id)stringByApplyingDisplayFormat:(id)a3;
@end

@implementation PKPaymentSetupFieldBuiltInPrimaryAccountNumber

- (PKPaymentSetupFieldBuiltInPrimaryAccountNumber)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInPrimaryAccountNumber;
  v4 = [(PKPaymentSetupFieldText *)&v7 initWithIdentifier:@"primaryAccountNumber" type:a4];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_CardNumber.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupField *)v4 setSubmissionKey:@"primaryAccountNumber"];
    [(PKPaymentSetupField *)v4 setSubmissionDestination:@"eligibility"];
    [(PKPaymentSetupField *)v4 setSubmissionSecurity:1];
    [(PKPaymentSetupFieldText *)v4 setMinLength:1];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:64];
    [(PKPaymentSetupFieldText *)v4 setSecureText:1];
    [(PKPaymentSetupFieldText *)v4 setSecureVisibleText:1];
    [(PKPaymentSetupFieldText *)v4 setNumeric:1];
    [(PKPaymentSetupFieldText *)v4 setLuhnCheck:0];
    [(PKPaymentSetupFieldText *)v4 setKeyboardAccessories:&unk_1F23B3C20];
  }

  return v4;
}

- (id)compactLocalizedDisplayName
{
  v3 = [(PKPaymentSetupField *)self rawConfigurationDictionary];
  v4 = [v3 objectForKey:@"localizedDisplayName"];

  if (v4)
  {
    [(PKPaymentSetupField *)self localizedDisplayName];
  }

  else
  {
    PKLocalizedPaymentString(&cfstr_CompactCardNum.isa, 0);
  }
  v5 = ;

  return v5;
}

- (id)stringByApplyingDisplayFormat:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentSetupField *)self displayFormat];
  v6 = [v5 length];

  if (!v4 || v6)
  {
    v10.receiver = self;
    v10.super_class = PKPaymentSetupFieldBuiltInPrimaryAccountNumber;
    v7 = [(PKPaymentSetupFieldText *)&v10 stringByApplyingDisplayFormat:v4];
  }

  else
  {
    v7 = PKFormattedStringForPAN(v4);
  }

  v8 = v7;

  return v8;
}

@end