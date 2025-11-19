@interface PKPaymentSetupFieldBuiltInAboutCreditReporting
- (PKPaymentSetupFieldBuiltInAboutCreditReporting)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInAboutCreditReporting

- (PKPaymentSetupFieldBuiltInAboutCreditReporting)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v30.receiver = self;
  v30.super_class = PKPaymentSetupFieldBuiltInAboutCreditReporting;
  v4 = [(PKPaymentSetupField *)&v30 initWithIdentifier:@"aboutCreditReporting" type:a4];
  if (v4)
  {
    v5 = +[PKPaymentWebService sharedService];
    v6 = [v5 context];
    v7 = PKPassKitBundle();
    v8 = [v6 applyServicePreferredLanguageForFeatureIdentifier:2 mainLanguageBundle:v7];

    v13 = PKLocalizedApplyFeatureString(@"VERIFY_SSN_FOOTER", 2, v8, 0, v9, v10, v11, v12, v30.receiver);
    [(PKPaymentSetupField *)v4 setDefaultValue:v13];

    v18 = PKLocalizedApplyFeatureString(@"VERIFY_SSN_LINK", 2, v8, 0, v14, v15, v16, v17, v30.receiver);
    [(PKPaymentSetupFieldLabel *)v4 setButtonTitle:v18];

    v23 = PKLocalizedApplyFeatureString(@"VERIFY_SSN_MORE_INFO_TITLE", 2, v8, 0, v19, v20, v21, v22, v30.receiver);
    [(PKPaymentSetupFieldLabel *)v4 setDetailTitle:v23];

    v28 = PKLocalizedApplyFeatureString(@"VERIFY_SSN_MORE_INFO_BODY", 2, v8, 0, v24, v25, v26, v27, v30.receiver);
    [(PKPaymentSetupFieldLabel *)v4 setDetailBody:v28];

    [(PKPaymentSetupField *)v4 setSubmissionSecurity:0];
  }

  return v4;
}

@end