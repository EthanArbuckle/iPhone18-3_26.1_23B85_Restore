@interface FHPaymentRingSuggestionRequest
- (BOOL)isEqual:(id)a3;
- (FHPaymentRingSuggestionRequest)initWithcurrentStatement:(id)a3 previousStatement:(id)a4 previousStatementPaymentsSum:(id)a5 currentStatementPaymentsSum:(id)a6 statementPurchasesSum:(id)a7 merchantCategoryTransactionSums:(id)a8 paymentDetails:(id)a9;
- (id)description;
- (unint64_t)hash;
@end

@implementation FHPaymentRingSuggestionRequest

- (FHPaymentRingSuggestionRequest)initWithcurrentStatement:(id)a3 previousStatement:(id)a4 previousStatementPaymentsSum:(id)a5 currentStatementPaymentsSum:(id)a6 statementPurchasesSum:(id)a7 merchantCategoryTransactionSums:(id)a8 paymentDetails:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = FHPaymentRingSuggestionRequest;
  v18 = [(FHPaymentRingSuggestionRequest *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_currentStatement, a3);
    objc_storeStrong(&v19->_previousStatement, a4);
    objc_storeStrong(&v19->_previousStatementPaymentsSum, a5);
    objc_storeStrong(&v19->_currentStatementPaymentsSum, a6);
    objc_storeStrong(&v19->_statementPurchasesSum, a7);
    objc_storeStrong(&v19->_merchantCategoryTransactionSums, a8);
    objc_storeStrong(&v19->_paymentDetails, a9);
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [(FHPaymentRingSuggestionRequest *)self currentStatement];
  v4 = [v3 hash];

  v5 = [(FHPaymentRingSuggestionRequest *)self previousStatement];
  v6 = 17 * (17 * v4 + [v5 hash]);

  v7 = [(FHPaymentRingSuggestionRequest *)self previousStatementPaymentsSum];
  v8 = 17 * (v6 + [v7 hash]);

  v9 = [(FHPaymentRingSuggestionRequest *)self currentStatementPaymentsSum];
  v10 = 17 * (v8 + [v9 hash]);

  v11 = [(FHPaymentRingSuggestionRequest *)self statementPurchasesSum];
  v12 = 17 * (v10 + [v11 hash]);

  v13 = [(FHPaymentRingSuggestionRequest *)self merchantCategoryTransactionSums];
  v14 = 17 * (v12 + [v13 hash]);

  v15 = [(FHPaymentRingSuggestionRequest *)self paymentDetails];
  v16 = [v15 hash] + 410338673;

  return v14 + v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v17 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(FHPaymentRingSuggestionRequest *)self currentStatement];
    v7 = [(FHPaymentRingSuggestionRequest *)v5 currentStatement];
    if ([v6 isEqual:v7])
    {
      v8 = [(FHPaymentRingSuggestionRequest *)self previousStatement];
      v9 = [(FHPaymentRingSuggestionRequest *)v5 previousStatement];
      if ([v8 isEqual:v9])
      {
        v10 = [(FHPaymentRingSuggestionRequest *)self previousStatementPaymentsSum];
        v11 = [(FHPaymentRingSuggestionRequest *)v5 previousStatementPaymentsSum];
        if ([v10 isEqual:v11])
        {
          v12 = [(FHPaymentRingSuggestionRequest *)self currentStatementPaymentsSum];
          v13 = [(FHPaymentRingSuggestionRequest *)v5 currentStatementPaymentsSum];
          if ([v12 isEqual:v13])
          {
            v23 = v12;
            v14 = [(FHPaymentRingSuggestionRequest *)self statementPurchasesSum];
            [(FHPaymentRingSuggestionRequest *)v5 statementPurchasesSum];
            v22 = v24 = v14;
            if ([v14 isEqual:?])
            {
              v15 = [(FHPaymentRingSuggestionRequest *)self merchantCategoryTransactionSums];
              v20 = [(FHPaymentRingSuggestionRequest *)v5 merchantCategoryTransactionSums];
              v21 = v15;
              if ([v15 isEqual:?])
              {
                v16 = [(FHPaymentRingSuggestionRequest *)self paymentDetails];
                v19 = [(FHPaymentRingSuggestionRequest *)v5 paymentDetails];
                v17 = [v16 isEqual:v19];
              }

              else
              {
                v17 = 0;
              }

              v12 = v23;
            }

            else
            {
              v17 = 0;
              v12 = v23;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"currentStatement: '%@'; ", self->_currentStatement];
  [v3 appendFormat:@"previousStatement: '%@'; ", self->_previousStatement];
  [v3 appendFormat:@"previousStatementPaymentsSum: '%@'; ", self->_previousStatementPaymentsSum];
  [v3 appendFormat:@"currentStatementPaymentsSum: '%@'; ", self->_currentStatementPaymentsSum];
  [v3 appendFormat:@"statementPurchasesSum: '%@'; ", self->_statementPurchasesSum];
  [v3 appendFormat:@"merchantCategoryTransactionSums: '%@'; ", self->_merchantCategoryTransactionSums];
  [v3 appendFormat:@"paymentDetails: '%@'; ", self->_paymentDetails];
  [v3 appendFormat:@">"];

  return v3;
}

@end