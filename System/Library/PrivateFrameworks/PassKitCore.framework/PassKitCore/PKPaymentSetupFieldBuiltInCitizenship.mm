@interface PKPaymentSetupFieldBuiltInCitizenship
- (PKPaymentSetupFieldBuiltInCitizenship)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInCitizenship

- (PKPaymentSetupFieldBuiltInCitizenship)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v12.receiver = self;
  v12.super_class = PKPaymentSetupFieldBuiltInCitizenship;
  v9 = [(PKPaymentSetupField *)&v12 initWithIdentifier:@"citizenship" type:type];
  if (v9)
  {
    v10 = PKLocalizedFeatureString(@"CITIZENSHIP", 2, 0, v4, v5, v6, v7, v8, v12.receiver);
    [(PKPaymentSetupField *)v9 _setLocalizedDisplayName:v10];

    [(PKPaymentSetupField *)v9 setSubmissionSecurity:1];
  }

  return v9;
}

@end