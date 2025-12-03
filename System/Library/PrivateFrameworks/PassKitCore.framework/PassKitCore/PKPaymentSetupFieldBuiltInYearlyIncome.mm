@interface PKPaymentSetupFieldBuiltInYearlyIncome
- (PKPaymentSetupFieldBuiltInYearlyIncome)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInYearlyIncome

- (PKPaymentSetupFieldBuiltInYearlyIncome)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v12.receiver = self;
  v12.super_class = PKPaymentSetupFieldBuiltInYearlyIncome;
  v9 = [(PKPaymentSetupFieldText *)&v12 initWithIdentifier:@"yearlyIncome" type:type];
  if (v9)
  {
    v10 = PKLocalizedFeatureString(@"INCOME", 2, 0, v4, v5, v6, v7, v8, v12.receiver);
    [(PKPaymentSetupField *)v9 _setLocalizedDisplayName:v10];

    [(PKPaymentSetupField *)v9 setSubmissionSecurity:0];
    [(PKPaymentSetupFieldText *)v9 setMinLength:1];
    [(PKPaymentSetupFieldText *)v9 setMaxLength:10];
    [(PKPaymentSetupFieldText *)v9 setSecureText:0];
    [(PKPaymentSetupFieldText *)v9 setSecureVisibleText:0];
    [(PKPaymentSetupFieldText *)v9 setNumeric:1];
    [(PKPaymentSetupFieldText *)v9 setLuhnCheck:0];
    [(PKPaymentSetupFieldText *)v9 setCurrencyCode:@"USD"];
  }

  return v9;
}

@end