@interface PKSecureElementPassFieldCollection
- (PKSecureElementPassFieldCollection)initWithBalanceFieldsFromPass:(id)pass;
- (PKSecureElementPassFieldCollection)initWithFieldsDictionary:(id)dictionary;
- (PKSecureElementPassFieldCollection)initWithPassDictionary:(id)dictionary;
@end

@implementation PKSecureElementPassFieldCollection

- (PKSecureElementPassFieldCollection)initWithPassDictionary:(id)dictionary
{
  v34[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v34[0] = @"balanceFields";
  v34[1] = @"commutePlans";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v18 = dictionaryCopy;
  v22 = [dictionaryCopy PKDictionaryForKey:@"paymentCard"];
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v21 = *v29;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        v7 = [v22 PKArrayContaining:objc_opt_class() forKey:v6];
        if ([v7 count])
        {
          v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v9 = v7;
          v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v25;
            do
            {
              v13 = 0;
              do
              {
                if (*v25 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [[PKSecureElementPassField alloc] initWithPaymentPassFieldDictionary:*(*(&v24 + 1) + 8 * v13)];
                [v8 safelyAddObject:v14];

                ++v13;
              }

              while (v11 != v13);
              v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v11);
          }

          [v20 setObject:v8 forKeyedSubscript:v6];
        }

        ++v5;
      }

      while (v5 != v23);
      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  v15 = [(PKSecureElementPassFieldCollection *)self initWithFieldsDictionary:v20];
  return v15;
}

- (PKSecureElementPassFieldCollection)initWithFieldsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKSecureElementPassFieldCollection;
  v5 = [(PKSecureElementPassFieldCollection *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    fieldsDictionary = v5->_fieldsDictionary;
    v5->_fieldsDictionary = v6;
  }

  return v5;
}

- (PKSecureElementPassFieldCollection)initWithBalanceFieldsFromPass:(id)pass
{
  balanceFields = [pass balanceFields];
  v5 = [balanceFields pk_arrayBySafelyApplyingBlock:&__block_literal_global_161];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v6;
  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:@"balanceFields"];
  }

  v8 = [(PKSecureElementPassFieldCollection *)self initWithFieldsDictionary:v7];

  return v8;
}

PKSecureElementPassField *__68__PKSecureElementPassFieldCollection_initWithBalanceFieldsFromPass___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKSecureElementPassField alloc] initWithPassField:v2];

  return v3;
}

@end