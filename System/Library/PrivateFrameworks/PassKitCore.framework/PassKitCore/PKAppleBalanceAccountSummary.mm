@interface PKAppleBalanceAccountSummary
- (BOOL)isEqual:(id)a3;
- (PKAppleBalanceAccountSummary)initWithCoder:(id)a3;
- (PKAppleBalanceAccountSummary)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKAppleBalanceAccountSummary

- (PKAppleBalanceAccountSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PKAppleBalanceAccountSummary *)self init];
  if (v5)
  {
    v6 = [v4 PKDecimalNumberFromStringForKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v6;
  }

  return v5;
}

- (PKAppleBalanceAccountSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAppleBalanceAccountSummary *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentBalance = self->_currentBalance;
    v6 = v4[1];
    if (currentBalance && v6)
    {
      v7 = [(NSDecimalNumber *)currentBalance isEqual:?];
    }

    else
    {
      v7 = currentBalance == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_currentBalance];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDecimalNumber *)self->_currentBalance stringValue];
  [v3 appendFormat:@"currentBalance: '%@'; ", v4];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAppleBalanceAccountSummary allocWithZone:](PKAppleBalanceAccountSummary init];
  v6 = [(NSDecimalNumber *)self->_currentBalance copyWithZone:a3];
  currentBalance = v5->_currentBalance;
  v5->_currentBalance = v6;

  return v5;
}

@end