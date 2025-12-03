@interface PKPaymentOffersSessionDetails
- (BOOL)isEqual:(id)equal;
- (PKPaymentOffersSessionDetails)initWithCoder:(id)coder;
- (PKPaymentOffersSessionDetails)initWithContext:(unint64_t)context;
- (PKPaymentOffersSessionDetails)initWithTransactionAmount:(id)amount currencyCode:(id)code merchantCountryCode:(id)countryCode merchantIdentifier:(id)identifier originURL:(id)l webMerchantIdentifier:(id)merchantIdentifier webMerchantName:(id)name merchantName:(id)self0 adamIdentifier:(id)self1 shouldUseMerchantSession:(BOOL)self2 merchantCategoryCode:(signed __int16)self3 supportedNetworks:(id)self4 merchantCapabilities:(unint64_t)self5 payLaterSuppressionMode:(int64_t)self6 options:(unint64_t)self7;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)httpDictionaryRepresentation;
- (id)initForInstoreConextWithPassUniqueID:(id)d;
- (id)initForPostPurchaseInstallmentsWithTransaction:(id)transaction userEnteredAmount:(id)amount;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)removeTransactionAmount;
- (void)updateCurrencyCode:(id)code;
- (void)updateMerchantIdentifier:(id)identifier originURL:(id)l webMerchantIdentifier:(id)merchantIdentifier webMerchantName:(id)name;
- (void)updateTransactionAmount:(id)amount;
@end

@implementation PKPaymentOffersSessionDetails

- (PKPaymentOffersSessionDetails)initWithContext:(unint64_t)context
{
  v5.receiver = self;
  v5.super_class = PKPaymentOffersSessionDetails;
  result = [(PKPaymentOffersSessionDetails *)&v5 init];
  if (result)
  {
    result->_context = context;
  }

  return result;
}

- (id)initForInstoreConextWithPassUniqueID:(id)d
{
  dCopy = d;
  v6 = [(PKPaymentOffersSessionDetails *)self initWithContext:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_passUniqueID, d);
  }

  return v7;
}

- (id)initForPostPurchaseInstallmentsWithTransaction:(id)transaction userEnteredAmount:(id)amount
{
  transactionCopy = transaction;
  amountCopy = amount;
  v8 = [(PKPaymentOffersSessionDetails *)self initWithContext:3];
  if (v8)
  {
    v9 = [[PKPaymentOffersSessionTransactionDetails alloc] initWithTransaction:transactionCopy];
    transactionDetails = v8->_transactionDetails;
    v8->_transactionDetails = v9;

    amount = [transactionCopy amount];
    transactionAmount = v8->_transactionAmount;
    v8->_transactionAmount = amount;

    currencyCode = [transactionCopy currencyCode];
    currencyCode = v8->_currencyCode;
    v8->_currencyCode = currencyCode;

    merchant = [transactionCopy merchant];
    name = [merchant name];
    merchantName = v8->_merchantName;
    v8->_merchantName = name;

    objc_storeStrong(&v8->_userEnteredAmount, amount);
  }

  return v8;
}

- (PKPaymentOffersSessionDetails)initWithTransactionAmount:(id)amount currencyCode:(id)code merchantCountryCode:(id)countryCode merchantIdentifier:(id)identifier originURL:(id)l webMerchantIdentifier:(id)merchantIdentifier webMerchantName:(id)name merchantName:(id)self0 adamIdentifier:(id)self1 shouldUseMerchantSession:(BOOL)self2 merchantCategoryCode:(signed __int16)self3 supportedNetworks:(id)self4 merchantCapabilities:(unint64_t)self5 payLaterSuppressionMode:(int64_t)self6 options:(unint64_t)self7
{
  amountCopy = amount;
  codeCopy = code;
  obj = countryCode;
  countryCodeCopy = countryCode;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  lCopy = l;
  lCopy2 = l;
  merchantIdentifierCopy = merchantIdentifier;
  nameCopy = name;
  merchantNameCopy = merchantName;
  adamIdentifierCopy = adamIdentifier;
  networksCopy = networks;
  v27 = [(PKPaymentOffersSessionDetails *)self initWithContext:0];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_transactionAmount, amount);
    objc_storeStrong(&v28->_currencyCode, code);
    objc_storeStrong(&v28->_merchantCountryCode, obj);
    objc_storeStrong(&v28->_merchantIdentifier, identifierCopy);
    objc_storeStrong(&v28->_originURL, lCopy);
    objc_storeStrong(&v28->_webMerchantIdentifier, merchantIdentifier);
    objc_storeStrong(&v28->_webMerchantName, name);
    objc_storeStrong(&v28->_merchantName, merchantName);
    objc_storeStrong(&v28->_adamIdentifier, adamIdentifier);
    objc_storeStrong(&v28->_supportedNetworks, networks);
    v28->_merchantCategoryCode = categoryCode;
    v28->_merchantCapabilities = capabilities;
    v28->_payLaterSuppressionMode = mode;
    v28->_options = options;
    v28->_shouldUseMerchantSession = session;
  }

  return v28;
}

- (void)updateCurrencyCode:(id)code
{
  codeCopy = code;
  currencyCode = self->_currencyCode;
  v6 = codeCopy;
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

- (void)updateTransactionAmount:(id)amount
{
  amountCopy = amount;
  transactionAmount = self->_transactionAmount;
  p_transactionAmount = &self->_transactionAmount;
  v6 = transactionAmount;
  v9 = amountCopy;
  if (!amountCopy || !v6)
  {
    if (v6 == amountCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (([(NSDecimalNumber *)v6 isEqual:amountCopy]& 1) == 0)
  {
LABEL_6:
    objc_storeStrong(p_transactionAmount, amount);
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

- (void)updateMerchantIdentifier:(id)identifier originURL:(id)l webMerchantIdentifier:(id)merchantIdentifier webMerchantName:(id)name
{
  identifierCopy = identifier;
  lCopy = l;
  merchantIdentifierCopy = merchantIdentifier;
  nameCopy = name;
  merchantIdentifier = self->_merchantIdentifier;
  self->_merchantIdentifier = identifierCopy;
  v20 = identifierCopy;

  originURL = self->_originURL;
  self->_originURL = lCopy;
  v16 = lCopy;

  webMerchantIdentifier = self->_webMerchantIdentifier;
  self->_webMerchantIdentifier = merchantIdentifierCopy;
  v18 = merchantIdentifierCopy;

  webMerchantName = self->_webMerchantName;
  self->_webMerchantName = nameCopy;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  stringValue = [(NSDecimalNumber *)self->_transactionAmount stringValue];
  [v3 setObject:stringValue forKeyedSubscript:@"amount"];

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
  dictionaryRepresentation = [(PKPaymentOffersSessionTransactionDetails *)self->_transactionDetails dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"kTransactionDetails"];

  allObjects = [(NSSet *)self->_merchandisingOfferIdentifiers allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"merchandisingOfferIdentifiers"];

  dictionaryRepresentation2 = [(PKCurrencyAmount *)self->_userEnteredAmount dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"userEnteredAmount"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldUseMerchantSession];
  [v3 setObject:v14 forKeyedSubscript:@"shouldUseMerchantSession"];

  v15 = [v3 copy];

  return v15;
}

- (id)httpDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  stringValue = [(NSDecimalNumber *)self->_transactionAmount stringValue];
  [v3 setObject:stringValue forKeyedSubscript:@"amount"];

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
  dictionaryRepresentation = [(PKCurrencyAmount *)self->_userEnteredAmount dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"userEnteredAmount"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    if (equalCopy)
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

- (PKPaymentOffersSessionDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = PKPaymentOffersSessionDetails;
  v5 = [(PKPaymentOffersSessionDetails *)&v41 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    merchantCountryCode = v5->_merchantCountryCode;
    v5->_merchantCountryCode = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"supportedNetworks"];
    supportedNetworks = v5->_supportedNetworks;
    v5->_supportedNetworks = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originURL"];
    originURL = v5->_originURL;
    v5->_originURL = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webMerchantIdentifier"];
    webMerchantIdentifier = v5->_webMerchantIdentifier;
    v5->_webMerchantIdentifier = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webMerchantName"];
    webMerchantName = v5->_webMerchantName;
    v5->_webMerchantName = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantName"];
    merchantName = v5->_merchantName;
    v5->_merchantName = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adamIdentifier"];
    adamIdentifier = v5->_adamIdentifier;
    v5->_adamIdentifier = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"merchandisingOfferIdentifiers"];
    merchandisingOfferIdentifiers = v5->_merchandisingOfferIdentifiers;
    v5->_merchandisingOfferIdentifiers = v32;

    v5->_merchantCategoryCode = [coderCopy decodeIntegerForKey:@"merchantCategoryCode"];
    v5->_payLaterSuppressionMode = [coderCopy decodeIntegerForKey:@"payLaterSuppressionMode"];
    v5->_merchantCapabilities = [coderCopy decodeIntegerForKey:@"merchantCapabilities"];
    v5->_context = [coderCopy decodeIntegerForKey:@"context"];
    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTransactionDetails"];
    transactionDetails = v5->_transactionDetails;
    v5->_transactionDetails = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userEnteredAmount"];
    userEnteredAmount = v5->_userEnteredAmount;
    v5->_userEnteredAmount = v38;

    v5->_shouldUseMerchantSession = [coderCopy decodeBoolForKey:@"shouldUseMerchantSession"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  transactionAmount = self->_transactionAmount;
  coderCopy = coder;
  [coderCopy encodeObject:transactionAmount forKey:@"amount"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_merchantCountryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_supportedNetworks forKey:@"supportedNetworks"];
  [coderCopy encodeObject:self->_merchantIdentifier forKey:@"merchantIdentifier"];
  [coderCopy encodeObject:self->_originURL forKey:@"originURL"];
  [coderCopy encodeObject:self->_webMerchantIdentifier forKey:@"webMerchantIdentifier"];
  [coderCopy encodeObject:self->_webMerchantName forKey:@"webMerchantName"];
  [coderCopy encodeObject:self->_merchantName forKey:@"merchantName"];
  [coderCopy encodeObject:self->_adamIdentifier forKey:@"adamIdentifier"];
  [coderCopy encodeObject:self->_merchandisingOfferIdentifiers forKey:@"merchandisingOfferIdentifiers"];
  [coderCopy encodeInteger:self->_merchantCategoryCode forKey:@"merchantCategoryCode"];
  [coderCopy encodeInteger:self->_payLaterSuppressionMode forKey:@"payLaterSuppressionMode"];
  [coderCopy encodeInteger:self->_merchantCapabilities forKey:@"merchantCapabilities"];
  [coderCopy encodeInteger:self->_context forKey:@"context"];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
  [coderCopy encodeObject:self->_passUniqueID forKey:@"passUniqueID"];
  [coderCopy encodeObject:self->_transactionDetails forKey:@"kTransactionDetails"];
  [coderCopy encodeObject:self->_userEnteredAmount forKey:@"userEnteredAmount"];
  [coderCopy encodeBool:self->_shouldUseMerchantSession forKey:@"shouldUseMerchantSession"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentOffersSessionDetails allocWithZone:](PKPaymentOffersSessionDetails init];
  v6 = [(NSDecimalNumber *)self->_transactionAmount copyWithZone:zone];
  transactionAmount = v5->_transactionAmount;
  v5->_transactionAmount = v6;

  v8 = [(NSString *)self->_currencyCode copyWithZone:zone];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v8;

  v10 = [(NSString *)self->_merchantCountryCode copyWithZone:zone];
  merchantCountryCode = v5->_merchantCountryCode;
  v5->_merchantCountryCode = v10;

  v12 = [(NSArray *)self->_supportedNetworks copyWithZone:zone];
  supportedNetworks = v5->_supportedNetworks;
  v5->_supportedNetworks = v12;

  v14 = [(NSString *)self->_merchantIdentifier copyWithZone:zone];
  merchantIdentifier = v5->_merchantIdentifier;
  v5->_merchantIdentifier = v14;

  v16 = [(NSString *)self->_originURL copyWithZone:zone];
  originURL = v5->_originURL;
  v5->_originURL = v16;

  v18 = [(NSString *)self->_webMerchantIdentifier copyWithZone:zone];
  webMerchantIdentifier = v5->_webMerchantIdentifier;
  v5->_webMerchantIdentifier = v18;

  v20 = [(NSString *)self->_webMerchantName copyWithZone:zone];
  webMerchantName = v5->_webMerchantName;
  v5->_webMerchantName = v20;

  v22 = [(NSString *)self->_merchantName copyWithZone:zone];
  merchantName = v5->_merchantName;
  v5->_merchantName = v22;

  v24 = [(NSNumber *)self->_adamIdentifier copyWithZone:zone];
  adamIdentifier = v5->_adamIdentifier;
  v5->_adamIdentifier = v24;

  v26 = [(NSSet *)self->_merchandisingOfferIdentifiers copyWithZone:zone];
  merchandisingOfferIdentifiers = v5->_merchandisingOfferIdentifiers;
  v5->_merchandisingOfferIdentifiers = v26;

  v28 = [(NSString *)self->_passUniqueID copyWithZone:zone];
  passUniqueID = v5->_passUniqueID;
  v5->_passUniqueID = v28;

  v30 = [(PKPaymentOffersSessionTransactionDetails *)self->_transactionDetails copyWithZone:zone];
  transactionDetails = v5->_transactionDetails;
  v5->_transactionDetails = v30;

  v32 = [(PKCurrencyAmount *)self->_userEnteredAmount copyWithZone:zone];
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