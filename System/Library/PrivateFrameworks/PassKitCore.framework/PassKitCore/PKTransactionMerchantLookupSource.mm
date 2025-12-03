@interface PKTransactionMerchantLookupSource
- (PKTransactionMerchantLookupSource)initWithTransaction:(id)transaction paymentApplication:(id)application;
- (id)mapsMerchantLookupRequest;
@end

@implementation PKTransactionMerchantLookupSource

- (PKTransactionMerchantLookupSource)initWithTransaction:(id)transaction paymentApplication:(id)application
{
  transactionCopy = transaction;
  applicationCopy = application;
  v12.receiver = self;
  v12.super_class = PKTransactionMerchantLookupSource;
  v9 = [(PKTransactionMerchantLookupSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transaction, transaction);
    objc_storeStrong(&v10->_paymentApplication, application);
  }

  return v10;
}

- (id)mapsMerchantLookupRequest
{
  effectiveTransactionSource = [(PKPaymentTransaction *)self->_transaction effectiveTransactionSource];
  [(PKPaymentTransaction *)self->_transaction transactionType];
  if (effectiveTransactionSource - 1 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1ADB9AD20[effectiveTransactionSource - 1];
  }

  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  v6 = objc_alloc_init(getMKWalletMerchantLookupRequestClass[0]());
  [v6 setTransactionType:v4];
  transactionDate = [(PKPaymentTransaction *)self->_transaction transactionDate];
  [v6 setTransactionDate:transactionDate];

  paymentApplication = self->_paymentApplication;
  if (paymentApplication)
  {
    v9 = PKPaymentNetworkNameForPaymentCredentialType([(PKPaymentApplication *)paymentApplication paymentNetworkIdentifier]);
    [v6 setPaymentNetwork:v9];
  }

  industryCategory = [merchant industryCategory];
  [v6 setIndustryCategory:industryCategory];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(merchant, "industryCode")}];
  [v6 setIndustryCode:v11];

  city = [merchant city];
  [v6 setMerchantCity:city];

  rawCity = [merchant rawCity];
  [v6 setMerchantRawCity:rawCity];

  state = [merchant state];
  [v6 setMerchantState:state];

  rawState = [merchant rawState];
  [v6 setMerchantRawState:rawState];

  v16 = [merchant zip];
  [v6 setMerchantZip:v16];

  merchantIdentifier = [merchant merchantIdentifier];
  [v6 setMerchantId:merchantIdentifier];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(merchant, "cleanConfidenceLevel")}];
  [v6 setMerchantCleanConfidenceLevel:v18];

  currencyCode = [(PKPaymentTransaction *)self->_transaction currencyCode];
  [v6 setTransactionCurrencyCode:currencyCode];

  rawCANL = [merchant rawCANL];
  [v6 setMerchantCanl:rawCANL];

  identifier = [(PKPaymentTransaction *)self->_transaction identifier];
  [v6 setTransactionId:identifier];

  rawName = [merchant rawName];
  [v6 setRawMerchantCode:rawName];

  name = [merchant name];
  [v6 setMerchantCode:name];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPaymentTransaction isFuzzyMatched](self->_transaction, "isFuzzyMatched")}];
  [v6 setFuzzyMatched:v24];

  clearingNetworkData = [(PKPaymentTransaction *)self->_transaction clearingNetworkData];

  if (clearingNetworkData)
  {
    v26 = MEMORY[0x1E696ACB0];
    clearingNetworkData2 = [(PKPaymentTransaction *)self->_transaction clearingNetworkData];
  }

  else
  {
    authNetworkData = [(PKPaymentTransaction *)self->_transaction authNetworkData];

    if (!authNetworkData)
    {
      goto LABEL_16;
    }

    v26 = MEMORY[0x1E696ACB0];
    clearingNetworkData2 = [(PKPaymentTransaction *)self->_transaction authNetworkData];
  }

  v29 = clearingNetworkData2;
  v30 = [clearingNetworkData2 dataUsingEncoding:4];
  authNetworkData = [v26 JSONObjectWithData:v30 options:0 error:0];

  if (authNetworkData)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [authNetworkData objectForKeyedSubscript:@"DE041"];
      [v6 setTerminalId:v31];

      v32 = [authNetworkData objectForKeyedSubscript:@"DE048"];
      if (v32)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v32 options:0 error:0];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v33 encoding:4];
          [v6 setMerchantAdditionalData:v34];
        }
      }

      v35 = [authNetworkData objectForKeyedSubscript:@"DE019"];
      [v6 setMerchantCountryCode:v35];

      v36 = [authNetworkData objectForKeyedSubscript:@"DE018"];
      [v6 setMerchantType:v36];
    }
  }

LABEL_16:
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      webMerchantIdentifier = [merchant webMerchantIdentifier];
      [v6 setWarsawMerchantId:webMerchantIdentifier];

      webMerchantName = [merchant webMerchantName];
      [v6 setWarsawMerchantName:webMerchantName];

      originURL = [merchant originURL];
      absoluteString = [originURL absoluteString];
      [v6 setWarsawMerchantDomain:absoluteString];
LABEL_24:

      goto LABEL_25;
    }

    if (v4 != 4)
    {
      goto LABEL_26;
    }
  }

  else if (v4 != 1)
  {
    if (v4 != 2)
    {
      goto LABEL_26;
    }

    originURL = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(merchant, "adamIdentifier")}];
    absoluteString = [originURL stringValue];
    [v6 setAdamId:absoluteString];
    goto LABEL_24;
  }

  location = [(PKPaymentTransaction *)self->_transaction location];
  v40 = PKGEOLocationFromCLLocation(location);
  [v6 setLocation:v40];

  originURL = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPaymentTransaction isCoarseLocation](self->_transaction, "isCoarseLocation")}];
  [v6 setCoarseLocationUsed:originURL];
LABEL_25:

LABEL_26:

  return v6;
}

@end