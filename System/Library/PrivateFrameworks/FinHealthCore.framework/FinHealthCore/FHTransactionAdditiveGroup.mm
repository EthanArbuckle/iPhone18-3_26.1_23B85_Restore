@interface FHTransactionAdditiveGroup
- (FHTransactionAdditiveGroup)initWithAggSimilarityScore:(id)score latestTransactionDate:(id)date groupIdentifier:(id)identifier transactionIds:(id)ids groupingMethod:(unint64_t)method creditDebitType:(unint64_t)type category:(id)category;
- (FHTransactionAdditiveGroup)initWithCoder:(id)coder;
- (void)addAggSimilarityScore:(double)score;
- (void)addTransactionId:(id)id;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHTransactionAdditiveGroup

- (FHTransactionAdditiveGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FHTransactionAdditiveGroup;
  v5 = [(FHTransactionGroup *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"similarityScore"];
    aggSimilarityScore = v5->_aggSimilarityScore;
    v5->_aggSimilarityScore = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestTransactionDate"];
    latestTransactionDate = v5->_latestTransactionDate;
    v5->_latestTransactionDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FHTransactionAdditiveGroup;
  coderCopy = coder;
  [(FHTransactionGroup *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_aggSimilarityScore forKey:{@"similarityScore", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_latestTransactionDate forKey:@"latestTransactionDate"];
}

- (FHTransactionAdditiveGroup)initWithAggSimilarityScore:(id)score latestTransactionDate:(id)date groupIdentifier:(id)identifier transactionIds:(id)ids groupingMethod:(unint64_t)method creditDebitType:(unint64_t)type category:(id)category
{
  scoreCopy = score;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = FHTransactionAdditiveGroup;
  v17 = [(FHTransactionGroup *)&v20 initWithGroupIdentifier:identifier transactionIds:ids groupingMethod:method creditDebitType:type category:category];
  v18 = v17;
  if (v17)
  {
    [(FHTransactionAdditiveGroup *)v17 setAggSimilarityScore:scoreCopy];
    [(FHTransactionAdditiveGroup *)v18 setLatestTransactionDate:dateCopy];
  }

  return v18;
}

- (void)addTransactionId:(id)id
{
  v4 = MEMORY[0x277CBEB18];
  idCopy = id;
  v6 = [v4 alloc];
  transactionIds = [(FHTransactionGroup *)self transactionIds];
  v9 = [v6 initWithArray:transactionIds];

  [v9 addObject:idCopy];
  v8 = [v9 copy];
  [(FHTransactionGroup *)self setTransactionIds:v8];
}

- (void)addAggSimilarityScore:(double)score
{
  aggSimilarityScore = self->_aggSimilarityScore;
  v5 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:score];
  v6 = [(NSDecimalNumber *)aggSimilarityScore decimalNumberByAdding:v5];

  [(FHTransactionAdditiveGroup *)self setAggSimilarityScore:v6];
}

@end