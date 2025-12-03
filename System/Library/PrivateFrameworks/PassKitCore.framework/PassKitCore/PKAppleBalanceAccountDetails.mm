@interface PKAppleBalanceAccountDetails
- (BOOL)isEqual:(id)equal;
- (PKAppleBalanceAccountDetails)initWithCloudRecord:(id)record;
- (PKAppleBalanceAccountDetails)initWithCoder:(id)coder;
- (PKAppleBalanceAccountDetails)initWithDictionary:(id)dictionary;
- (PKCurrencyAmount)currentBalance;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCloudRecord:(id)record codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAppleBalanceAccountDetails

- (PKAppleBalanceAccountDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = PKAppleBalanceAccountDetails;
  v5 = [(PKAppleBalanceAccountDetails *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDateForKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v6;

    v8 = [dictionaryCopy PKDateForKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [dictionaryCopy PKStringForKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v12 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v14 = [dictionaryCopy PKStringForKey:@"fpanId"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v14;

    v16 = [dictionaryCopy PKStringForKey:@"associatedPassTypeIdentifier"];
    associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
    v5->_associatedPassTypeIdentifier = v16;

    v18 = [dictionaryCopy PKStringForKey:@"associatedPassSerialNumber"];
    associatedPassSerialNumber = v5->_associatedPassSerialNumber;
    v5->_associatedPassSerialNumber = v18;

    v20 = [dictionaryCopy PKStringForKey:@"cardType"];
    v5->_cardType = PKPaymentCredentialTypeForPaymentNetworkName(v20);

    v21 = [PKAppleBalanceAccountSummary alloc];
    v22 = [dictionaryCopy PKDictionaryForKey:@"accountSummary"];
    v23 = [(PKAppleBalanceAccountSummary *)v21 initWithDictionary:v22];
    accountSummary = v5->_accountSummary;
    v5->_accountSummary = v23;
  }

  return v5;
}

- (PKAppleBalanceAccountDetails)initWithCloudRecord:(id)record
{
  recordCopy = record;
  v27.receiver = self;
  v27.super_class = PKAppleBalanceAccountDetails;
  v5 = [(PKAppleBalanceAccountDetails *)&v27 init];
  if (v5)
  {
    v6 = [recordCopy pk_dateForKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v6;

    v8 = [recordCopy pk_dateForKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [recordCopy pk_encryptedStringForKey:@"fpanId"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v10;

    v12 = [recordCopy pk_stringForKey:@"associatedPassTypeIdentifier"];
    associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
    v5->_associatedPassTypeIdentifier = v12;

    v5->_cardType = [recordCopy pk_intForKey:@"cardType"];
    v14 = [recordCopy pk_encryptedStringForKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v14;

    v16 = [recordCopy pk_encryptedStringForKey:@"balanceCurrencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v16;

    v18 = [recordCopy pk_encryptedObjectForKey:@"balanceAmount" ofClass:objc_opt_class()];
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
  currentBalance = [(PKAppleBalanceAccountSummary *)self->_accountSummary currentBalance];
  v4 = PKCurrencyAmountCreate(currentBalance, self->_currencyCode, 0);

  return v4;
}

- (PKAppleBalanceAccountDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PKAppleBalanceAccountDetails;
  v5 = [(PKAppleBalanceAccountDetails *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fpanId"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassSerialNumber"];
    associatedPassSerialNumber = v5->_associatedPassSerialNumber;
    v5->_associatedPassSerialNumber = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassTypeIdentifier"];
    associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
    v5->_associatedPassTypeIdentifier = v18;

    v5->_cardType = [coderCopy decodeIntegerForKey:@"cardType"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountSummary"];
    accountSummary = v5->_accountSummary;
    v5->_accountSummary = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  lastUpdatedDate = self->_lastUpdatedDate;
  coderCopy = coder;
  [coderCopy encodeObject:lastUpdatedDate forKey:@"lastUpdatedDate"];
  [coderCopy encodeObject:self->_createdDate forKey:@"createdDate"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_fpanIdentifier forKey:@"fpanId"];
  [coderCopy encodeObject:self->_associatedPassSerialNumber forKey:@"associatedPassSerialNumber"];
  [coderCopy encodeObject:self->_associatedPassTypeIdentifier forKey:@"associatedPassTypeIdentifier"];
  [coderCopy encodeInteger:self->_cardType forKey:@"cardType"];
  [coderCopy encodeObject:self->_accountSummary forKey:@"accountSummary"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_42;
  }

  lastUpdatedDate = self->_lastUpdatedDate;
  v6 = equalCopy[1];
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
  v8 = equalCopy[2];
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
  v9 = equalCopy[7];
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

  v14 = equalCopy[8];
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

  v17 = equalCopy[3];
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

  v20 = equalCopy[5];
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
  v23 = equalCopy[4];
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
  if (self->_cardType != equalCopy[6])
  {
    goto LABEL_42;
  }

  accountSummary = self->_accountSummary;
  v29 = equalCopy[9];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_lastUpdatedDate];
  [array safelyAddObject:self->_createdDate];
  [array safelyAddObject:self->_countryCode];
  [array safelyAddObject:self->_currencyCode];
  [array safelyAddObject:self->_fpanIdentifier];
  [array safelyAddObject:self->_associatedPassSerialNumber];
  [array safelyAddObject:self->_associatedPassTypeIdentifier];
  [array safelyAddObject:self->_accountSummary];
  v4 = PKCombinedHash(17, array);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKAppleBalanceAccountDetails allocWithZone:](PKAppleBalanceAccountDetails init];
  v6 = [(NSDate *)self->_lastUpdatedDate copyWithZone:zone];
  lastUpdatedDate = v5->_lastUpdatedDate;
  v5->_lastUpdatedDate = v6;

  v8 = [(NSDate *)self->_createdDate copyWithZone:zone];
  createdDate = v5->_createdDate;
  v5->_createdDate = v8;

  v10 = [(NSString *)self->_countryCode copyWithZone:zone];
  countryCode = v5->_countryCode;
  v5->_countryCode = v10;

  v12 = [(NSString *)self->_currencyCode copyWithZone:zone];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v12;

  v14 = [(NSString *)self->_fpanIdentifier copyWithZone:zone];
  fpanIdentifier = v5->_fpanIdentifier;
  v5->_fpanIdentifier = v14;

  v16 = [(NSString *)self->_associatedPassSerialNumber copyWithZone:zone];
  associatedPassSerialNumber = v5->_associatedPassSerialNumber;
  v5->_associatedPassSerialNumber = v16;

  v18 = [(NSString *)self->_associatedPassTypeIdentifier copyWithZone:zone];
  associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
  v5->_associatedPassTypeIdentifier = v18;

  v5->_cardType = self->_cardType;
  v20 = [(PKAppleBalanceAccountSummary *)self->_accountSummary copyWithZone:zone];
  accountSummary = v5->_accountSummary;
  v5->_accountSummary = v20;

  return v5;
}

- (void)encodeWithCloudRecord:(id)record codingType:(unint64_t)type
{
  lastUpdatedDate = self->_lastUpdatedDate;
  recordCopy = record;
  [recordCopy setObject:lastUpdatedDate forKey:@"lastUpdatedDate"];
  [recordCopy setObject:self->_createdDate forKey:@"createdDate"];
  [recordCopy setObject:self->_associatedPassTypeIdentifier forKey:@"associatedPassTypeIdentifier"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_cardType];
  [recordCopy setObject:v7 forKey:@"cardType"];

  encryptedValues = [recordCopy encryptedValues];

  [encryptedValues setObject:self->_countryCode forKey:@"countryCode"];
  [encryptedValues setObject:self->_currencyCode forKey:@"balanceCurrencyCode"];
  [encryptedValues setObject:self->_fpanIdentifier forKey:@"fpanId"];
  currentBalance = [(PKAppleBalanceAccountSummary *)self->_accountSummary currentBalance];
  [encryptedValues setObject:currentBalance forKey:@"balanceAmount"];
}

@end