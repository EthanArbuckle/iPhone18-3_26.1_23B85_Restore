@interface FHTransactionDetailedCategoryAggregateRecord
- (BOOL)isEqual:(id)equal;
- (FHTransactionDetailedCategoryAggregateRecord)initWithCoder:(id)coder;
- (FHTransactionDetailedCategoryAggregateRecord)initWithMapsCategory:(id)category amountSpent:(id)spent countryCode:(id)code transactionCount:(unint64_t)count regularTransactionRatio:(double)ratio;
- (id)description;
- (unint64_t)hash;
- (void)addRecord:(id)record;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHTransactionDetailedCategoryAggregateRecord

- (FHTransactionDetailedCategoryAggregateRecord)initWithMapsCategory:(id)category amountSpent:(id)spent countryCode:(id)code transactionCount:(unint64_t)count regularTransactionRatio:(double)ratio
{
  categoryCopy = category;
  spentCopy = spent;
  codeCopy = code;
  v19.receiver = self;
  v19.super_class = FHTransactionDetailedCategoryAggregateRecord;
  v16 = [(FHTransactionDetailedCategoryAggregateRecord *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_mapsCategory, category);
    objc_storeStrong(&v17->_amountSpent, spent);
    objc_storeStrong(&v17->_countryCode, code);
    v17->_transactionCount = count;
    v17->_regularTransactionRatio = ratio;
  }

  return v17;
}

- (void)addRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mapsCategory = self->_mapsCategory;
      mapsCategory = [recordCopy mapsCategory];
      LODWORD(mapsCategory) = [(NSString *)mapsCategory isEqualToString:mapsCategory];

      if (mapsCategory)
      {
        amountSpent = self->_amountSpent;
        amountSpent = [recordCopy amountSpent];
        v8 = [(NSDecimalNumber *)amountSpent decimalNumberByAdding:amountSpent];
        [(FHTransactionDetailedCategoryAggregateRecord *)self setAmountSpent:v8];

        regularTransactionRatio = self->_regularTransactionRatio;
        transactionCount = self->_transactionCount;
        transactionCount = [recordCopy transactionCount];
        [recordCopy regularTransactionRatio];
        -[FHTransactionDetailedCategoryAggregateRecord setRegularTransactionRatio:](self, "setRegularTransactionRatio:", (v12 * transactionCount + transactionCount * regularTransactionRatio) / ([recordCopy transactionCount] + self->_transactionCount));
        -[FHTransactionDetailedCategoryAggregateRecord setTransactionCount:](self, "setTransactionCount:", [recordCopy transactionCount] + self->_transactionCount);
        [(FHTransactionDetailedCategoryAggregateRecord *)self setCountryCode:0];
      }
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    mapsCategory = self->_mapsCategory;
    mapsCategory = [(FHTransactionDetailedCategoryAggregateRecord *)v5 mapsCategory];
    if ([(NSString *)mapsCategory isEqualToString:mapsCategory])
    {
      amountSpent = self->_amountSpent;
      amountSpent = [(FHTransactionDetailedCategoryAggregateRecord *)v5 amountSpent];
      if ([(NSDecimalNumber *)amountSpent isEqualToNumber:amountSpent])
      {
        countryCode = self->_countryCode;
        countryCode = [(FHTransactionDetailedCategoryAggregateRecord *)v5 countryCode];
        if ([(NSString *)countryCode isEqualToString:countryCode]&& (transactionCount = self->_transactionCount, transactionCount == [(FHTransactionDetailedCategoryAggregateRecord *)v5 transactionCount]))
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

- (void)encodeWithCoder:(id)coder
{
  mapsCategory = self->_mapsCategory;
  coderCopy = coder;
  [coderCopy encodeObject:mapsCategory forKey:@"mapsCategory"];
  [coderCopy encodeObject:self->_amountSpent forKey:@"amountSpent"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeInteger:self->_transactionCount forKey:@"transactionCount"];
  [coderCopy encodeDouble:@"regularTransactionRatio" forKey:self->_regularTransactionRatio];
}

- (FHTransactionDetailedCategoryAggregateRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = FHTransactionDetailedCategoryAggregateRecord;
  v5 = [(FHTransactionDetailedCategoryAggregateRecord *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapsCategory"];
    mapsCategory = v5->_mapsCategory;
    v5->_mapsCategory = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amountSpent"];
    amountSpent = v5->_amountSpent;
    v5->_amountSpent = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v5->_transactionCount = [coderCopy decodeIntegerForKey:@"transactionCount"];
    [coderCopy decodeDoubleForKey:@"regularTransactionRatio"];
    v5->_regularTransactionRatio = v12;
  }

  return v5;
}

@end