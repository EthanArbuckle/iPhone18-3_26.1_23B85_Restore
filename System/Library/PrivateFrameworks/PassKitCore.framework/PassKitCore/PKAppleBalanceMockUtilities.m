@interface PKAppleBalanceMockUtilities
+ (BOOL)_verifyAppleBalanceAccountDetails2:(id)a3;
+ (BOOL)_verifyAppleBalanceAccountDetails:(id)a3;
+ (BOOL)_verifyAppleBalanceSupportedFeatures:(id)a3;
+ (BOOL)_verifyLightweightAppleBalanceAccountDetails:(id)a3;
+ (BOOL)verifyAppleBalanceAccount2:(id)a3;
+ (BOOL)verifyAppleBalanceAccount:(id)a3;
+ (BOOL)verifyInStoreTopUpToken:(id)a3;
+ (BOOL)verifyLightweightAppleBalanceAccount:(id)a3;
+ (BOOL)verifyPromotion:(id)a3;
+ (id)_appleBalanceAccountDetailsDictionary;
+ (id)_appleBalanceAccountDetailsDictionary2;
+ (id)_appleBalanceAccountNoBalanceDetailsDictionary;
+ (id)_appleBalanceDTUConfigurationDictionary;
+ (id)_appleBalanceDTUConfigurationDictionary2;
+ (id)_inStoreTokenForType:(int64_t)a3 debugType:(int64_t)a4;
+ (id)appleBalanceAccountDictionary;
+ (id)appleBalanceAccountDictionary2;
+ (id)appleBalanceAccountDictionaryUpdated;
+ (id)appleBalanceAccountNoBalanceDictionary;
+ (id)appleBalanceAddMoneyConfigurationWithCurrencyCode:(id)a3;
+ (id)appleBalanceInStoreTopUpTokenForType:(int64_t)a3 state:(int64_t)a4 debugType:(int64_t)a5;
+ (id)lightweightAppleBalanceAccountDictionary;
+ (id)mockAMPPaymentTransactionWithAccountIdentifier:(id)a3;
+ (id)mockAOSPaymentTransactionWithAccountIdentifier:(id)a3;
+ (id)mockAppleBalanceAccount;
+ (id)mockInStoreTopUpToken;
+ (id)mockPOSPaymentTransactionWithAccountIdentifier:(id)a3 paymentApplication:(id)a4 localTransaction:(id *)a5;
+ (id)mockPromotion;
+ (id)mockRedemptionPaymentTransactionWithAccountIdentifier:(id)a3;
+ (id)mockTopUpPaymentTransactionWithAccountIdentifier:(id)a3;
@end

@implementation PKAppleBalanceMockUtilities

+ (id)mockAppleBalanceAccount
{
  v2 = objc_alloc_init(PKAccount);
  [(PKAccount *)v2 setAccountIdentifier:@"apple-balance-account-001"];
  [(PKAccount *)v2 setFeature:4];
  [(PKAccount *)v2 setType:3];
  [(PKAccount *)v2 setState:1];
  [(PKAccount *)v2 setAccessLevel:1];
  v3 = [MEMORY[0x1E695DF00] date];
  [(PKAccount *)v2 setLastUpdated:v3];

  v4 = objc_alloc_init(PKAppleBalanceAccountDetails);
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-7257600.0];
  [(PKAppleBalanceAccountDetails *)v4 setCreatedDate:v5];

  v6 = [MEMORY[0x1E695DF00] date];
  [(PKAppleBalanceAccountDetails *)v4 setLastUpdatedDate:v6];

  [(PKAppleBalanceAccountDetails *)v4 setCountryCode:@"US"];
  [(PKAppleBalanceAccountDetails *)v4 setCurrencyCode:@"USD"];
  [(PKAppleBalanceAccountDetails *)v4 setCardType:135];
  [(PKAppleBalanceAccountDetails *)v4 setAssociatedPassTypeIdentifier:@"paymentpass.com.apple.wallet.dev"];
  [(PKAppleBalanceAccountDetails *)v4 setAssociatedPassSerialNumber:@"00001111122223333444332211113344321"];
  [(PKAppleBalanceAccountDetails *)v4 setFpanIdentifier:@"FAPLLY3814311690852077410603"];
  v7 = objc_alloc_init(PKAppleBalanceAccountSummary);
  v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"500.00"];
  [(PKAppleBalanceAccountSummary *)v7 setCurrentBalance:v8];

  [(PKAppleBalanceAccountDetails *)v4 setAccountSummary:v7];
  v9 = [[PKAccountDetails alloc] initWithAppleBalanceDetails:v4];
  [(PKAccount *)v2 setDetails:v9];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = objc_alloc_init(PKAppleBalanceAccountFeatureDescriptor);
  [(PKAccountFeatureDescriptor *)v11 setIdentifier:@"directTopUp"];
  [v10 addObject:v11];
  v12 = objc_alloc_init(PKAppleBalanceAccountFeatureDescriptor);
  [(PKAccountFeatureDescriptor *)v12 setIdentifier:@"ampRedemptionSupported"];
  [v10 addObject:v12];
  v13 = objc_alloc_init(PKAppleBalanceAccountFeatureDescriptor);
  [(PKAccountFeatureDescriptor *)v13 setIdentifier:@"inStoreTopUp"];
  [v10 addObject:v13];
  v14 = objc_alloc_init(PKAppleBalanceAccountFeatureDescriptor);
  [(PKAccountFeatureDescriptor *)v14 setIdentifier:@"inStorePayment"];
  [v10 addObject:v14];
  v15 = [v10 copy];
  [(PKAccount *)v2 setSupportedFeatures:v15];

  return v2;
}

+ (id)mockPromotion
{
  v11[10] = *MEMORY[0x1E69E9840];
  v3 = [PKAppleBalancePromotionConfiguration alloc];
  v10[0] = @"promotionType";
  v10[1] = @"programIdentifier";
  v11[0] = @"Content";
  v11[1] = @"30154";
  v10[2] = @"versionIdentifier";
  v10[3] = @"generationIdentifier";
  v11[2] = @"v701909";
  v11[3] = &unk_1F23B4E38;
  v11[4] = &unk_1F23B4E50;
  v10[4] = @"stamp";
  v10[5] = @"bonusMinAmount";
  v4 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"50.0"];
  v11[5] = v4;
  v10[6] = @"bonusMaxAmount";
  v5 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"200.0"];
  v11[6] = v5;
  v11[7] = @"Add $50 or more and get 1 month of Apple Music free.";
  v10[7] = @"offerText";
  v10[8] = @"conditionText";
  v11[8] = @"1 month free, then $14.99/month. Limit 1 per Apple Account. Must claim your free content bonus immediately. Terms apply.";
  v10[9] = @"lastUpdatedDate";
  v6 = [a1 _date1];
  v11[9] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:10];
  v8 = [(PKAppleBalancePromotionConfiguration *)v3 initWithDictionary:v7];

  return v8;
}

+ (id)mockInStoreTopUpToken
{
  v3 = objc_alloc_init(PKAppleBalanceInStoreTopUpToken);
  v4 = [a1 _inStoreTokenForType:0 debugType:0];
  [(PKAppleBalanceInStoreTopUpToken *)v3 setToken:v4];

  [(PKAppleBalanceInStoreTopUpToken *)v3 setTokenIdentifier:@"12345678912345678912345678912345"];
  [(PKAppleBalanceInStoreTopUpToken *)v3 setTokenType:0];
  v5 = [a1 _date1];
  v6 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v5, 0, 0);
  [(PKAppleBalanceInStoreTopUpToken *)v3 setExpirationDate:v6];

  [(PKAppleBalanceInStoreTopUpToken *)v3 setState:0];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/"];
  [(PKAppleBalanceInStoreTopUpToken *)v3 setTermsURL:v7];

  return v3;
}

+ (id)mockAMPPaymentTransactionWithAccountIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKMerchant);
  [(PKMerchant *)v4 setRawName:@"apple.com/bill"];
  [(PKMerchant *)v4 setName:@"Apple Services"];
  [(PKMerchant *)v4 setIndustryCode:5818];
  [(PKMerchant *)v4 setIndustryCategory:@"Other"];
  [(PKMerchant *)v4 setCity:@"Cupertino"];
  [(PKMerchant *)v4 setState:@"CA"];
  v5 = objc_alloc_init(PKPaymentTransaction);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  [(PKPaymentTransaction *)v5 setServiceIdentifier:v7];

  [(PKPaymentTransaction *)v5 setTransactionStatus:1];
  [(PKPaymentTransaction *)v5 setTransactionType:0];
  v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"25.00"];
  [(PKPaymentTransaction *)v5 setAmount:v8];

  [(PKPaymentTransaction *)v5 setCurrencyCode:@"USD"];
  v9 = [MEMORY[0x1E695DF00] date];
  [(PKPaymentTransaction *)v5 setTransactionDate:v9];
  [(PKPaymentTransaction *)v5 setTransactionStatusChangedDate:v9];
  [(PKPaymentTransaction *)v5 setCardType:7];
  [(PKPaymentTransaction *)v5 setAccountIdentifier:v3];

  [(PKPaymentTransaction *)v5 setAccountType:4];
  [(PKPaymentTransaction *)v5 setMerchant:v4];

  return v5;
}

+ (id)mockAOSPaymentTransactionWithAccountIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKMerchant);
  [(PKMerchant *)v4 setRawName:@"apple.com/us"];
  [(PKMerchant *)v4 setName:@"Apple Store"];
  [(PKMerchant *)v4 setIndustryCode:5732];
  [(PKMerchant *)v4 setIndustryCategory:@"Other"];
  [(PKMerchant *)v4 setCity:@"Cupertino"];
  [(PKMerchant *)v4 setState:@"CA"];
  v5 = objc_alloc_init(PKPaymentTransaction);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  [(PKPaymentTransaction *)v5 setServiceIdentifier:v7];

  [(PKPaymentTransaction *)v5 setTransactionStatus:1];
  [(PKPaymentTransaction *)v5 setTransactionType:0];
  v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"258.00"];
  [(PKPaymentTransaction *)v5 setAmount:v8];

  [(PKPaymentTransaction *)v5 setCurrencyCode:@"USD"];
  v9 = [MEMORY[0x1E695DF00] date];
  [(PKPaymentTransaction *)v5 setTransactionDate:v9];
  [(PKPaymentTransaction *)v5 setTransactionStatusChangedDate:v9];
  [(PKPaymentTransaction *)v5 setCardType:7];
  [(PKPaymentTransaction *)v5 setAccountIdentifier:v3];

  [(PKPaymentTransaction *)v5 setAccountType:4];
  [(PKPaymentTransaction *)v5 setMerchant:v4];

  return v5;
}

+ (id)mockPOSPaymentTransactionWithAccountIdentifier:(id)a3 paymentApplication:(id)a4 localTransaction:(id *)a5
{
  v7 = MEMORY[0x1E696AFB0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 UUID];
  v11 = [v10 UUIDString];

  v12 = [MEMORY[0x1E695DF00] date];
  v13 = [PKPaymentTransaction paymentTransactionWithSource:1];
  [v13 setOriginatedByDevice:1];
  [v13 setTransactionType:0];
  [v13 setPaymentHash:v11];
  [v13 addUpdateReasons:1];
  v14 = [v8 dpanIdentifier];
  [v13 setDPANIdentifier:v14];

  v15 = [v8 paymentNetworkIdentifier];
  [v13 setPaymentNetworkIdentifier:v15];
  [v13 setTransactionDate:v12];
  [v13 setTechnologyType:2];
  [v13 setLocationDate:v12];
  [v13 setLocationLatitude:37.3315124];
  [v13 setLocationLongitude:-122.030662];
  [v13 setProcessedForLocation:1];
  if (a5)
  {
    v16 = v13;
    *a5 = v13;
  }

  v17 = objc_alloc_init(PKMerchant);
  [(PKMerchant *)v17 setRawName:@"apple store #r052"];
  [(PKMerchant *)v17 setName:@"Apple Infinite Loop"];
  [(PKMerchant *)v17 setIndustryCode:5732];
  [(PKMerchant *)v17 setIndustryCategory:@"Other"];
  [(PKMerchant *)v17 setCity:@"Cupertino"];
  [(PKMerchant *)v17 setState:@"CA"];
  v18 = objc_alloc_init(PKPaymentTransaction);
  v19 = [MEMORY[0x1E696AFB0] UUID];
  v20 = [v19 UUIDString];
  [(PKPaymentTransaction *)v18 setServiceIdentifier:v20];

  [(PKPaymentTransaction *)v18 setPaymentHash:v11];
  [(PKPaymentTransaction *)v18 setTransactionStatus:1];
  [(PKPaymentTransaction *)v18 setTransactionType:0];
  v21 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"258.00"];
  [(PKPaymentTransaction *)v18 setAmount:v21];

  [(PKPaymentTransaction *)v18 setCurrencyCode:@"USD"];
  [(PKPaymentTransaction *)v18 setTransactionDate:v12];
  [(PKPaymentTransaction *)v18 setTransactionStatusChangedDate:v12];
  [(PKPaymentTransaction *)v18 setCardType:7];
  [(PKPaymentTransaction *)v18 setAccountIdentifier:v9];

  [(PKPaymentTransaction *)v18 setAccountType:4];
  [(PKPaymentTransaction *)v18 setMerchant:v17];

  return v18;
}

+ (id)mockTopUpPaymentTransactionWithAccountIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKMerchant);
  [(PKMerchant *)v4 setRawName:@"apple.com/bill"];
  [(PKMerchant *)v4 setName:@"Apple Services"];
  [(PKMerchant *)v4 setIndustryCode:5818];
  [(PKMerchant *)v4 setIndustryCategory:@"Other"];
  [(PKMerchant *)v4 setCity:@"Cupertino"];
  [(PKMerchant *)v4 setState:@"CA"];
  v5 = objc_alloc_init(PKPaymentTransaction);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  [(PKPaymentTransaction *)v5 setServiceIdentifier:v7];

  [(PKPaymentTransaction *)v5 setTransactionStatus:1];
  [(PKPaymentTransaction *)v5 setTransactionType:6];
  v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"15.00"];
  [(PKPaymentTransaction *)v5 setAmount:v8];

  [(PKPaymentTransaction *)v5 setCurrencyCode:@"USD"];
  v9 = [MEMORY[0x1E695DF00] date];
  [(PKPaymentTransaction *)v5 setTransactionDate:v9];
  [(PKPaymentTransaction *)v5 setTransactionStatusChangedDate:v9];
  [(PKPaymentTransaction *)v5 setCardType:8];
  [(PKPaymentTransaction *)v5 setAccountIdentifier:v3];

  [(PKPaymentTransaction *)v5 setAccountType:4];
  [(PKPaymentTransaction *)v5 setMerchant:v4];

  return v5;
}

+ (id)mockRedemptionPaymentTransactionWithAccountIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKMerchant);
  [(PKMerchant *)v4 setRawName:@"apple.com/bill"];
  [(PKMerchant *)v4 setName:@"Apple Services"];
  [(PKMerchant *)v4 setIndustryCode:5818];
  [(PKMerchant *)v4 setIndustryCategory:@"Other"];
  [(PKMerchant *)v4 setCity:@"Cupertino"];
  [(PKMerchant *)v4 setState:@"CA"];
  v5 = objc_alloc_init(PKPaymentTransaction);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  [(PKPaymentTransaction *)v5 setServiceIdentifier:v7];

  [(PKPaymentTransaction *)v5 setTransactionStatus:1];
  [(PKPaymentTransaction *)v5 setTransactionType:6];
  v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"50.00"];
  [(PKPaymentTransaction *)v5 setAmount:v8];

  [(PKPaymentTransaction *)v5 setCurrencyCode:@"USD"];
  v9 = [MEMORY[0x1E695DF00] date];
  [(PKPaymentTransaction *)v5 setTransactionDate:v9];
  [(PKPaymentTransaction *)v5 setTransactionStatusChangedDate:v9];
  [(PKPaymentTransaction *)v5 setCardType:7];
  [(PKPaymentTransaction *)v5 setAccountIdentifier:v3];

  [(PKPaymentTransaction *)v5 setAccountType:4];
  [(PKPaymentTransaction *)v5 setMerchant:v4];

  return v5;
}

+ (id)appleBalanceAccountDictionary
{
  v9[9] = *MEMORY[0x1E69E9840];
  v8[0] = @"accountIdentifier";
  v8[1] = @"featureIdentifier";
  v9[0] = @"apple-balance-account-001";
  v9[1] = @"asp";
  v8[2] = @"accountType";
  v8[3] = @"state";
  v9[2] = @"appleBalance";
  v9[3] = @"active";
  v9[4] = @"unknown";
  v8[4] = @"stateReason";
  v8[5] = @"accountDetails";
  v3 = [a1 _appleBalanceAccountDetailsDictionary];
  v9[5] = v3;
  v8[6] = @"supportedFeatures";
  v4 = [a1 _appleBalanceSupportedFeaturesArray];
  v9[6] = v4;
  v8[7] = @"cloudStoreZoneNames";
  v5 = [a1 _appleBalanceCloudStoreZoneNames];
  v8[8] = @"accountBaseURL";
  v9[7] = v5;
  v9[8] = @"https://localhost:3000/appleBalance";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:9];

  return v6;
}

+ (id)appleBalanceAccountDictionary2
{
  v9[8] = *MEMORY[0x1E69E9840];
  v8[0] = @"accountIdentifier";
  v8[1] = @"featureIdentifier";
  v9[0] = @"apple-balance-account-002";
  v9[1] = @"asp";
  v8[2] = @"accountType";
  v8[3] = @"state";
  v9[2] = @"appleBalance";
  v9[3] = @"restricted";
  v9[4] = @"fraudSuspected";
  v8[4] = @"stateReason";
  v8[5] = @"accountDetails";
  v3 = [a1 _appleBalanceAccountDetailsDictionary2];
  v9[5] = v3;
  v8[6] = @"supportedFeatures";
  v4 = [a1 _appleBalanceSupportedFeaturesArray2];
  v9[6] = v4;
  v8[7] = @"cloudStoreZoneNames";
  v5 = [a1 _appleBalanceCloudStoreZoneNames2];
  v9[7] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:8];

  return v6;
}

+ (id)_appleBalanceAccountDetailsDictionary
{
  v12[9] = *MEMORY[0x1E69E9840];
  v11[0] = @"createdDate";
  v3 = [a1 _date1];
  v12[0] = v3;
  v11[1] = @"lastUpdatedDate";
  v4 = [a1 _date2];
  v12[1] = v4;
  v12[2] = @"US";
  v11[2] = @"countryCode";
  v11[3] = @"currencyCode";
  v12[3] = @"USD";
  v12[4] = @"paymentpass.com.apple.wallet.dev";
  v11[4] = @"associatedPassTypeIdentifier";
  v11[5] = @"associatedPassSerialNumber";
  v12[5] = @"wallettest.lynx.serialnumber";
  v12[6] = @"FAPLLY3814311690852077410603";
  v11[6] = @"fpanId";
  v11[7] = @"cardType";
  v12[7] = @"AppleBalance";
  v11[8] = @"accountSummary";
  v9[0] = @"currentBalance";
  v9[1] = @"dtuConfiguration";
  v10[0] = @"100.00";
  v5 = [a1 _appleBalanceDTUConfigurationDictionary];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[8] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:9];

  return v7;
}

+ (id)_appleBalanceAccountDetailsDictionary2
{
  v12[9] = *MEMORY[0x1E69E9840];
  v11[0] = @"createdDate";
  v3 = [a1 _date3];
  v12[0] = v3;
  v11[1] = @"lastUpdatedDate";
  v4 = [a1 _date4];
  v12[1] = v4;
  v12[2] = @"FR";
  v11[2] = @"countryCode";
  v11[3] = @"currencyCode";
  v12[3] = @"EUR";
  v12[4] = @"paymentpass.com.apple.wallet.dev";
  v11[4] = @"associatedPassTypeIdentifier";
  v11[5] = @"associatedPassSerialNumber";
  v12[5] = @"wallettest.lynx.serialnumber";
  v12[6] = @"FAPLLY3814311690852077410604";
  v11[6] = @"fpanId";
  v11[7] = @"cardType";
  v12[7] = @"AppleBalance";
  v11[8] = @"accountSummary";
  v9[0] = @"currentBalance";
  v9[1] = @"dtuConfiguration";
  v10[0] = @"250.00";
  v5 = [a1 _appleBalanceDTUConfigurationDictionary2];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[8] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:9];

  return v7;
}

+ (id)appleBalanceAccountNoBalanceDictionary
{
  v9[8] = *MEMORY[0x1E69E9840];
  v8[0] = @"accountIdentifier";
  v8[1] = @"featureIdentifier";
  v9[0] = @"apple-balance-account-001";
  v9[1] = @"asp";
  v8[2] = @"accountType";
  v8[3] = @"state";
  v9[2] = @"appleBalance";
  v9[3] = @"active";
  v9[4] = @"unknown";
  v8[4] = @"stateReason";
  v8[5] = @"accountDetails";
  v3 = [a1 _appleBalanceAccountNoBalanceDetailsDictionary];
  v9[5] = v3;
  v8[6] = @"supportedFeatures";
  v4 = [a1 _appleBalanceSupportedFeaturesArray];
  v9[6] = v4;
  v8[7] = @"cloudStoreZoneNames";
  v5 = [a1 _appleBalanceCloudStoreZoneNames];
  v9[7] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:8];

  return v6;
}

+ (id)_appleBalanceAccountNoBalanceDetailsDictionary
{
  v8[9] = *MEMORY[0x1E69E9840];
  v7[0] = @"createdDate";
  v3 = [a1 _date1];
  v8[0] = v3;
  v7[1] = @"lastUpdatedDate";
  v4 = [a1 _date2];
  v8[1] = v4;
  v8[2] = @"US";
  v7[2] = @"countryCode";
  v7[3] = @"currencyCode";
  v8[3] = @"USD";
  v8[4] = @"paymentpass.com.apple.wallet.dev";
  v7[4] = @"associatedPassTypeIdentifier";
  v7[5] = @"associatedPassSerialNumber";
  v8[5] = @"wallettest.lynx.serialnumber";
  v8[6] = @"FAPLLY3814311690852077410603";
  v7[6] = @"fpanId";
  v7[7] = @"cardType";
  v7[8] = @"accountSummary";
  v8[7] = @"AppleBalance";
  v8[8] = &unk_1F23B5A90;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:9];

  return v5;
}

+ (id)_appleBalanceDTUConfigurationDictionary
{
  v22[5] = *MEMORY[0x1E69E9840];
  v21[0] = @"minAmount";
  v13 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"5.0"];
  v22[0] = v13;
  v21[1] = @"maxAmount";
  v12 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"500.0"];
  v22[1] = v12;
  v21[2] = @"maxBalance";
  v2 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2000.0"];
  v22[2] = v2;
  v21[3] = @"denominations";
  v18[0] = @"amount";
  v3 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"10.0"];
  v18[1] = @"currencyCode";
  v19[0] = v3;
  v19[1] = @"USD";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v20[0] = v4;
  v16[0] = @"amount";
  v5 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"20.0"];
  v16[1] = @"currencyCode";
  v17[0] = v5;
  v17[1] = @"USD";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v20[1] = v6;
  v14[0] = @"amount";
  v7 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"30.0"];
  v14[1] = @"currencyCode";
  v15[0] = v7;
  v15[1] = @"USD";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v20[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v21[4] = @"termsURL";
  v22[3] = v9;
  v22[4] = @"https://www.apple.com/legal/internet-services/itunes/giftcards/us/terms.html";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];

  return v10;
}

+ (id)_appleBalanceDTUConfigurationDictionary2
{
  v22[5] = *MEMORY[0x1E69E9840];
  v21[0] = @"minAmount";
  v13 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"1.0"];
  v22[0] = v13;
  v21[1] = @"maxAmount";
  v12 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"1000.0"];
  v22[1] = v12;
  v21[2] = @"maxBalance";
  v2 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"4000.0"];
  v22[2] = v2;
  v21[3] = @"denominations";
  v18[0] = @"amount";
  v3 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"15.0"];
  v18[1] = @"currencyCode";
  v19[0] = v3;
  v19[1] = @"EUR";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v20[0] = v4;
  v16[0] = @"amount";
  v5 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"25.0"];
  v16[1] = @"currencyCode";
  v17[0] = v5;
  v17[1] = @"EUR";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v20[1] = v6;
  v14[0] = @"amount";
  v7 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"35.0"];
  v14[1] = @"currencyCode";
  v15[0] = v7;
  v15[1] = @"EUR";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v20[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v21[4] = @"termsURL";
  v22[3] = v9;
  v22[4] = @"https://www.apple.com/legal/internet-services/itunes/giftcards/eu/terms.html";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];

  return v10;
}

+ (id)lightweightAppleBalanceAccountDictionary
{
  v2 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:@"100.00"];
  v3 = PKCurrencyAmountCreate(v2, &cfstr_Usd.isa, 0);
  v4 = PKLightweightAppleBalanceAccountDict(@"apple-balance-lightweight-account-001", v3, &unk_1F23B3DE8);

  return v4;
}

+ (id)appleBalanceAccountDictionaryUpdated
{
  v2 = [a1 appleBalanceAccountDictionary];
  v3 = [v2 mutableCopy];

  [v3 setObject:@"closed" forKeyedSubscript:@"state"];
  [v3 setObject:@"fraudSuspected" forKeyedSubscript:@"stateReason"];
  v4 = [v3 copy];

  return v4;
}

+ (id)_inStoreTokenForType:(int64_t)a3 debugType:(int64_t)a4
{
  if (a3)
  {
    v5 = &stru_1F227FD28;
  }

  else
  {
    v7 = @"12345678912345678912345678912345";
    if (a4 == 3)
    {
      v7 = @"🥹";
    }

    v5 = v7;
  }

  return v5;
}

+ (id)appleBalanceInStoreTopUpTokenForType:(int64_t)a3 state:(int64_t)a4 debugType:(int64_t)a5
{
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v11 = v10;
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        goto LABEL_10;
      }

      v12 = -1;
      goto LABEL_8;
    }

LABEL_7:
    v12 = 1;
LABEL_8:
    [v10 setDay:v12];
    goto LABEL_10;
  }

  if (a5 != 2)
  {
    if (a5 != 3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  [v10 setSecond:10];
LABEL_10:
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [v9 dateByAddingComponents:v11 toDate:v13 options:0];

  v15 = objc_alloc_init(PKAppleBalanceInStoreTopUpToken);
  v16 = [a1 _inStoreTokenForType:a3 debugType:a5];
  [(PKAppleBalanceInStoreTopUpToken *)v15 setToken:v16];

  [(PKAppleBalanceInStoreTopUpToken *)v15 setTokenIdentifier:@"123456789"];
  [(PKAppleBalanceInStoreTopUpToken *)v15 setTokenType:a3];
  [(PKAppleBalanceInStoreTopUpToken *)v15 setExpirationDate:v14];
  [(PKAppleBalanceInStoreTopUpToken *)v15 setState:a4];
  v17 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/"];
  [(PKAppleBalanceInStoreTopUpToken *)v15 setTermsURL:v17];

  return v15;
}

+ (id)appleBalanceAddMoneyConfigurationWithCurrencyCode:(id)a3
{
  v27[5] = *MEMORY[0x1E69E9840];
  v26[0] = @"minAmount";
  v3 = MEMORY[0x1E696AB90];
  v4 = a3;
  v18 = [v3 decimalNumberWithString:@"5.0"];
  v27[0] = v18;
  v26[1] = @"maxAmount";
  v17 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"500.0"];
  v27[1] = v17;
  v26[2] = @"maxBalance";
  v16 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2000.0"];
  v27[2] = v16;
  v26[3] = @"denominations";
  v23[0] = @"amount";
  v5 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"10.0"];
  v23[1] = @"currencyCode";
  v24[0] = v5;
  v24[1] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v25[0] = v6;
  v21[0] = @"amount";
  v7 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"20.0"];
  v21[1] = @"currencyCode";
  v22[0] = v7;
  v22[1] = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v25[1] = v8;
  v19[0] = @"amount";
  v9 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"30.0"];
  v19[1] = @"currencyCode";
  v20[0] = v9;
  v20[1] = v4;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v25[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v26[4] = @"termsURL";
  v27[3] = v11;
  v27[4] = @"https://www.apple.com/legal/internet-services/itunes/giftcards/us/terms.html";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];

  v13 = [PKAppleBalanceDirectTopUpConfiguration alloc];
  v14 = [(PKAppleBalanceDirectTopUpConfiguration *)v13 initWithDictionary:v12];

  return v14;
}

+ (BOOL)verifyAppleBalanceAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 accountIdentifier];
  v6 = v5;
  if (!v5)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v7 = [v5 isEqual:@"apple-balance-account-001"];

  if (v7)
  {
    if ([v4 feature] == 4 && objc_msgSend(v4, "type") == 3 && objc_msgSend(v4, "state") == 1 && !objc_msgSend(v4, "stateReason"))
    {
      v8 = [v4 cloudStoreZoneNames];
      v9 = [v8 firstObject];
      v10 = [v9 isEqualToString:@"apple-account"];

      if (v10)
      {
        v11 = [v4 details];
        v12 = [v11 appleBalanceDetails];
        v13 = [a1 _verifyAppleBalanceAccountDetails:v12];

        if (v13)
        {
          v6 = [v4 supportedFeatures];
          v14 = [a1 _verifyAppleBalanceSupportedFeatures:v6];
LABEL_12:

          goto LABEL_13;
        }
      }
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

+ (BOOL)verifyAppleBalanceAccount2:(id)a3
{
  v4 = a3;
  v5 = [v4 accountIdentifier];
  v6 = v5;
  if (!v5)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v7 = [v5 isEqual:@"apple-balance-account-002"];

  if (v7)
  {
    if ([v4 feature] == 4 && objc_msgSend(v4, "type") == 3 && objc_msgSend(v4, "state") == 2 && objc_msgSend(v4, "stateReason") == 5)
    {
      v8 = [v4 cloudStoreZoneNames];
      v9 = [v8 firstObject];
      v10 = [v9 isEqualToString:@"transactions"];

      if (v10)
      {
        v11 = [v4 details];
        v12 = [v11 appleBalanceDetails];
        v13 = [a1 _verifyAppleBalanceAccountDetails2:v12];

        if (v13)
        {
          v6 = [v4 supportedFeatures];
          v14 = [a1 _verifyAppleBalanceSupportedFeatures2:v6];
LABEL_12:

          goto LABEL_13;
        }
      }
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

+ (BOOL)_verifyAppleBalanceAccountDetails:(id)a3
{
  v4 = a3;
  v5 = [v4 createdDate];
  v6 = [a1 _date1];
  v7 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v6, 0, 0);
  v8 = v7;
  if (v5 && v7)
  {
    v9 = [v5 isEqual:v7];

    if ((v9 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v5 != v8)
    {
      goto LABEL_11;
    }
  }

  v10 = [v4 lastUpdatedDate];
  v11 = [a1 _date2];
  v12 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v11, 0, 0);
  v13 = v12;
  if (v10 && v12)
  {
    v14 = [v10 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v10 != v13)
    {
      goto LABEL_11;
    }
  }

  v17 = [v4 countryCode];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_28;
  }

  v15 = [v17 isEqual:@"US"];

  if (!v15)
  {
    goto LABEL_12;
  }

  v19 = [v4 currencyCode];
  if (v19 == @"USD")
  {
LABEL_18:
    v21 = [v4 associatedPassTypeIdentifier];
    v18 = v21;
    if (v21)
    {
      v15 = [v21 isEqual:@"paymentpass.com.apple.wallet.dev"];

      if (!v15)
      {
        goto LABEL_12;
      }

      v22 = [v4 associatedPassSerialNumber];
      v18 = v22;
      if (v22)
      {
        v15 = [v22 isEqual:@"wallettest.lynx.serialnumber"];

        if (!v15)
        {
          goto LABEL_12;
        }

        v23 = [v4 fpanIdentifier];
        v18 = v23;
        if (v23)
        {
          v15 = [v23 isEqual:@"FAPLLY3814311690852077410603"];

          if (!v15)
          {
            goto LABEL_12;
          }

          if ([v4 cardType] != 135)
          {
            goto LABEL_11;
          }

          v18 = [v4 accountSummary];
          v24 = [v18 currentBalance];
          v25 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"100.00"];
          v26 = v25;
          if (v24 && v25)
          {
            LOBYTE(v15) = [v24 isEqual:v25];
          }

          else
          {
            LOBYTE(v15) = v24 == v25;
          }

LABEL_29:
          goto LABEL_12;
        }
      }
    }

LABEL_28:
    LOBYTE(v15) = 0;
    goto LABEL_29;
  }

  v20 = v19;
  if (v19)
  {
    v15 = [(__CFString *)v19 isEqualToString:@"USD"];

    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_11:
  LOBYTE(v15) = 0;
LABEL_12:

  return v15;
}

+ (BOOL)_verifyAppleBalanceAccountDetails2:(id)a3
{
  v4 = a3;
  v5 = [v4 createdDate];
  v6 = [a1 _date3];
  v7 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v6, 0, 0);
  v8 = v7;
  if (v5 && v7)
  {
    v9 = [v5 isEqual:v7];

    if ((v9 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v5 != v8)
    {
      goto LABEL_11;
    }
  }

  v10 = [v4 lastUpdatedDate];
  v11 = [a1 _date4];
  v12 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v11, 0, 0);
  v13 = v12;
  if (v10 && v12)
  {
    v14 = [v10 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v10 != v13)
    {
      goto LABEL_11;
    }
  }

  v17 = [v4 countryCode];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_28;
  }

  v15 = [v17 isEqual:@"FR"];

  if (!v15)
  {
    goto LABEL_12;
  }

  v19 = [v4 currencyCode];
  if (v19 == @"EUR")
  {
LABEL_18:
    v21 = [v4 associatedPassTypeIdentifier];
    v18 = v21;
    if (v21)
    {
      v15 = [v21 isEqual:@"paymentpass.com.apple.wallet.dev"];

      if (!v15)
      {
        goto LABEL_12;
      }

      v22 = [v4 associatedPassSerialNumber];
      v18 = v22;
      if (v22)
      {
        v15 = [v22 isEqual:@"wallettest.lynx.serialnumber"];

        if (!v15)
        {
          goto LABEL_12;
        }

        v23 = [v4 fpanIdentifier];
        v18 = v23;
        if (v23)
        {
          v15 = [v23 isEqual:@"FAPLLY3814311690852077410604"];

          if (!v15)
          {
            goto LABEL_12;
          }

          if ([v4 cardType] != 135)
          {
            goto LABEL_11;
          }

          v18 = [v4 accountSummary];
          v24 = [v18 currentBalance];
          v25 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"250.00"];
          v26 = v25;
          if (v24 && v25)
          {
            LOBYTE(v15) = [v24 isEqual:v25];
          }

          else
          {
            LOBYTE(v15) = v24 == v25;
          }

LABEL_29:
          goto LABEL_12;
        }
      }
    }

LABEL_28:
    LOBYTE(v15) = 0;
    goto LABEL_29;
  }

  v20 = v19;
  if (v19)
  {
    v15 = [(__CFString *)v19 isEqualToString:@"EUR"];

    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_11:
  LOBYTE(v15) = 0;
LABEL_12:

  return v15;
}

+ (BOOL)_verifyLightweightAppleBalanceAccountDetails:(id)a3
{
  v3 = [a3 accountSummary];
  v4 = [v3 currentBalance];
  v5 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"100.00"];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 isEqual:v5];
  }

  else
  {
    v7 = v4 == v5;
  }

  return v7;
}

+ (BOOL)_verifyAppleBalanceSupportedFeatures:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 count] == 2;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  v8 = *v18;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v17 + 1) + 8 * i) identifier];
      v11 = v10;
      if (@"ampTopUpSupported" == v10)
      {
LABEL_17:

        goto LABEL_18;
      }

      if (@"ampTopUpSupported" && v10)
      {
        v12 = [@"ampTopUpSupported" isEqualToString:v10];

        if (v12)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      v13 = v11;
      if (@"ampRedemptionSupported" == v13)
      {
        goto LABEL_17;
      }

      v14 = v13;
      if (!@"ampRedemptionSupported" || !v11)
      {

LABEL_22:
        v4 = 0;
        goto LABEL_23;
      }

      v15 = [@"ampRedemptionSupported" isEqualToString:v13];

      if ((v15 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_18:
    }

    v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  v4 = 1;
LABEL_23:

  return v4;
}

+ (BOOL)verifyLightweightAppleBalanceAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 accountIdentifier];
  v6 = v5;
  if (!v5)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v7 = [v5 isEqual:@"apple-balance-lightweight-account-001"];

  if (v7)
  {
    if ([v4 feature] == 4 && objc_msgSend(v4, "type") == 3)
    {
      v8 = [v4 cloudStoreZoneNames];
      v9 = [v8 firstObject];
      v10 = [v9 isEqualToString:@"apple-account"];

      if (v10)
      {
        v6 = [v4 details];
        v11 = [v6 appleBalanceDetails];
        v12 = [a1 _verifyLightweightAppleBalanceAccountDetails:v11];

LABEL_9:
        goto LABEL_10;
      }
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

+ (BOOL)verifyPromotion:(id)a3
{
  v4 = a3;
  if ([v4 promotionType])
  {
    goto LABEL_2;
  }

  v7 = [v4 programIdentifier];
  if (v7 != @"30154")
  {
    v8 = v7;
    if (!v7)
    {
      goto LABEL_2;
    }

    v9 = [(__CFString *)v7 isEqualToString:@"30154"];

    if (!v9)
    {
      goto LABEL_2;
    }
  }

  v10 = [v4 versionIdentifier];
  if (v10 != @"v701909")
  {
    v11 = v10;
    if (!v10)
    {
      goto LABEL_2;
    }

    v12 = [(__CFString *)v10 isEqualToString:@"v701909"];

    if (!v12)
    {
      goto LABEL_2;
    }
  }

  if ([v4 generationIdentifier] != 371848754 || objc_msgSend(v4, "stamp") != 0x1863E34D290)
  {
    goto LABEL_2;
  }

  v13 = [v4 bonusMinAmount];
  v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"50.0"];
  v15 = v14;
  if (v13 && v14)
  {
    v16 = [v13 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {

    if (v13 != v15)
    {
      goto LABEL_2;
    }
  }

  v17 = [v4 bonusMaxAmount];
  v18 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"200.0"];
  v19 = v18;
  if (!v17 || !v18)
  {

    if (v17 == v19)
    {
      goto LABEL_22;
    }

LABEL_2:
    v5 = 0;
    goto LABEL_3;
  }

  v20 = [v17 isEqual:v18];

  if ((v20 & 1) == 0)
  {
    goto LABEL_2;
  }

LABEL_22:
  v21 = [v4 offerText];
  if (v21 != @"Add $50 or more and get 1 month of Apple Music free.")
  {
    v22 = v21;
    if (!v21)
    {
      goto LABEL_2;
    }

    v23 = [(__CFString *)v21 isEqualToString:@"Add $50 or more and get 1 month of Apple Music free."];

    if (!v23)
    {
      goto LABEL_2;
    }
  }

  v24 = [v4 conditionText];
  if (v24 != @"1 month free, then $14.99/month. Limit 1 per Apple Account. Must claim your free content bonus immediately. Terms apply.")
  {
    v25 = v24;
    if (!v24)
    {
      goto LABEL_2;
    }

    v26 = [(__CFString *)v24 isEqualToString:@"1 month free, then $14.99/month. Limit 1 per Apple Account. Must claim your free content bonus immediately. Terms apply."];

    if (!v26)
    {
      goto LABEL_2;
    }
  }

  v27 = [v4 lastUpdatedDate];
  v28 = [a1 _date1];
  v29 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v28, 0, 0);
  v30 = v29;
  if (v27 && v29)
  {
    v5 = [v27 isEqual:v29];
  }

  else
  {
    v5 = v27 == v29;
  }

LABEL_3:
  return v5;
}

+ (BOOL)verifyInStoreTopUpToken:(id)a3
{
  v4 = a3;
  v5 = [v4 token];
  v6 = [a1 _inStoreTokenForType:0 debugType:0];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

      v11 = 0;
      v12 = v7;
LABEL_10:

      goto LABEL_11;
    }

    v10 = [(__CFString *)v7 isEqualToString:v8];

    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if ([v4 tokenType])
  {
    goto LABEL_8;
  }

  v14 = [v4 tokenIdentifier];
  if (v14 != @"12345678912345678912345678912345")
  {
    v15 = v14;
    if (!v14)
    {
      goto LABEL_8;
    }

    v16 = [(__CFString *)v14 isEqualToString:@"12345678912345678912345678912345"];

    if (!v16)
    {
      goto LABEL_8;
    }
  }

  v17 = [v4 expirationDate];
  v18 = [a1 _date1];
  v19 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v18, 0, 0);
  v20 = v19;
  if (v17 && v19)
  {
    v21 = [v17 isEqual:v19];

    if ((v21 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (v17 != v20)
    {
      goto LABEL_8;
    }
  }

  if (![v4 state])
  {
    v12 = [v4 termsURL];
    v22 = [v12 absoluteString];
    v9 = @"https://www.apple.com/";
    if (v22 == @"https://www.apple.com/")
    {
      v11 = 1;
      v7 = @"https://www.apple.com/";
    }

    else
    {
      v7 = v22;
      if (v22)
      {
        v11 = [(__CFString *)v22 isEqualToString:@"https://www.apple.com/"];
        v9 = v7;
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }
    }

    goto LABEL_10;
  }

LABEL_8:
  v11 = 0;
LABEL_11:

  return v11;
}

@end