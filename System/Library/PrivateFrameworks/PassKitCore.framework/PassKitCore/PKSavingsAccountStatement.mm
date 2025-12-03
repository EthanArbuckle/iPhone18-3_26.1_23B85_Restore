@interface PKSavingsAccountStatement
- (BOOL)isEqual:(id)equal;
- (PKSavingsAccountStatement)initWithCoder:(id)coder;
- (PKSavingsAccountStatement)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSavingsAccountStatement

- (PKSavingsAccountStatement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = PKSavingsAccountStatement;
  v5 = [(PKSavingsAccountStatement *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [dictionaryCopy PKDateForKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v10;

    v12 = [dictionaryCopy PKDateForKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v12;

    v14 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"openingBalance"];
    openingBalance = v5->_openingBalance;
    v5->_openingBalance = v14;

    v16 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"closingBalance"];
    closingBalance = v5->_closingBalance;
    v5->_closingBalance = v16;

    v18 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"interestEarned"];
    interestEarned = v5->_interestEarned;
    v5->_interestEarned = v18;

    v20 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"totalDeposits"];
    totalDeposits = v5->_totalDeposits;
    v5->_totalDeposits = v20;

    v22 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"totalDailyCashDeposits"];
    totalDailyCashDeposits = v5->_totalDailyCashDeposits;
    v5->_totalDailyCashDeposits = v22;

    v24 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"totalWithdrawn"];
    totalWithdrawn = v5->_totalWithdrawn;
    v5->_totalWithdrawn = v24;

    v26 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"apy"];
    apy = v5->_apy;
    v5->_apy = v26;

    v5->_statementPeriodDays = [dictionaryCopy PKIntegerForKey:@"statementPeriodDays"];
  }

  return v5;
}

- (PKSavingsAccountStatement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = PKSavingsAccountStatement;
  v5 = [(PKSavingsAccountStatement *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"openingBalance"];
    openingBalance = v5->_openingBalance;
    v5->_openingBalance = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"closingBalance"];
    closingBalance = v5->_closingBalance;
    v5->_closingBalance = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interestEarned"];
    interestEarned = v5->_interestEarned;
    v5->_interestEarned = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDeposits"];
    totalDeposits = v5->_totalDeposits;
    v5->_totalDeposits = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDailyCashDeposits"];
    totalDailyCashDeposits = v5->_totalDailyCashDeposits;
    v5->_totalDailyCashDeposits = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalWithdrawn"];
    totalWithdrawn = v5->_totalWithdrawn;
    v5->_totalWithdrawn = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"apy"];
    apy = v5->_apy;
    v5->_apy = v26;

    v5->_statementPeriodDays = [coderCopy decodeIntegerForKey:@"statementPeriodDays"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_openingDate forKey:@"openingDate"];
  [coderCopy encodeObject:self->_closingDate forKey:@"closingDate"];
  [coderCopy encodeObject:self->_openingBalance forKey:@"openingBalance"];
  [coderCopy encodeObject:self->_closingBalance forKey:@"closingBalance"];
  [coderCopy encodeObject:self->_interestEarned forKey:@"interestEarned"];
  [coderCopy encodeObject:self->_totalDeposits forKey:@"totalDeposits"];
  [coderCopy encodeObject:self->_totalDailyCashDeposits forKey:@"totalDailyCashDeposits"];
  [coderCopy encodeObject:self->_totalWithdrawn forKey:@"totalWithdrawn"];
  [coderCopy encodeObject:self->_apy forKey:@"apy"];
  [coderCopy encodeInteger:self->_statementPeriodDays forKey:@"statementPeriodDays"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_57;
  }

  identifier = self->_identifier;
  v6 = equalCopy[1];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_57;
  }

  currencyCode = self->_currencyCode;
  v8 = equalCopy[2];
  if (currencyCode && v8)
  {
    if (([(NSString *)currencyCode isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (currencyCode != v8)
  {
    goto LABEL_57;
  }

  openingDate = self->_openingDate;
  v10 = equalCopy[3];
  if (openingDate && v10)
  {
    if (([(NSDate *)openingDate isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (openingDate != v10)
  {
    goto LABEL_57;
  }

  closingDate = self->_closingDate;
  v12 = equalCopy[4];
  if (closingDate && v12)
  {
    if (([(NSDate *)closingDate isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (closingDate != v12)
  {
    goto LABEL_57;
  }

  openingBalance = self->_openingBalance;
  v14 = equalCopy[5];
  if (openingBalance && v14)
  {
    if (([(NSDecimalNumber *)openingBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (openingBalance != v14)
  {
    goto LABEL_57;
  }

  closingBalance = self->_closingBalance;
  v16 = equalCopy[6];
  if (closingBalance && v16)
  {
    if (([(NSDecimalNumber *)closingBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (closingBalance != v16)
  {
    goto LABEL_57;
  }

  interestEarned = self->_interestEarned;
  v18 = equalCopy[7];
  if (interestEarned && v18)
  {
    if (([(NSDecimalNumber *)interestEarned isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (interestEarned != v18)
  {
    goto LABEL_57;
  }

  totalDeposits = self->_totalDeposits;
  v20 = equalCopy[8];
  if (totalDeposits && v20)
  {
    if (([(NSDecimalNumber *)totalDeposits isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (totalDeposits != v20)
  {
    goto LABEL_57;
  }

  totalDailyCashDeposits = self->_totalDailyCashDeposits;
  v22 = equalCopy[9];
  if (totalDailyCashDeposits && v22)
  {
    if (([(NSDecimalNumber *)totalDailyCashDeposits isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (totalDailyCashDeposits != v22)
  {
    goto LABEL_57;
  }

  totalWithdrawn = self->_totalWithdrawn;
  v24 = equalCopy[10];
  if (totalWithdrawn && v24)
  {
    if (([(NSDecimalNumber *)totalWithdrawn isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (totalWithdrawn != v24)
  {
    goto LABEL_57;
  }

  apy = self->_apy;
  v26 = equalCopy[11];
  if (!apy || !v26)
  {
    if (apy == v26)
    {
      goto LABEL_55;
    }

LABEL_57:
    v27 = 0;
    goto LABEL_58;
  }

  if (([(NSDecimalNumber *)apy isEqual:?]& 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_55:
  v27 = self->_statementPeriodDays == equalCopy[12];
LABEL_58:

  return v27;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_currencyCode];
  [array safelyAddObject:self->_openingDate];
  [array safelyAddObject:self->_closingDate];
  [array safelyAddObject:self->_openingBalance];
  [array safelyAddObject:self->_closingBalance];
  [array safelyAddObject:self->_interestEarned];
  [array safelyAddObject:self->_totalDeposits];
  [array safelyAddObject:self->_totalDailyCashDeposits];
  [array safelyAddObject:self->_totalWithdrawn];
  [array safelyAddObject:self->_apy];
  v4 = PKCombinedHash(17, array);
  v5 = self->_statementPeriodDays - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  v4 = [(NSDate *)self->_openingDate description];
  [v3 appendFormat:@"openingDate: '%@'; ", v4];

  v5 = [(NSDate *)self->_closingDate description];
  [v3 appendFormat:@"closingDate: '%@'; ", v5];

  stringValue = [(NSDecimalNumber *)self->_openingBalance stringValue];
  [v3 appendFormat:@"openingBalance: '%@'; ", stringValue];

  stringValue2 = [(NSDecimalNumber *)self->_closingBalance stringValue];
  [v3 appendFormat:@"closingBalance: '%@'; ", stringValue2];

  stringValue3 = [(NSDecimalNumber *)self->_interestEarned stringValue];
  [v3 appendFormat:@"interestEarned: '%@'; ", stringValue3];

  stringValue4 = [(NSDecimalNumber *)self->_totalDeposits stringValue];
  [v3 appendFormat:@"totalDeposits: '%@'; ", stringValue4];

  stringValue5 = [(NSDecimalNumber *)self->_totalDailyCashDeposits stringValue];
  [v3 appendFormat:@"totalDailyCashDeposits: '%@'; ", stringValue5];

  stringValue6 = [(NSDecimalNumber *)self->_totalWithdrawn stringValue];
  [v3 appendFormat:@"totalWithdrawn: '%@'; ", stringValue6];

  stringValue7 = [(NSDecimalNumber *)self->_apy stringValue];
  [v3 appendFormat:@"apy: '%@'; ", stringValue7];

  [v3 appendFormat:@"statementPeriodDays: '%li'; ", self->_statementPeriodDays];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKSavingsAccountStatement allocWithZone:](PKSavingsAccountStatement init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_currencyCode copyWithZone:zone];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v8;

  v10 = [(NSDate *)self->_openingDate copyWithZone:zone];
  openingDate = v5->_openingDate;
  v5->_openingDate = v10;

  v12 = [(NSDate *)self->_openingDate copyWithZone:zone];
  openingBalance = v5->_openingBalance;
  v5->_openingBalance = v12;

  v14 = [(NSDecimalNumber *)self->_closingBalance copyWithZone:zone];
  closingBalance = v5->_closingBalance;
  v5->_closingBalance = v14;

  v16 = [(NSDecimalNumber *)self->_interestEarned copyWithZone:zone];
  interestEarned = v5->_interestEarned;
  v5->_interestEarned = v16;

  v18 = [(NSDecimalNumber *)self->_totalDeposits copyWithZone:zone];
  totalDeposits = v5->_totalDeposits;
  v5->_totalDeposits = v18;

  v20 = [(NSDecimalNumber *)self->_totalDailyCashDeposits copyWithZone:zone];
  totalDailyCashDeposits = v5->_totalDailyCashDeposits;
  v5->_totalDailyCashDeposits = v20;

  v22 = [(NSDecimalNumber *)self->_totalWithdrawn copyWithZone:zone];
  totalWithdrawn = v5->_totalWithdrawn;
  v5->_totalWithdrawn = v22;

  v24 = [(NSDecimalNumber *)self->_apy copyWithZone:zone];
  apy = v5->_apy;
  v5->_apy = v24;

  v5->_statementPeriodDays = self->_statementPeriodDays;
  return v5;
}

@end