@interface FHPaymentRingData
- (BOOL)isEqual:(id)equal;
- (FHPaymentRingData)initWithTransactionDate:(id)date transactionAmount:(id)amount paymentAmountCategory:(unint64_t)category;
- (id)description;
- (unint64_t)hash;
@end

@implementation FHPaymentRingData

- (FHPaymentRingData)initWithTransactionDate:(id)date transactionAmount:(id)amount paymentAmountCategory:(unint64_t)category
{
  dateCopy = date;
  amountCopy = amount;
  v14.receiver = self;
  v14.super_class = FHPaymentRingData;
  v11 = [(FHPaymentRingData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_transactionDate, date);
    objc_storeStrong(&v12->_transactionAmount, amount);
    v12->_paymentAmountCategory = category;
  }

  return v12;
}

- (unint64_t)hash
{
  transactionAmount = [(FHPaymentRingData *)self transactionAmount];
  v4 = [transactionAmount hash];

  transactionDate = [(FHPaymentRingData *)self transactionDate];
  v6 = 17 * (17 * v4 + [transactionDate hash]);

  return v6 + [(FHPaymentRingData *)self paymentAmountCategory]+ 4913;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    transactionDate = [(FHPaymentRingData *)self transactionDate];
    transactionDate2 = [(FHPaymentRingData *)v5 transactionDate];
    if ([transactionDate isEqual:transactionDate2])
    {
      transactionAmount = [(FHPaymentRingData *)self transactionAmount];
      transactionAmount2 = [(FHPaymentRingData *)v5 transactionAmount];
      if (transactionAmount == transactionAmount2)
      {
        paymentAmountCategory = [(FHPaymentRingData *)self paymentAmountCategory];
        v10 = paymentAmountCategory == [(FHPaymentRingData *)v5 paymentAmountCategory];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"transactionDate: '%@'; ", self->_transactionDate];
  paymentAmountCategory = self->_paymentAmountCategory;
  v5 = FHPaymentRingSuggestionCategoryToString();
  [v3 appendFormat:@"paymentAmountCategory: '%@'; ", v5];

  [v3 appendFormat:@"transactionAmount: '%@'; ", self->_transactionAmount];
  [v3 appendFormat:@">"];

  return v3;
}

@end