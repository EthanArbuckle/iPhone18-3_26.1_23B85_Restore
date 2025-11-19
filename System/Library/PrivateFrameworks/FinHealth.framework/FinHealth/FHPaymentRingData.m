@interface FHPaymentRingData
- (BOOL)isEqual:(id)a3;
- (FHPaymentRingData)initWithTransactionDate:(id)a3 transactionAmount:(id)a4 paymentAmountCategory:(unint64_t)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation FHPaymentRingData

- (FHPaymentRingData)initWithTransactionDate:(id)a3 transactionAmount:(id)a4 paymentAmountCategory:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = FHPaymentRingData;
  v11 = [(FHPaymentRingData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_transactionDate, a3);
    objc_storeStrong(&v12->_transactionAmount, a4);
    v12->_paymentAmountCategory = a5;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(FHPaymentRingData *)self transactionAmount];
  v4 = [v3 hash];

  v5 = [(FHPaymentRingData *)self transactionDate];
  v6 = 17 * (17 * v4 + [v5 hash]);

  return v6 + [(FHPaymentRingData *)self paymentAmountCategory]+ 4913;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(FHPaymentRingData *)self transactionDate];
    v7 = [(FHPaymentRingData *)v5 transactionDate];
    if ([v6 isEqual:v7])
    {
      v8 = [(FHPaymentRingData *)self transactionAmount];
      v9 = [(FHPaymentRingData *)v5 transactionAmount];
      if (v8 == v9)
      {
        v11 = [(FHPaymentRingData *)self paymentAmountCategory];
        v10 = v11 == [(FHPaymentRingData *)v5 paymentAmountCategory];
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