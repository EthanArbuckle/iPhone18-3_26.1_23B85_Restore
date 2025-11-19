@interface PKPeerPaymentQuoteItem
+ (id)quoteItemWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentQuoteItem)initWithCoder:(id)a3;
- (PKPeerPaymentQuoteItem)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentQuoteItem

+ (id)quoteItemWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (PKPeerPaymentQuoteItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = PKPeerPaymentQuoteItem;
  v5 = [(PKPeerPaymentQuoteItem *)&v50 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"type"];
    v5->_type = PKPeerPaymentQuoteItemTypeFromString(v6);

    v7 = [v4 PKDecimalNumberFromStringForKey:@"exchangeRate"];
    exchangeRate = v5->_exchangeRate;
    v5->_exchangeRate = v7;

    v9 = [v4 PKDecimalNumberFromStringForKey:@"sendAmount"];
    sendAmount = v5->_sendAmount;
    v5->_sendAmount = v9;

    v11 = [v4 PKStringForKey:@"sendAmountCurrency"];
    v12 = [v11 copy];
    sendAmountCurrency = v5->_sendAmountCurrency;
    v5->_sendAmountCurrency = v12;

    v14 = [v4 PKDecimalNumberFromStringForKey:@"receiveAmount"];
    receiveAmount = v5->_receiveAmount;
    v5->_receiveAmount = v14;

    v16 = [v4 PKStringForKey:@"receiveAmountCurrency"];
    v17 = [v16 copy];
    receiveAmountCurrency = v5->_receiveAmountCurrency;
    v5->_receiveAmountCurrency = v17;

    v19 = [v4 PKDecimalNumberFromStringForKey:@"totalAmount"];
    totalAmount = v5->_totalAmount;
    v5->_totalAmount = v19;

    v21 = [v4 PKStringForKey:@"totalAmountCurrency"];
    v22 = [v21 copy];
    totalAmountCurrency = v5->_totalAmountCurrency;
    v5->_totalAmountCurrency = v22;

    v24 = [v4 PKDecimalNumberFromStringForKey:@"fees"];
    fees = v5->_fees;
    v5->_fees = v24;

    v26 = [v4 PKStringForKey:@"feesCurrency"];
    v27 = [v26 copy];
    feesCurrency = v5->_feesCurrency;
    v5->_feesCurrency = v27;

    v29 = [v4 PKStringForKey:@"dpanIdentifier"];
    v30 = [v29 copy];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v30;

    v32 = [v4 PKStringForKey:@"countryCode"];
    v33 = [v32 copy];
    countryCode = v5->_countryCode;
    v5->_countryCode = v33;

    v35 = [v4 PKSetContaining:objc_opt_class() forKey:@"supportedFundingSourceCountryCodes"];
    v36 = [v35 copy];
    supportedFundingSourceCountryCodes = v5->_supportedFundingSourceCountryCodes;
    v5->_supportedFundingSourceCountryCodes = v36;

    type = v5->_type;
    if (type == 4 || type == 1)
    {
      v39 = [v4 PKArrayContaining:objc_opt_class() forKey:@"supportedNetworks"];
      v40 = [v39 copy];
      supportedNetworks = v5->_supportedNetworks;
      v5->_supportedNetworks = v40;

      v42 = [v4 PKStringForKey:@"merchantIdentifier"];
      v43 = [v42 copy];
      merchantIdentifier = v5->_merchantIdentifier;
      v5->_merchantIdentifier = v43;

      v45 = [v4 PKArrayContaining:objc_opt_class() forKey:@"merchantCapabilities"];
      v5->_merchantCapabilities = PKMerchantCapabilityFromStrings(v45);
    }

    v46 = [v4 PKStringForKey:@"nonce"];
    v47 = [v46 pk_decodeHexadecimal];
    nonce = v5->_nonce;
    v5->_nonce = v47;

    v5->_preservesCurrentBalance = [v4 PKBoolForKey:@"preservesCurrentBalance"];
  }

  return v5;
}

- (PKPeerPaymentQuoteItem)initWithCoder:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = PKPeerPaymentQuoteItem;
  v5 = [(PKPeerPaymentQuoteItem *)&v45 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exchangeRate"];
    exchangeRate = v5->_exchangeRate;
    v5->_exchangeRate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sendAmount"];
    sendAmount = v5->_sendAmount;
    v5->_sendAmount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sendAmountCurrency"];
    sendAmountCurrency = v5->_sendAmountCurrency;
    v5->_sendAmountCurrency = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiveAmount"];
    receiveAmount = v5->_receiveAmount;
    v5->_receiveAmount = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiveAmountCurrency"];
    receiveAmountCurrency = v5->_receiveAmountCurrency;
    v5->_receiveAmountCurrency = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalAmount"];
    totalAmount = v5->_totalAmount;
    v5->_totalAmount = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalAmountCurrency"];
    totalAmountCurrency = v5->_totalAmountCurrency;
    v5->_totalAmountCurrency = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fees"];
    fees = v5->_fees;
    v5->_fees = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feesCurrency"];
    feesCurrency = v5->_feesCurrency;
    v5->_feesCurrency = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dpanIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"supportedFundingSourceCountryCodes"];
    supportedFundingSourceCountryCodes = v5->_supportedFundingSourceCountryCodes;
    v5->_supportedFundingSourceCountryCodes = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"supportedNetworks"];
    v37 = [v36 copy];
    supportedNetworks = v5->_supportedNetworks;
    v5->_supportedNetworks = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantCapabilities"];
    v5->_merchantCapabilities = [v41 unsignedIntegerValue];

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v42;

    v5->_preservesCurrentBalance = [v4 decodeBoolForKey:@"preservesCurrentBalance"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v6 = a3;
  [v6 encodeInteger:type forKey:@"type"];
  [v6 encodeObject:self->_exchangeRate forKey:@"exchangeRate"];
  [v6 encodeObject:self->_sendAmount forKey:@"sendAmount"];
  [v6 encodeObject:self->_sendAmountCurrency forKey:@"sendAmountCurrency"];
  [v6 encodeObject:self->_receiveAmount forKey:@"receiveAmount"];
  [v6 encodeObject:self->_receiveAmountCurrency forKey:@"receiveAmountCurrency"];
  [v6 encodeObject:self->_totalAmount forKey:@"totalAmount"];
  [v6 encodeObject:self->_totalAmountCurrency forKey:@"totalAmountCurrency"];
  [v6 encodeObject:self->_fees forKey:@"fees"];
  [v6 encodeObject:self->_feesCurrency forKey:@"feesCurrency"];
  [v6 encodeObject:self->_dpanIdentifier forKey:@"dpanIdentifier"];
  [v6 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v6 encodeObject:self->_supportedFundingSourceCountryCodes forKey:@"supportedFundingSourceCountryCodes"];
  [v6 encodeObject:self->_supportedNetworks forKey:@"supportedNetworks"];
  [v6 encodeObject:self->_merchantIdentifier forKey:@"merchantIdentifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_merchantCapabilities];
  [v6 encodeObject:v5 forKey:@"merchantCapabilities"];

  [v6 encodeObject:self->_nonce forKey:@"nonce"];
  [v6 encodeBool:self->_preservesCurrentBalance forKey:@"preservesCurrentBalance"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_exchangeRate];
  [v3 safelyAddObject:self->_sendAmount];
  [v3 safelyAddObject:self->_sendAmountCurrency];
  [v3 safelyAddObject:self->_receiveAmount];
  [v3 safelyAddObject:self->_receiveAmountCurrency];
  [v3 safelyAddObject:self->_totalAmount];
  [v3 safelyAddObject:self->_totalAmountCurrency];
  [v3 safelyAddObject:self->_fees];
  [v3 safelyAddObject:self->_feesCurrency];
  [v3 safelyAddObject:self->_dpanIdentifier];
  [v3 safelyAddObject:self->_countryCode];
  [v3 safelyAddObject:self->_supportedFundingSourceCountryCodes];
  [v3 safelyAddObject:self->_supportedNetworks];
  [v3 safelyAddObject:self->_merchantIdentifier];
  [v3 safelyAddObject:self->_nonce];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_merchantCapabilities - v5 + 32 * v5;
  v7 = self->_preservesCurrentBalance - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_65;
  }

  exchangeRate = self->_exchangeRate;
  v6 = v4[3];
  if (exchangeRate && v6)
  {
    if (([(NSDecimalNumber *)exchangeRate isEqual:?]& 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (exchangeRate != v6)
  {
    goto LABEL_65;
  }

  sendAmount = self->_sendAmount;
  v8 = v4[4];
  if (sendAmount && v8)
  {
    if (([(NSDecimalNumber *)sendAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (sendAmount != v8)
  {
    goto LABEL_65;
  }

  sendAmountCurrency = self->_sendAmountCurrency;
  v10 = v4[5];
  if (sendAmountCurrency && v10)
  {
    if (([(NSString *)sendAmountCurrency isEqual:?]& 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (sendAmountCurrency != v10)
  {
    goto LABEL_65;
  }

  receiveAmount = self->_receiveAmount;
  v12 = v4[6];
  if (receiveAmount && v12)
  {
    if (([(NSDecimalNumber *)receiveAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (receiveAmount != v12)
  {
    goto LABEL_65;
  }

  receiveAmountCurrency = self->_receiveAmountCurrency;
  v14 = v4[7];
  if (receiveAmountCurrency && v14)
  {
    if (([(NSString *)receiveAmountCurrency isEqual:?]& 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (receiveAmountCurrency != v14)
  {
    goto LABEL_65;
  }

  totalAmountCurrency = self->_totalAmountCurrency;
  v16 = v4[9];
  if (totalAmountCurrency && v16)
  {
    if (([(NSString *)totalAmountCurrency isEqual:?]& 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (totalAmountCurrency != v16)
  {
    goto LABEL_65;
  }

  fees = self->_fees;
  v18 = v4[10];
  if (fees && v18)
  {
    if (([(NSDecimalNumber *)fees isEqual:?]& 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (fees != v18)
  {
    goto LABEL_65;
  }

  dpanIdentifier = self->_dpanIdentifier;
  v20 = v4[12];
  if (dpanIdentifier && v20)
  {
    if (([(NSString *)dpanIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (dpanIdentifier != v20)
  {
    goto LABEL_65;
  }

  countryCode = self->_countryCode;
  v22 = v4[13];
  if (countryCode && v22)
  {
    if (([(NSString *)countryCode isEqual:?]& 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (countryCode != v22)
  {
    goto LABEL_65;
  }

  supportedFundingSourceCountryCodes = self->_supportedFundingSourceCountryCodes;
  v24 = v4[14];
  if (supportedFundingSourceCountryCodes && v24)
  {
    if (([(NSSet *)supportedFundingSourceCountryCodes isEqual:?]& 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (supportedFundingSourceCountryCodes != v24)
  {
    goto LABEL_65;
  }

  supportedNetworks = self->_supportedNetworks;
  v26 = v4[15];
  if (supportedNetworks && v26)
  {
    if (([(NSArray *)supportedNetworks isEqual:?]& 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (supportedNetworks != v26)
  {
    goto LABEL_65;
  }

  merchantIdentifier = self->_merchantIdentifier;
  v28 = v4[16];
  if (!merchantIdentifier || !v28)
  {
    if (merchantIdentifier == v28)
    {
      goto LABEL_62;
    }

LABEL_65:
    v29 = 0;
    goto LABEL_66;
  }

  if (([(NSString *)merchantIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_62:
  if (self->_type != v4[2] || self->_merchantCapabilities != v4[17])
  {
    goto LABEL_65;
  }

  v29 = self->_preservesCurrentBalance == *(v4 + 8);
LABEL_66:

  return v29;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  v5 = self->_type - 1;
  if (v5 > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79DA9F0[v5];
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  [v4 appendFormat:@"exchangeRate: '%@'; ", self->_exchangeRate];
  [v4 appendFormat:@"sendAmount: '%@'; ", self->_sendAmount];
  [v4 appendFormat:@"sendAmountCurrency: '%@'; ", self->_sendAmountCurrency];
  [v4 appendFormat:@"receiveAmount: '%@'; ", self->_receiveAmount];
  [v4 appendFormat:@"receiveAmountCurrency: '%@'; ", self->_receiveAmountCurrency];
  [v4 appendFormat:@"totalAmount: '%@'; ", self->_totalAmount];
  [v4 appendFormat:@"totalAmountCurrency: '%@'; ", self->_totalAmountCurrency];
  [v4 appendFormat:@"fees: '%@'; ", self->_fees];
  [v4 appendFormat:@"feesCurrency: '%@'; ", self->_feesCurrency];
  [v4 appendFormat:@"dpanIdentifier: '%@'; ", self->_dpanIdentifier];
  [v4 appendFormat:@"countryCode: '%@'; ", self->_countryCode];
  [v4 appendFormat:@"supportedFundingSourceCountryCodes: '%@'; ", self->_supportedFundingSourceCountryCodes];
  if (self->_type == 1)
  {
    [v4 appendFormat:@"supportedNetworks: '%@'; ", self->_supportedNetworks];
    [v4 appendFormat:@"merchantIdentifier: '%@'; ", self->_merchantIdentifier];
    v7 = PKMerchantCapabilityToStrings(self->_merchantCapabilities);
    [v4 appendFormat:@"merchantCapabilities: '%@'; ", v7];
  }

  [v4 appendFormat:@"nonce: '%@'; ", self->_nonce];
  [v4 appendFormat:@"preservesCurrentBalance: %d", self->_preservesCurrentBalance];
  [v4 appendFormat:@">"];

  return v4;
}

@end