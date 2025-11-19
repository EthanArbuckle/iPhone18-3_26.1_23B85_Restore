@interface FHTransactionAdditiveGroup
- (FHTransactionAdditiveGroup)initWithAggSimilarityScore:(id)a3 latestTransactionDate:(id)a4 groupIdentifier:(id)a5 transactionIds:(id)a6 groupingMethod:(unint64_t)a7 creditDebitType:(unint64_t)a8 category:(id)a9;
- (FHTransactionAdditiveGroup)initWithCoder:(id)a3;
- (void)addAggSimilarityScore:(double)a3;
- (void)addTransactionId:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHTransactionAdditiveGroup

- (FHTransactionAdditiveGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FHTransactionAdditiveGroup;
  v5 = [(FHTransactionGroup *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"similarityScore"];
    aggSimilarityScore = v5->_aggSimilarityScore;
    v5->_aggSimilarityScore = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestTransactionDate"];
    latestTransactionDate = v5->_latestTransactionDate;
    v5->_latestTransactionDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FHTransactionAdditiveGroup;
  v4 = a3;
  [(FHTransactionGroup *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_aggSimilarityScore forKey:{@"similarityScore", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_latestTransactionDate forKey:@"latestTransactionDate"];
}

- (FHTransactionAdditiveGroup)initWithAggSimilarityScore:(id)a3 latestTransactionDate:(id)a4 groupIdentifier:(id)a5 transactionIds:(id)a6 groupingMethod:(unint64_t)a7 creditDebitType:(unint64_t)a8 category:(id)a9
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = FHTransactionAdditiveGroup;
  v17 = [(FHTransactionGroup *)&v20 initWithGroupIdentifier:a5 transactionIds:a6 groupingMethod:a7 creditDebitType:a8 category:a9];
  v18 = v17;
  if (v17)
  {
    [(FHTransactionAdditiveGroup *)v17 setAggSimilarityScore:v15];
    [(FHTransactionAdditiveGroup *)v18 setLatestTransactionDate:v16];
  }

  return v18;
}

- (void)addTransactionId:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(FHTransactionGroup *)self transactionIds];
  v9 = [v6 initWithArray:v7];

  [v9 addObject:v5];
  v8 = [v9 copy];
  [(FHTransactionGroup *)self setTransactionIds:v8];
}

- (void)addAggSimilarityScore:(double)a3
{
  aggSimilarityScore = self->_aggSimilarityScore;
  v5 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:a3];
  v6 = [(NSDecimalNumber *)aggSimilarityScore decimalNumberByAdding:v5];

  [(FHTransactionAdditiveGroup *)self setAggSimilarityScore:v6];
}

@end