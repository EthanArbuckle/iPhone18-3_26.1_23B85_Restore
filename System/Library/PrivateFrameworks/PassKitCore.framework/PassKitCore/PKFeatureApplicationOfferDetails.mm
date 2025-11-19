@interface PKFeatureApplicationOfferDetails
- (BOOL)isEqual:(id)a3;
- (PKFeatureApplicationOfferDetails)initWithCoder:(id)a3;
- (PKFeatureApplicationOfferDetails)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFeatureApplicationOfferDetails

- (PKFeatureApplicationOfferDetails)initWithDictionary:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKFeatureApplicationOfferDetails;
  v5 = [(PKFeatureApplicationOfferDetails *)&v29 init];
  if (!v5)
  {
LABEL_7:
    v24 = v5;
    goto LABEL_11;
  }

  v6 = [v4 PKStringForKey:@"offerTermsIdentifier"];
  offerTermsIdentifier = v5->_offerTermsIdentifier;
  v5->_offerTermsIdentifier = v6;

  if (v5->_offerTermsIdentifier)
  {
    v8 = [v4 PKDateForKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v8;

    v10 = [v4 PKDecimalNumberFromStringForKey:@"creditLimit"];
    creditLimit = v5->_creditLimit;
    v5->_creditLimit = v10;

    v12 = [v4 PKDecimalNumberFromStringForKey:@"fees"];
    annualFee = v5->_annualFee;
    v5->_annualFee = v12;

    v14 = [v4 PKDecimalNumberFromStringForKey:@"aprForPurchase"];
    aprForPurchase = v5->_aprForPurchase;
    v5->_aprForPurchase = v14;

    v16 = [v4 PKDecimalNumberFromStringForKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v16;

    v18 = [v4 PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v18;

    v20 = [v4 PKDictionaryForKey:@"detailsInfo"];
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

- (PKFeatureApplicationOfferDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKFeatureApplicationOfferDetails;
  v5 = [(PKFeatureApplicationOfferDetails *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offerTermsIdentifier"];
    offerTermsIdentifier = v5->_offerTermsIdentifier;
    v5->_offerTermsIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creditLimit"];
    creditLimit = v5->_creditLimit;
    v5->_creditLimit = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"annualFee"];
    annualFee = v5->_annualFee;
    v5->_annualFee = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"aprForPurchase"];
    aprForPurchase = v5->_aprForPurchase;
    v5->_aprForPurchase = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detailsInfo"];
    detailsInfo = v5->_detailsInfo;
    v5->_detailsInfo = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  offerTermsIdentifier = self->_offerTermsIdentifier;
  v5 = a3;
  [v5 encodeObject:offerTermsIdentifier forKey:@"offerTermsIdentifier"];
  [v5 encodeObject:self->_expiryDate forKey:@"expiryDate"];
  [v5 encodeObject:self->_creditLimit forKey:@"creditLimit"];
  [v5 encodeObject:self->_annualFee forKey:@"annualFee"];
  [v5 encodeObject:self->_aprForPurchase forKey:@"aprForPurchase"];
  [v5 encodeObject:self->_balance forKey:@"balance"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_detailsInfo forKey:@"detailsInfo"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_39;
  }

  offerTermsIdentifier = self->_offerTermsIdentifier;
  v6 = v4[1];
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
  v8 = v4[2];
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
  v10 = v4[3];
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
  v12 = v4[4];
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
  v14 = v4[5];
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
  v16 = v4[6];
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
  v18 = v4[7];
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
  v20 = v4[8];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_offerTermsIdentifier];
  [v3 safelyAddObject:self->_expiryDate];
  [v3 safelyAddObject:self->_creditLimit];
  [v3 safelyAddObject:self->_annualFee];
  [v3 safelyAddObject:self->_aprForPurchase];
  [v3 safelyAddObject:self->_balance];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_detailsInfo];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKFeatureApplicationOfferDetails allocWithZone:](PKFeatureApplicationOfferDetails init];
  v6 = [(NSString *)self->_offerTermsIdentifier copyWithZone:a3];
  offerTermsIdentifier = v5->_offerTermsIdentifier;
  v5->_offerTermsIdentifier = v6;

  v8 = [(NSDate *)self->_expiryDate copyWithZone:a3];
  expiryDate = v5->_expiryDate;
  v5->_expiryDate = v8;

  v10 = [(NSDecimalNumber *)self->_creditLimit copyWithZone:a3];
  creditLimit = v5->_creditLimit;
  v5->_creditLimit = v10;

  v12 = [(NSDecimalNumber *)self->_annualFee copyWithZone:a3];
  annualFee = v5->_annualFee;
  v5->_annualFee = v12;

  v14 = [(NSDecimalNumber *)self->_aprForPurchase copyWithZone:a3];
  aprForPurchase = v5->_aprForPurchase;
  v5->_aprForPurchase = v14;

  v16 = [(NSDecimalNumber *)self->_balance copyWithZone:a3];
  balance = v5->_balance;
  v5->_balance = v16;

  v18 = [(NSString *)self->_currencyCode copyWithZone:a3];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v18;

  v20 = [(PKFeatureApplicationOfferDetailsInfo *)self->_detailsInfo copyWithZone:a3];
  detailsInfo = v5->_detailsInfo;
  v5->_detailsInfo = v20;

  return v5;
}

@end