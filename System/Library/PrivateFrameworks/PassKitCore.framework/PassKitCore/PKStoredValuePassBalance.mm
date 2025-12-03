@interface PKStoredValuePassBalance
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBalance:(PKStoredValuePassBalance *)balance;
- (BOOL)isExpired;
- (PKStoredValuePassBalance)initWithCoder:(id)coder;
- (PKStoredValuePassBalance)initWithCurrencyAmount:(id)amount;
- (PKStoredValuePassBalance)initWithIdentifier:(id)identifier amount:(id)amount balanceType:(id)type expiryDate:(id)date;
- (PKStoredValuePassBalance)initWithIdentifier:(id)identifier cashAmount:(id)amount currencyCode:(id)code expiryDate:(id)date;
- (PKStoredValuePassBalance)initWithTransitAppletBalance:(id)balance balanceField:(id)field;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKStoredValuePassBalance

- (PKStoredValuePassBalance)initWithCurrencyAmount:(id)amount
{
  amountCopy = amount;
  amount = [amountCopy amount];
  currency = [amountCopy currency];

  selfCopy = 0;
  if (amount && currency)
  {
    self = [(PKStoredValuePassBalance *)self initWithIdentifier:0 cashAmount:amount currencyCode:currency expiryDate:0];
    selfCopy = self;
  }

  return selfCopy;
}

- (PKStoredValuePassBalance)initWithIdentifier:(id)identifier cashAmount:(id)amount currencyCode:(id)code expiryDate:(id)date
{
  identifierCopy = identifier;
  amountCopy = amount;
  codeCopy = code;
  dateCopy = date;
  v21.receiver = self;
  v21.super_class = PKStoredValuePassBalance;
  v14 = [(PKStoredValuePassBalance *)&v21 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    objc_storeStrong(&v14->_amount, amount);
    v17 = [codeCopy copy];
    currencyCode = v14->_currencyCode;
    v14->_currencyCode = v17;

    balanceType = v14->_balanceType;
    v14->_balanceType = @"com.apple.wallet.storedvaluepassbalancetype.cash";

    objc_storeStrong(&v14->_expiryDate, date);
  }

  return v14;
}

- (PKStoredValuePassBalance)initWithTransitAppletBalance:(id)balance balanceField:(id)field
{
  balanceCopy = balance;
  fieldCopy = field;
  currency = [balanceCopy currency];
  balance = [balanceCopy balance];
  v10 = balance;
  selfCopy = 0;
  if (currency && balance)
  {
    currency2 = [balanceCopy currency];
    v13 = [currency2 isEqualToString:@"XXX"];

    if (v13)
    {
      if (([fieldCopy unitType] + 1) >= 4)
      {
        v14 = @"com.apple.wallet.storedvaluepassbalancetype.loyaltypoints";
      }

      else
      {
        v14 = @"com.apple.wallet.storedvaluepassbalancetype.unknown";
      }

      v15 = v14;
      identifier = [balanceCopy identifier];
      balance2 = [balanceCopy balance];
      expirationDate = [balanceCopy expirationDate];
      v19 = [(PKStoredValuePassBalance *)self initWithIdentifier:identifier amount:balance2 balanceType:v15 expiryDate:expirationDate];

      self = v19;
    }

    else
    {
      identifier = [balanceCopy identifier];
      balance2 = [balanceCopy balance];
      expirationDate = [balanceCopy currency];
      expirationDate2 = [balanceCopy expirationDate];
      self = [(PKStoredValuePassBalance *)self initWithIdentifier:identifier cashAmount:balance2 currencyCode:expirationDate expiryDate:expirationDate2];
    }

    selfCopy = self;
  }

  return selfCopy;
}

- (PKStoredValuePassBalance)initWithIdentifier:(id)identifier amount:(id)amount balanceType:(id)type expiryDate:(id)date
{
  identifierCopy = identifier;
  amountCopy = amount;
  typeCopy = type;
  dateCopy = date;
  v21.receiver = self;
  v21.super_class = PKStoredValuePassBalance;
  v14 = [(PKStoredValuePassBalance *)&v21 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    objc_storeStrong(&v14->_amount, amount);
    currencyCode = v14->_currencyCode;
    v14->_currencyCode = 0;

    v18 = [typeCopy copy];
    balanceType = v14->_balanceType;
    v14->_balanceType = v18;

    objc_storeStrong(&v14->_expiryDate, date);
  }

  return v14;
}

- (PKStoredValuePassBalance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKStoredValuePassBalance;
  v5 = [(PKStoredValuePassBalance *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balanceType"];
    balanceType = v5->_balanceType;
    v5->_balanceType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v14;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKStoredValuePassBalance *)self isEqualToBalance:v5];
  }

  return v6;
}

- (BOOL)isEqualToBalance:(PKStoredValuePassBalance *)balance
{
  v4 = balance;
  amount = self->_amount;
  v6 = v4->_amount;
  if (amount)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (amount != v6)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v8 = [(NSDecimalNumber *)amount isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  currencyCode = self->_currencyCode;
  v10 = v4->_currencyCode;
  if (currencyCode && v10)
  {
    if (([(NSString *)currencyCode isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (currencyCode != v10)
  {
    goto LABEL_26;
  }

  balanceType = v4->_balanceType;
  v12 = self->_balanceType;
  v13 = balanceType;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v12 || !v13)
    {

      goto LABEL_26;
    }

    v15 = [(NSString *)v12 isEqualToString:v13];

    if (!v15)
    {
      goto LABEL_26;
    }
  }

  expiryDate = self->_expiryDate;
  v17 = v4->_expiryDate;
  if (expiryDate && v17)
  {
    if (([(NSDate *)expiryDate isEqual:?]& 1) != 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  if (expiryDate != v17)
  {
    goto LABEL_26;
  }

LABEL_28:
  identifier = self->_identifier;
  v21 = v4->_identifier;
  if (identifier && v21)
  {
    v18 = [(NSString *)identifier isEqual:?];
  }

  else
  {
    v18 = identifier == v21;
  }

LABEL_27:

  return v18;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_amount];
  [array safelyAddObject:self->_currencyCode];
  [array safelyAddObject:self->_balanceType];
  [array safelyAddObject:self->_expiryDate];
  [array safelyAddObject:self->_identifier];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  amount = self->_amount;
  coderCopy = coder;
  [coderCopy encodeObject:amount forKey:@"amount"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_balanceType forKey:@"balanceType"];
  [coderCopy encodeObject:self->_expiryDate forKey:@"expiryDate"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (BOOL)isExpired
{
  if (!self->_expiryDate)
  {
    return 0;
  }

  date = [MEMORY[0x1E695DF00] date];
  v4 = [date compare:self->_expiryDate] != -1;

  return v4;
}

@end