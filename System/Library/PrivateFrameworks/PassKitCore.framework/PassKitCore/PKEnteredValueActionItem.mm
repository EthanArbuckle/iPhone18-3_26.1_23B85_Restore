@interface PKEnteredValueActionItem
- (NSDecimalNumber)maxAmount;
- (NSDecimalNumber)minAmount;
- (PKEnteredValueActionItem)initWithCoder:(id)coder;
- (PKEnteredValueActionItem)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKEnteredValueActionItem

- (PKEnteredValueActionItem)initWithDictionary:(id)dictionary
{
  v69 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v66.receiver = self;
  v66.super_class = PKEnteredValueActionItem;
  v5 = [(PKEnteredValueActionItem *)&v66 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDecimalNumberForKey:@"minLoadAmount"];
    v7 = [v6 copy];
    minLoadAmount = v5->_minLoadAmount;
    v5->_minLoadAmount = v7;

    v9 = [dictionaryCopy PKDecimalNumberForKey:@"maxLoadAmount"];
    v10 = [v9 copy];
    maxLoadAmount = v5->_maxLoadAmount;
    v5->_maxLoadAmount = v10;

    v12 = [dictionaryCopy PKDecimalNumberForKey:@"minLoadedBalance"];
    v13 = [v12 copy];
    minLoadedBalance = v5->_minLoadedBalance;
    v5->_minLoadedBalance = v13;

    v15 = [dictionaryCopy PKDecimalNumberForKey:@"maxLoadedBalance"];
    v16 = [v15 copy];
    maxLoadedBalance = v5->_maxLoadedBalance;
    v5->_maxLoadedBalance = v16;

    if (!v5->_minLoadAmount)
    {
      v18 = [dictionaryCopy PKDecimalNumberForKey:@"minAmount"];
      v19 = [v18 copy];
      v20 = v5->_minLoadAmount;
      v5->_minLoadAmount = v19;

      v21 = [dictionaryCopy PKDecimalNumberForKey:@"maxAmount"];
      v22 = [v21 copy];
      v23 = v5->_maxLoadedBalance;
      v5->_maxLoadedBalance = v22;
    }

    v5->_maxAmountIncludesLocalBalance = [dictionaryCopy PKBoolForKey:@"maxAmountIncludesLocalBalance"];
    v24 = [dictionaryCopy PKStringForKey:@"currency"];
    v25 = [v24 copy];
    currency = v5->_currency;
    v5->_currency = v25;

    v27 = [dictionaryCopy PKDictionaryForKey:@"serviceProviderData"];
    v28 = [v27 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v28;

    array = [MEMORY[0x1E695DF70] array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v54 = dictionaryCopy;
    v31 = [dictionaryCopy PKArrayForKey:@"defaultSuggestions"];
    v32 = [v31 countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v63;
      do
      {
        v35 = 0;
        do
        {
          if (*v63 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v62 + 1) + 8 * v35);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = MEMORY[0x1E696AB90];
            if (v36)
            {
              [v36 decimalValue];
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
            }

            v38 = [v37 decimalNumberWithDecimal:&v59];
            if (v38)
            {
              [array addObject:v38];
            }
          }

          ++v35;
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v33);
    }

    v39 = [array copy];
    defaultSuggestions = v5->_defaultSuggestions;
    v53 = v5;
    v5->_defaultSuggestions = v39;

    array2 = [MEMORY[0x1E695DF70] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v42 = [v54 PKArrayForKey:@"lowBalanceReminderOptions"];
    v43 = [v42 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v56;
      do
      {
        v46 = 0;
        do
        {
          if (*v56 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v55 + 1) + 8 * v46);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = MEMORY[0x1E696AB90];
            if (v47)
            {
              [v47 decimalValue];
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
            }

            v49 = [v48 decimalNumberWithDecimal:{&v59, v53}];
            if (v49)
            {
              [array2 addObject:v49];
            }
          }

          ++v46;
        }

        while (v44 != v46);
        v44 = [v42 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v44);
    }

    v50 = [array2 copy];
    v5 = v53;
    lowBalanceReminderOptions = v53->_lowBalanceReminderOptions;
    v53->_lowBalanceReminderOptions = v50;

    dictionaryCopy = v54;
  }

  return v5;
}

- (PKEnteredValueActionItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v46.receiver = self;
  v46.super_class = PKEnteredValueActionItem;
  v5 = [(PKEnteredValueActionItem *)&v46 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minLoadAmount"];
    v7 = [v6 copy];
    minLoadAmount = v5->_minLoadAmount;
    v5->_minLoadAmount = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxLoadAmount"];
    v10 = [v9 copy];
    maxLoadAmount = v5->_maxLoadAmount;
    v5->_maxLoadAmount = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minLoadedBalance"];
    v13 = [v12 copy];
    minLoadedBalance = v5->_minLoadedBalance;
    v5->_minLoadedBalance = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxLoadedBalance"];
    v16 = [v15 copy];
    maxLoadedBalance = v5->_maxLoadedBalance;
    v5->_maxLoadedBalance = v16;

    if (!v5->_minLoadAmount)
    {
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minAmount"];
      v19 = [v18 copy];
      v20 = v5->_minLoadAmount;
      v5->_minLoadAmount = v19;
    }

    if (!v5->_maxLoadedBalance)
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxAmount"];
      v22 = [v21 copy];
      v23 = v5->_maxLoadedBalance;
      v5->_maxLoadedBalance = v22;
    }

    v5->_maxAmountIncludesLocalBalance = [coderCopy decodeBoolForKey:@"maxAmountIncludesLocalBalance"];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"defaultSuggestions"];
    v28 = [v27 copy];
    defaultSuggestions = v5->_defaultSuggestions;
    v5->_defaultSuggestions = v28;

    v30 = [coderCopy decodeObjectOfClasses:v26 forKey:@"lowBalanceReminderOptions"];
    v31 = [v30 copy];
    lowBalanceReminderOptions = v5->_lowBalanceReminderOptions;
    v5->_lowBalanceReminderOptions = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    v34 = [v33 copy];
    currency = v5->_currency;
    v5->_currency = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v36 setWithObjects:{v37, v38, v39, v40, objc_opt_class(), 0}];
    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"serviceProviderData"];
    v43 = [v42 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v43;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  minLoadAmount = self->_minLoadAmount;
  coderCopy = coder;
  [coderCopy encodeObject:minLoadAmount forKey:@"minLoadAmount"];
  [coderCopy encodeObject:self->_maxLoadAmount forKey:@"maxLoadAmount"];
  [coderCopy encodeObject:self->_minLoadedBalance forKey:@"minLoadedBalance"];
  [coderCopy encodeObject:self->_maxLoadedBalance forKey:@"maxLoadedBalance"];
  [coderCopy encodeBool:self->_maxAmountIncludesLocalBalance forKey:@"maxAmountIncludesLocalBalance"];
  [coderCopy encodeObject:self->_defaultSuggestions forKey:@"defaultSuggestions"];
  [coderCopy encodeObject:self->_lowBalanceReminderOptions forKey:@"lowBalanceReminderOptions"];
  [coderCopy encodeObject:self->_currency forKey:@"currency"];
  [coderCopy encodeObject:self->_serviceProviderData forKey:@"serviceProviderData"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSDecimalNumber *)self->_minLoadAmount copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSDecimalNumber *)self->_maxLoadAmount copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSDecimalNumber *)self->_minLoadedBalance copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSDecimalNumber *)self->_maxLoadedBalance copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSArray *)self->_defaultSuggestions copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_currency copyWithZone:zone];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  v18 = [(NSArray *)self->_lowBalanceReminderOptions copyWithZone:zone];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  v20 = [(NSDictionary *)self->_serviceProviderData copyWithZone:zone];
  v21 = *(v5 + 72);
  *(v5 + 72) = v20;

  *(v5 + 8) = self->_maxAmountIncludesLocalBalance;
  return v5;
}

- (NSDecimalNumber)minAmount
{
  v2 = [(NSDecimalNumber *)self->_minLoadAmount copy];

  return v2;
}

- (NSDecimalNumber)maxAmount
{
  v2 = [(NSDecimalNumber *)self->_maxLoadedBalance copy];

  return v2;
}

@end