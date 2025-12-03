@interface PKBillPaymentSuggestedAmountList
+ (id)boundaryAngle;
+ (id)requiredSuggestedAmountCategories;
- (BOOL)_addSuggestedAmount:(id)amount force:(BOOL)force;
- (BOOL)_suggestedAmountIsRequiredCategory:(id)category;
- (BOOL)canAddAmount:(id)amount;
- (BOOL)canAddAmount:(id)amount andCategory:(unint64_t)category;
- (BOOL)canAddCategory:(unint64_t)category;
- (BOOL)isValidWithUnableReason:(unint64_t *)reason;
- (BOOL)suggestedAmount:(id)amount isAdjoiningSuggestedAmount:(id)suggestedAmount;
- (PKBillPaymentSuggestedAmountList)initWithCurrencyCode:(id)code remainingMinimumPayment:(id)payment remainingStatementBalance:(id)balance currentBalance:(id)currentBalance;
- (id)_boundaryAmount;
- (id)_lastSuggestedAmountThatIsNotRequred;
- (id)_smalllestSuggestionAmountBelowRemainingStatementAmount;
- (id)_sortedAmounts;
- (id)_sortedSuggestedAmounts;
- (id)_suggestedAmountThatIsNotRequired:(id)required suggestedAmount2:(id)amount2;
- (id)billPaymentSelectedSuggestedAmountDataEventForAmount:(id)amount accountIdentifier:(id)identifier statementIdentifier:(id)statementIdentifier;
- (id)maximumSuggestedAmountFromCategories:(id)categories;
- (id)minimumSuggestedAmountFromCategories:(id)categories;
- (id)suggestedAmountAfterSuggestedAmount:(id)amount;
- (id)suggestedAmountBeforeSuggestedAmount:(id)amount;
- (id)suggestedAmountGapMessageForStartSuggestedAmount:(id)amount;
- (id)suggestedAmountWithCategory:(unint64_t)category;
- (void)_createMandatorySuggestions;
- (void)_removeSuggestedAmount:(id)amount;
- (void)_updateValues;
- (void)addSuggestedAmountGapMessage:(id)message forStartSuggestedAmount:(id)amount;
- (void)addSuggestedAmountList:(id)list;
- (void)attemptToPurgeInvalidSuggestedAmounts;
@end

@implementation PKBillPaymentSuggestedAmountList

- (PKBillPaymentSuggestedAmountList)initWithCurrencyCode:(id)code remainingMinimumPayment:(id)payment remainingStatementBalance:(id)balance currentBalance:(id)currentBalance
{
  codeCopy = code;
  paymentCopy = payment;
  balanceCopy = balance;
  currentBalanceCopy = currentBalance;
  v34.receiver = self;
  v34.super_class = PKBillPaymentSuggestedAmountList;
  v15 = [(PKBillPaymentSuggestedAmountList *)&v34 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_currencyCode, code);
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    suggestionsForCategory = v16->_suggestionsForCategory;
    v16->_suggestionsForCategory = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    suggestionsForAmount = v16->_suggestionsForAmount;
    v16->_suggestionsForAmount = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    suggestedAmountGapMessageForAmount = v16->_suggestedAmountGapMessageForAmount;
    v16->_suggestedAmountGapMessageForAmount = v21;

    zero = [MEMORY[0x1E696AB90] zero];
    if (paymentCopy && [paymentCopy compare:zero] != 1)
    {

      paymentCopy = 0;
    }

    if (balanceCopy && [balanceCopy compare:zero] != 1)
    {

      balanceCopy = 0;
    }

    if (currentBalanceCopy)
    {
      if ([currentBalanceCopy compare:zero] == -1)
      {
        v24 = zero;

        currentBalanceCopy = v24;
      }
    }

    else
    {
      currentBalanceCopy = zero;
    }

    if (paymentCopy && [paymentCopy compare:currentBalanceCopy] == 1)
    {
      v25 = paymentCopy;

      currentBalanceCopy = v25;
    }

    if (balanceCopy && [balanceCopy compare:currentBalanceCopy] == 1)
    {
      v26 = balanceCopy;

      currentBalanceCopy = v26;
    }

    if (paymentCopy)
    {
      v27 = [paymentCopy copy];
      minimumAmount = v16->_minimumAmount;
      v16->_minimumAmount = v27;
    }

    if (balanceCopy)
    {
      v29 = [balanceCopy copy];
      remainingStatementAmount = v16->_remainingStatementAmount;
      v16->_remainingStatementAmount = v29;
    }

    v31 = [currentBalanceCopy copy];
    maximumAmount = v16->_maximumAmount;
    v16->_maximumAmount = v31;

    [(PKBillPaymentSuggestedAmountList *)v16 _createMandatorySuggestions];
  }

  return v16;
}

- (void)_createMandatorySuggestions
{
  v12 = self->_minimumAmount;
  v3 = self->_remainingStatementAmount;
  v4 = self->_maximumAmount;
  v5 = v4;
  if (!v3)
  {
    goto LABEL_7;
  }

  if (v4 && [(NSDecimalNumber *)v4 compare:v3]== NSOrderedSame)
  {

    v5 = 0;
  }

  if (!v12)
  {
LABEL_17:
    v13 = 0;
    v6 = v5 != 0;
    goto LABEL_21;
  }

  if ([(NSDecimalNumber *)v12 compare:v3]== NSOrderedSame)
  {

    goto LABEL_17;
  }

LABEL_7:
  v6 = v5 != 0;
  v7 = v12;
  if (v12)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if ([(NSDecimalNumber *)v12 compare:v5]== NSOrderedSame)
    {
      v9 = v12;
      v12 = 0;
      goto LABEL_19;
    }

LABEL_15:
    v9 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:v12 category:1];
    [(PKBillPaymentSuggestedAmountList *)self _addSuggestedAmount:v9 force:1];
LABEL_19:

    v7 = v12;
    goto LABEL_20;
  }

  if (v12)
  {
    goto LABEL_15;
  }

LABEL_20:
  v13 = v7;
  if (v3)
  {
LABEL_21:
    v10 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:v3 category:18];
    [(PKBillPaymentSuggestedAmountList *)self _addSuggestedAmount:v10 force:1];

    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v5)
  {
LABEL_22:
    v11 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:v5 category:19];
    [(PKBillPaymentSuggestedAmountList *)self _addSuggestedAmount:v11 force:1];
  }

LABEL_23:
}

+ (id)boundaryAngle
{
  v3 = MEMORY[0x1E696AB90];
  LODWORD(v2) = 1054828264;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v5 = v4;
  if (v4)
  {
    [v4 decimalValue];
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
  }

  v6 = [v3 decimalNumberWithDecimal:v8];

  return v6;
}

+ (id)requiredSuggestedAmountCategories
{
  if (_MergedGlobals_243 != -1)
  {
    dispatch_once(&_MergedGlobals_243, &__block_literal_global_154);
  }

  v3 = qword_1ED6D1E98;

  return v3;
}

void __69__PKBillPaymentSuggestedAmountList_requiredSuggestedAmountCategories__block_invoke()
{
  v0 = qword_1ED6D1E98;
  qword_1ED6D1E98 = &unk_1F23B41A8;
}

- (BOOL)canAddAmount:(id)amount andCategory:(unint64_t)category
{
  v6 = [(PKBillPaymentSuggestedAmountList *)self canAddAmount:amount];
  if (v6)
  {

    LOBYTE(v6) = [(PKBillPaymentSuggestedAmountList *)self canAddCategory:category];
  }

  return v6;
}

- (BOOL)canAddAmount:(id)amount
{
  amountCopy = amount;
  if (amountCopy)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    if ([amountCopy isEqualToNumber:zero])
    {
      v6 = 0;
    }

    else
    {
      v7 = [(NSMutableDictionary *)self->_suggestionsForAmount objectForKey:amountCopy];
      v6 = v7 == 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canAddCategory:(unint64_t)category
{
  suggestionsForCategory = self->_suggestionsForCategory;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:category];
  v5 = [(NSMutableDictionary *)suggestionsForCategory objectForKey:v4];
  LOBYTE(suggestionsForCategory) = v5 == 0;

  return suggestionsForCategory;
}

- (void)addSuggestedAmountList:(id)list
{
  v14 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [listCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(listCopy);
        }

        [(PKBillPaymentSuggestedAmountList *)self addSuggestedAmount:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [listCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)_addSuggestedAmount:(id)amount force:(BOOL)force
{
  amountCopy = amount;
  amount = [amountCopy amount];
  roundingHandler = [objc_opt_class() roundingHandler];
  v9 = [amount decimalNumberByRoundingAccordingToBehavior:roundingHandler];

  [amountCopy setAmount:v9];
  if (force || ([amountCopy amount], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[PKBillPaymentSuggestedAmountList canAddAmount:andCategory:](self, "canAddAmount:andCategory:", v10, objc_msgSend(amountCopy, "category")), v10, v11))
  {
    suggestionsForCategory = self->_suggestionsForCategory;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(amountCopy, "category")}];
    [(NSMutableDictionary *)suggestionsForCategory setObject:amountCopy forKey:v13];

    suggestionsForAmount = self->_suggestionsForAmount;
    amount2 = [amountCopy amount];
    [(NSMutableDictionary *)suggestionsForAmount setObject:amountCopy forKey:amount2];

    [(PKBillPaymentSuggestedAmountList *)self _updateValues];
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)suggestedAmountWithCategory:(unint64_t)category
{
  suggestionsForCategory = self->_suggestionsForCategory;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:category];
  v5 = [(NSMutableDictionary *)suggestionsForCategory objectForKey:v4];

  return v5;
}

- (id)maximumSuggestedAmountFromCategories:(id)categories
{
  v19 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [categoriesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(categoriesCopy);
        }

        v10 = -[PKBillPaymentSuggestedAmountList suggestedAmountWithCategory:](self, "suggestedAmountWithCategory:", [*(*(&v14 + 1) + 8 * i) integerValue]);
        v11 = v10;
        if (!v7 || v10 && [v10 compare:v7] == 1)
        {
          v12 = v11;

          v7 = v12;
        }
      }

      v6 = [categoriesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)minimumSuggestedAmountFromCategories:(id)categories
{
  v19 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [categoriesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(categoriesCopy);
        }

        v10 = -[PKBillPaymentSuggestedAmountList suggestedAmountWithCategory:](self, "suggestedAmountWithCategory:", [*(*(&v14 + 1) + 8 * i) integerValue]);
        v11 = v10;
        if (!v7 || v10 && [v10 compare:v7] == -1)
        {
          v12 = v11;

          v7 = v12;
        }
      }

      v6 = [categoriesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)suggestedAmount:(id)amount isAdjoiningSuggestedAmount:(id)suggestedAmount
{
  amountCopy = amount;
  suggestedAmountCopy = suggestedAmount;
  if ([amountCopy isEqual:suggestedAmountCopy])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(PKBillPaymentSuggestedAmountList *)self suggestedAmountBeforeSuggestedAmount:amountCopy];
    if ([v9 isEqual:suggestedAmountCopy])
    {
      v8 = 1;
    }

    else
    {
      v10 = [(PKBillPaymentSuggestedAmountList *)self suggestedAmountAfterSuggestedAmount:amountCopy];
      v8 = [v10 isEqual:suggestedAmountCopy];
    }
  }

  return v8;
}

- (id)suggestedAmountBeforeSuggestedAmount:(id)amount
{
  v4 = [(NSArray *)self->_sortedSuggestedAmounts indexOfObject:amount];
  if (v4)
  {
    v5 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_sortedSuggestedAmounts objectAtIndex:v4 - 1];
  }

  return v6;
}

- (id)suggestedAmountAfterSuggestedAmount:(id)amount
{
  v4 = [(NSArray *)self->_sortedSuggestedAmounts indexOfObject:amount];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, v4 >= [(NSArray *)self->_sortedSuggestedAmounts count]- 1))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_sortedSuggestedAmounts objectAtIndex:v5 + 1];
  }

  return v6;
}

- (id)suggestedAmountGapMessageForStartSuggestedAmount:(id)amount
{
  if (amount)
  {
    amount = [amount amount];
    v5 = [(NSMutableDictionary *)self->_suggestedAmountGapMessageForAmount objectForKey:amount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addSuggestedAmountGapMessage:(id)message forStartSuggestedAmount:(id)amount
{
  suggestedAmountGapMessageForAmount = self->_suggestedAmountGapMessageForAmount;
  messageCopy = message;
  amount = [amount amount];
  [(NSMutableDictionary *)suggestedAmountGapMessageForAmount setObject:messageCopy forKey:amount];
}

- (id)billPaymentSelectedSuggestedAmountDataEventForAmount:(id)amount accountIdentifier:(id)identifier statementIdentifier:(id)statementIdentifier
{
  v36 = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  identifierCopy = identifier;
  statementIdentifierCopy = statementIdentifier;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_sortedSuggestedAmounts;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v32 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v31 + 1) + 8 * v14);
      amount = [v15 amount];
      if ([amountCopy isEqualToNumber:amount])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = off_1E79BF000;
    v18 = [PKBillPaymentSelectedSuggestedAmountData alloc];
    date = [MEMORY[0x1E695DF00] date];
    amount2 = [v15 amount];
    v21 = -[PKBillPaymentSelectedSuggestedAmountData initWithStatementIdentifier:transactionDate:transactionAmount:suggestedAmountCategory:](v18, "initWithStatementIdentifier:transactionDate:transactionAmount:suggestedAmountCategory:", statementIdentifierCopy, date, amount2, [v15 category]);

    if (v21)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:

    v17 = off_1E79BF000;
  }

  v22 = objc_alloc(v17[220]);
  date2 = [MEMORY[0x1E695DF00] date];
  v21 = [v22 initWithStatementIdentifier:statementIdentifierCopy transactionDate:date2 transactionAmount:amountCopy suggestedAmountCategory:0];

LABEL_12:
  v24 = objc_alloc_init(PKAccountEvent);
  v25 = [MEMORY[0x1E695DFD8] setWithObject:v21];
  [(PKAccountEvent *)v24 setItems:v25];

  [(PKAccountEvent *)v24 setType:14];
  [(PKAccountEvent *)v24 setAccountIdentifier:identifierCopy];
  transactionDate = [(PKBillPaymentSelectedSuggestedAmountData *)v21 transactionDate];
  [(PKAccountEvent *)v24 setDate:transactionDate];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(PKAccountEvent *)v24 setIdentifier:uUIDString];

  return v24;
}

- (BOOL)isValidWithUnableReason:(unint64_t *)reason
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Validating the Bill Payment Suggested Amount List.", buf, 2u);
  }

  v6 = [(PKBillPaymentSuggestedAmountList *)self suggestedAmountWithCategory:18];
  v7 = [(PKBillPaymentSuggestedAmountList *)self suggestedAmountWithCategory:19];
  if (v6 | v7)
  {
    maximumSuggestedAmount = [(PKBillPaymentSuggestedAmountList *)self maximumSuggestedAmount];
    if ([maximumSuggestedAmount category] == 18 || objc_msgSend(maximumSuggestedAmount, "category") == 19)
    {
      reasonCopy = reason;
      v23 = v7;
      v24 = v6;
      _boundaryAmount = [(PKBillPaymentSuggestedAmountList *)self _boundaryAmount];
      if ([(NSArray *)self->_sortedSuggestedAmounts count]!= 1)
      {
        v11 = 0;
        do
        {
          v12 = [(NSArray *)self->_sortedSuggestedAmounts objectAtIndex:v11];
          v13 = [(NSArray *)self->_sortedSuggestedAmounts objectAtIndex:++v11];
          amount = [v12 amount];
          amount2 = [v13 amount];
          v16 = [amount2 decimalNumberBySubtracting:amount];
          if ([v16 compare:_boundaryAmount] == -1)
          {
            v17 = [(PKBillPaymentSuggestedAmountList *)self _suggestedAmountIsRequiredCategory:v12];
            v18 = [(PKBillPaymentSuggestedAmountList *)self _suggestedAmountIsRequiredCategory:v13];
            if (!v17 || !v18)
            {
              if (reasonCopy)
              {
                *reasonCopy = 3;
              }

LABEL_32:
              v8 = 0;
              goto LABEL_33;
            }

            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Bill payment suggestions are overlapping. The suggestions that are overlapping are both required, so they cannot be removed from the bill payment suggestion list", buf, 2u);
            }

            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v26 = v12;
              _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Overlapping suggestion 1: %@", buf, 0xCu);
            }

            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v26 = v13;
              _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Overlapping suggestion 2: %@", buf, 0xCu);
            }
          }
        }

        while (v11 < [(NSArray *)self->_sortedSuggestedAmounts count]- 1);
      }

      v19 = [(NSArray *)self->_sortedSuggestedAmounts count];
      if (v19 <= [objc_opt_class() maximumNumberSuggestions])
      {
        if (reasonCopy)
        {
          *reasonCopy = 0;
        }

        v8 = 1;
      }

      else
      {
        if (!reasonCopy)
        {
          goto LABEL_32;
        }

        v8 = 0;
        *reasonCopy = 4;
      }

LABEL_33:
      v7 = v23;
      v6 = v24;
      maximumSuggestedAmount = v21;
    }

    else
    {
      v8 = 0;
      if (reason)
      {
        *reason = 2;
      }
    }
  }

  else
  {
    v8 = 0;
    if (reason)
    {
      *reason = 1;
    }
  }

  return v8;
}

- (void)attemptToPurgeInvalidSuggestedAmounts
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0;
  v4 = 0x1E696A000uLL;
  v36 = v3;
  do
  {
    [(PKBillPaymentSuggestedAmountList *)self isValidWithUnableReason:&v40, v36];
    v5 = [*(v4 + 3480) numberWithUnsignedInteger:v40];
    v6 = [v3 containsObject:v5];
    if (v40)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    v8 = [*(v4 + 3480) numberWithUnsignedInteger:v40];
    [v3 addObject:v8];

    if (v40 == 2)
    {
      v37 = v7;
      v27 = [(NSArray *)self->_sortedSuggestedAmounts count];
      v13 = [(PKBillPaymentSuggestedAmountList *)self suggestedAmountWithCategory:18];
      v28 = [(PKBillPaymentSuggestedAmountList *)self suggestedAmountWithCategory:19];
      if (v13 | v28)
      {
        _boundaryAmount = v28;
        maximumSuggestedAmount = [(PKBillPaymentSuggestedAmountList *)self maximumSuggestedAmount];
        if (maximumSuggestedAmount)
        {
          v30 = maximumSuggestedAmount;
          do
          {
            if ([v30 category] == 18)
            {
              break;
            }

            category = [v30 category];
            v32 = v27-- != 0;
            v33 = v32;
            if (category == 19 || !v33)
            {
              break;
            }

            v34 = PKLogFacilityTypeGetObject(0xFuLL);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v42 = v30;
              _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Removing maximum suggestion that has the wrong category from list %@", buf, 0xCu);
            }

            [(PKBillPaymentSuggestedAmountList *)self _removeSuggestedAmount:v30];
            maximumSuggestedAmount2 = [(PKBillPaymentSuggestedAmountList *)self maximumSuggestedAmount];

            v30 = maximumSuggestedAmount2;
          }

          while (maximumSuggestedAmount2);
        }
      }

      else
      {
        _boundaryAmount = 0;
        v13 = 0;
      }
    }

    else
    {
      if (v40 != 3)
      {
        if (v40 == 4)
        {
          while (1)
          {
            v9 = [(NSArray *)self->_sortedSuggestedAmounts count];
            if (v9 <= [objc_opt_class() maximumNumberSuggestions])
            {
              break;
            }

            _lastSuggestedAmountThatIsNotRequred = [(PKBillPaymentSuggestedAmountList *)self _lastSuggestedAmountThatIsNotRequred];
            v11 = PKLogFacilityTypeGetObject(0xFuLL);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v42 = _lastSuggestedAmountThatIsNotRequred;
              _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Removing extra suggested amount from bill payment suggested amount list %@", buf, 0xCu);
            }

            [(PKBillPaymentSuggestedAmountList *)self _removeSuggestedAmount:_lastSuggestedAmountThatIsNotRequred];
          }
        }

        continue;
      }

      v37 = v7;
      v12 = [(NSArray *)self->_sortedSuggestedAmounts count];
      v13 = 0;
      while (1)
      {
        v38 = v12;

        _boundaryAmount = [(PKBillPaymentSuggestedAmountList *)self _boundaryAmount];
        v15 = 0;
        v13 = 0;
        v39 = _boundaryAmount;
        do
        {
          if (v15 >= [(NSArray *)self->_sortedSuggestedAmounts count]- 1)
          {
            break;
          }

          v16 = [(NSArray *)self->_sortedSuggestedAmounts objectAtIndex:v15];
          v17 = [(NSArray *)self->_sortedSuggestedAmounts objectAtIndex:++v15];
          amount = [v16 amount];
          amount2 = [v17 amount];
          v20 = [amount2 decimalNumberBySubtracting:amount];
          v21 = [v20 compare:_boundaryAmount];
          if (v21 == -1)
          {
            v22 = v13;
            priority = [v16 priority];
            if (priority == [v17 priority])
            {
              v24 = [(PKBillPaymentSuggestedAmountList *)self _suggestedAmountThatIsNotRequired:v16 suggestedAmount2:v17];
            }

            else
            {
              priority2 = [v16 priority];
              if (priority2 <= [v17 priority])
              {
                v24 = v16;
              }

              else
              {
                v24 = v17;
              }
            }

            v13 = v24;

            _boundaryAmount = v39;
          }
        }

        while (v21 != -1);
        if (!v13)
        {
          break;
        }

        v26 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v13;
          _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Removing overlapping suggested amount from bill payment suggested amount list %@", buf, 0xCu);
        }

        [(PKBillPaymentSuggestedAmountList *)self _removeSuggestedAmount:v13];
        v12 = v38 - 1;
        if (v38 == 1)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_43:
    v3 = v36;
    v4 = 0x1E696A000;
    v7 = v37;
  }

  while (!v7);
}

- (void)_removeSuggestedAmount:(id)amount
{
  suggestionsForCategory = self->_suggestionsForCategory;
  v5 = MEMORY[0x1E696AD98];
  amountCopy = amount;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(amountCopy, "category")}];
  [(NSMutableDictionary *)suggestionsForCategory removeObjectForKey:v7];

  suggestionsForAmount = self->_suggestionsForAmount;
  amount = [amountCopy amount];

  [(NSMutableDictionary *)suggestionsForAmount removeObjectForKey:amount];

  [(PKBillPaymentSuggestedAmountList *)self _updateValues];
}

- (id)_sortedAmounts
{
  allKeys = [(NSMutableDictionary *)self->_suggestionsForAmount allKeys];
  v3 = [allKeys sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (id)_sortedSuggestedAmounts
{
  v18 = *MEMORY[0x1E69E9840];
  _sortedAmounts = [(PKBillPaymentSuggestedAmountList *)self _sortedAmounts];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = _sortedAmounts;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_suggestionsForAmount objectForKey:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (id)_smalllestSuggestionAmountBelowRemainingStatementAmount
{
  remainingStatementAmount = [(PKBillPaymentSuggestedAmountList *)self remainingStatementAmount];
  if (remainingStatementAmount)
  {
    minimumSuggestedAmount = [(PKBillPaymentSuggestedAmountList *)self minimumSuggestedAmount];
    amount = [minimumSuggestedAmount amount];

    if ([amount compare:remainingStatementAmount] == -1)
    {
      v6 = amount;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_suggestedAmountIsRequiredCategory:(id)category
{
  category = [category category];
  requiredSuggestedAmountCategories = [objc_opt_class() requiredSuggestedAmountCategories];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:category];
  v6 = [requiredSuggestedAmountCategories containsObject:v5];

  return v6;
}

- (id)_lastSuggestedAmountThatIsNotRequred
{
  v3 = [(NSArray *)self->_sortedSuggestedAmounts count];
  if ((v3 - 1) < 0)
  {
LABEL_5:
    v5 = 0;
  }

  else
  {
    v4 = v3;
    while (1)
    {
      v5 = [(NSArray *)self->_sortedSuggestedAmounts objectAtIndex:--v4];
      if (![(PKBillPaymentSuggestedAmountList *)self _suggestedAmountIsRequiredCategory:v5])
      {
        break;
      }

      if (v4 <= 0)
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

- (id)_suggestedAmountThatIsNotRequired:(id)required suggestedAmount2:(id)amount2
{
  requiredCopy = required;
  amount2Copy = amount2;
  v8 = [(PKBillPaymentSuggestedAmountList *)self _suggestedAmountIsRequiredCategory:requiredCopy];
  v9 = [(PKBillPaymentSuggestedAmountList *)self _suggestedAmountIsRequiredCategory:amount2Copy];
  if (v8 && v9)
  {
    v10 = 0;
  }

  else
  {
    if (v8)
    {
      v11 = amount2Copy;
    }

    else
    {
      v11 = requiredCopy;
    }

    v10 = v11;
  }

  return v10;
}

- (void)_updateValues
{
  _sortedSuggestedAmounts = [(PKBillPaymentSuggestedAmountList *)self _sortedSuggestedAmounts];
  sortedSuggestedAmounts = self->_sortedSuggestedAmounts;
  self->_sortedSuggestedAmounts = _sortedSuggestedAmounts;

  _smalllestSuggestionAmountBelowRemainingStatementAmount = [(PKBillPaymentSuggestedAmountList *)self _smalllestSuggestionAmountBelowRemainingStatementAmount];
  smalllestSuggestionAmountBelowRemainingStatementAmount = self->_smalllestSuggestionAmountBelowRemainingStatementAmount;
  self->_smalllestSuggestionAmountBelowRemainingStatementAmount = _smalllestSuggestionAmountBelowRemainingStatementAmount;
}

- (id)_boundaryAmount
{
  minimumAmount = self->_minimumAmount;
  if (minimumAmount)
  {
    zero = minimumAmount;
  }

  else
  {
    zero = [MEMORY[0x1E696AB90] zero];
  }

  v5 = zero;
  maximumAmount = self->_maximumAmount;
  if (maximumAmount)
  {
    zero2 = maximumAmount;
  }

  else
  {
    zero2 = [MEMORY[0x1E696AB90] zero];
  }

  v8 = zero2;
  boundaryAngle = [objc_opt_class() boundaryAngle];
  v10 = [(NSDecimalNumber *)v8 decimalNumberBySubtracting:v5];
  v11 = MEMORY[0x1E696AB90];
  LODWORD(v12) = 1086918619;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v14 = v13;
  if (v13)
  {
    [v13 decimalValue];
  }

  else
  {
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
  }

  v15 = [v11 decimalNumberWithDecimal:v19];
  v16 = [boundaryAngle decimalNumberByDividingBy:v15];
  v17 = [v16 decimalNumberByMultiplyingBy:v10];

  return v17;
}

@end