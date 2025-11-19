@interface PKPaymentOffersSessionDetails
- (BOOL)isEqual:(id)a3;
- (PKPaymentOffersSessionDetails)initWithCoder:(id)a3;
- (PKPaymentOffersSessionDetails)initWithContext:(unint64_t)a3;
- (PKPaymentOffersSessionDetails)initWithTransactionAmount:(id)a3 currencyCode:(id)a4 merchantCountryCode:(id)a5 merchantIdentifier:(id)a6 originURL:(id)a7 webMerchantIdentifier:(id)a8 webMerchantName:(id)a9 merchantName:(id)a10 adamIdentifier:(id)a11 shouldUseMerchantSession:(BOOL)a12 merchantCategoryCode:(signed __int16)a13 supportedNetworks:(id)a14 merchantCapabilities:(unint64_t)a15 payLaterSuppressionMode:(int64_t)a16 options:(unint64_t)a17;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)httpDictionaryRepresentation;
- (id)initForInstoreConextWithPassUniqueID:(id)a3;
- (id)initForPostPurchaseInstallmentsWithTransaction:(id)a3 userEnteredAmount:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)removeTransactionAmount;
- (void)updateCurrencyCode:(id)a3;
- (void)updateMerchantIdentifier:(id)a3 originURL:(id)a4 webMerchantIdentifier:(id)a5 webMerchantName:(id)a6;
- (void)updateTransactionAmount:(id)a3;
@end

@implementation PKPaymentOffersSessionDetails

- (PKPaymentOffersSessionDetails)initWithContext:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentOffersSessionDetails;
  result = [(PKPaymentOffersSessionDetails *)&v5 init];
  if (result)
  {
    result->_context = a3;
  }

  return result;
}

- (id)initForInstoreConextWithPassUniqueID:(id)a3
{
  v5 = a3;
  v6 = [(PKPaymentOffersSessionDetails *)self initWithContext:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_passUniqueID, a3);
  }

  return v7;
}

- (id)initForPostPurchaseInstallmentsWithTransaction:(id)a3 userEnteredAmount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentOffersSessionDetails *)self initWithContext:3];
  if (v8)
  {
    v9 = [[PKPaymentOffersSessionTransactionDetails alloc] initWithTransaction:v6];
    transactionDetails = v8->_transactionDetails;
    v8->_transactionDetails = v9;

    v11 = [v6 amount];
    transactionAmount = v8->_transactionAmount;
    v8->_transactionAmount = v11;

    v13 = [v6 currencyCode];
    currencyCode = v8->_currencyCode;
    v8->_currencyCode = v13;

    v15 = [v6 merchant];
    v16 = [v15 name];
    merchantName = v8->_merchantName;
    v8->_merchantName = v16;

    objc_storeStrong(&v8->_userEnteredAmount, a4);
  }

  return v8;
}

- (PKPaymentOffersSessionDetails)initWithTransactionAmount:(id)a3 currencyCode:(id)a4 merchantCountryCode:(id)a5 merchantIdentifier:(id)a6 originURL:(id)a7 webMerchantIdentifier:(id)a8 webMerchantName:(id)a9 merchantName:(id)a10 adamIdentifier:(id)a11 shouldUseMerchantSession:(BOOL)a12 merchantCategoryCode:(signed __int16)a13 supportedNetworks:(id)a14 merchantCapabilities:(unint64_t)a15 payLaterSuppressionMode:(int64_t)a16 options:(unint64_t)a17
{
  v39 = a3;
  v38 = a4;
  obj = a5;
  v37 = a5;
  v31 = a6;
  v36 = a6;
  v32 = a7;
  v35 = a7;
  v34 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a14;
  v27 = [(PKPaymentOffersSessionDetails *)self initWithContext:0];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_transactionAmount, a3);
    objc_storeStrong(&v28->_currencyCode, a4);
    objc_storeStrong(&v28->_merchantCountryCode, obj);
    objc_storeStrong(&v28->_merchantIdentifier, v31);
    objc_storeStrong(&v28->_originURL, v32);
    objc_storeStrong(&v28->_webMerchantIdentifier, a8);
    objc_storeStrong(&v28->_webMerchantName, a9);
    objc_storeStrong(&v28->_merchantName, a10);
    objc_storeStrong(&v28->_adamIdentifier, a11);
    objc_storeStrong(&v28->_supportedNetworks, a14);
    v28->_merchantCategoryCode = a13;
    v28->_merchantCapabilities = a15;
    v28->_payLaterSuppressionMode = a16;
    v28->_options = a17;
    v28->_shouldUseMerchantSession = a12;
  }

  return v28;
}

- (void)updateCurrencyCode:(id)a3
{
  v4 = a3;
  currencyCode = self->_currencyCode;
  v6 = v4;
  v10 = v6;
  if (currencyCode == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !currencyCode)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)currencyCode isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    currencyCode = self->_currencyCode;
    self->_currencyCode = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)updateTransactionAmount:(id)a3
{
  v5 = a3;
  transactionAmount = self->_transactionAmount;
  p_transactionAmount = &self->_transactionAmount;
  v6 = transactionAmount;
  v9 = v5;
  if (!v5 || !v6)
  {
    if (v6 == v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (([(NSDecimalNumber *)v6 isEqual:v5]& 1) == 0)
  {
LABEL_6:
    objc_storeStrong(p_transactionAmount, a3);
  }

LABEL_7:
}

- (void)removeTransactionAmount
{
  transactionAmount = self->_transactionAmount;
  self->_transactionAmount = 0;

  currencyCode = self->_currencyCode;
  self->_currencyCode = 0;
}

- (void)updateMerchantIdentifier:(id)a3 originURL:(id)a4 webMerchantIdentifier:(id)a5 webMerchantName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  merchantIdentifier = self->_merchantIdentifier;
  self->_merchantIdentifier = v10;
  v20 = v10;

  originURL = self->_originURL;
  self->_originURL = v11;
  v16 = v11;

  webMerchantIdentifier = self->_webMerchantIdentifier;
  self->_webMerchantIdentifier = v12;
  v18 = v12;

  webMerchantName = self->_webMerchantName;
  self->_webMerchantName = v13;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSDecimalNumber *)self->_transactionAmount stringValue];
  [v3 setObject:v4 forKeyedSubscript:@"amount"];

  [v3 setObject:self->_currencyCode forKeyedSubscript:@"currencyCode"];
  [v3 setObject:self->_merchantCountryCode forKeyedSubscript:@"countryCode"];
  [v3 setObject:self->_supportedNetworks forKeyedSubscript:@"supportedNetworks"];
  [v3 setObject:self->_merchantIdentifier forKeyedSubscript:@"merchantIdentifier"];
  [v3 setObject:self->_originURL forKeyedSubscript:@"originURL"];
  [v3 setObject:self->_webMerchantIdentifier forKeyedSubscript:@"webMerchantIdentifier"];
  [v3 setObject:self->_webMerchantName forKeyedSubscript:@"webMerchantName"];
  [v3 setObject:self->_merchantName forKeyedSubscript:@"merchantName"];
  [v3 setObject:self->_adamIdentifier forKeyedSubscript:@"adamIdentifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_merchantCategoryCode];
  [v3 setObject:v5 forKeyedSubscript:@"merchantCategoryCode"];

  v6 = PKApplePayLaterAvailabilityToString(self->_payLaterSuppressionMode);
  [v3 setObject:v6 forKeyedSubscript:@"payLaterSuppressionMode"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_merchantCapabilities];
  [v3 setObject:v7 forKeyedSubscript:@"merchantCapabilities"];

  v8 = self->_context - 1;
  if (v8 > 2)
  {
    v9 = @"ecom";
  }

  else
  {
    v9 = off_1E79CEDB0[v8];
  }

  [v3 setObject:v9 forKeyedSubscript:@"context"];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_options];
  [v3 setObject:v10 forKeyedSubscript:@"options"];

  [v3 setObject:self->_passUniqueID forKeyedSubscript:@"passUniqueID"];
  v11 = [(PKPaymentOffersSessionTransactionDetails *)self->_transactionDetails dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"kTransactionDetails"];

  v12 = [(NSSet *)self->_merchandisingOfferIdentifiers allObjects];
  [v3 setObject:v12 forKeyedSubscript:@"merchandisingOfferIdentifiers"];

  v13 = [(PKCurrencyAmount *)self->_userEnteredAmount dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"userEnteredAmount"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldUseMerchantSession];
  [v3 setObject:v14 forKeyedSubscript:@"shouldUseMerchantSession"];

  v15 = [v3 copy];

  return v15;
}

- (id)httpDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSDecimalNumber *)self->_transactionAmount stringValue];
  [v3 setObject:v4 forKeyedSubscript:@"amount"];

  [v3 setObject:self->_currencyCode forKeyedSubscript:@"currencyCode"];
  [v3 setObject:self->_merchantCountryCode forKeyedSubscript:@"countryCode"];
  [v3 setObject:self->_supportedNetworks forKeyedSubscript:@"supportedNetworks"];
  [v3 setObject:self->_merchantIdentifier forKeyedSubscript:@"merchantIdentifier"];
  [v3 setObject:self->_originURL forKeyedSubscript:@"originURL"];
  [v3 setObject:self->_webMerchantIdentifier forKeyedSubscript:@"webMerchantIdentifier"];
  [v3 setObject:self->_webMerchantName forKeyedSubscript:@"webMerchantName"];
  [v3 setObject:self->_merchantName forKeyedSubscript:@"merchantName"];
  [v3 setObject:self->_adamIdentifier forKeyedSubscript:@"adamIdentifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_merchantCategoryCode];
  [v3 setObject:v5 forKeyedSubscript:@"merchantCategoryCode"];

  [v3 setObject:self->_merchandisingOfferIdentifiers forKeyedSubscript:@"merchandisingOfferIdentifiers"];
  v6 = [(PKCurrencyAmount *)self->_userEnteredAmount dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"userEnteredAmount"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        transactionAmount = self->_transactionAmount;
        v8 = v6->_transactionAmount;
        if (transactionAmount && v8)
        {
          if (([(NSDecimalNumber *)transactionAmount isEqual:?]& 1) == 0)
          {
            goto LABEL_64;
          }
        }

        else if (transactionAmount != v8)
        {
          goto LABEL_64;
        }

        currencyCode = v6->_currencyCode;
        v11 = self->_currencyCode;
        v12 = currencyCode;
        v13 = v12;
        if (v11 == v12)
        {
        }

        else
        {
          if (!v11 || !v12)
          {
            goto LABEL_63;
          }

          v14 = [(NSString *)v11 isEqualToString:v12];

          if (!v14)
          {
            goto LABEL_64;
          }
        }

        merchantCountryCode = v6->_merchantCountryCode;
        v11 = self->_merchantCountryCode;
        v16 = merchantCountryCode;
        v13 = v16;
        if (v11 == v16)
        {
        }

        else
        {
          if (!v11 || !v16)
          {
            goto LABEL_63;
          }

          v17 = [(NSString *)v11 isEqualToString:v16];

          if (!v17)
          {
            goto LABEL_64;
          }
        }

        supportedNetworks = self->_supportedNetworks;
        v19 = v6->_supportedNetworks;
        if (supportedNetworks && v19)
        {
          if (([(NSArray *)supportedNetworks isEqual:?]& 1) == 0)
          {
            goto LABEL_64;
          }
        }

        else if (supportedNetworks != v19)
        {
          goto LABEL_64;
        }

        merchantIdentifier = v6->_merchantIdentifier;
        v11 = self->_merchantIdentifier;
        v21 = merchantIdentifier;
        v13 = v21;
        if (v11 == v21)
        {
        }

        else
        {
          if (!v11 || !v21)
          {
            goto LABEL_63;
          }

          v22 = [(NSString *)v11 isEqualToString:v21];

          if (!v22)
          {
            goto LABEL_64;
          }
        }

        originURL = v6->_originURL;
        v11 = self->_originURL;
        v24 = originURL;
        v13 = v24;
        if (v11 == v24)
        {
        }

        else
        {
          if (!v11 || !v24)
          {
            goto LABEL_63;
          }

          v25 = [(NSString *)v11 isEqualToString:v24];

          if (!v25)
          {
            goto LABEL_64;
          }
        }

        webMerchantIdentifier = v6->_webMerchantIdentifier;
        v11 = self->_webMerchantIdentifier;
        v27 = webMerchantIdentifier;
        v13 = v27;
        if (v11 == v27)
        {
        }

        else
        {
          if (!v11 || !v27)
          {
            goto LABEL_63;
          }

          v28 = [(NSString *)v11 isEqualToString:v27];

          if (!v28)
          {
            goto LABEL_64;
          }
        }

        webMerchantName = v6->_webMerchantName;
        v11 = self->_webMerchantName;
        v30 = webMerchantName;
        v13 = v30;
        if (v11 == v30)
        {
        }

        else
        {
          if (!v11 || !v30)
          {
            goto LABEL_63;
          }

          v31 = [(NSString *)v11 isEqualToString:v30];

          if (!v31)
          {
            goto LABEL_64;
          }
        }

        merchantName = v6->_merchantName;
        v11 = self->_merchantName;
        v33 = merchantName;
        v13 = v33;
        if (v11 == v33)
        {
        }

        else
        {
          if (!v11 || !v33)
          {
            goto LABEL_63;
          }

          v34 = [(NSString *)v11 isEqualToString:v33];

          if (!v34)
          {
            goto LABEL_64;
          }
        }

        passUniqueID = v6->_passUniqueID;
        v11 = self->_passUniqueID;
        v36 = passUniqueID;
        v13 = v36;
        if (v11 == v36)
        {

LABEL_68:
          adamIdentifier = self->_adamIdentifier;
          v40 = v6->_adamIdentifier;
          if (adamIdentifier && v40)
          {
            if (([(NSNumber *)adamIdentifier isEqual:?]& 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else if (adamIdentifier != v40)
          {
            goto LABEL_64;
          }

          transactionDetails = self->_transactionDetails;
          v42 = v6->_transactionDetails;
          if (transactionDetails && v42)
          {
            if (![(PKPaymentOffersSessionTransactionDetails *)transactionDetails isEqual:?])
            {
              goto LABEL_64;
            }
          }

          else if (transactionDetails != v42)
          {
            goto LABEL_64;
          }

          merchandisingOfferIdentifiers = self->_merchandisingOfferIdentifiers;
          v44 = v6->_merchandisingOfferIdentifiers;
          if (merchandisingOfferIdentifiers && v44)
          {
            if (([(NSSet *)merchandisingOfferIdentifiers isEqual:?]& 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else if (merchandisingOfferIdentifiers != v44)
          {
            goto LABEL_64;
          }

          userEnteredAmount = self->_userEnteredAmount;
          v46 = v6->_userEnteredAmount;
          if (userEnteredAmount && v46)
          {
            if (![(PKCurrencyAmount *)userEnteredAmount isEqual:?])
            {
              goto LABEL_64;
            }
          }

          else if (userEnteredAmount != v46)
          {
            goto LABEL_64;
          }

          if (self->_merchantCategoryCode == v6->_merchantCategoryCode && self->_payLaterSuppressionMode == v6->_payLaterSuppressionMode && self->_merchantCapabilities == v6->_merchantCapabilities && self->_context == v6->_context && self->_options == v6->_options)
          {
            v9 = self->_shouldUseMerchantSession == v6->_shouldUseMerchantSession;
            goto LABEL_65;
          }

LABEL_64:
          v9 = 0;
LABEL_65:

          goto LABEL_66;
        }

        if (v11 && v36)
        {
          v37 = [(NSString *)v11 isEqualToString:v36];

          if (!v37)
          {
            goto LABEL_64;
          }

          goto LABEL_68;
        }

LABEL_63:

        goto LABEL_64;
      }
    }

    v9 = 0;
  }

LABEL_66:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_transactionAmount];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_merchantCountryCode];
  [v3 safelyAddObject:self->_supportedNetworks];
  [v3 safelyAddObject:self->_merchantIdentifier];
  [v3 safelyAddObject:self->_originURL];
  [v3 safelyAddObject:self->_webMerchantIdentifier];
  [v3 safelyAddObject:self->_webMerchantName];
  [v3 safelyAddObject:self->_merchantName];
  [v3 safelyAddObject:self->_adamIdentifier];
  [v3 safelyAddObject:self->_passUniqueID];
  [v3 safelyAddObject:self->_transactionDetails];
  [v3 safelyAddObject:self->_merchandisingOfferIdentifiers];
  [v3 safelyAddObject:self->_userEnteredAmount];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_merchantCategoryCode - v4 + 32 * v4;
  v6 = self->_payLaterSuppressionMode - v5 + 32 * v5;
  v7 = self->_merchantCapabilities - v6 + 32 * v6;
  v8 = self->_context - v7 + 32 * v7;
  v9 = self->_options - v8 + 32 * v8;
  v10 = self->_shouldUseMerchantSession - v9 + 32 * v9;

  return v10;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"amount: '%@'; ", self->_transactionAmount];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  [v3 appendFormat:@"countryCode: '%@'; ", self->_merchantCountryCode];
  [v3 appendFormat:@"supportedNetworks: '%@'; ", self->_supportedNetworks];
  [v3 appendFormat:@"merchantIdentifier: '%@'; ", self->_merchantIdentifier];
  [v3 appendFormat:@"originURL: '%@'; ", self->_originURL];
  [v3 appendFormat:@"webMerchantIdentifier: '%@'; ", self->_webMerchantIdentifier];
  [v3 appendFormat:@"webMerchantName: '%@'; ", self->_webMerchantName];
  [v3 appendFormat:@"merchantName: '%@'; ", self->_merchantName];
  [v3 appendFormat:@"adamIdentifier: '%@'; ", self->_adamIdentifier];
  [v3 appendFormat:@"merchandisingOfferIdentifiers: '%@'; ", self->_merchandisingOfferIdentifiers];
  [v3 appendFormat:@"merchantCategoryCode: %ld; ", self->_merchantCategoryCode];
  v4 = PKApplePayLaterAvailabilityToString(self->_payLaterSuppressionMode);
  [v3 appendFormat:@"payLaterSuppressionMode: '%@'; ", v4];

  [v3 appendFormat:@"merchantCapabilities: %ld; ", self->_merchantCapabilities];
  v5 = self->_context - 1;
  if (v5 > 2)
  {
    v6 = @"ecom";
  }

  else
  {
    v6 = off_1E79CEDB0[v5];
  }

  [v3 appendFormat:@"context: '%@'; ", v6];
  [v3 appendFormat:@"options: %ld; ", self->_options];
  if (self->_shouldUseMerchantSession)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"shouldUseMerchantSession: '%@' ", v7];
  if (self->_passUniqueID)
  {
    [v3 appendFormat:@"passUniqueID: '%@'; ", self->_passUniqueID];
  }

  if (self->_userEnteredAmount)
  {
    [v3 appendFormat:@"userEnteredAmount: '%@'; ", self->_userEnteredAmount];
  }

  if (self->_transactionDetails)
  {
    [v3 appendFormat:@"transactionDetails: '%@'; ", self->_transactionDetails];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOffersSessionDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = PKPaymentOffersSessionDetails;
  v5 = [(PKPaymentOffersSessionDetails *)&v41 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    merchantCountryCode = v5->_merchantCountryCode;
    v5->_merchantCountryCode = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"supportedNetworks"];
    supportedNetworks = v5->_supportedNetworks;
    v5->_supportedNetworks = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originURL"];
    originURL = v5->_originURL;
    v5->_originURL = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webMerchantIdentifier"];
    webMerchantIdentifier = v5->_webMerchantIdentifier;
    v5->_webMerchantIdentifier = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webMerchantName"];
    webMerchantName = v5->_webMerchantName;
    v5->_webMerchantName = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantName"];
    merchantName = v5->_merchantName;
    v5->_merchantName = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adamIdentifier"];
    adamIdentifier = v5->_adamIdentifier;
    v5->_adamIdentifier = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"merchandisingOfferIdentifiers"];
    merchandisingOfferIdentifiers = v5->_merchandisingOfferIdentifiers;
    v5->_merchandisingOfferIdentifiers = v32;

    v5->_merchantCategoryCode = [v4 decodeIntegerForKey:@"merchantCategoryCode"];
    v5->_payLaterSuppressionMode = [v4 decodeIntegerForKey:@"payLaterSuppressionMode"];
    v5->_merchantCapabilities = [v4 decodeIntegerForKey:@"merchantCapabilities"];
    v5->_context = [v4 decodeIntegerForKey:@"context"];
    v5->_options = [v4 decodeIntegerForKey:@"options"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTransactionDetails"];
    transactionDetails = v5->_transactionDetails;
    v5->_transactionDetails = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userEnteredAmount"];
    userEnteredAmount = v5->_userEnteredAmount;
    v5->_userEnteredAmount = v38;

    v5->_shouldUseMerchantSession = [v4 decodeBoolForKey:@"shouldUseMerchantSession"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  transactionAmount = self->_transactionAmount;
  v5 = a3;
  [v5 encodeObject:transactionAmount forKey:@"amount"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_merchantCountryCode forKey:@"countryCode"];
  [v5 encodeObject:self->_supportedNetworks forKey:@"supportedNetworks"];
  [v5 encodeObject:self->_merchantIdentifier forKey:@"merchantIdentifier"];
  [v5 encodeObject:self->_originURL forKey:@"originURL"];
  [v5 encodeObject:self->_webMerchantIdentifier forKey:@"webMerchantIdentifier"];
  [v5 encodeObject:self->_webMerchantName forKey:@"webMerchantName"];
  [v5 encodeObject:self->_merchantName forKey:@"merchantName"];
  [v5 encodeObject:self->_adamIdentifier forKey:@"adamIdentifier"];
  [v5 encodeObject:self->_merchandisingOfferIdentifiers forKey:@"merchandisingOfferIdentifiers"];
  [v5 encodeInteger:self->_merchantCategoryCode forKey:@"merchantCategoryCode"];
  [v5 encodeInteger:self->_payLaterSuppressionMode forKey:@"payLaterSuppressionMode"];
  [v5 encodeInteger:self->_merchantCapabilities forKey:@"merchantCapabilities"];
  [v5 encodeInteger:self->_context forKey:@"context"];
  [v5 encodeInteger:self->_options forKey:@"options"];
  [v5 encodeObject:self->_passUniqueID forKey:@"passUniqueID"];
  [v5 encodeObject:self->_transactionDetails forKey:@"kTransactionDetails"];
  [v5 encodeObject:self->_userEnteredAmount forKey:@"userEnteredAmount"];
  [v5 encodeBool:self->_shouldUseMerchantSession forKey:@"shouldUseMerchantSession"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOffersSessionDetails allocWithZone:](PKPaymentOffersSessionDetails init];
  v6 = [(NSDecimalNumber *)self->_transactionAmount copyWithZone:a3];
  transactionAmount = v5->_transactionAmount;
  v5->_transactionAmount = v6;

  v8 = [(NSString *)self->_currencyCode copyWithZone:a3];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v8;

  v10 = [(NSString *)self->_merchantCountryCode copyWithZone:a3];
  merchantCountryCode = v5->_merchantCountryCode;
  v5->_merchantCountryCode = v10;

  v12 = [(NSArray *)self->_supportedNetworks copyWithZone:a3];
  supportedNetworks = v5->_supportedNetworks;
  v5->_supportedNetworks = v12;

  v14 = [(NSString *)self->_merchantIdentifier copyWithZone:a3];
  merchantIdentifier = v5->_merchantIdentifier;
  v5->_merchantIdentifier = v14;

  v16 = [(NSString *)self->_originURL copyWithZone:a3];
  originURL = v5->_originURL;
  v5->_originURL = v16;

  v18 = [(NSString *)self->_webMerchantIdentifier copyWithZone:a3];
  webMerchantIdentifier = v5->_webMerchantIdentifier;
  v5->_webMerchantIdentifier = v18;

  v20 = [(NSString *)self->_webMerchantName copyWithZone:a3];
  webMerchantName = v5->_webMerchantName;
  v5->_webMerchantName = v20;

  v22 = [(NSString *)self->_merchantName copyWithZone:a3];
  merchantName = v5->_merchantName;
  v5->_merchantName = v22;

  v24 = [(NSNumber *)self->_adamIdentifier copyWithZone:a3];
  adamIdentifier = v5->_adamIdentifier;
  v5->_adamIdentifier = v24;

  v26 = [(NSSet *)self->_merchandisingOfferIdentifiers copyWithZone:a3];
  merchandisingOfferIdentifiers = v5->_merchandisingOfferIdentifiers;
  v5->_merchandisingOfferIdentifiers = v26;

  v28 = [(NSString *)self->_passUniqueID copyWithZone:a3];
  passUniqueID = v5->_passUniqueID;
  v5->_passUniqueID = v28;

  v30 = [(PKPaymentOffersSessionTransactionDetails *)self->_transactionDetails copyWithZone:a3];
  transactionDetails = v5->_transactionDetails;
  v5->_transactionDetails = v30;

  v32 = [(PKCurrencyAmount *)self->_userEnteredAmount copyWithZone:a3];
  userEnteredAmount = v5->_userEnteredAmount;
  v5->_userEnteredAmount = v32;

  v5->_merchantCategoryCode = self->_merchantCategoryCode;
  v5->_payLaterSuppressionMode = self->_payLaterSuppressionMode;
  v5->_merchantCapabilities = self->_merchantCapabilities;
  v5->_context = self->_context;
  v5->_options = self->_options;
  v5->_shouldUseMerchantSession = self->_shouldUseMerchantSession;
  return v5;
}

@end