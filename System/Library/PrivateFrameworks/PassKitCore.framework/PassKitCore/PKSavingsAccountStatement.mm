@interface PKSavingsAccountStatement
- (BOOL)isEqual:(id)a3;
- (PKSavingsAccountStatement)initWithCoder:(id)a3;
- (PKSavingsAccountStatement)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSavingsAccountStatement

- (PKSavingsAccountStatement)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKSavingsAccountStatement;
  v5 = [(PKSavingsAccountStatement *)&v29 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [v4 PKDateForKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v10;

    v12 = [v4 PKDateForKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v12;

    v14 = [v4 PKDecimalNumberFromStringForKey:@"openingBalance"];
    openingBalance = v5->_openingBalance;
    v5->_openingBalance = v14;

    v16 = [v4 PKDecimalNumberFromStringForKey:@"closingBalance"];
    closingBalance = v5->_closingBalance;
    v5->_closingBalance = v16;

    v18 = [v4 PKDecimalNumberFromStringForKey:@"interestEarned"];
    interestEarned = v5->_interestEarned;
    v5->_interestEarned = v18;

    v20 = [v4 PKDecimalNumberFromStringForKey:@"totalDeposits"];
    totalDeposits = v5->_totalDeposits;
    v5->_totalDeposits = v20;

    v22 = [v4 PKDecimalNumberFromStringForKey:@"totalDailyCashDeposits"];
    totalDailyCashDeposits = v5->_totalDailyCashDeposits;
    v5->_totalDailyCashDeposits = v22;

    v24 = [v4 PKDecimalNumberFromStringForKey:@"totalWithdrawn"];
    totalWithdrawn = v5->_totalWithdrawn;
    v5->_totalWithdrawn = v24;

    v26 = [v4 PKDecimalNumberFromStringForKey:@"apy"];
    apy = v5->_apy;
    v5->_apy = v26;

    v5->_statementPeriodDays = [v4 PKIntegerForKey:@"statementPeriodDays"];
  }

  return v5;
}

- (PKSavingsAccountStatement)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKSavingsAccountStatement;
  v5 = [(PKSavingsAccountStatement *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"openingBalance"];
    openingBalance = v5->_openingBalance;
    v5->_openingBalance = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"closingBalance"];
    closingBalance = v5->_closingBalance;
    v5->_closingBalance = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interestEarned"];
    interestEarned = v5->_interestEarned;
    v5->_interestEarned = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDeposits"];
    totalDeposits = v5->_totalDeposits;
    v5->_totalDeposits = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDailyCashDeposits"];
    totalDailyCashDeposits = v5->_totalDailyCashDeposits;
    v5->_totalDailyCashDeposits = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalWithdrawn"];
    totalWithdrawn = v5->_totalWithdrawn;
    v5->_totalWithdrawn = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"apy"];
    apy = v5->_apy;
    v5->_apy = v26;

    v5->_statementPeriodDays = [v4 decodeIntegerForKey:@"statementPeriodDays"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_openingDate forKey:@"openingDate"];
  [v5 encodeObject:self->_closingDate forKey:@"closingDate"];
  [v5 encodeObject:self->_openingBalance forKey:@"openingBalance"];
  [v5 encodeObject:self->_closingBalance forKey:@"closingBalance"];
  [v5 encodeObject:self->_interestEarned forKey:@"interestEarned"];
  [v5 encodeObject:self->_totalDeposits forKey:@"totalDeposits"];
  [v5 encodeObject:self->_totalDailyCashDeposits forKey:@"totalDailyCashDeposits"];
  [v5 encodeObject:self->_totalWithdrawn forKey:@"totalWithdrawn"];
  [v5 encodeObject:self->_apy forKey:@"apy"];
  [v5 encodeInteger:self->_statementPeriodDays forKey:@"statementPeriodDays"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_57;
  }

  identifier = self->_identifier;
  v6 = v4[1];
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
  v8 = v4[2];
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
  v10 = v4[3];
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
  v12 = v4[4];
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
  v14 = v4[5];
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
  v16 = v4[6];
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
  v18 = v4[7];
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
  v20 = v4[8];
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
  v22 = v4[9];
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
  v24 = v4[10];
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
  v26 = v4[11];
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
  v27 = self->_statementPeriodDays == v4[12];
LABEL_58:

  return v27;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_openingDate];
  [v3 safelyAddObject:self->_closingDate];
  [v3 safelyAddObject:self->_openingBalance];
  [v3 safelyAddObject:self->_closingBalance];
  [v3 safelyAddObject:self->_interestEarned];
  [v3 safelyAddObject:self->_totalDeposits];
  [v3 safelyAddObject:self->_totalDailyCashDeposits];
  [v3 safelyAddObject:self->_totalWithdrawn];
  [v3 safelyAddObject:self->_apy];
  v4 = PKCombinedHash(17, v3);
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

  v6 = [(NSDecimalNumber *)self->_openingBalance stringValue];
  [v3 appendFormat:@"openingBalance: '%@'; ", v6];

  v7 = [(NSDecimalNumber *)self->_closingBalance stringValue];
  [v3 appendFormat:@"closingBalance: '%@'; ", v7];

  v8 = [(NSDecimalNumber *)self->_interestEarned stringValue];
  [v3 appendFormat:@"interestEarned: '%@'; ", v8];

  v9 = [(NSDecimalNumber *)self->_totalDeposits stringValue];
  [v3 appendFormat:@"totalDeposits: '%@'; ", v9];

  v10 = [(NSDecimalNumber *)self->_totalDailyCashDeposits stringValue];
  [v3 appendFormat:@"totalDailyCashDeposits: '%@'; ", v10];

  v11 = [(NSDecimalNumber *)self->_totalWithdrawn stringValue];
  [v3 appendFormat:@"totalWithdrawn: '%@'; ", v11];

  v12 = [(NSDecimalNumber *)self->_apy stringValue];
  [v3 appendFormat:@"apy: '%@'; ", v12];

  [v3 appendFormat:@"statementPeriodDays: '%li'; ", self->_statementPeriodDays];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKSavingsAccountStatement allocWithZone:](PKSavingsAccountStatement init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_currencyCode copyWithZone:a3];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v8;

  v10 = [(NSDate *)self->_openingDate copyWithZone:a3];
  openingDate = v5->_openingDate;
  v5->_openingDate = v10;

  v12 = [(NSDate *)self->_openingDate copyWithZone:a3];
  openingBalance = v5->_openingBalance;
  v5->_openingBalance = v12;

  v14 = [(NSDecimalNumber *)self->_closingBalance copyWithZone:a3];
  closingBalance = v5->_closingBalance;
  v5->_closingBalance = v14;

  v16 = [(NSDecimalNumber *)self->_interestEarned copyWithZone:a3];
  interestEarned = v5->_interestEarned;
  v5->_interestEarned = v16;

  v18 = [(NSDecimalNumber *)self->_totalDeposits copyWithZone:a3];
  totalDeposits = v5->_totalDeposits;
  v5->_totalDeposits = v18;

  v20 = [(NSDecimalNumber *)self->_totalDailyCashDeposits copyWithZone:a3];
  totalDailyCashDeposits = v5->_totalDailyCashDeposits;
  v5->_totalDailyCashDeposits = v20;

  v22 = [(NSDecimalNumber *)self->_totalWithdrawn copyWithZone:a3];
  totalWithdrawn = v5->_totalWithdrawn;
  v5->_totalWithdrawn = v22;

  v24 = [(NSDecimalNumber *)self->_apy copyWithZone:a3];
  apy = v5->_apy;
  v5->_apy = v24;

  v5->_statementPeriodDays = self->_statementPeriodDays;
  return v5;
}

@end