@interface PKPeerPaymentRequest
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentRequest)initWithCoder:(id)coder;
- (PKPeerPaymentRequest)initWithPeerPaymentQuote:(id)quote peerPaymentType:(unint64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentRequest

- (PKPeerPaymentRequest)initWithPeerPaymentQuote:(id)quote peerPaymentType:(unint64_t)type
{
  quoteCopy = quote;
  v30.receiver = self;
  v30.super_class = PKPeerPaymentRequest;
  v8 = [(PKPaymentRequest *)&v30 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_peerPaymentQuote, quote);
    v9->_peerPaymentType = type;
    [(PKPaymentRequest *)v9 setRequestType:9];
    v10 = [MEMORY[0x1E695DFD8] set];
    [(PKPaymentRequest *)v9 setRequiredShippingContactFields:v10];

    v11 = [MEMORY[0x1E695DFD8] set];
    [(PKPaymentRequest *)v9 setRequiredBillingContactFields:v11];

    totalReceiveAmountCurrency = [quoteCopy totalReceiveAmountCurrency];
    [(PKPaymentRequest *)v9 setCurrencyCode:totalReceiveAmountCurrency];

    v13 = [quoteCopy firstQuoteItemOfType:1];
    v14 = v13;
    if (v13)
    {
      merchantIdentifier = [v13 merchantIdentifier];
      [(PKPaymentRequest *)v9 setMerchantIdentifier:merchantIdentifier];

      supportedNetworks = [v14 supportedNetworks];
      [(PKPaymentRequest *)v9 setSupportedNetworks:supportedNetworks];

      -[PKPaymentRequest setMerchantCapabilities:](v9, "setMerchantCapabilities:", [v14 merchantCapabilities]);
      countryCode = [v14 countryCode];
      [(PKPaymentRequest *)v9 setCountryCode:countryCode];

      v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      countryCode2 = [v14 countryCode];
      [v18 pk_safelyAddObject:countryCode2];

      supportedFundingSourceCountryCodes = [v14 supportedFundingSourceCountryCodes];
      v21 = [supportedFundingSourceCountryCodes count];

      if (v21)
      {
        supportedFundingSourceCountryCodes2 = [v14 supportedFundingSourceCountryCodes];
        [v18 unionSet:supportedFundingSourceCountryCodes2];
      }

      v23 = [v18 copy];
      [(PKPaymentRequest *)v9 setSupportedCountries:v23];

      v24 = [MEMORY[0x1E695DFD8] setWithObjects:{@"post", 0}];
      [(PKPaymentRequest *)v9 setRequiredBillingContactFields:v24];
    }

    v25 = [quoteCopy firstQuoteItemOfType:3];
    v26 = [quoteCopy firstQuoteItemOfType:4];
    if (v25 | v26)
    {
      [(PKPaymentRequest *)v9 setConfirmationStyle:1];
      if (v26)
      {
        [(PKPaymentRequest *)v9 setSupportsInstantFundsIn:1];
        supportedNetworks2 = [v26 supportedNetworks];
        [(PKPaymentRequest *)v9 setSupportedNetworks:supportedNetworks2];

        v28 = [MEMORY[0x1E695DFD8] setWithObjects:{@"post", 0}];
        [(PKPaymentRequest *)v9 setRequiredBillingContactFields:v28];
      }
    }

    [(PKPaymentRequest *)v9 setClientCallbackTimeout:65.0];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17.receiver = self;
    v17.super_class = PKPeerPaymentRequest;
    if ([(PKPaymentRequest *)&v17 isEqual:equalCopy])
    {
      v5 = equalCopy;
      peerPaymentQuote = self->_peerPaymentQuote;
      peerPaymentQuote = [v5 peerPaymentQuote];
      v8 = peerPaymentQuote;
      if (peerPaymentQuote)
      {
        v9 = peerPaymentQuote == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        [(PKPeerPaymentQuote *)peerPaymentQuote isEqual:peerPaymentQuote];
      }

      analyticsMessagesContext = self->_analyticsMessagesContext;
      analyticsMessagesContext = [v5 analyticsMessagesContext];
      v12 = analyticsMessagesContext;
      if (analyticsMessagesContext)
      {
        v13 = analyticsMessagesContext == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {

        if (analyticsMessagesContext == v12)
        {
LABEL_17:
          v14 = self->_peerPaymentType == v5[72];
          goto LABEL_18;
        }
      }

      else
      {
        v15 = [(NSDictionary *)analyticsMessagesContext isEqual:analyticsMessagesContext];

        if (v15)
        {
          goto LABEL_17;
        }
      }

      v14 = 0;
LABEL_18:

      goto LABEL_19;
    }
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_peerPaymentQuote];
  [array safelyAddObject:self->_analyticsMessagesContext];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (PKPeerPaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentRequest;
  v5 = [(PKPaymentRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentQuote"];
    peerPaymentQuote = v5->_peerPaymentQuote;
    v5->_peerPaymentQuote = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"analyticsMessagesContext"];
    analyticsMessagesContext = v5->_analyticsMessagesContext;
    v5->_analyticsMessagesContext = v11;

    v5->_peerPaymentType = [coderCopy decodeIntegerForKey:@"peerPaymentType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentRequest;
  coderCopy = coder;
  [(PKPaymentRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_peerPaymentQuote forKey:{@"peerPaymentQuote", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_analyticsMessagesContext forKey:@"analyticsMessagesContext"];
  [coderCopy encodeInteger:self->_peerPaymentType forKey:@"peerPaymentType"];
}

@end