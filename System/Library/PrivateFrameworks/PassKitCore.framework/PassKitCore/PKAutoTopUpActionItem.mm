@interface PKAutoTopUpActionItem
- (PKAutoTopUpActionItem)initWithCoder:(id)coder;
- (PKAutoTopUpActionItem)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAutoTopUpActionItem

- (PKAutoTopUpActionItem)initWithDictionary:(id)dictionary
{
  v66 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v62.receiver = self;
  v62.super_class = PKAutoTopUpActionItem;
  v5 = [(PKAutoTopUpActionItem *)&v62 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"currency"];
    v7 = [v6 copy];
    currency = v5->_currency;
    v5->_currency = v7;

    v9 = [dictionaryCopy PKDictionaryForKey:@"serviceProviderData"];
    v10 = [v9 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v13 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"defaultAmountSuggestions"];
    v14 = [v13 countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v59;
      do
      {
        v17 = 0;
        do
        {
          if (*v59 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v58 + 1) + 8 * v17);
          v19 = MEMORY[0x1E696AB90];
          if (v18)
          {
            [v18 decimalValue];
          }

          else
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
          }

          v20 = [v19 decimalNumberWithDecimal:&v55];
          if (v20)
          {
            [v12 addObject:v20];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v15);
    }

    v21 = [v12 copy];
    defaultAmountSuggestions = v5->_defaultAmountSuggestions;
    v5->_defaultAmountSuggestions = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v24 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"defaultThresholdSuggestions"];
    v25 = [v24 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v52;
      do
      {
        v28 = 0;
        do
        {
          if (*v52 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v51 + 1) + 8 * v28);
          v30 = MEMORY[0x1E696AB90];
          if (v29)
          {
            [v29 decimalValue];
          }

          else
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
          }

          v31 = [v30 decimalNumberWithDecimal:&v55];
          if (v31)
          {
            [v23 addObject:v31];
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v26);
    }

    v32 = [v23 copy];
    defaultThresholdSuggestions = v5->_defaultThresholdSuggestions;
    v5->_defaultThresholdSuggestions = v32;

    array = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v46 = dictionaryCopy;
    v35 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"lowBalanceReminderOptions"];
    v36 = [v35 countByEnumeratingWithState:&v47 objects:v63 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v48;
      do
      {
        v39 = 0;
        do
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v47 + 1) + 8 * v39);
          v41 = MEMORY[0x1E696AB90];
          if (v40)
          {
            [v40 decimalValue];
          }

          else
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
          }

          v42 = [v41 decimalNumberWithDecimal:&v55];
          if (v42)
          {
            [array addObject:v42];
          }

          ++v39;
        }

        while (v37 != v39);
        v37 = [v35 countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v37);
    }

    v43 = [array copy];
    lowBalanceReminderOptions = v5->_lowBalanceReminderOptions;
    v5->_lowBalanceReminderOptions = v43;

    dictionaryCopy = v46;
  }

  return v5;
}

- (PKAutoTopUpActionItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = PKAutoTopUpActionItem;
  v5 = [(PKAutoTopUpActionItem *)&v31 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"defaultAmountSuggestions"];
    v10 = [v9 copy];
    defaultAmountSuggestions = v5->_defaultAmountSuggestions;
    v5->_defaultAmountSuggestions = v10;

    v12 = [coderCopy decodeObjectOfClasses:v8 forKey:@"defaultThresholdSuggestions"];
    v13 = [v12 copy];
    defaultThresholdSuggestions = v5->_defaultThresholdSuggestions;
    v5->_defaultThresholdSuggestions = v13;

    v15 = [coderCopy decodeObjectOfClasses:v8 forKey:@"lowBalanceReminderOptions"];
    v16 = [v15 copy];
    lowBalanceReminderOptions = v5->_lowBalanceReminderOptions;
    v5->_lowBalanceReminderOptions = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    v19 = [v18 copy];
    currency = v5->_currency;
    v5->_currency = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v21 setWithObjects:{v22, v23, v24, v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"serviceProviderData"];
    v28 = [v27 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  defaultAmountSuggestions = self->_defaultAmountSuggestions;
  coderCopy = coder;
  [coderCopy encodeObject:defaultAmountSuggestions forKey:@"defaultAmountSuggestions"];
  [coderCopy encodeObject:self->_defaultThresholdSuggestions forKey:@"defaultThresholdSuggestions"];
  [coderCopy encodeObject:self->_lowBalanceReminderOptions forKey:@"lowBalanceReminderOptions"];
  [coderCopy encodeObject:self->_currency forKey:@"currency"];
  [coderCopy encodeObject:self->_serviceProviderData forKey:@"serviceProviderData"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSArray *)self->_defaultAmountSuggestions copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSArray *)self->_defaultThresholdSuggestions copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_currency copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSArray *)self->_lowBalanceReminderOptions copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSDictionary *)self->_serviceProviderData copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

@end