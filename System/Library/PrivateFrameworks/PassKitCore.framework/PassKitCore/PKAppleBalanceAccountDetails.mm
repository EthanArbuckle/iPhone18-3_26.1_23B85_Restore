@interface PKAppleBalanceAccountDetails
- (BOOL)isEqual:(id)a3;
- (PKAppleBalanceAccountDetails)initWithCloudRecord:(id)a3;
- (PKAppleBalanceAccountDetails)initWithCoder:(id)a3;
- (PKAppleBalanceAccountDetails)initWithDictionary:(id)a3;
- (PKCurrencyAmount)currentBalance;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCloudRecord:(id)a3 codingType:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAppleBalanceAccountDetails

- (PKAppleBalanceAccountDetails)initWithDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PKAppleBalanceAccountDetails;
  v5 = [(PKAppleBalanceAccountDetails *)&v26 init];
  if (v5)
  {
    v6 = [v4 PKDateForKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v6;

    v8 = [v4 PKDateForKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [v4 PKStringForKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v12 = [v4 PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v14 = [v4 PKStringForKey:@"fpanId"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v14;

    v16 = [v4 PKStringForKey:@"associatedPassTypeIdentifier"];
    associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
    v5->_associatedPassTypeIdentifier = v16;

    v18 = [v4 PKStringForKey:@"associatedPassSerialNumber"];
    associatedPassSerialNumber = v5->_associatedPassSerialNumber;
    v5->_associatedPassSerialNumber = v18;

    v20 = [v4 PKStringForKey:@"cardType"];
    v5->_cardType = PKPaymentCredentialTypeForPaymentNetworkName(v20);

    v21 = [PKAppleBalanceAccountSummary alloc];
    v22 = [v4 PKDictionaryForKey:@"accountSummary"];
    v23 = [(PKAppleBalanceAccountSummary *)v21 initWithDictionary:v22];
    accountSummary = v5->_accountSummary;
    v5->_accountSummary = v23;
  }

  return v5;
}

- (PKAppleBalanceAccountDetails)initWithCloudRecord:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PKAppleBalanceAccountDetails;
  v5 = [(PKAppleBalanceAccountDetails *)&v27 init];
  if (v5)
  {
    v6 = [v4 pk_dateForKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v6;

    v8 = [v4 pk_dateForKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [v4 pk_encryptedStringForKey:@"fpanId"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v10;

    v12 = [v4 pk_stringForKey:@"associatedPassTypeIdentifier"];
    associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
    v5->_associatedPassTypeIdentifier = v12;

    v5->_cardType = [v4 pk_intForKey:@"cardType"];
    v14 = [v4 pk_encryptedStringForKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v14;

    v16 = [v4 pk_encryptedStringForKey:@"balanceCurrencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v16;

    v18 = [v4 pk_encryptedObjectForKey:@"balanceAmount" ofClass:objc_opt_class()];
    v19 = v18;
    v20 = MEMORY[0x1E696AB90];
    if (v18)
    {
      [v18 decimalValue];
    }

    else
    {
      v25[0] = 0;
      v25[1] = 0;
      v26 = 0;
    }

    v21 = [v20 decimalNumberWithDecimal:v25];
    v22 = objc_alloc_init(PKAppleBalanceAccountSummary);
    accountSummary = v5->_accountSummary;
    v5->_accountSummary = v22;

    [(PKAppleBalanceAccountSummary *)v5->_accountSummary setCurrentBalance:v21];
  }

  return v5;
}

- (PKCurrencyAmount)currentBalance
{
  v3 = [(PKAppleBalanceAccountSummary *)self->_accountSummary currentBalance];
  v4 = PKCurrencyAmountCreate(v3, self->_currencyCode, 0);

  return v4;
}

- (PKAppleBalanceAccountDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKAppleBalanceAccountDetails;
  v5 = [(PKAppleBalanceAccountDetails *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fpanId"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassSerialNumber"];
    associatedPassSerialNumber = v5->_associatedPassSerialNumber;
    v5->_associatedPassSerialNumber = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassTypeIdentifier"];
    associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
    v5->_associatedPassTypeIdentifier = v18;

    v5->_cardType = [v4 decodeIntegerForKey:@"cardType"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountSummary"];
    accountSummary = v5->_accountSummary;
    v5->_accountSummary = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  lastUpdatedDate = self->_lastUpdatedDate;
  v5 = a3;
  [v5 encodeObject:lastUpdatedDate forKey:@"lastUpdatedDate"];
  [v5 encodeObject:self->_createdDate forKey:@"createdDate"];
  [v5 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_fpanIdentifier forKey:@"fpanId"];
  [v5 encodeObject:self->_associatedPassSerialNumber forKey:@"associatedPassSerialNumber"];
  [v5 encodeObject:self->_associatedPassTypeIdentifier forKey:@"associatedPassTypeIdentifier"];
  [v5 encodeInteger:self->_cardType forKey:@"cardType"];
  [v5 encodeObject:self->_accountSummary forKey:@"accountSummary"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_42;
  }

  lastUpdatedDate = self->_lastUpdatedDate;
  v6 = v4[1];
  if (lastUpdatedDate && v6)
  {
    if (([(NSDate *)lastUpdatedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (lastUpdatedDate != v6)
  {
    goto LABEL_42;
  }

  createdDate = self->_createdDate;
  v8 = v4[2];
  if (!createdDate || !v8)
  {
    if (createdDate == v8)
    {
      goto LABEL_12;
    }

LABEL_42:
    v26 = 0;
    goto LABEL_43;
  }

  if (([(NSDate *)createdDate isEqual:?]& 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_12:
  v9 = v4[7];
  v10 = self->_countryCode;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if (!v10 || !v11)
    {
      goto LABEL_41;
    }

    v13 = [(NSString *)v10 isEqualToString:v11];

    if (!v13)
    {
      goto LABEL_42;
    }
  }

  v14 = v4[8];
  v10 = self->_currencyCode;
  v15 = v14;
  v12 = v15;
  if (v10 == v15)
  {
  }

  else
  {
    if (!v10 || !v15)
    {
      goto LABEL_41;
    }

    v16 = [(NSString *)v10 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  v17 = v4[3];
  v10 = self->_fpanIdentifier;
  v18 = v17;
  v12 = v18;
  if (v10 == v18)
  {
  }

  else
  {
    if (!v10 || !v18)
    {
      goto LABEL_41;
    }

    v19 = [(NSString *)v10 isEqualToString:v18];

    if (!v19)
    {
      goto LABEL_42;
    }
  }

  v20 = v4[5];
  v10 = self->_associatedPassSerialNumber;
  v21 = v20;
  v12 = v21;
  if (v10 == v21)
  {

    goto LABEL_36;
  }

  if (!v10 || !v21)
  {
LABEL_41:

    goto LABEL_42;
  }

  v22 = [(NSString *)v10 isEqualToString:v21];

  if (!v22)
  {
    goto LABEL_42;
  }

LABEL_36:
  v23 = v4[4];
  v10 = self->_associatedPassTypeIdentifier;
  v24 = v23;
  v12 = v24;
  if (v10 == v24)
  {

    goto LABEL_45;
  }

  if (!v10 || !v24)
  {
    goto LABEL_41;
  }

  v25 = [(NSString *)v10 isEqualToString:v24];

  if (!v25)
  {
    goto LABEL_42;
  }

LABEL_45:
  if (self->_cardType != v4[6])
  {
    goto LABEL_42;
  }

  accountSummary = self->_accountSummary;
  v29 = v4[9];
  if (accountSummary && v29)
  {
    v26 = [(PKAppleBalanceAccountSummary *)accountSummary isEqual:?];
  }

  else
  {
    v26 = accountSummary == v29;
  }

LABEL_43:

  return v26;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_lastUpdatedDate];
  [v3 safelyAddObject:self->_createdDate];
  [v3 safelyAddObject:self->_countryCode];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_fpanIdentifier];
  [v3 safelyAddObject:self->_associatedPassSerialNumber];
  [v3 safelyAddObject:self->_associatedPassTypeIdentifier];
  [v3 safelyAddObject:self->_accountSummary];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_cardType - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDate *)self->_lastUpdatedDate description];
  [v3 appendFormat:@"lastUpdateDate: '%@'; ", v4];

  v5 = [(NSDate *)self->_createdDate description];
  [v3 appendFormat:@"createdDate: '%@'; ", v5];

  [v3 appendFormat:@"countryCode: '%@'; ", self->_countryCode];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  [v3 appendFormat:@"fpanIdentifier: '%@'; ", self->_fpanIdentifier];
  [v3 appendFormat:@"associatedPassSerialNumber: '%@'; ", self->_associatedPassSerialNumber];
  [v3 appendFormat:@"associatedPassTypeIdentifier: '%@'; ", self->_associatedPassTypeIdentifier];
  v6 = PKPaymentNetworkNameForPaymentCredentialType(self->_cardType);
  [v3 appendFormat:@"cardType: '%@'; ", v6];

  v7 = [(PKAppleBalanceAccountSummary *)self->_accountSummary description];
  [v3 appendFormat:@"summary: '%@'; ", v7];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAppleBalanceAccountDetails allocWithZone:](PKAppleBalanceAccountDetails init];
  v6 = [(NSDate *)self->_lastUpdatedDate copyWithZone:a3];
  lastUpdatedDate = v5->_lastUpdatedDate;
  v5->_lastUpdatedDate = v6;

  v8 = [(NSDate *)self->_createdDate copyWithZone:a3];
  createdDate = v5->_createdDate;
  v5->_createdDate = v8;

  v10 = [(NSString *)self->_countryCode copyWithZone:a3];
  countryCode = v5->_countryCode;
  v5->_countryCode = v10;

  v12 = [(NSString *)self->_currencyCode copyWithZone:a3];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v12;

  v14 = [(NSString *)self->_fpanIdentifier copyWithZone:a3];
  fpanIdentifier = v5->_fpanIdentifier;
  v5->_fpanIdentifier = v14;

  v16 = [(NSString *)self->_associatedPassSerialNumber copyWithZone:a3];
  associatedPassSerialNumber = v5->_associatedPassSerialNumber;
  v5->_associatedPassSerialNumber = v16;

  v18 = [(NSString *)self->_associatedPassTypeIdentifier copyWithZone:a3];
  associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
  v5->_associatedPassTypeIdentifier = v18;

  v5->_cardType = self->_cardType;
  v20 = [(PKAppleBalanceAccountSummary *)self->_accountSummary copyWithZone:a3];
  accountSummary = v5->_accountSummary;
  v5->_accountSummary = v20;

  return v5;
}

- (void)encodeWithCloudRecord:(id)a3 codingType:(unint64_t)a4
{
  lastUpdatedDate = self->_lastUpdatedDate;
  v6 = a3;
  [v6 setObject:lastUpdatedDate forKey:@"lastUpdatedDate"];
  [v6 setObject:self->_createdDate forKey:@"createdDate"];
  [v6 setObject:self->_associatedPassTypeIdentifier forKey:@"associatedPassTypeIdentifier"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_cardType];
  [v6 setObject:v7 forKey:@"cardType"];

  v9 = [v6 encryptedValues];

  [v9 setObject:self->_countryCode forKey:@"countryCode"];
  [v9 setObject:self->_currencyCode forKey:@"balanceCurrencyCode"];
  [v9 setObject:self->_fpanIdentifier forKey:@"fpanId"];
  v8 = [(PKAppleBalanceAccountSummary *)self->_accountSummary currentBalance];
  [v9 setObject:v8 forKey:@"balanceAmount"];
}

@end