@interface PKSavingsAccountSummary
- (BOOL)isEqual:(id)equal;
- (NSString)formattedAPY;
- (PKSavingsAccountSummary)init;
- (PKSavingsAccountSummary)initWithCoder:(id)coder;
- (PKSavingsAccountSummary)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSavingsAccountSummary

- (PKSavingsAccountSummary)init
{
  v6.receiver = self;
  v6.super_class = PKSavingsAccountSummary;
  v2 = [(PKSavingsAccountSummary *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    apyFormatter = v2->_apyFormatter;
    v2->_apyFormatter = v3;

    [(NSNumberFormatter *)v2->_apyFormatter setNumberStyle:3];
    [(NSNumberFormatter *)v2->_apyFormatter setMultiplier:&unk_1F23B4B50];
    [(NSNumberFormatter *)v2->_apyFormatter setMinimumFractionDigits:2];
    [(NSNumberFormatter *)v2->_apyFormatter setMaximumFractionDigits:2];
  }

  return v2;
}

- (PKSavingsAccountSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(PKSavingsAccountSummary *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v6;

    v8 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"availableBalance"];
    availableBalance = v5->_availableBalance;
    v5->_availableBalance = v8;

    v10 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"pendingBalance"];
    pendingBalance = v5->_pendingBalance;
    v5->_pendingBalance = v10;

    v12 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"interestYTD"];
    interestYTD = v5->_interestYTD;
    v5->_interestYTD = v12;

    v14 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"interestTotal"];
    interestTotal = v5->_interestTotal;
    v5->_interestTotal = v14;

    v16 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"apy"];
    apy = v5->_apy;
    v5->_apy = v16;

    v5->_hasWithdrawalLimit = [dictionaryCopy PKBoolForKey:@"hasWithdrawalLimit"];
    v5->_withdrawalsRemaining = [dictionaryCopy PKIntegerForKey:@"withdrawalsRemaining"];
  }

  return v5;
}

- (NSString)formattedAPY
{
  if (self->_apy)
  {
    apyFormatter = [(PKSavingsAccountSummary *)self apyFormatter];
    v4 = [apyFormatter stringFromNumber:self->_apy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKSavingsAccountSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSavingsAccountSummary *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableBalance"];
    availableBalance = v5->_availableBalance;
    v5->_availableBalance = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pendingBalance"];
    pendingBalance = v5->_pendingBalance;
    v5->_pendingBalance = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interestYTD"];
    interestYTD = v5->_interestYTD;
    v5->_interestYTD = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interestTotal"];
    interestTotal = v5->_interestTotal;
    v5->_interestTotal = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"apy"];
    apy = v5->_apy;
    v5->_apy = v16;

    v5->_hasWithdrawalLimit = [coderCopy decodeBoolForKey:@"hasWithdrawalLimit"];
    v5->_withdrawalsRemaining = [coderCopy decodeIntegerForKey:@"withdrawalsRemaining"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  currentBalance = self->_currentBalance;
  coderCopy = coder;
  [coderCopy encodeObject:currentBalance forKey:@"currentBalance"];
  [coderCopy encodeObject:self->_availableBalance forKey:@"availableBalance"];
  [coderCopy encodeObject:self->_pendingBalance forKey:@"pendingBalance"];
  [coderCopy encodeObject:self->_interestYTD forKey:@"interestYTD"];
  [coderCopy encodeObject:self->_interestTotal forKey:@"interestTotal"];
  [coderCopy encodeObject:self->_apy forKey:@"apy"];
  [coderCopy encodeBool:self->_hasWithdrawalLimit forKey:@"hasWithdrawalLimit"];
  [coderCopy encodeInteger:self->_withdrawalsRemaining forKey:@"withdrawalsRemaining"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  currentBalance = self->_currentBalance;
  v6 = equalCopy[3];
  if (currentBalance && v6)
  {
    if (([(NSDecimalNumber *)currentBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (currentBalance != v6)
  {
    goto LABEL_34;
  }

  availableBalance = self->_availableBalance;
  v8 = equalCopy[4];
  if (availableBalance && v8)
  {
    if (([(NSDecimalNumber *)availableBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (availableBalance != v8)
  {
    goto LABEL_34;
  }

  pendingBalance = self->_pendingBalance;
  v10 = equalCopy[5];
  if (pendingBalance && v10)
  {
    if (([(NSDecimalNumber *)pendingBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (pendingBalance != v10)
  {
    goto LABEL_34;
  }

  interestYTD = self->_interestYTD;
  v12 = equalCopy[6];
  if (interestYTD && v12)
  {
    if (([(NSDecimalNumber *)interestYTD isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (interestYTD != v12)
  {
    goto LABEL_34;
  }

  interestTotal = self->_interestTotal;
  v14 = equalCopy[7];
  if (interestTotal && v14)
  {
    if (([(NSDecimalNumber *)interestTotal isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (interestTotal != v14)
  {
    goto LABEL_34;
  }

  apy = self->_apy;
  v16 = equalCopy[8];
  if (!apy || !v16)
  {
    if (apy == v16)
    {
      goto LABEL_32;
    }

LABEL_34:
    v17 = 0;
    goto LABEL_35;
  }

  if (([(NSDecimalNumber *)apy isEqual:?]& 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (self->_hasWithdrawalLimit != *(equalCopy + 16))
  {
    goto LABEL_34;
  }

  v17 = self->_withdrawalsRemaining == equalCopy[9];
LABEL_35:

  return v17;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_currentBalance];
  [array safelyAddObject:self->_availableBalance];
  [array safelyAddObject:self->_pendingBalance];
  [array safelyAddObject:self->_interestYTD];
  [array safelyAddObject:self->_interestTotal];
  [array safelyAddObject:self->_apy];
  v4 = PKCombinedHash(17, array);
  v5 = self->_hasWithdrawalLimit - v4 + 32 * v4;
  v6 = self->_withdrawalsRemaining - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  stringValue = [(NSDecimalNumber *)self->_currentBalance stringValue];
  [v3 appendFormat:@"currentBalance: '%@'; ", stringValue];

  stringValue2 = [(NSDecimalNumber *)self->_availableBalance stringValue];
  [v3 appendFormat:@"availableBalance: '%@'; ", stringValue2];

  stringValue3 = [(NSDecimalNumber *)self->_pendingBalance stringValue];
  [v3 appendFormat:@"pendingBalance: '%@'; ", stringValue3];

  stringValue4 = [(NSDecimalNumber *)self->_interestYTD stringValue];
  [v3 appendFormat:@"interestYTD: '%@'; ", stringValue4];

  stringValue5 = [(NSDecimalNumber *)self->_interestTotal stringValue];
  [v3 appendFormat:@"interestTotal: '%@'; ", stringValue5];

  stringValue6 = [(NSDecimalNumber *)self->_apy stringValue];
  [v3 appendFormat:@"apy: '%@'; ", stringValue6];

  if (self->_hasWithdrawalLimit)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v3 appendFormat:@"hasWithdrawalLimit: '%@'; ", v10];
  [v3 appendFormat:@"_withdrawalsRemaining: '%ld'; ", self->_withdrawalsRemaining];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKSavingsAccountSummary allocWithZone:](PKSavingsAccountSummary init];
  v6 = [(NSDecimalNumber *)self->_currentBalance copyWithZone:zone];
  currentBalance = v5->_currentBalance;
  v5->_currentBalance = v6;

  v8 = [(NSDecimalNumber *)self->_availableBalance copyWithZone:zone];
  availableBalance = v5->_availableBalance;
  v5->_availableBalance = v8;

  v10 = [(NSDecimalNumber *)self->_pendingBalance copyWithZone:zone];
  pendingBalance = v5->_pendingBalance;
  v5->_pendingBalance = v10;

  v12 = [(NSDecimalNumber *)self->_interestYTD copyWithZone:zone];
  interestYTD = v5->_interestYTD;
  v5->_interestYTD = v12;

  v14 = [(NSDecimalNumber *)self->_interestTotal copyWithZone:zone];
  interestTotal = v5->_interestTotal;
  v5->_interestTotal = v14;

  v16 = [(NSDecimalNumber *)self->_apy copyWithZone:zone];
  apy = v5->_apy;
  v5->_apy = v16;

  v5->_hasWithdrawalLimit = self->_hasWithdrawalLimit;
  v5->_withdrawalsRemaining = self->_withdrawalsRemaining;
  return v5;
}

@end