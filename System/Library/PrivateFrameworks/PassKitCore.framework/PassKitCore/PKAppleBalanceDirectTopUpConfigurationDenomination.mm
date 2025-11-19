@interface PKAppleBalanceDirectTopUpConfigurationDenomination
- (BOOL)isEqual:(id)a3;
- (PKAppleBalanceDirectTopUpConfigurationDenomination)initWithCoder:(id)a3;
- (PKAppleBalanceDirectTopUpConfigurationDenomination)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAppleBalanceDirectTopUpConfigurationDenomination

- (PKAppleBalanceDirectTopUpConfigurationDenomination)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAppleBalanceDirectTopUpConfigurationDenomination;
  v5 = [(PKAppleBalanceDirectTopUpConfigurationDenomination *)&v11 init];
  if (v5)
  {
    v6 = [v4 PKDecimalNumberForKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [v4 PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;
  }

  return v5;
}

- (PKAppleBalanceDirectTopUpConfigurationDenomination)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAppleBalanceDirectTopUpConfigurationDenomination *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v5 = a3;
  [v5 encodeObject:amount forKey:@"amount"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  amount = self->_amount;
  v6 = v4[1];
  if (!amount || !v6)
  {
    if (amount == v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_13;
  }

  if (([(NSDecimalNumber *)amount isEqual:?]& 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = v4[2];
  v8 = self->_currencyCode;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0;
    if (v8 && v9)
    {
      v11 = [(NSString *)v8 isEqualToString:v9];
    }
  }

LABEL_13:
  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_currencyCode];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDecimalNumber *)self->_amount description];
  [v3 appendFormat:@"amount: '%@'; ", v4];

  v5 = [(NSString *)self->_currencyCode description];
  [v3 appendFormat:@"currencyCode: '%@'; ", v5];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAppleBalanceDirectTopUpConfigurationDenomination allocWithZone:](PKAppleBalanceDirectTopUpConfigurationDenomination init];
  v6 = [(NSDecimalNumber *)self->_amount copyWithZone:a3];
  amount = v5->_amount;
  v5->_amount = v6;

  v8 = [(NSString *)self->_currencyCode copyWithZone:a3];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v8;

  return v5;
}

@end