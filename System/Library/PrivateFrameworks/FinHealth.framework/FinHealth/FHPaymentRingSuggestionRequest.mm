@interface FHPaymentRingSuggestionRequest
- (BOOL)isEqual:(id)equal;
- (FHPaymentRingSuggestionRequest)initWithcurrentStatement:(id)statement previousStatement:(id)previousStatement previousStatementPaymentsSum:(id)sum currentStatementPaymentsSum:(id)paymentsSum statementPurchasesSum:(id)purchasesSum merchantCategoryTransactionSums:(id)sums paymentDetails:(id)details;
- (id)description;
- (unint64_t)hash;
@end

@implementation FHPaymentRingSuggestionRequest

- (FHPaymentRingSuggestionRequest)initWithcurrentStatement:(id)statement previousStatement:(id)previousStatement previousStatementPaymentsSum:(id)sum currentStatementPaymentsSum:(id)paymentsSum statementPurchasesSum:(id)purchasesSum merchantCategoryTransactionSums:(id)sums paymentDetails:(id)details
{
  statementCopy = statement;
  previousStatementCopy = previousStatement;
  sumCopy = sum;
  paymentsSumCopy = paymentsSum;
  purchasesSumCopy = purchasesSum;
  sumsCopy = sums;
  detailsCopy = details;
  v26.receiver = self;
  v26.super_class = FHPaymentRingSuggestionRequest;
  v18 = [(FHPaymentRingSuggestionRequest *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_currentStatement, statement);
    objc_storeStrong(&v19->_previousStatement, previousStatement);
    objc_storeStrong(&v19->_previousStatementPaymentsSum, sum);
    objc_storeStrong(&v19->_currentStatementPaymentsSum, paymentsSum);
    objc_storeStrong(&v19->_statementPurchasesSum, purchasesSum);
    objc_storeStrong(&v19->_merchantCategoryTransactionSums, sums);
    objc_storeStrong(&v19->_paymentDetails, details);
  }

  return v19;
}

- (unint64_t)hash
{
  currentStatement = [(FHPaymentRingSuggestionRequest *)self currentStatement];
  v4 = [currentStatement hash];

  previousStatement = [(FHPaymentRingSuggestionRequest *)self previousStatement];
  v6 = 17 * (17 * v4 + [previousStatement hash]);

  previousStatementPaymentsSum = [(FHPaymentRingSuggestionRequest *)self previousStatementPaymentsSum];
  v8 = 17 * (v6 + [previousStatementPaymentsSum hash]);

  currentStatementPaymentsSum = [(FHPaymentRingSuggestionRequest *)self currentStatementPaymentsSum];
  v10 = 17 * (v8 + [currentStatementPaymentsSum hash]);

  statementPurchasesSum = [(FHPaymentRingSuggestionRequest *)self statementPurchasesSum];
  v12 = 17 * (v10 + [statementPurchasesSum hash]);

  merchantCategoryTransactionSums = [(FHPaymentRingSuggestionRequest *)self merchantCategoryTransactionSums];
  v14 = 17 * (v12 + [merchantCategoryTransactionSums hash]);

  paymentDetails = [(FHPaymentRingSuggestionRequest *)self paymentDetails];
  v16 = [paymentDetails hash] + 410338673;

  return v14 + v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    currentStatement = [(FHPaymentRingSuggestionRequest *)self currentStatement];
    currentStatement2 = [(FHPaymentRingSuggestionRequest *)v5 currentStatement];
    if ([currentStatement isEqual:currentStatement2])
    {
      previousStatement = [(FHPaymentRingSuggestionRequest *)self previousStatement];
      previousStatement2 = [(FHPaymentRingSuggestionRequest *)v5 previousStatement];
      if ([previousStatement isEqual:previousStatement2])
      {
        previousStatementPaymentsSum = [(FHPaymentRingSuggestionRequest *)self previousStatementPaymentsSum];
        previousStatementPaymentsSum2 = [(FHPaymentRingSuggestionRequest *)v5 previousStatementPaymentsSum];
        if ([previousStatementPaymentsSum isEqual:previousStatementPaymentsSum2])
        {
          currentStatementPaymentsSum = [(FHPaymentRingSuggestionRequest *)self currentStatementPaymentsSum];
          currentStatementPaymentsSum2 = [(FHPaymentRingSuggestionRequest *)v5 currentStatementPaymentsSum];
          if ([currentStatementPaymentsSum isEqual:currentStatementPaymentsSum2])
          {
            v23 = currentStatementPaymentsSum;
            statementPurchasesSum = [(FHPaymentRingSuggestionRequest *)self statementPurchasesSum];
            [(FHPaymentRingSuggestionRequest *)v5 statementPurchasesSum];
            v22 = v24 = statementPurchasesSum;
            if ([statementPurchasesSum isEqual:?])
            {
              merchantCategoryTransactionSums = [(FHPaymentRingSuggestionRequest *)self merchantCategoryTransactionSums];
              merchantCategoryTransactionSums2 = [(FHPaymentRingSuggestionRequest *)v5 merchantCategoryTransactionSums];
              v21 = merchantCategoryTransactionSums;
              if ([merchantCategoryTransactionSums isEqual:?])
              {
                paymentDetails = [(FHPaymentRingSuggestionRequest *)self paymentDetails];
                paymentDetails2 = [(FHPaymentRingSuggestionRequest *)v5 paymentDetails];
                v17 = [paymentDetails isEqual:paymentDetails2];
              }

              else
              {
                v17 = 0;
              }

              currentStatementPaymentsSum = v23;
            }

            else
            {
              v17 = 0;
              currentStatementPaymentsSum = v23;
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