@interface PKPaymentEligibilitySupplementaryData
- (PKPaymentEligibilitySupplementaryData)initWithDictionary:(id)dictionary accountFeatureIdentifier:(unint64_t)identifier;
@end

@implementation PKPaymentEligibilitySupplementaryData

- (PKPaymentEligibilitySupplementaryData)initWithDictionary:(id)dictionary accountFeatureIdentifier:(unint64_t)identifier
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PKPaymentEligibilitySupplementaryData;
  v7 = [(PKPaymentEligibilitySupplementaryData *)&v17 init];
  if (v7)
  {
    v8 = [dictionaryCopy PKStringForKey:@"accountIdentifier"];
    v9 = [dictionaryCopy PKCurrencyAmountForKey:@"accountBalance"];
    v10 = [dictionaryCopy PKArrayForKey:@"cloudStoreZoneNames"];
    v11 = v10;
    if (identifier == 4 && v8 && v9 && v10)
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