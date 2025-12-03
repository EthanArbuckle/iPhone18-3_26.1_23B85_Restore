@interface PKPaymentSetupFieldBuiltInSSNSuffix
- (PKPaymentSetupFieldBuiltInSSNSuffix)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInSSNSuffix

- (PKPaymentSetupFieldBuiltInSSNSuffix)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldBuiltInSSNSuffix;
  v4 = [(PKPaymentSetupFieldText *)&v8 initWithIdentifier:@"ssnSuffix" type:type];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_SsnSuffix.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    v6 = PKLocalizedPaymentString(&cfstr_SsnSuffixPlace.isa, 0);
    [(PKPaymentSetupField *)v4 setLocalizedPlaceholder:v6];

    [(PKPaymentSetupField *)v4 setSubmissionSecurity:1];
    [(PKPaymentSetupFieldText *)v4 setMinLength:4];
    [(PKPaymentSetupFieldText *)v4 setMaxLength:4];
    [(PKPaymentSetupFieldText *)v4 setSecureText:1];
    [(PKPaymentSetupFieldText *)v4 setSecureVisibleText:1];
    [(PKPaymentSetupFieldText *)v4 setNumeric:1];
    [(PKPaymentSetupFieldText *)v4 setLuhnCheck:0];
  }

  return v4;
}

@end