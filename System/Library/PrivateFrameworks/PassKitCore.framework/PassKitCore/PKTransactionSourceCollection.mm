@interface PKTransactionSourceCollection
- (BOOL)isEqual:(id)equal;
- (PKTransactionSourceCollection)initWithTransactionSource:(id)source;
- (PKTransactionSourceCollection)initWithTransactionSources:(id)sources;
- (id)account;
- (id)paymentPass;
- (id)transactionSourceForTransactionSourceIdentifier:(id)identifier;
- (id)transactionSourceIdentifiers;
- (id)transactionSourcesForType:(unint64_t)type;
- (unint64_t)hash;
@end

@implementation PKTransactionSourceCollection

- (PKTransactionSourceCollection)initWithTransactionSources:(id)sources
{
  sourcesCopy = sources;
  v9.receiver = self;
  v9.super_class = PKTransactionSourceCollection;
  v6 = [(PKTransactionSourceCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transactionSources, sources);
  }

  return v7;
}

- (PKTransactionSourceCollection)initWithTransactionSource:(id)source
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:source];
  v5 = [(PKTransactionSourceCollection *)self initWithTransactionSources:v4];

  return v5;
}

- (id)transactionSourceIdentifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_transactionSources;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        transactionSourceIdentifiers = [*(*(&v12 + 1) + 8 * i) transactionSourceIdentifiers];
        [v3 unionSet:transactionSourceIdentifiers];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)paymentPass
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_transactionSources;
  paymentPass2 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (paymentPass2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != paymentPass2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        paymentPass = [v6 paymentPass];

        if (paymentPass)
        {
          paymentPass2 = [v6 paymentPass];
          goto LABEL_11;
        }
      }

      paymentPass2 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (paymentPass2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return paymentPass2;
}

- (id)account
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_transactionSources;
  account2 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (account2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != account2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        account = [v6 account];

        if (account)
        {
          account2 = [v6 account];
          goto LABEL_11;
        }
      }

      account2 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (account2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return account2;
}

- (id)transactionSourceForTransactionSourceIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_transactionSources;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          transactionSourceIdentifiers = [v9 transactionSourceIdentifiers];
          v11 = [transactionSourceIdentifiers containsObject:identifierCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [(NSSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)transactionSourcesForType:(unint64_t)type
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_transactionSources;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 type] == type)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transactionSources = self->_transactionSources;
    v6 = equalCopy[1];
    if (transactionSources && v6)
    {
      v7 = [(NSSet *)transactionSources isEqual:?];
    }

    else
    {
      v7 = transactionSources == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_transactionSources];
  v4 = PKCombinedHash(17, array);

  return v4;
}

@end