@interface PKTransitAppletBalance
- (BOOL)isCurrency;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBalance:(id)a3;
- (PKTransitAppletBalance)initWithCoder:(id)a3;
- (PKTransitAppletBalance)initWithDictionary:(id)a3;
- (PKTransitAppletBalance)initWithIdentifier:(id)a3 balance:(id)a4 currency:(id)a5 exponent:(int64_t)a6 expirationDate:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_setIdentifierFromObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransitAppletBalance

- (PKTransitAppletBalance)initWithDictionary:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PKTransitAppletBalance;
  v5 = [(PKTransitAppletBalance *)&v34 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 objectForKeyedSubscript:@"BalanceIdentifier"];
    [(PKTransitAppletBalance *)v6 _setIdentifierFromObject:v7];

    v8 = [v4 objectForKeyedSubscript:@"Balance"];
    v9 = [v8 copy];
    balance = v6->_balance;
    v6->_balance = v9;

    if (v6->_balance)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = objc_alloc(MEMORY[0x1E696AB90]);
        v12 = v6->_balance;
        if (v12)
        {
          [(NSDecimalNumber *)v12 decimalValue];
        }

        else
        {
          v32[0] = 0;
          v32[1] = 0;
          v33 = 0;
        }

        v13 = [v11 initWithDecimal:v32];
        v14 = v6->_balance;
        v6->_balance = v13;
      }
    }

    v15 = [v4 objectForKeyedSubscript:@"BalanceCurrency"];
    v16 = [v15 copy];
    currency = v6->_currency;
    v6->_currency = v16;

    v18 = [v4 objectForKeyedSubscript:@"BalanceCurrencyExponent"];
    v6->_exponent = [v18 integerValue];

    v19 = [v4 objectForKeyedSubscript:@"BalanceExpirationDate"];
    if (([v19 isValidDate] & 1) == 0)
    {
      v20 = [v19 calendar];

      if (!v20)
      {
        v21 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
        [v19 setCalendar:v21];
      }

      v22 = [MEMORY[0x1E695DFE8] localTimeZone];
      [v19 setTimeZone:v22];
    }

    v23 = [v19 date];
    expirationDate = v6->_expirationDate;
    v6->_expirationDate = v23;

    if (!v19 && ![(PKTransitAppletBalance *)v6 isCurrency])
    {
      v25 = v6->_balance;
      v26 = [MEMORY[0x1E696AB90] zero];
      v27 = [(NSDecimalNumber *)v25 compare:v26];

      if (!v27)
      {
        v28 = [MEMORY[0x1E695DF00] now];
        v29 = [v28 dateByAddingTimeInterval:86400.0];
        v30 = v6->_expirationDate;
        v6->_expirationDate = v29;
      }
    }
  }

  return v6;
}

- (PKTransitAppletBalance)initWithIdentifier:(id)a3 balance:(id)a4 currency:(id)a5 exponent:(int64_t)a6 expirationDate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = PKTransitAppletBalance;
  v17 = [(PKTransitAppletBalance *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, a3);
    v19 = [v14 copy];
    balance = v18->_balance;
    v18->_balance = v19;

    v21 = [v15 copy];
    currency = v18->_currency;
    v18->_currency = v21;

    v18->_exponent = a6;
    v23 = [MEMORY[0x1E695DEE8] currentCalendar];
    v24 = [v23 dateFromComponents:v16];
    expirationDate = v18->_expirationDate;
    v18->_expirationDate = v24;
  }

  return v18;
}

- (void)_setIdentifierFromObject:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 hexEncoding];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = v6;
  }

  identifier = self->_identifier;
  self->_identifier = v4;

LABEL_6:
}

- (BOOL)isCurrency
{
  currency = self->_currency;
  if (currency)
  {
    LOBYTE(currency) = ![(NSString *)currency isEqualToString:@"XXX"];
  }

  return currency;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDecimalNumber *)self->_balance copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_currency copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v5[4] = self->_exponent;
  v12 = [(NSDate *)self->_expirationDate copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransitAppletBalance *)self isEqualToBalance:v5];
  }

  return v6;
}

- (BOOL)isEqualToBalance:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = v4[1];
  if (identifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (identifier != v6)
    {
      goto LABEL_22;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_22;
  }

  balance = self->_balance;
  v9 = v4[2];
  if (balance && v9)
  {
    if (([(NSDecimalNumber *)balance isEqual:?]& 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (balance != v9)
  {
    goto LABEL_22;
  }

  if (self->_exponent != v4[4])
  {
    goto LABEL_22;
  }

  currency = self->_currency;
  v11 = v4[3];
  if (!currency || !v11)
  {
    if (currency == v11)
    {
      goto LABEL_18;
    }

LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  if (([(NSString *)currency isEqual:?]& 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  expirationDate = self->_expirationDate;
  v13 = v4[5];
  if (expirationDate && v13)
  {
    v14 = [(NSDate *)expirationDate isEqual:?];
  }

  else
  {
    v14 = expirationDate == v13;
  }

LABEL_23:

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_balance];
  [v3 safelyAddObject:self->_currency];
  [v3 safelyAddObject:self->_expirationDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_exponent - v4 + 32 * v4;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_balance forKey:@"finalBalance"];
  [v5 encodeObject:self->_currency forKey:@"currency"];
  [v5 encodeInteger:self->_exponent forKey:@"currencyExponent"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDateAndTime"];
}

- (PKTransitAppletBalance)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKTransitAppletBalance;
  v5 = [(PKTransitAppletBalance *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"finalBalance"];
    balance = v5->_balance;
    v5->_balance = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v10;

    v5->_exponent = [v4 decodeIntegerForKey:@"currencyExponent"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDateAndTime"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v12;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = v3;
  if (self->_balance)
  {
    [v3 appendFormat:@"balance:%@ ", self->_balance];
  }

  if (self->_exponent)
  {
    [v4 appendFormat:@"exponent:%ld ", self->_exponent];
  }

  if (self->_currency)
  {
    [v4 appendFormat:@"currency:%@ ", self->_currency];
  }

  if (self->_expirationDate)
  {
    [v4 appendFormat:@"expirationDate:%@ ", self->_expirationDate];
  }

  if (self->_identifier)
  {
    [v4 appendFormat:@"identifier:%@ ", self->_identifier];
  }

  v5 = [v4 length];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  if (v5)
  {
    [v6 stringWithFormat:@"<%@: %p> {%@}", v7, self, v4];
  }

  else
  {
    [v6 stringWithFormat:@"<%@: %p>", v7, self, v10];
  }
  v8 = ;

  return v8;
}

@end