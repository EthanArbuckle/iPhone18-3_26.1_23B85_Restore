@interface PKAppleBalanceAccountSummary
- (BOOL)isEqual:(id)equal;
- (PKAppleBalanceAccountSummary)initWithCoder:(id)coder;
- (PKAppleBalanceAccountSummary)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKAppleBalanceAccountSummary

- (PKAppleBalanceAccountSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(PKAppleBalanceAccountSummary *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v6;
  }

  return v5;
}

- (PKAppleBalanceAccountSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKAppleBalanceAccountSummary *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentBalance = self->_currentBalance;
    v6 = equalCopy[1];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_currentBalance];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  stringValue = [(NSDecimalNumber *)self->_currentBalance stringValue];
  [v3 appendFormat:@"currentBalance: '%@'; ", stringValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKAppleBalanceAccountSummary allocWithZone:](PKAppleBalanceAccountSummary init];
  v6 = [(NSDecimalNumber *)self->_currentBalance copyWithZone:zone];
  currentBalance = v5->_currentBalance;
  v5->_currentBalance = v6;

  return v5;
}

@end