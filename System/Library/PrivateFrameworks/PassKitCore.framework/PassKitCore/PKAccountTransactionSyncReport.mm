@interface PKAccountTransactionSyncReport
- (BOOL)isEqual:(id)equal;
- (PKAccountTransactionSyncReport)initWithCoder:(id)coder;
- (PKAccountTransactionSyncReport)initWithItems:(id)items accountIdentifier:(id)identifier;
- (id)_itemArrayRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountTransactionSyncReport

- (PKAccountTransactionSyncReport)initWithItems:(id)items accountIdentifier:(id)identifier
{
  itemsCopy = items;
  v11.receiver = self;
  v11.super_class = PKAccountTransactionSyncReport;
  v8 = [(PKAccountReport *)&v11 initWithAccountIdentifier:identifier reportType:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_items, items);
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v8.receiver = self;
  v8.super_class = PKAccountTransactionSyncReport;
  dictionaryRepresentation = [(PKAccountReport *)&v8 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  _itemArrayRepresentation = [(PKAccountTransactionSyncReport *)self _itemArrayRepresentation];
  [v4 safelySetObject:_itemArrayRepresentation forKey:@"transactionSyncReport"];

  v6 = [v4 copy];

  return v6;
}

- (PKAccountTransactionSyncReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKAccountTransactionSyncReport;
  v5 = [(PKAccountReport *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeArrayOfObjectsOfClasses:v8 forKey:@"items"];
    items = v5->_items;
    v5->_items = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKAccountTransactionSyncReport;
  coderCopy = coder;
  [(PKAccountReport *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_items forKey:{@"items", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = PKAccountTransactionSyncReport;
  if ([(PKAccountReport *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    items = self->_items;
    v6 = equalCopy[3];
    if (items)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v9 = items == v6;
    }

    else
    {
      v9 = [(NSArray *)items isEqual:?];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_items];
  v7.receiver = self;
  v7.super_class = PKAccountTransactionSyncReport;
  v4 = [(PKAccountReport *)&v7 hash];
  v5 = PKCombinedHash(v4, array);

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  accountIdentifier = [(PKAccountReport *)self accountIdentifier];
  [v3 appendFormat:@"accountIdentifier: '%@'; ", accountIdentifier];

  v5 = PKAccountReportTypeToString([(PKAccountReport *)self reportType]);
  [v3 appendFormat:@"reportType: '%@'; ", v5];

  [v3 appendFormat:@"items: '%@'; ", self->_items];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = PKAccountTransactionSyncReport;
  v5 = [(PKAccountReport *)&v9 copyWithZone:?];
  v6 = [(NSArray *)self->_items copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

- (id)_itemArrayRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_items;
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

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
        [v3 safelyAddObject:dictionaryRepresentation];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

@end