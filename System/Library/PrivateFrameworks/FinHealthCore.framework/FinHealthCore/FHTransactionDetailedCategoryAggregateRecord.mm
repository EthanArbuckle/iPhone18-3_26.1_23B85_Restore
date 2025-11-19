@interface FHTransactionDetailedCategoryAggregateRecord
- (BOOL)isEqual:(id)a3;
- (FHTransactionDetailedCategoryAggregateRecord)initWithCoder:(id)a3;
- (FHTransactionDetailedCategoryAggregateRecord)initWithMapsCategory:(id)a3 amountSpent:(id)a4 countryCode:(id)a5 transactionCount:(unint64_t)a6 regularTransactionRatio:(double)a7;
- (id)description;
- (unint64_t)hash;
- (void)addRecord:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHTransactionDetailedCategoryAggregateRecord

- (FHTransactionDetailedCategoryAggregateRecord)initWithMapsCategory:(id)a3 amountSpent:(id)a4 countryCode:(id)a5 transactionCount:(unint64_t)a6 regularTransactionRatio:(double)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = FHTransactionDetailedCategoryAggregateRecord;
  v16 = [(FHTransactionDetailedCategoryAggregateRecord *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_mapsCategory, a3);
    objc_storeStrong(&v17->_amountSpent, a4);
    objc_storeStrong(&v17->_countryCode, a5);
    v17->_transactionCount = a6;
    v17->_regularTransactionRatio = a7;
  }

  return v17;
}

- (void)addRecord:(id)a3
{
  v13 = a3;
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mapsCategory = self->_mapsCategory;
      v5 = [v13 mapsCategory];
      LODWORD(mapsCategory) = [(NSString *)mapsCategory isEqualToString:v5];

      if (mapsCategory)
      {
        amountSpent = self->_amountSpent;
        v7 = [v13 amountSpent];
        v8 = [(NSDecimalNumber *)amountSpent decimalNumberByAdding:v7];
        [(FHTransactionDetailedCategoryAggregateRecord *)self setAmountSpent:v8];

        regularTransactionRatio = self->_regularTransactionRatio;
        transactionCount = self->_transactionCount;
        v11 = [v13 transactionCount];
        [v13 regularTransactionRatio];
        -[FHTransactionDetailedCategoryAggregateRecord setRegularTransactionRatio:](self, "setRegularTransactionRatio:", (v12 * v11 + transactionCount * regularTransactionRatio) / ([v13 transactionCount] + self->_transactionCount));
        -[FHTransactionDetailedCategoryAggregateRecord setTransactionCount:](self, "setTransactionCount:", [v13 transactionCount] + self->_transactionCount);
        [(FHTransactionDetailedCategoryAggregateRecord *)self setCountryCode:0];
      }
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v15 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    mapsCategory = self->_mapsCategory;
    v7 = [(FHTransactionDetailedCategoryAggregateRecord *)v5 mapsCategory];
    if ([(NSString *)mapsCategory isEqualToString:v7])
    {
      amountSpent = self->_amountSpent;
      v9 = [(FHTransactionDetailedCategoryAggregateRecord *)v5 amountSpent];
      if ([(NSDecimalNumber *)amountSpent isEqualToNumber:v9])
      {
        countryCode = self->_countryCode;
        v11 = [(FHTransactionDetailedCategoryAggregateRecord *)v5 countryCode];
        if ([(NSString *)countryCode isEqualToString:v11]&& (transactionCount = self->_transactionCount, transactionCount == [(FHTransactionDetailedCategoryAggregateRecord *)v5 transactionCount]))
        {
          regularTransactionRatio = self->_regularTransactionRatio;
          [(FHTransactionDetailedCategoryAggregateRecord *)v5 regularTransactionRatio];
          v15 = regularTransactionRatio == v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_mapsCategory hash];
  v4 = [(NSDecimalNumber *)self->_amountSpent hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_countryCode hash];
  return (self->_regularTransactionRatio + (31 * (self->_transactionCount - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4)) + 28629151));
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"mapsCategory", self->_mapsCategory];
  [v3 appendFormat:@"%@: '%@'; ", @"amountSpent", self->_amountSpent];
  [v3 appendFormat:@"%@: '%@'; ", @"countryCode", self->_countryCode];
  [v3 appendFormat:@"%@: '%lu'; ", @"transactionCount", self->_transactionCount];
  [v3 appendFormat:@"%@: '%f'; ", @"regularTransactionRatio", *&self->_regularTransactionRatio];
  [v3 appendFormat:@">"];
  v4 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  mapsCategory = self->_mapsCategory;
  v5 = a3;
  [v5 encodeObject:mapsCategory forKey:@"mapsCategory"];
  [v5 encodeObject:self->_amountSpent forKey:@"amountSpent"];
  [v5 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v5 encodeInteger:self->_transactionCount forKey:@"transactionCount"];
  [v5 encodeDouble:@"regularTransactionRatio" forKey:self->_regularTransactionRatio];
}

- (FHTransactionDetailedCategoryAggregateRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FHTransactionDetailedCategoryAggregateRecord;
  v5 = [(FHTransactionDetailedCategoryAggregateRecord *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapsCategory"];
    mapsCategory = v5->_mapsCategory;
    v5->_mapsCategory = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amountSpent"];
    amountSpent = v5->_amountSpent;
    v5->_amountSpent = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v5->_transactionCount = [v4 decodeIntegerForKey:@"transactionCount"];
    [v4 decodeDoubleForKey:@"regularTransactionRatio"];
    v5->_regularTransactionRatio = v12;
  }

  return v5;
}

@end