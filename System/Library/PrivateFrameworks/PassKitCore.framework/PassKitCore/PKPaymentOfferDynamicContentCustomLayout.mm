@interface PKPaymentOfferDynamicContentCustomLayout
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferDynamicContentCustomLayout)initWithArray:(id)a3;
- (PKPaymentOfferDynamicContentCustomLayout)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKPaymentOfferDynamicContentCustomLayout

- (PKPaymentOfferDynamicContentCustomLayout)initWithArray:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [[PKPaymentOfferDynamicContentCustomLayoutItem alloc] initWithDictionary:*(*(&v18 + 1) + 8 * v10)];
          [v5 safelyAddObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v17.receiver = self;
      v17.super_class = PKPaymentOfferDynamicContentCustomLayout;
      v12 = [(PKPaymentOfferDynamicContentCustomLayout *)&v17 init];
      if (v12)
      {
        v13 = [v5 copy];
        items = v12->_items;
        v12->_items = v13;
      }

      self = v12;
      v15 = self;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    items = self->_items;
    v7 = v5->_items;
    if (items && v7)
    {
      v8 = [(NSArray *)items isEqual:?];
    }

    else
    {
      v8 = items == v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_items];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  if (self->_items)
  {
    [v3 appendFormat:@"items: '%@'; ", self->_items];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferDynamicContentCustomLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPaymentOfferDynamicContentCustomLayout;
  v5 = [(PKPaymentOfferDynamicContentCustomLayout *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"customLayoutItem"];
    items = v5->_items;
    v5->_items = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOfferDynamicContentCustomLayout allocWithZone:](PKPaymentOfferDynamicContentCustomLayout init];
  v6 = [(NSArray *)self->_items copyWithZone:a3];
  items = v5->_items;
  v5->_items = v6;

  return v5;
}

@end