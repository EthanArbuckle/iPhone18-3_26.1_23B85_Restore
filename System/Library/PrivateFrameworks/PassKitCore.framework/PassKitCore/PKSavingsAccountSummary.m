@interface PKSavingsAccountSummary
- (BOOL)isEqual:(id)a3;
- (NSString)formattedAPY;
- (PKSavingsAccountSummary)init;
- (PKSavingsAccountSummary)initWithCoder:(id)a3;
- (PKSavingsAccountSummary)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (PKSavingsAccountSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PKSavingsAccountSummary *)self init];
  if (v5)
  {
    v6 = [v4 PKDecimalNumberFromStringForKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v6;

    v8 = [v4 PKDecimalNumberFromStringForKey:@"availableBalance"];
    availableBalance = v5->_availableBalance;
    v5->_availableBalance = v8;

    v10 = [v4 PKDecimalNumberFromStringForKey:@"pendingBalance"];
    pendingBalance = v5->_pendingBalance;
    v5->_pendingBalance = v10;

    v12 = [v4 PKDecimalNumberFromStringForKey:@"interestYTD"];
    interestYTD = v5->_interestYTD;
    v5->_interestYTD = v12;

    v14 = [v4 PKDecimalNumberFromStringForKey:@"interestTotal"];
    interestTotal = v5->_interestTotal;
    v5->_interestTotal = v14;

    v16 = [v4 PKDecimalNumberFromStringForKey:@"apy"];
    apy = v5->_apy;
    v5->_apy = v16;

    v5->_hasWithdrawalLimit = [v4 PKBoolForKey:@"hasWithdrawalLimit"];
    v5->_withdrawalsRemaining = [v4 PKIntegerForKey:@"withdrawalsRemaining"];
  }

  return v5;
}

- (NSString)formattedAPY
{
  if (self->_apy)
  {
    v3 = [(PKSavingsAccountSummary *)self apyFormatter];
    v4 = [v3 stringFromNumber:self->_apy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKSavingsAccountSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSavingsAccountSummary *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"availableBalance"];
    availableBalance = v5->_availableBalance;
    v5->_availableBalance = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pendingBalance"];
    pendingBalance = v5->_pendingBalance;
    v5->_pendingBalance = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interestYTD"];
    interestYTD = v5->_interestYTD;
    v5->_interestYTD = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interestTotal"];
    interestTotal = v5->_interestTotal;
    v5->_interestTotal = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"apy"];
    apy = v5->_apy;
    v5->_apy = v16;

    v5->_hasWithdrawalLimit = [v4 decodeBoolForKey:@"hasWithdrawalLimit"];
    v5->_withdrawalsRemaining = [v4 decodeIntegerForKey:@"withdrawalsRemaining"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  currentBalance = self->_currentBalance;
  v5 = a3;
  [v5 encodeObject:currentBalance forKey:@"currentBalance"];
  [v5 encodeObject:self->_availableBalance forKey:@"availableBalance"];
  [v5 encodeObject:self->_pendingBalance forKey:@"pendingBalance"];
  [v5 encodeObject:self->_interestYTD forKey:@"interestYTD"];
  [v5 encodeObject:self->_interestTotal forKey:@"interestTotal"];
  [v5 encodeObject:self->_apy forKey:@"apy"];
  [v5 encodeBool:self->_hasWithdrawalLimit forKey:@"hasWithdrawalLimit"];
  [v5 encodeInteger:self->_withdrawalsRemaining forKey:@"withdrawalsRemaining"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  currentBalance = self->_currentBalance;
  v6 = v4[3];
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
  v8 = v4[4];
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
  v10 = v4[5];
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
  v12 = v4[6];
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
  v14 = v4[7];
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
  v16 = v4[8];
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
  if (self->_hasWithdrawalLimit != *(v4 + 16))
  {
    goto LABEL_34;
  }

  v17 = self->_withdrawalsRemaining == v4[9];
LABEL_35:

  return v17;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_currentBalance];
  [v3 safelyAddObject:self->_availableBalance];
  [v3 safelyAddObject:self->_pendingBalance];
  [v3 safelyAddObject:self->_interestYTD];
  [v3 safelyAddObject:self->_interestTotal];
  [v3 safelyAddObject:self->_apy];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_hasWithdrawalLimit - v4 + 32 * v4;
  v6 = self->_withdrawalsRemaining - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDecimalNumber *)self->_currentBalance stringValue];
  [v3 appendFormat:@"currentBalance: '%@'; ", v4];

  v5 = [(NSDecimalNumber *)self->_availableBalance stringValue];
  [v3 appendFormat:@"availableBalance: '%@'; ", v5];

  v6 = [(NSDecimalNumber *)self->_pendingBalance stringValue];
  [v3 appendFormat:@"pendingBalance: '%@'; ", v6];

  v7 = [(NSDecimalNumber *)self->_interestYTD stringValue];
  [v3 appendFormat:@"interestYTD: '%@'; ", v7];

  v8 = [(NSDecimalNumber *)self->_interestTotal stringValue];
  [v3 appendFormat:@"interestTotal: '%@'; ", v8];

  v9 = [(NSDecimalNumber *)self->_apy stringValue];
  [v3 appendFormat:@"apy: '%@'; ", v9];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKSavingsAccountSummary allocWithZone:](PKSavingsAccountSummary init];
  v6 = [(NSDecimalNumber *)self->_currentBalance copyWithZone:a3];
  currentBalance = v5->_currentBalance;
  v5->_currentBalance = v6;

  v8 = [(NSDecimalNumber *)self->_availableBalance copyWithZone:a3];
  availableBalance = v5->_availableBalance;
  v5->_availableBalance = v8;

  v10 = [(NSDecimalNumber *)self->_pendingBalance copyWithZone:a3];
  pendingBalance = v5->_pendingBalance;
  v5->_pendingBalance = v10;

  v12 = [(NSDecimalNumber *)self->_interestYTD copyWithZone:a3];
  interestYTD = v5->_interestYTD;
  v5->_interestYTD = v12;

  v14 = [(NSDecimalNumber *)self->_interestTotal copyWithZone:a3];
  interestTotal = v5->_interestTotal;
  v5->_interestTotal = v14;

  v16 = [(NSDecimalNumber *)self->_apy copyWithZone:a3];
  apy = v5->_apy;
  v5->_apy = v16;

  v5->_hasWithdrawalLimit = self->_hasWithdrawalLimit;
  v5->_withdrawalsRemaining = self->_withdrawalsRemaining;
  return v5;
}

@end