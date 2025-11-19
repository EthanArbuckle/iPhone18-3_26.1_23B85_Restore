@interface PKTransactionMerchantLookupSource
- (PKTransactionMerchantLookupSource)initWithTransaction:(id)a3 paymentApplication:(id)a4;
- (id)mapsMerchantLookupRequest;
@end

@implementation PKTransactionMerchantLookupSource

- (PKTransactionMerchantLookupSource)initWithTransaction:(id)a3 paymentApplication:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKTransactionMerchantLookupSource;
  v9 = [(PKTransactionMerchantLookupSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transaction, a3);
    objc_storeStrong(&v10->_paymentApplication, a4);
  }

  return v10;
}

- (id)mapsMerchantLookupRequest
{
  v3 = [(PKPaymentTransaction *)self->_transaction effectiveTransactionSource];
  [(PKPaymentTransaction *)self->_transaction transactionType];
  if (v3 - 1 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1ADB9AD20[v3 - 1];
  }

  v5 = [(PKPaymentTransaction *)self->_transaction merchant];
  v6 = objc_alloc_init(getMKWalletMerchantLookupRequestClass[0]());
  [v6 setTransactionType:v4];
  v7 = [(PKPaymentTransaction *)self->_transaction transactionDate];
  [v6 setTransactionDate:v7];

  paymentApplication = self->_paymentApplication;
  if (paymentApplication)
  {
    v9 = PKPaymentNetworkNameForPaymentCredentialType([(PKPaymentApplication *)paymentApplication paymentNetworkIdentifier]);
    [v6 setPaymentNetwork:v9];
  }

  v10 = [v5 industryCategory];
  [v6 setIndustryCategory:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "industryCode")}];
  [v6 setIndustryCode:v11];

  v12 = [v5 city];
  [v6 setMerchantCity:v12];

  v13 = [v5 rawCity];
  [v6 setMerchantRawCity:v13];

  v14 = [v5 state];
  [v6 setMerchantState:v14];

  v15 = [v5 rawState];
  [v6 setMerchantRawState:v15];

  v16 = [v5 zip];
  [v6 setMerchantZip:v16];

  v17 = [v5 merchantIdentifier];
  [v6 setMerchantId:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "cleanConfidenceLevel")}];
  [v6 setMerchantCleanConfidenceLevel:v18];

  v19 = [(PKPaymentTransaction *)self->_transaction currencyCode];
  [v6 setTransactionCurrencyCode:v19];

  v20 = [v5 rawCANL];
  [v6 setMerchantCanl:v20];

  v21 = [(PKPaymentTransaction *)self->_transaction identifier];
  [v6 setTransactionId:v21];

  v22 = [v5 rawName];
  [v6 setRawMerchantCode:v22];

  v23 = [v5 name];
  [v6 setMerchantCode:v23];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPaymentTransaction isFuzzyMatched](self->_transaction, "isFuzzyMatched")}];
  [v6 setFuzzyMatched:v24];

  v25 = [(PKPaymentTransaction *)self->_transaction clearingNetworkData];

  if (v25)
  {
    v26 = MEMORY[0x1E696ACB0];
    v27 = [(PKPaymentTransaction *)self->_transaction clearingNetworkData];
  }

  else
  {
    v28 = [(PKPaymentTransaction *)self->_transaction authNetworkData];

    if (!v28)
    {
      goto LABEL_16;
    }

    v26 = MEMORY[0x1E696ACB0];
    v27 = [(PKPaymentTransaction *)self->_transaction authNetworkData];
  }

  v29 = v27;
  v30 = [v27 dataUsingEncoding:4];
  v28 = [v26 JSONObjectWithData:v30 options:0 error:0];

  if (v28)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v28 objectForKeyedSubscript:@"DE041"];
      [v6 setTerminalId:v31];

      v32 = [v28 objectForKeyedSubscript:@"DE048"];
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

      v35 = [v28 objectForKeyedSubscript:@"DE019"];
      [v6 setMerchantCountryCode:v35];

      v36 = [v28 objectForKeyedSubscript:@"DE018"];
      [v6 setMerchantType:v36];
    }
  }

LABEL_16:
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v41 = [v5 webMerchantIdentifier];
      [v6 setWarsawMerchantId:v41];

      v42 = [v5 webMerchantName];
      [v6 setWarsawMerchantName:v42];

      v37 = [v5 originURL];
      v38 = [v37 absoluteString];
      [v6 setWarsawMerchantDomain:v38];
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

    v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "adamIdentifier")}];
    v38 = [v37 stringValue];
    [v6 setAdamId:v38];
    goto LABEL_24;
  }

  v39 = [(PKPaymentTransaction *)self->_transaction location];
  v40 = PKGEOLocationFromCLLocation(v39);
  [v6 setLocation:v40];

  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPaymentTransaction isCoarseLocation](self->_transaction, "isCoarseLocation")}];
  [v6 setCoarseLocationUsed:v37];
LABEL_25:

LABEL_26:

  return v6;
}

@end