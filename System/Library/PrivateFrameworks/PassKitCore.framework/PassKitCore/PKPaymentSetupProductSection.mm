@interface PKPaymentSetupProductSection
- (PKPaymentSetupProductSection)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation PKPaymentSetupProductSection

- (PKPaymentSetupProductSection)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = PKPaymentSetupProductSection;
  v5 = [(PKPaymentSetupProductSection *)&v22 init];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = 0;
      goto LABEL_15;
    }

    v6 = [dictionaryCopy PKStringForKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"items"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[PKPaymentSetupProductCategory alloc] initWithDictionary:*(*(&v18 + 1) + 8 * v13)];
          if (v14)
          {
            [(NSArray *)v8 addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    categories = v5->_categories;
    v5->_categories = v8;
  }

  v16 = v5;
LABEL_15:

  return v16;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"localizedTitle: '%@'; ", self->_localizedTitle];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_categories;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) description];
        [v3 appendString:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@">"];
  v10 = [v3 copy];

  return v10;
}

@end