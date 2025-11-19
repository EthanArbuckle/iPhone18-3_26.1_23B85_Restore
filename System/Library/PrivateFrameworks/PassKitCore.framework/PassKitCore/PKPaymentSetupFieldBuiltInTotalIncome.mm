@interface PKPaymentSetupFieldBuiltInTotalIncome
- (PKPaymentSetupFieldBuiltInTotalIncome)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInTotalIncome

- (PKPaymentSetupFieldBuiltInTotalIncome)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v12.receiver = self;
  v12.super_class = PKPaymentSetupFieldBuiltInTotalIncome;
  v9 = [(PKPaymentSetupFieldText *)&v12 initWithIdentifier:@"totalIncome" type:a4];
  if (v9)
  {
    v10 = PKLocalizedFeatureString(@"TOTAL_INCOME", 2, 0, v4, v5, v6, v7, v8, v12.receiver);
    [(PKPaymentSetupField *)v9 _setLocalizedDisplayName:v10];

    [(PKPaymentSetupField *)v9 setSubmissionSecurity:0];
    [(PKPaymentSetupFieldText *)v9 setMinLength:1];
    [(PKPaymentSetupFieldText *)v9 setMaxLength:15];
    [(PKPaymentSetupFieldText *)v9 setSecureText:0];
    [(PKPaymentSetupFieldText *)v9 setSecureVisibleText:0];
    [(PKPaymentSetupFieldText *)v9 setNumeric:1];
    [(PKPaymentSetupFieldText *)v9 setLuhnCheck:0];
    [(PKPaymentSetupFieldText *)v9 setCurrencyCode:@"USD"];
  }

  return v9;
}

@end