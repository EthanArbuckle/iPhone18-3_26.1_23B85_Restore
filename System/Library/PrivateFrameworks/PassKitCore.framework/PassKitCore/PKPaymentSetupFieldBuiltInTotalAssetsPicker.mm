@interface PKPaymentSetupFieldBuiltInTotalAssetsPicker
- (PKPaymentSetupFieldBuiltInTotalAssetsPicker)initWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation PKPaymentSetupFieldBuiltInTotalAssetsPicker

- (PKPaymentSetupFieldBuiltInTotalAssetsPicker)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v12.receiver = self;
  v12.super_class = PKPaymentSetupFieldBuiltInTotalAssetsPicker;
  v9 = [(PKPaymentSetupField *)&v12 initWithIdentifier:@"totalAssetsPicker" type:type];
  if (v9)
  {
    v10 = PKLocalizedFeatureString(@"TOTAL_ASSETS", 2, 0, v4, v5, v6, v7, v8, v12.receiver);
    [(PKPaymentSetupField *)v9 _setLocalizedDisplayName:v10];
  }

  return v9;
}

@end