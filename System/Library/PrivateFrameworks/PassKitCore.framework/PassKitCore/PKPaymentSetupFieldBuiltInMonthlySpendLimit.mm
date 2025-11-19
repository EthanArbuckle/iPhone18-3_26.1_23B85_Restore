@interface PKPaymentSetupFieldBuiltInMonthlySpendLimit
- (PKPaymentSetupFieldBuiltInMonthlySpendLimit)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInMonthlySpendLimit

- (PKPaymentSetupFieldBuiltInMonthlySpendLimit)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v18.receiver = self;
  v18.super_class = PKPaymentSetupFieldBuiltInMonthlySpendLimit;
  v9 = [(PKPaymentSetupFieldText *)&v18 initWithIdentifier:@"monthlySpendLimit" type:a4];
  if (v9)
  {
    v10 = PKLocalizedFeatureString(@"MONTHLY_SPEND_LIMIT_AMOUNT", 2, 0, v4, v5, v6, v7, v8, v18.receiver);
    [(PKPaymentSetupField *)v9 _setLocalizedDisplayName:v10];

    [(PKPaymentSetupField *)v9 setSubmissionSecurity:0];
    [(PKPaymentSetupFieldText *)v9 setMinLength:1];
    [(PKPaymentSetupFieldText *)v9 setMaxLength:15];
    [(PKPaymentSetupFieldText *)v9 setSecureText:0];
    [(PKPaymentSetupFieldText *)v9 setSecureVisibleText:0];
    [(PKPaymentSetupFieldText *)v9 setNumeric:1];
    [(PKPaymentSetupFieldText *)v9 setLuhnCheck:0];
    [(PKPaymentSetupFieldText *)v9 setCurrencyCode:@"USD"];
    [(PKPaymentSetupField *)v9 setOptional:1];
    v16 = PKLocalizedFeatureString(@"TRANSACTION_LIMIT_NO_LIMIT", 2, 0, v11, v12, v13, v14, v15, v18.receiver);
    [(PKPaymentSetupField *)v9 setLocalizedPlaceholder:v16];
  }

  return v9;
}

@end