@interface PKApplyActionContent
- (PKApplyActionContent)initWithDictionary:(id)a3;
- (id)analyticsDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)odiAttributesDictionary;
@end

@implementation PKApplyActionContent

- (PKApplyActionContent)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PKApplyActionContent;
  v5 = [(PKApplyActionContent *)&v26 init];
  if (v5)
  {
    v6 = [v4 PKArrayContaining:objc_opt_class() forKey:@"actionItems"];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          v14 = [PKApplyActionContentActionItem alloc];
          v15 = [(PKApplyActionContentActionItem *)v14 initWithDictionary:v13, v22];
          [v7 safelyAddObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
    actionItems = v5->_actionItems;
    v5->_actionItems = v16;

    v18 = [v4 PKDictionaryForKey:@"footerContent"];
    if ([v18 count])
    {
      v19 = [[PKApplyFooterContent alloc] initWithDictionary:v18];
      footerContent = v5->_footerContent;
      v5->_footerContent = v19;
    }
  }

  return v5;
}

- (id)odiAttributesDictionary
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_actionItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) odiAttributesDictionary];
        [v3 addEntriesFromDictionary:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)analyticsDictionary
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_actionItems;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 items];
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [*(*(&v18 + 1) + 8 * j) analyticsIdentifier];
              [v3 safelySetObject:@"true" forKey:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v15 = [v3 copy];

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKApplyActionContent allocWithZone:](PKApplyActionContent init];
  v6 = [(NSArray *)self->_actionItems copyWithZone:a3];
  actionItems = v5->_actionItems;
  v5->_actionItems = v6;

  v8 = [(PKApplyFooterContent *)self->_footerContent copyWithZone:a3];
  footerContent = v5->_footerContent;
  v5->_footerContent = v8;

  return v5;
}

@end