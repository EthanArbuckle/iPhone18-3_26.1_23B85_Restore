@interface PKPaymentEligibilitySupplementaryData
- (PKPaymentEligibilitySupplementaryData)initWithDictionary:(id)a3 accountFeatureIdentifier:(unint64_t)a4;
@end

@implementation PKPaymentEligibilitySupplementaryData

- (PKPaymentEligibilitySupplementaryData)initWithDictionary:(id)a3 accountFeatureIdentifier:(unint64_t)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = PKPaymentEligibilitySupplementaryData;
  v7 = [(PKPaymentEligibilitySupplementaryData *)&v17 init];
  if (v7)
  {
    v8 = [v6 PKStringForKey:@"accountIdentifier"];
    v9 = [v6 PKCurrencyAmountForKey:@"accountBalance"];
    v10 = [v6 PKArrayForKey:@"cloudStoreZoneNames"];
    v11 = v10;
    if (a4 == 4 && v8 && v9 && v10)
    {
      v12 = [PKAccount alloc];
      v13 = PKLightweightAppleBalanceAccountDict(v8, v9, v11);
      v14 = [(PKAccount *)v12 initWithDictionary:v13 isCloudAccount:1];
      lightweightAccount = v7->_lightweightAccount;
      v7->_lightweightAccount = v14;
    }
  }

  return v7;
}

@end