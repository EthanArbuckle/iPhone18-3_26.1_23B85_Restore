@interface PKEnteredValueActionItem
- (NSDecimalNumber)maxAmount;
- (NSDecimalNumber)minAmount;
- (PKEnteredValueActionItem)initWithCoder:(id)a3;
- (PKEnteredValueActionItem)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKEnteredValueActionItem

- (PKEnteredValueActionItem)initWithDictionary:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v66.receiver = self;
  v66.super_class = PKEnteredValueActionItem;
  v5 = [(PKEnteredValueActionItem *)&v66 init];
  if (v5)
  {
    v6 = [v4 PKDecimalNumberForKey:@"minLoadAmount"];
    v7 = [v6 copy];
    minLoadAmount = v5->_minLoadAmount;
    v5->_minLoadAmount = v7;

    v9 = [v4 PKDecimalNumberForKey:@"maxLoadAmount"];
    v10 = [v9 copy];
    maxLoadAmount = v5->_maxLoadAmount;
    v5->_maxLoadAmount = v10;

    v12 = [v4 PKDecimalNumberForKey:@"minLoadedBalance"];
    v13 = [v12 copy];
    minLoadedBalance = v5->_minLoadedBalance;
    v5->_minLoadedBalance = v13;

    v15 = [v4 PKDecimalNumberForKey:@"maxLoadedBalance"];
    v16 = [v15 copy];
    maxLoadedBalance = v5->_maxLoadedBalance;
    v5->_maxLoadedBalance = v16;

    if (!v5->_minLoadAmount)
    {
      v18 = [v4 PKDecimalNumberForKey:@"minAmount"];
      v19 = [v18 copy];
      v20 = v5->_minLoadAmount;
      v5->_minLoadAmount = v19;

      v21 = [v4 PKDecimalNumberForKey:@"maxAmount"];
      v22 = [v21 copy];
      v23 = v5->_maxLoadedBalance;
      v5->_maxLoadedBalance = v22;
    }

    v5->_maxAmountIncludesLocalBalance = [v4 PKBoolForKey:@"maxAmountIncludesLocalBalance"];
    v24 = [v4 PKStringForKey:@"currency"];
    v25 = [v24 copy];
    currency = v5->_currency;
    v5->_currency = v25;

    v27 = [v4 PKDictionaryForKey:@"serviceProviderData"];
    v28 = [v27 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v28;

    v30 = [MEMORY[0x1E695DF70] array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v54 = v4;
    v31 = [v4 PKArrayForKey:@"defaultSuggestions"];
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
              [v30 addObject:v38];
            }
          }

          ++v35;
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v33);
    }

    v39 = [v30 copy];
    defaultSuggestions = v5->_defaultSuggestions;
    v53 = v5;
    v5->_defaultSuggestions = v39;

    v41 = [MEMORY[0x1E695DF70] array];
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
              [v41 addObject:v49];
            }
          }

          ++v46;
        }

        while (v44 != v46);
        v44 = [v42 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v44);
    }

    v50 = [v41 copy];
    v5 = v53;
    lowBalanceReminderOptions = v53->_lowBalanceReminderOptions;
    v53->_lowBalanceReminderOptions = v50;

    v4 = v54;
  }

  return v5;
}

- (PKEnteredValueActionItem)initWithCoder:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = PKEnteredValueActionItem;
  v5 = [(PKEnteredValueActionItem *)&v46 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minLoadAmount"];
    v7 = [v6 copy];
    minLoadAmount = v5->_minLoadAmount;
    v5->_minLoadAmount = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxLoadAmount"];
    v10 = [v9 copy];
    maxLoadAmount = v5->_maxLoadAmount;
    v5->_maxLoadAmount = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minLoadedBalance"];
    v13 = [v12 copy];
    minLoadedBalance = v5->_minLoadedBalance;
    v5->_minLoadedBalance = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxLoadedBalance"];
    v16 = [v15 copy];
    maxLoadedBalance = v5->_maxLoadedBalance;
    v5->_maxLoadedBalance = v16;

    if (!v5->_minLoadAmount)
    {
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minAmount"];
      v19 = [v18 copy];
      v20 = v5->_minLoadAmount;
      v5->_minLoadAmount = v19;
    }

    if (!v5->_maxLoadedBalance)
    {
      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxAmount"];
      v22 = [v21 copy];
      v23 = v5->_maxLoadedBalance;
      v5->_maxLoadedBalance = v22;
    }

    v5->_maxAmountIncludesLocalBalance = [v4 decodeBoolForKey:@"maxAmountIncludesLocalBalance"];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"defaultSuggestions"];
    v28 = [v27 copy];
    defaultSuggestions = v5->_defaultSuggestions;
    v5->_defaultSuggestions = v28;

    v30 = [v4 decodeObjectOfClasses:v26 forKey:@"lowBalanceReminderOptions"];
    v31 = [v30 copy];
    lowBalanceReminderOptions = v5->_lowBalanceReminderOptions;
    v5->_lowBalanceReminderOptions = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    v34 = [v33 copy];
    currency = v5->_currency;
    v5->_currency = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v36 setWithObjects:{v37, v38, v39, v40, objc_opt_class(), 0}];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"serviceProviderData"];
    v43 = [v42 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v43;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  minLoadAmount = self->_minLoadAmount;
  v5 = a3;
  [v5 encodeObject:minLoadAmount forKey:@"minLoadAmount"];
  [v5 encodeObject:self->_maxLoadAmount forKey:@"maxLoadAmount"];
  [v5 encodeObject:self->_minLoadedBalance forKey:@"minLoadedBalance"];
  [v5 encodeObject:self->_maxLoadedBalance forKey:@"maxLoadedBalance"];
  [v5 encodeBool:self->_maxAmountIncludesLocalBalance forKey:@"maxAmountIncludesLocalBalance"];
  [v5 encodeObject:self->_defaultSuggestions forKey:@"defaultSuggestions"];
  [v5 encodeObject:self->_lowBalanceReminderOptions forKey:@"lowBalanceReminderOptions"];
  [v5 encodeObject:self->_currency forKey:@"currency"];
  [v5 encodeObject:self->_serviceProviderData forKey:@"serviceProviderData"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSDecimalNumber *)self->_minLoadAmount copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSDecimalNumber *)self->_maxLoadAmount copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSDecimalNumber *)self->_minLoadedBalance copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSDecimalNumber *)self->_maxLoadedBalance copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSArray *)self->_defaultSuggestions copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_currency copyWithZone:a3];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  v18 = [(NSArray *)self->_lowBalanceReminderOptions copyWithZone:a3];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  v20 = [(NSDictionary *)self->_serviceProviderData copyWithZone:a3];
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