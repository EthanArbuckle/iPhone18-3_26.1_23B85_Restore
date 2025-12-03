@interface PKNumericSuggestionsEnterValueAlgorithm
- (BOOL)_amountIsValid:(id)valid;
- (BOOL)_lastInputExistsInGeneratedSuggestions:(id)suggestions withLastInput:(id)input;
- (BOOL)_possibleAmountIsValidWithDefaultValue:(id)value amount:(id)amount;
- (BOOL)_useMaximumAmountSuggestionWithAmount:(id)amount;
- (PKNumericSuggestionsEnterValueAlgorithm)initWithLastInput:(id)input;
- (id)_generateDefaultSuggestions;
- (id)_generateValuesToDefaults;
- (id)_maxAmountSuggestion;
- (id)_possibleValueForAmount:(id)amount;
- (id)_useMaxAmountSuggestion;
- (id)suggestionsWithAmount:(id)amount;
- (void)_generateCalculatedSuggestions;
- (void)setCardBalance:(id)balance;
- (void)setDecimalPrecision:(int64_t)precision;
- (void)setDefaultValues:(id)values;
- (void)setMaxBalance:(id)balance;
- (void)setMaxLoadAmount:(id)amount;
- (void)setMinBalance:(id)balance;
- (void)setMinLoadAmount:(id)amount;
- (void)setPowerOfTenFactor:(unint64_t)factor;
- (void)setUseBuiltInDefaults:(BOOL)defaults;
@end

@implementation PKNumericSuggestionsEnterValueAlgorithm

- (PKNumericSuggestionsEnterValueAlgorithm)initWithLastInput:(id)input
{
  inputCopy = input;
  v13.receiver = self;
  v13.super_class = PKNumericSuggestionsEnterValueAlgorithm;
  v6 = [(PKNumericSuggestionsEnterValueAlgorithm *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lastInput, input);
    v7->_decimalPrecision = 0;
    v7->_powerOfTenFactor = 1;
    v7->_hasValidDefaultSuggestions = 0;
    zero = [MEMORY[0x1E696AB90] zero];
    cardBalance = v7->_cardBalance;
    v7->_cardBalance = zero;

    v10 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:SLOWORD(v7->_decimalPrecision) raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    roundingBehavior = v7->_roundingBehavior;
    v7->_roundingBehavior = v10;

    [(PKNumericSuggestionsEnterValueAlgorithm *)v7 _generateCalculatedSuggestions];
  }

  return v7;
}

- (BOOL)_lastInputExistsInGeneratedSuggestions:(id)suggestions withLastInput:(id)input
{
  v18 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  value = [(PKNumericSuggestionLastInput *)self->_lastInput value];
  v7 = [PKNumericSuggestion suggestionWithValue:value currencyCode:self->_currencyCode];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = suggestionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v13 + 1) + 8 * i) isEqual:{v7, v13}])
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (id)suggestionsWithAmount:(id)amount
{
  v57 = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  array = [MEMORY[0x1E695DF70] array];
  if (!amountCopy || ([MEMORY[0x1E696AB90] notANumber], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(amountCopy, "isEqualToNumber:", v6), v6, v7))
  {
    zero = [MEMORY[0x1E696AB90] zero];

    amountCopy = zero;
  }

  zero2 = [MEMORY[0x1E696AB90] zero];
  v10 = [amountCopy isEqualToNumber:zero2];

  if (v10)
  {
    [array addObjectsFromArray:self->_defaultSuggestions];
    lastInput = self->_lastInput;
    if (lastInput)
    {
      value = [(PKNumericSuggestionLastInput *)lastInput value];
      if (value || [(PKNumericSuggestionLastInput *)self->_lastInput wentToMax])
      {
        v13 = [(PKNumericSuggestionsEnterValueAlgorithm *)self _lastInputExistsInGeneratedSuggestions:array withLastInput:self->_lastInput];

        if (!v13)
        {
          [array removeLastObject];
          _maxAmountSuggestion = [(PKNumericSuggestionsEnterValueAlgorithm *)self _maxAmountSuggestion];
          if ([(PKNumericSuggestionLastInput *)self->_lastInput wentToMax]&& self->_maxBalance && _maxAmountSuggestion)
          {
            [array addObject:_maxAmountSuggestion];
          }

          else
          {
            value2 = [(PKNumericSuggestionLastInput *)self->_lastInput value];
            v34 = [PKNumericSuggestion suggestionWithValue:value2 currencyCode:self->_currencyCode];
            [array addObject:v34];
          }
        }
      }
    }

LABEL_33:
    v15 = 0;
    goto LABEL_34;
  }

  if (![(PKNumericSuggestionsEnterValueAlgorithm *)self _useMaximumAmountSuggestionWithAmount:amountCopy])
  {
    v16 = [(PKNumericSuggestionsEnterValueAlgorithm *)self _possibleValueForAmount:amountCopy];
    v17 = [v16 isEqual:amountCopy];
    if ((v17 & 1) == 0)
    {
      v18 = [PKNumericSuggestion suggestionWithValue:v16 currencyCode:self->_currencyCode];
      [array addObject:v18];
    }

    defaultSuggestions = self->_defaultSuggestions;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __65__PKNumericSuggestionsEnterValueAlgorithm_suggestionsWithAmount___block_invoke;
    v49[3] = &unk_1E79CDAE0;
    v20 = amountCopy;
    v50 = v20;
    v21 = v16;
    v51 = v21;
    selfCopy = self;
    v22 = [(NSArray *)defaultSuggestions pk_objectsPassingTest:v49];
    [array addObjectsFromArray:v22];

    if ([array count] >= 4)
    {
      v23 = [array subarrayWithRange:{0, 3}];
      v24 = [v23 mutableCopy];

      array = v24;
    }

    valuesToDefaults = self->_valuesToDefaults;
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __65__PKNumericSuggestionsEnterValueAlgorithm_suggestionsWithAmount___block_invoke_2;
    v45 = &unk_1E79CDAE0;
    v46 = v20;
    v26 = v21;
    v47 = v26;
    selfCopy2 = self;
    v27 = [(NSArray *)valuesToDefaults pk_objectsPassingTest:&v42];
    if ([v27 count])
    {
      if ([array count] == 3)
      {
        [array removeLastObject];
      }

      firstObject = [v27 firstObject];
      [array addObject:firstObject];
    }

    if ([array count] <= 2)
    {
      v29 = [(NSArray *)self->_defaultSuggestions count];
      if ((v29 - 1) >= 0)
      {
        v30 = v29;
        v31 = v17 ^ 1u;
        do
        {
          if ([array count] > 2)
          {
            break;
          }

          v32 = [(NSArray *)self->_defaultSuggestions objectAtIndex:--v30];
          if (([array containsObject:v32] & 1) == 0)
          {
            [array insertObject:v32 atIndex:v31];
          }
        }

        while (v30 > 0);
      }
    }

    goto LABEL_33;
  }

  v15 = 1;
LABEL_34:
  _useMaxAmountSuggestion = [(PKNumericSuggestionsEnterValueAlgorithm *)self _useMaxAmountSuggestion];
  v36 = _useMaxAmountSuggestion;
  if (v15 && _useMaxAmountSuggestion)
  {
    [array removeAllObjects];
    [array addObject:v36];
  }

  else if ([array count] < 4)
  {
    if ([array count] <= 2)
    {
      v40 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v54 = 3;
        v55 = 2112;
        v56 = array;
        _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, "Something went wrong with the suggestions. There should be %d suggestions. But the suggestions were actually %@", buf, 0x12u);
      }

      [array removeAllObjects];
      [array addObjectsFromArray:self->_defaultSuggestions];
    }
  }

  else
  {
    v37 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v54 = 3;
      v55 = 2112;
      v56 = array;
      _os_log_impl(&dword_1AD337000, v37, OS_LOG_TYPE_DEFAULT, "Something went wrong with the suggestions. There should be %d suggestions. But the suggestions were actually %@", buf, 0x12u);
    }

    v38 = [array subarrayWithRange:{0, 3}];
    v39 = [v38 mutableCopy];

    array = v39;
  }

  return array;
}

uint64_t __65__PKNumericSuggestionsEnterValueAlgorithm_suggestionsWithAmount___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  if ([v4 isEqualToNumber:a1[4]])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 value];
    if ([v6 isEqualToNumber:a1[5]])
    {
      v5 = 0;
    }

    else
    {
      v7 = a1[6];
      v8 = [v3 value];
      v5 = [v7 _possibleAmountIsValidWithDefaultValue:v8 amount:a1[4]];
    }
  }

  return v5;
}

uint64_t __65__PKNumericSuggestionsEnterValueAlgorithm_suggestionsWithAmount___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  if ([v4 isEqualToNumber:a1[4]])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 value];
    if ([v6 isEqualToNumber:a1[5]])
    {
      v5 = 0;
    }

    else
    {
      v7 = a1[6];
      v8 = [v3 value];
      v5 = [v7 _possibleAmountIsValidWithDefaultValue:v8 amount:a1[4]];
    }
  }

  return v5;
}

- (void)setDefaultValues:(id)values
{
  if (self->_defaultValues != values)
  {
    v4 = [values copy];
    defaultValues = self->_defaultValues;
    self->_defaultValues = v4;

    [(PKNumericSuggestionsEnterValueAlgorithm *)self _generateCalculatedSuggestions];
  }
}

- (void)setPowerOfTenFactor:(unint64_t)factor
{
  if (self->_powerOfTenFactor != factor)
  {
    self->_powerOfTenFactor = fmax(factor, 1.0);
    [(PKNumericSuggestionsEnterValueAlgorithm *)self _generateCalculatedSuggestions];
  }
}

- (void)setMinBalance:(id)balance
{
  balanceCopy = balance;
  if (self->_minBalance != balanceCopy)
  {
    v9 = balanceCopy;
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v6 = [(NSDecimalNumber *)v9 isEqualToNumber:notANumber];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(NSDecimalNumber *)v9 copy];
    }

    minBalance = self->_minBalance;
    self->_minBalance = v7;

    [(PKNumericSuggestionsEnterValueAlgorithm *)self _generateCalculatedSuggestions];
    balanceCopy = v9;
  }
}

- (void)setMaxBalance:(id)balance
{
  balanceCopy = balance;
  if (self->_maxBalance != balanceCopy)
  {
    v10 = balanceCopy;
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    if ([(NSDecimalNumber *)v10 isEqualToNumber:notANumber])
    {
    }

    else
    {
      zero = [MEMORY[0x1E696AB90] zero];
      v7 = [(NSDecimalNumber *)v10 isEqualToNumber:zero];

      if ((v7 & 1) == 0)
      {
        v8 = [(NSDecimalNumber *)v10 copy];
        goto LABEL_7;
      }
    }

    v8 = 0;
LABEL_7:
    maxBalance = self->_maxBalance;
    self->_maxBalance = v8;

    [(PKNumericSuggestionsEnterValueAlgorithm *)self _generateCalculatedSuggestions];
    balanceCopy = v10;
  }
}

- (void)setMinLoadAmount:(id)amount
{
  amountCopy = amount;
  if (self->_minLoadAmount != amountCopy)
  {
    v10 = amountCopy;
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    if ([(NSDecimalNumber *)v10 isEqualToNumber:notANumber])
    {
    }

    else
    {
      zero = [MEMORY[0x1E696AB90] zero];
      v7 = [(NSDecimalNumber *)v10 isEqualToNumber:zero];

      if ((v7 & 1) == 0)
      {
        v8 = [(NSDecimalNumber *)v10 copy];
        goto LABEL_7;
      }
    }

    v8 = 0;
LABEL_7:
    minLoadAmount = self->_minLoadAmount;
    self->_minLoadAmount = v8;

    [(PKNumericSuggestionsEnterValueAlgorithm *)self _generateCalculatedSuggestions];
    amountCopy = v10;
  }
}

- (void)setMaxLoadAmount:(id)amount
{
  amountCopy = amount;
  if (self->_maxLoadAmount != amountCopy)
  {
    v10 = amountCopy;
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    if ([(NSDecimalNumber *)v10 isEqualToNumber:notANumber])
    {
    }

    else
    {
      zero = [MEMORY[0x1E696AB90] zero];
      v7 = [(NSDecimalNumber *)v10 isEqualToNumber:zero];

      if ((v7 & 1) == 0)
      {
        v8 = [(NSDecimalNumber *)v10 copy];
        goto LABEL_7;
      }
    }

    v8 = 0;
LABEL_7:
    maxLoadAmount = self->_maxLoadAmount;
    self->_maxLoadAmount = v8;

    [(PKNumericSuggestionsEnterValueAlgorithm *)self _generateCalculatedSuggestions];
    amountCopy = v10;
  }
}

- (void)setDecimalPrecision:(int64_t)precision
{
  if (self->_decimalPrecision != precision)
  {
    self->_decimalPrecision = precision;
    v5 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:precision raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    roundingBehavior = self->_roundingBehavior;
    self->_roundingBehavior = v5;

    [(PKNumericSuggestionsEnterValueAlgorithm *)self _generateCalculatedSuggestions];
  }
}

- (void)setCardBalance:(id)balance
{
  if (self->_cardBalance != balance)
  {
    v4 = [balance copy];
    cardBalance = self->_cardBalance;
    self->_cardBalance = v4;

    [(PKNumericSuggestionsEnterValueAlgorithm *)self _generateCalculatedSuggestions];
  }
}

- (void)setUseBuiltInDefaults:(BOOL)defaults
{
  if (self->_useBuiltInDefaults != defaults)
  {
    self->_useBuiltInDefaults = defaults;
    [(PKNumericSuggestionsEnterValueAlgorithm *)self _generateCalculatedSuggestions];
  }
}

- (BOOL)_amountIsValid:(id)valid
{
  validCopy = valid;
  if (!validCopy || ([MEMORY[0x1E696AB90] notANumber], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(validCopy, "isEqualToNumber:", v5), v5, (v6 & 1) != 0) || self->_minLoadAmount && objc_msgSend(validCopy, "compare:") == -1 || self->_maxLoadAmount && objc_msgSend(validCopy, "compare:") == 1)
  {
    v7 = 0;
  }

  else
  {
    v9 = [(NSDecimalNumber *)self->_cardBalance decimalNumberByAdding:validCopy];
    v10 = v9;
    v7 = (!self->_minBalance || [v9 compare:?] != -1) && (!self->_maxBalance || objc_msgSend(v10, "compare:") != 1);
  }

  return v7;
}

- (BOOL)_useMaximumAmountSuggestionWithAmount:(id)amount
{
  amountCopy = amount;
  maxLoadAmount = self->_maxLoadAmount;
  if (maxLoadAmount && [(NSDecimalNumber *)maxLoadAmount compare:amountCopy]== NSOrderedAscending)
  {
    v8 = 1;
  }

  else
  {
    v6 = [(NSDecimalNumber *)self->_cardBalance decimalNumberByAdding:amountCopy];
    maxBalance = self->_maxBalance;
    v8 = maxBalance && [(NSDecimalNumber *)maxBalance compare:v6]== NSOrderedAscending;
  }

  return v8;
}

- (BOOL)_possibleAmountIsValidWithDefaultValue:(id)value amount:(id)amount
{
  valueCopy = value;
  v7 = [(PKNumericSuggestionsEnterValueAlgorithm *)self _possibleValueForAmount:amount];
  v8 = [v7 compare:valueCopy];

  return (v8 + 1) < 2;
}

- (id)_possibleValueForAmount:(id)amount
{
  amountCopy = amount;
  powerOfTenFactor = self->_powerOfTenFactor;
  stringValue = [amountCopy stringValue];
  if ((powerOfTenFactor - [stringValue length] + 1) < 0)
  {
    v9 = 0;
  }

  else
  {
    v7 = self->_powerOfTenFactor;
    stringValue2 = [amountCopy stringValue];
    v9 = v7 - [stringValue2 length] + 1;
  }

  v10 = [amountCopy decimalNumberByMultiplyingByPowerOf10:v9 withBehavior:self->_roundingBehavior];

  return v10;
}

- (void)_generateCalculatedSuggestions
{
  _generateDefaultSuggestions = [(PKNumericSuggestionsEnterValueAlgorithm *)self _generateDefaultSuggestions];
  defaultSuggestions = self->_defaultSuggestions;
  self->_defaultSuggestions = _generateDefaultSuggestions;

  _generateValuesToDefaults = [(PKNumericSuggestionsEnterValueAlgorithm *)self _generateValuesToDefaults];
  valuesToDefaults = self->_valuesToDefaults;
  self->_valuesToDefaults = _generateValuesToDefaults;
}

- (id)_useMaxAmountSuggestion
{
  maxBalance = self->_maxBalance;
  if (maxBalance)
  {
    v4 = [(NSDecimalNumber *)maxBalance decimalNumberBySubtracting:self->_cardBalance withBehavior:self->_roundingBehavior];
  }

  else
  {
    v4 = 0;
  }

  maxLoadAmount = self->_maxLoadAmount;
  if (maxLoadAmount && [(NSDecimalNumber *)maxLoadAmount compare:v4]== NSOrderedAscending)
  {
    v11 = [(NSDecimalNumber *)self->_maxLoadAmount decimalNumberByAdding:self->_cardBalance withBehavior:self->_roundingBehavior];
    v12 = [v11 compare:self->_maxBalance];

    if (v12 == 1)
    {
      v13 = [(NSDecimalNumber *)self->_maxBalance decimalNumberBySubtracting:self->_cardBalance withBehavior:self->_roundingBehavior];
    }

    else
    {
      v13 = self->_maxLoadAmount;
    }

    v14 = v13;

    v4 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    goto LABEL_15;
  }

  zero = [MEMORY[0x1E696AB90] zero];
  if ([v4 compare:zero])
  {
    zero2 = [MEMORY[0x1E696AB90] zero];
    v8 = [v4 compare:zero2];

    if (v8 == 1)
    {
      v9 = [PKNumericSuggestion suggestionWithValue:v4 currencyCode:self->_currencyCode];
      v10 = PKLocalizedPaymentString(&cfstr_NumericSuggest.isa, 0);
      [v9 setDisplayValue:v10];

      [v9 setUsedMaximumSuggestion:1];
      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_15:
  v9 = 0;
LABEL_16:

  return v9;
}

- (id)_maxAmountSuggestion
{
  maxBalance = self->_maxBalance;
  if (maxBalance)
  {
    v4 = [(NSDecimalNumber *)maxBalance decimalNumberBySubtracting:self->_cardBalance withBehavior:self->_roundingBehavior];
  }

  else
  {
    v4 = 0;
  }

  maxLoadAmount = self->_maxLoadAmount;
  if (maxLoadAmount && [(NSDecimalNumber *)maxLoadAmount compare:v4]== NSOrderedAscending)
  {
    v11 = [(NSDecimalNumber *)self->_maxLoadAmount decimalNumberBySubtracting:self->_cardBalance withBehavior:self->_roundingBehavior];

    v4 = v11;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else if (!v4)
  {
    goto LABEL_13;
  }

  zero = [MEMORY[0x1E696AB90] zero];
  if ([v4 compare:zero])
  {
    zero2 = [MEMORY[0x1E696AB90] zero];
    v8 = [v4 compare:zero2];

    if (v8 == 1)
    {
      v9 = [PKNumericSuggestion suggestionWithValue:v4 currencyCode:self->_currencyCode];
      v10 = PKLocalizedPaymentString(&cfstr_NumericSuggest.isa, 0);
      [v9 setDisplayValue:v10];

      [v9 setUsedMaximumSuggestion:1];
      goto LABEL_14;
    }
  }

  else
  {
  }

LABEL_13:
  v9 = 0;
LABEL_14:

  return v9;
}

- (id)_generateDefaultSuggestions
{
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_defaultValues;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        zero = [MEMORY[0x1E696AB90] zero];
        v11 = [v9 compare:zero];

        if (v11 == 1)
        {
          v12 = [PKNumericSuggestion suggestionWithValue:v9 currencyCode:self->_currencyCode];
          [array addObject:v12];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v13 = [MEMORY[0x1E695DFB8] orderedSetWithArray:array];
  array2 = [v13 array];
  v15 = [array2 mutableCopy];

  self->_hasValidDefaultSuggestions = [v15 count] == 3;
  [v15 sortUsingComparator:&__block_literal_global_51];
  v16 = [v15 copy];

  return v16;
}

uint64_t __70__PKNumericSuggestionsEnterValueAlgorithm__generateDefaultSuggestions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 value];
  v6 = [v4 value];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_generateValuesToDefaults
{
  v24 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_defaultSuggestions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        value = [*(*(&v19 + 1) + 8 * i) value];
        cardBalance = self->_cardBalance;
        v10 = value;
        if (cardBalance)
        {
          notANumber = [MEMORY[0x1E696AB90] notANumber];
          v12 = [(NSDecimalNumber *)cardBalance isEqualToNumber:notANumber];

          v10 = value;
          if ((v12 & 1) == 0)
          {
            v10 = [value decimalNumberBySubtracting:self->_cardBalance];
          }
        }

        zero = [MEMORY[0x1E696AB90] zero];
        v14 = [v10 compare:zero];

        if (v14 == 1 && ([v10 isEqualToNumber:value] & 1) == 0 && -[PKNumericSuggestionsEnterValueAlgorithm _amountIsValid:](self, "_amountIsValid:", v10))
        {
          v15 = [PKNumericSuggestion suggestionWithValue:v10 currencyCode:self->_currencyCode];
          [array addObject:v15];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = [array copy];

  return v16;
}

@end