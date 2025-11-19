@interface PKApplyActionContentActionItem
- (NSCopying)identifier;
- (PKApplyActionContentActionItem)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)odiAttributesDictionary;
@end

@implementation PKApplyActionContentActionItem

- (PKApplyActionContentActionItem)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKApplyActionContentActionItem;
  v5 = [(PKApplyActionContentActionItem *)&v25 init];
  if (v5)
  {
    v6 = [v4 PKArrayContaining:objc_opt_class() forKey:@"items"];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          v14 = [PKApplyActionContentTextItem alloc];
          v15 = [(PKApplyActionContentTextItem *)v14 initWithDictionary:v13, v21];
          [v7 safelyAddObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
    items = v5->_items;
    v5->_items = v16;

    v18 = [v4 PKStringForKey:@"contextPrimaryActionIdentifier"];
    contextPrimaryActionIdentifier = v5->_contextPrimaryActionIdentifier;
    v5->_contextPrimaryActionIdentifier = v18;
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
  v4 = self->_items;
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

- (NSCopying)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendString:v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_items;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) identifier];
        [v3 appendString:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (self->_contextPrimaryActionIdentifier)
  {
    [v3 appendString:?];
  }

  v12 = [v3 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKApplyActionContentActionItem allocWithZone:](PKApplyActionContentActionItem init];
  v6 = [(NSArray *)self->_items copyWithZone:a3];
  items = v5->_items;
  v5->_items = v6;

  v8 = [(NSString *)self->_contextPrimaryActionIdentifier copyWithZone:a3];
  contextPrimaryActionIdentifier = v5->_contextPrimaryActionIdentifier;
  v5->_contextPrimaryActionIdentifier = v8;

  return v5;
}

@end