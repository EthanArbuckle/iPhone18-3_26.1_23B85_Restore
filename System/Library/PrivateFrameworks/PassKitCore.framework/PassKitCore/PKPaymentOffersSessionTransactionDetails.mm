@interface PKPaymentOffersSessionTransactionDetails
- (BOOL)isEqual:(id)a3;
- (PKPaymentOffersSessionTransactionDetails)initWithCoder:(id)a3;
- (PKPaymentOffersSessionTransactionDetails)initWithTransaction:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOffersSessionTransactionDetails

- (PKPaymentOffersSessionTransactionDetails)initWithTransaction:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKPaymentOffersSessionTransactionDetails;
  v5 = [(PKPaymentOffersSessionTransactionDetails *)&v23 init];
  if (v5)
  {
    v6 = [v4 serviceIdentifier];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v6;

    v8 = [v4 transactionDate];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v10 = [v4 paymentHash];
    paymentHash = v5->_paymentHash;
    v5->_paymentHash = v10;

    v12 = [v4 merchant];
    v13 = [v12 name];
    merchantName = v5->_merchantName;
    v5->_merchantName = v13;

    v15 = [v4 transactionSourceIdentifier];
    transactionSourceIdentifier = v5->_transactionSourceIdentifier;
    v5->_transactionSourceIdentifier = v15;

    v17 = [v4 amount];
    v18 = [v4 currencyCode];
    v19 = v18;
    if (v17 && v18)
    {
      v20 = PKCurrencyAmountCreate(v17, v18, 0);
      currencyAmount = v5->_currencyAmount;
      v5->_currencyAmount = v20;
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_serviceIdentifier forKeyedSubscript:@"serviceIdentifier"];
  v4 = PKISO8601DateStringFromDate(self->_timestamp);
  [v3 setObject:v4 forKeyedSubscript:@"timestamp"];

  [v3 setObject:self->_paymentHash forKeyedSubscript:@"paymentHash"];
  [v3 setObject:self->_merchantName forKeyedSubscript:@"merchantName"];
  v5 = [(PKCurrencyAmount *)self->_currencyAmount dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"currencyAmount"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        serviceIdentifier = v6->_serviceIdentifier;
        v8 = self->_serviceIdentifier;
        v9 = serviceIdentifier;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v9)
          {
            goto LABEL_39;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_40;
          }
        }

        timestamp = self->_timestamp;
        v13 = v6->_timestamp;
        if (timestamp && v13)
        {
          if (([(NSDate *)timestamp isEqual:?]& 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else if (timestamp != v13)
        {
          goto LABEL_26;
        }

        currencyAmount = self->_currencyAmount;
        v15 = v6->_currencyAmount;
        if (currencyAmount && v15)
        {
          if ([(PKCurrencyAmount *)currencyAmount isEqual:?])
          {
            goto LABEL_20;
          }
        }

        else if (currencyAmount == v15)
        {
LABEL_20:
          paymentHash = v6->_paymentHash;
          v8 = self->_paymentHash;
          v17 = paymentHash;
          v10 = v17;
          if (v8 == v17)
          {
          }

          else
          {
            LOBYTE(v11) = 0;
            if (!v8 || !v17)
            {
              goto LABEL_39;
            }

            v11 = [(NSString *)v8 isEqualToString:v17];

            if (!v11)
            {
              goto LABEL_40;
            }
          }

          merchantName = v6->_merchantName;
          v8 = self->_merchantName;
          v19 = merchantName;
          v10 = v19;
          if (v8 == v19)
          {

LABEL_34:
            transactionSourceIdentifier = self->_transactionSourceIdentifier;
            v21 = v6->_transactionSourceIdentifier;
            v8 = transactionSourceIdentifier;
            v22 = v21;
            v10 = v22;
            if (v8 == v22)
            {
              LOBYTE(v11) = 1;
            }

            else
            {
              LOBYTE(v11) = 0;
              if (v8 && v22)
              {
                LOBYTE(v11) = [(NSString *)v8 isEqualToString:v22];
              }
            }

            goto LABEL_39;
          }

          LOBYTE(v11) = 0;
          if (v8 && v19)
          {
            v11 = [(NSString *)v8 isEqualToString:v19];

            if (!v11)
            {
              goto LABEL_40;
            }

            goto LABEL_34;
          }

LABEL_39:

          goto LABEL_40;
        }

LABEL_26:
        LOBYTE(v11) = 0;
LABEL_40:

        goto LABEL_41;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_41:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_serviceIdentifier];
  [v3 safelyAddObject:self->_timestamp];
  [v3 safelyAddObject:self->_paymentHash];
  [v3 safelyAddObject:self->_merchantName];
  [v3 safelyAddObject:self->_currencyAmount];
  [v3 safelyAddObject:self->_transactionSourceIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"serviceIdentifier: '%@'; ", self->_serviceIdentifier];
  [v3 appendFormat:@"timestamp: '%@'; ", self->_timestamp];
  [v3 appendFormat:@"paymentHash: '%@'; ", self->_paymentHash];
  [v3 appendFormat:@"merchantName: '%@'; ", self->_merchantName];
  [v3 appendFormat:@"currencyAmount: '%@'; ", self->_currencyAmount];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOffersSessionTransactionDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKPaymentOffersSessionTransactionDetails;
  v5 = [(PKPaymentOffersSessionTransactionDetails *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentHash"];
    paymentHash = v5->_paymentHash;
    v5->_paymentHash = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantName"];
    merchantName = v5->_merchantName;
    v5->_merchantName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    transactionSourceIdentifier = v5->_transactionSourceIdentifier;
    v5->_transactionSourceIdentifier = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  serviceIdentifier = self->_serviceIdentifier;
  v5 = a3;
  [v5 encodeObject:serviceIdentifier forKey:@"serviceIdentifier"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_paymentHash forKey:@"paymentHash"];
  [v5 encodeObject:self->_merchantName forKey:@"merchantName"];
  [v5 encodeObject:self->_currencyAmount forKey:@"currencyAmount"];
  [v5 encodeObject:self->_transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOffersSessionTransactionDetails allocWithZone:](PKPaymentOffersSessionTransactionDetails init];
  v6 = [(NSString *)self->_serviceIdentifier copyWithZone:a3];
  serviceIdentifier = v5->_serviceIdentifier;
  v5->_serviceIdentifier = v6;

  v8 = [(NSDate *)self->_timestamp copyWithZone:a3];
  timestamp = v5->_timestamp;
  v5->_timestamp = v8;

  v10 = [(NSString *)self->_paymentHash copyWithZone:a3];
  paymentHash = v5->_paymentHash;
  v5->_paymentHash = v10;

  v12 = [(NSString *)self->_merchantName copyWithZone:a3];
  merchantName = v5->_merchantName;
  v5->_merchantName = v12;

  v14 = [(PKCurrencyAmount *)self->_currencyAmount copyWithZone:a3];
  currencyAmount = v5->_currencyAmount;
  v5->_currencyAmount = v14;

  v16 = [(NSString *)self->_transactionSourceIdentifier copyWithZone:a3];
  transactionSourceIdentifier = v5->_transactionSourceIdentifier;
  v5->_transactionSourceIdentifier = v16;

  return v5;
}

@end