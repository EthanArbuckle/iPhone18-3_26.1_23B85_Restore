@interface PKPeerPaymentQuoteItem
+ (id)quoteItemWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentQuoteItem)initWithCoder:(id)coder;
- (PKPeerPaymentQuoteItem)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentQuoteItem

+ (id)quoteItemWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (PKPeerPaymentQuoteItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = PKPeerPaymentQuoteItem;
  v5 = [(PKPeerPaymentQuoteItem *)&v50 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"type"];
    v5->_type = PKPeerPaymentQuoteItemTypeFromString(v6);

    v7 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"exchangeRate"];
    exchangeRate = v5->_exchangeRate;
    v5->_exchangeRate = v7;

    v9 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"sendAmount"];
    sendAmount = v5->_sendAmount;
    v5->_sendAmount = v9;

    v11 = [dictionaryCopy PKStringForKey:@"sendAmountCurrency"];
    v12 = [v11 copy];
    sendAmountCurrency = v5->_sendAmountCurrency;
    v5->_sendAmountCurrency = v12;

    v14 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"receiveAmount"];
    receiveAmount = v5->_receiveAmount;
    v5->_receiveAmount = v14;

    v16 = [dictionaryCopy PKStringForKey:@"receiveAmountCurrency"];
    v17 = [v16 copy];
    receiveAmountCurrency = v5->_receiveAmountCurrency;
    v5->_receiveAmountCurrency = v17;

    v19 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"totalAmount"];
    totalAmount = v5->_totalAmount;
    v5->_totalAmount = v19;

    v21 = [dictionaryCopy PKStringForKey:@"totalAmountCurrency"];
    v22 = [v21 copy];
    totalAmountCurrency = v5->_totalAmountCurrency;
    v5->_totalAmountCurrency = v22;

    v24 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"fees"];
    fees = v5->_fees;
    v5->_fees = v24;

    v26 = [dictionaryCopy PKStringForKey:@"feesCurrency"];
    v27 = [v26 copy];
    feesCurrency = v5->_feesCurrency;
    v5->_feesCurrency = v27;

    v29 = [dictionaryCopy PKStringForKey:@"dpanIdentifier"];
    v30 = [v29 copy];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v30;

    v32 = [dictionaryCopy PKStringForKey:@"countryCode"];
    v33 = [v32 copy];
    countryCode = v5->_countryCode;
    v5->_countryCode = v33;

    v35 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"supportedFundingSourceCountryCodes"];
    v36 = [v35 copy];
    supportedFundingSourceCountryCodes = v5->_supportedFundingSourceCountryCodes;
    v5->_supportedFundingSourceCountryCodes = v36;

    type = v5->_type;
    if (type == 4 || type == 1)
    {
      v39 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"supportedNetworks"];
      v40 = [v39 copy];
      supportedNetworks = v5->_supportedNetworks;
      v5->_supportedNetworks = v40;

      v42 = [dictionaryCopy PKStringForKey:@"merchantIdentifier"];
      v43 = [v42 copy];
      merchantIdentifier = v5->_merchantIdentifier;
      v5->_merchantIdentifier = v43;

      v45 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"merchantCapabilities"];
      v5->_merchantCapabilities = PKMerchantCapabilityFromStrings(v45);
    }

    v46 = [dictionaryCopy PKStringForKey:@"nonce"];
    pk_decodeHexadecimal = [v46 pk_decodeHexadecimal];
    nonce = v5->_nonce;
    v5->_nonce = pk_decodeHexadecimal;

    v5->_preservesCurrentBalance = [dictionaryCopy PKBoolForKey:@"preservesCurrentBalance"];
  }

  return v5;
}

- (PKPeerPaymentQuoteItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v45.receiver = self;
  v45.super_class = PKPeerPaymentQuoteItem;
  v5 = [(PKPeerPaymentQuoteItem *)&v45 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exchangeRate"];
    exchangeRate = v5->_exchangeRate;
    v5->_exchangeRate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sendAmount"];
    sendAmount = v5->_sendAmount;
    v5->_sendAmount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sendAmountCurrency"];
    sendAmountCurrency = v5->_sendAmountCurrency;
    v5->_sendAmountCurrency = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiveAmount"];
    receiveAmount = v5->_receiveAmount;
    v5->_receiveAmount = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiveAmountCurrency"];
    receiveAmountCurrency = v5->_receiveAmountCurrency;
    v5->_receiveAmountCurrency = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalAmount"];
    totalAmount = v5->_totalAmount;
    v5->_totalAmount = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalAmountCurrency"];
    totalAmountCurrency = v5->_totalAmountCurrency;
    v5->_totalAmountCurrency = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fees"];
    fees = v5->_fees;
    v5->_fees = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feesCurrency"];
    feesCurrency = v5->_feesCurrency;
    v5->_feesCurrency = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dpanIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"supportedFundingSourceCountryCodes"];
    supportedFundingSourceCountryCodes = v5->_supportedFundingSourceCountryCodes;
    v5->_supportedFundingSourceCountryCodes = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"supportedNetworks"];
    v37 = [v36 copy];
    supportedNetworks = v5->_supportedNetworks;
    v5->_supportedNetworks = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantCapabilities"];
    v5->_merchantCapabilities = [v41 unsignedIntegerValue];

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v42;

    v5->_preservesCurrentBalance = [coderCopy decodeBoolForKey:@"preservesCurrentBalance"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_exchangeRate forKey:@"exchangeRate"];
  [coderCopy encodeObject:self->_sendAmount forKey:@"sendAmount"];
  [coderCopy encodeObject:self->_sendAmountCurrency forKey:@"sendAmountCurrency"];
  [coderCopy encodeObject:self->_receiveAmount forKey:@"receiveAmount"];
  [coderCopy encodeObject:self->_receiveAmountCurrency forKey:@"receiveAmountCurrency"];
  [coderCopy encodeObject:self->_totalAmount forKey:@"totalAmount"];
  [coderCopy encodeObject:self->_totalAmountCurrency forKey:@"totalAmountCurrency"];
  [coderCopy encodeObject:self->_fees forKey:@"fees"];
  [coderCopy encodeObject:self->_feesCurrency forKey:@"feesCurrency"];
  [coderCopy encodeObject:self->_dpanIdentifier forKey:@"dpanIdentifier"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_supportedFundingSourceCountryCodes forKey:@"supportedFundingSourceCountryCodes"];
  [coderCopy encodeObject:self->_supportedNetworks forKey:@"supportedNetworks"];
  [coderCopy encodeObject:self->_merchantIdentifier forKey:@"merchantIdentifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_merchantCapabilities];
  [coderCopy encodeObject:v5 forKey:@"merchantCapabilities"];

  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  [coderCopy encodeBool:self->_preservesCurrentBalance forKey:@"preservesCurrentBalance"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_exchangeRate];
  [array safelyAddObject:self->_sendAmount];
  [array safelyAddObject:self->_sendAmountCurrency];
  [array safelyAddObject:self->_receiveAmount];
  [array safelyAddObject:self->_receiveAmountCurrency];
  [array safelyAddObject:self->_totalAmount];
  [array safelyAddObject:self->_totalAmountCurrency];
  [array safelyAddObject:self->_fees];
  [array safelyAddObject:self->_feesCurrency];
  [array safelyAddObject:self->_dpanIdentifier];
  [array safelyAddObject:self->_countryCode];
  [array safelyAddObject:self->_supportedFundingSourceCountryCodes];
  [array safelyAddObject:self->_supportedNetworks];
  [array safelyAddObject:self->_merchantIdentifier];
  [array safelyAddObject:self->_nonce];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_merchantCapabilities - v5 + 32 * v5;
  v7 = self->_preservesCurrentBalance - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_65;
  }

  exchangeRate = self->_exchangeRate;
  v6 = equalCopy[3];
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
  v8 = equalCopy[4];
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
  v10 = equalCopy[5];
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
  v12 = equalCopy[6];
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
  v14 = equalCopy[7];
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
  v16 = equalCopy[9];
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
  v18 = equalCopy[10];
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
  v20 = equalCopy[12];
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
  v22 = equalCopy[13];
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
  v24 = equalCopy[14];
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
  v26 = equalCopy[15];
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
  v28 = equalCopy[16];
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
  if (self->_type != equalCopy[2] || self->_merchantCapabilities != equalCopy[17])
  {
    goto LABEL_65;
  }

  v29 = self->_preservesCurrentBalance == *(equalCopy + 8);
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