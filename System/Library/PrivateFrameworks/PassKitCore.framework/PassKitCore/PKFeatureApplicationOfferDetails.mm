@interface PKFeatureApplicationOfferDetails
- (BOOL)isEqual:(id)equal;
- (PKFeatureApplicationOfferDetails)initWithCoder:(id)coder;
- (PKFeatureApplicationOfferDetails)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFeatureApplicationOfferDetails

- (PKFeatureApplicationOfferDetails)initWithDictionary:(id)dictionary
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = PKFeatureApplicationOfferDetails;
  v5 = [(PKFeatureApplicationOfferDetails *)&v29 init];
  if (!v5)
  {
LABEL_7:
    v24 = v5;
    goto LABEL_11;
  }

  v6 = [dictionaryCopy PKStringForKey:@"offerTermsIdentifier"];
  offerTermsIdentifier = v5->_offerTermsIdentifier;
  v5->_offerTermsIdentifier = v6;

  if (v5->_offerTermsIdentifier)
  {
    v8 = [dictionaryCopy PKDateForKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v8;

    v10 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"creditLimit"];
    creditLimit = v5->_creditLimit;
    v5->_creditLimit = v10;

    v12 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"fees"];
    annualFee = v5->_annualFee;
    v5->_annualFee = v12;

    v14 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"aprForPurchase"];
    aprForPurchase = v5->_aprForPurchase;
    v5->_aprForPurchase = v14;

    v16 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v16;

    v18 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v18;

    v20 = [dictionaryCopy PKDictionaryForKey:@"detailsInfo"];
    v21 = v20;
    if (v20 && [v20 count])
    {
      v22 = [[PKFeatureApplicationOfferDetailsInfo alloc] initWithDictionary:v21];
      detailsInfo = v5->_detailsInfo;
      v5->_detailsInfo = v22;
    }

    goto LABEL_7;
  }

  v25 = PKLogFacilityTypeGetObject(0xEuLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    *buf = 138412290;
    v31 = v27;
    _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Error: Offer identifier missing from :%@", buf, 0xCu);
  }

  v24 = 0;
LABEL_11:

  return v24;
}

- (PKFeatureApplicationOfferDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PKFeatureApplicationOfferDetails;
  v5 = [(PKFeatureApplicationOfferDetails *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offerTermsIdentifier"];
    offerTermsIdentifier = v5->_offerTermsIdentifier;
    v5->_offerTermsIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creditLimit"];
    creditLimit = v5->_creditLimit;
    v5->_creditLimit = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"annualFee"];
    annualFee = v5->_annualFee;
    v5->_annualFee = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aprForPurchase"];
    aprForPurchase = v5->_aprForPurchase;
    v5->_aprForPurchase = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailsInfo"];
    detailsInfo = v5->_detailsInfo;
    v5->_detailsInfo = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  offerTermsIdentifier = self->_offerTermsIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:offerTermsIdentifier forKey:@"offerTermsIdentifier"];
  [coderCopy encodeObject:self->_expiryDate forKey:@"expiryDate"];
  [coderCopy encodeObject:self->_creditLimit forKey:@"creditLimit"];
  [coderCopy encodeObject:self->_annualFee forKey:@"annualFee"];
  [coderCopy encodeObject:self->_aprForPurchase forKey:@"aprForPurchase"];
  [coderCopy encodeObject:self->_balance forKey:@"balance"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_detailsInfo forKey:@"detailsInfo"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"offerTermsIdentifier: '%@'; ", self->_offerTermsIdentifier];
  [v3 appendFormat:@"expiryDate: '%@'; ", self->_expiryDate];
  [v3 appendFormat:@"creditLimit: '%@'; ", self->_creditLimit];
  [v3 appendFormat:@"annualFee: '%@'; ", self->_annualFee];
  [v3 appendFormat:@"aprForPurchase: '%@'; ", self->_aprForPurchase];
  [v3 appendFormat:@"balance: '%@'; ", self->_balance];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  [v3 appendFormat:@"detailsInfo: '%@'; ", self->_detailsInfo];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_39;
  }

  offerTermsIdentifier = self->_offerTermsIdentifier;
  v6 = equalCopy[1];
  if (offerTermsIdentifier && v6)
  {
    if (([(NSString *)offerTermsIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (offerTermsIdentifier != v6)
  {
    goto LABEL_39;
  }

  expiryDate = self->_expiryDate;
  v8 = equalCopy[2];
  if (expiryDate && v8)
  {
    if (([(NSDate *)expiryDate isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (expiryDate != v8)
  {
    goto LABEL_39;
  }

  creditLimit = self->_creditLimit;
  v10 = equalCopy[3];
  if (creditLimit && v10)
  {
    if (([(NSDecimalNumber *)creditLimit isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (creditLimit != v10)
  {
    goto LABEL_39;
  }

  annualFee = self->_annualFee;
  v12 = equalCopy[4];
  if (annualFee && v12)
  {
    if (([(NSDecimalNumber *)annualFee isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (annualFee != v12)
  {
    goto LABEL_39;
  }

  aprForPurchase = self->_aprForPurchase;
  v14 = equalCopy[5];
  if (aprForPurchase && v14)
  {
    if (([(NSDecimalNumber *)aprForPurchase isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (aprForPurchase != v14)
  {
    goto LABEL_39;
  }

  balance = self->_balance;
  v16 = equalCopy[6];
  if (balance && v16)
  {
    if (([(NSDecimalNumber *)balance isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (balance != v16)
  {
    goto LABEL_39;
  }

  currencyCode = self->_currencyCode;
  v18 = equalCopy[7];
  if (!currencyCode || !v18)
  {
    if (currencyCode == v18)
    {
      goto LABEL_35;
    }

LABEL_39:
    v21 = 0;
    goto LABEL_40;
  }

  if (([(NSString *)currencyCode isEqual:?]& 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  detailsInfo = self->_detailsInfo;
  v20 = equalCopy[8];
  if (detailsInfo && v20)
  {
    v21 = [(PKFeatureApplicationOfferDetailsInfo *)detailsInfo isEqual:?];
  }

  else
  {
    v21 = detailsInfo == v20;
  }

LABEL_40:

  return v21;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_offerTermsIdentifier];
  [array safelyAddObject:self->_expiryDate];
  [array safelyAddObject:self->_creditLimit];
  [array safelyAddObject:self->_annualFee];
  [array safelyAddObject:self->_aprForPurchase];
  [array safelyAddObject:self->_balance];
  [array safelyAddObject:self->_currencyCode];
  [array safelyAddObject:self->_detailsInfo];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKFeatureApplicationOfferDetails allocWithZone:](PKFeatureApplicationOfferDetails init];
  v6 = [(NSString *)self->_offerTermsIdentifier copyWithZone:zone];
  offerTermsIdentifier = v5->_offerTermsIdentifier;
  v5->_offerTermsIdentifier = v6;

  v8 = [(NSDate *)self->_expiryDate copyWithZone:zone];
  expiryDate = v5->_expiryDate;
  v5->_expiryDate = v8;

  v10 = [(NSDecimalNumber *)self->_creditLimit copyWithZone:zone];
  creditLimit = v5->_creditLimit;
  v5->_creditLimit = v10;

  v12 = [(NSDecimalNumber *)self->_annualFee copyWithZone:zone];
  annualFee = v5->_annualFee;
  v5->_annualFee = v12;

  v14 = [(NSDecimalNumber *)self->_aprForPurchase copyWithZone:zone];
  aprForPurchase = v5->_aprForPurchase;
  v5->_aprForPurchase = v14;

  v16 = [(NSDecimalNumber *)self->_balance copyWithZone:zone];
  balance = v5->_balance;
  v5->_balance = v16;

  v18 = [(NSString *)self->_currencyCode copyWithZone:zone];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v18;

  v20 = [(PKFeatureApplicationOfferDetailsInfo *)self->_detailsInfo copyWithZone:zone];
  detailsInfo = v5->_detailsInfo;
  v5->_detailsInfo = v20;

  return v5;
}

@end