@interface PKPeerPaymentRequest
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentRequest)initWithCoder:(id)a3;
- (PKPeerPaymentRequest)initWithPeerPaymentQuote:(id)a3 peerPaymentType:(unint64_t)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentRequest

- (PKPeerPaymentRequest)initWithPeerPaymentQuote:(id)a3 peerPaymentType:(unint64_t)a4
{
  v7 = a3;
  v30.receiver = self;
  v30.super_class = PKPeerPaymentRequest;
  v8 = [(PKPaymentRequest *)&v30 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_peerPaymentQuote, a3);
    v9->_peerPaymentType = a4;
    [(PKPaymentRequest *)v9 setRequestType:9];
    v10 = [MEMORY[0x1E695DFD8] set];
    [(PKPaymentRequest *)v9 setRequiredShippingContactFields:v10];

    v11 = [MEMORY[0x1E695DFD8] set];
    [(PKPaymentRequest *)v9 setRequiredBillingContactFields:v11];

    v12 = [v7 totalReceiveAmountCurrency];
    [(PKPaymentRequest *)v9 setCurrencyCode:v12];

    v13 = [v7 firstQuoteItemOfType:1];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 merchantIdentifier];
      [(PKPaymentRequest *)v9 setMerchantIdentifier:v15];

      v16 = [v14 supportedNetworks];
      [(PKPaymentRequest *)v9 setSupportedNetworks:v16];

      -[PKPaymentRequest setMerchantCapabilities:](v9, "setMerchantCapabilities:", [v14 merchantCapabilities]);
      v17 = [v14 countryCode];
      [(PKPaymentRequest *)v9 setCountryCode:v17];

      v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v19 = [v14 countryCode];
      [v18 pk_safelyAddObject:v19];

      v20 = [v14 supportedFundingSourceCountryCodes];
      v21 = [v20 count];

      if (v21)
      {
        v22 = [v14 supportedFundingSourceCountryCodes];
        [v18 unionSet:v22];
      }

      v23 = [v18 copy];
      [(PKPaymentRequest *)v9 setSupportedCountries:v23];

      v24 = [MEMORY[0x1E695DFD8] setWithObjects:{@"post", 0}];
      [(PKPaymentRequest *)v9 setRequiredBillingContactFields:v24];
    }

    v25 = [v7 firstQuoteItemOfType:3];
    v26 = [v7 firstQuoteItemOfType:4];
    if (v25 | v26)
    {
      [(PKPaymentRequest *)v9 setConfirmationStyle:1];
      if (v26)
      {
        [(PKPaymentRequest *)v9 setSupportsInstantFundsIn:1];
        v27 = [v26 supportedNetworks];
        [(PKPaymentRequest *)v9 setSupportedNetworks:v27];

        v28 = [MEMORY[0x1E695DFD8] setWithObjects:{@"post", 0}];
        [(PKPaymentRequest *)v9 setRequiredBillingContactFields:v28];
      }
    }

    [(PKPaymentRequest *)v9 setClientCallbackTimeout:65.0];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17.receiver = self;
    v17.super_class = PKPeerPaymentRequest;
    if ([(PKPaymentRequest *)&v17 isEqual:v4])
    {
      v5 = v4;
      peerPaymentQuote = self->_peerPaymentQuote;
      v7 = [v5 peerPaymentQuote];
      v8 = v7;
      if (peerPaymentQuote)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        [(PKPeerPaymentQuote *)peerPaymentQuote isEqual:v7];
      }

      analyticsMessagesContext = self->_analyticsMessagesContext;
      v11 = [v5 analyticsMessagesContext];
      v12 = v11;
      if (analyticsMessagesContext)
      {
        v13 = v11 == 0;
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
        v15 = [(NSDictionary *)analyticsMessagesContext isEqual:v11];

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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_peerPaymentQuote];
  [v3 safelyAddObject:self->_analyticsMessagesContext];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (PKPeerPaymentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentRequest;
  v5 = [(PKPaymentRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentQuote"];
    peerPaymentQuote = v5->_peerPaymentQuote;
    v5->_peerPaymentQuote = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"analyticsMessagesContext"];
    analyticsMessagesContext = v5->_analyticsMessagesContext;
    v5->_analyticsMessagesContext = v11;

    v5->_peerPaymentType = [v4 decodeIntegerForKey:@"peerPaymentType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentRequest;
  v4 = a3;
  [(PKPaymentRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_peerPaymentQuote forKey:{@"peerPaymentQuote", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_analyticsMessagesContext forKey:@"analyticsMessagesContext"];
  [v4 encodeInteger:self->_peerPaymentType forKey:@"peerPaymentType"];
}

@end