@interface PKAccountUserCollection
- (BOOL)_isEqualToAccountUserCollection:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKAccountUserCollection)initWithAccountUsers:(id)a3;
- (PKAccountUserCollection)initWithCoder:(id)a3;
- (id)accountUserForTransaction:(id)a3;
- (id)accountUserWithAltDSID:(id)a3;
- (id)description;
- (id)transactionSourceIdentifiers;
- (unint64_t)hash;
- (void)_updateWithAccountUsers:(id)a3;
@end

@implementation PKAccountUserCollection

- (PKAccountUserCollection)initWithAccountUsers:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKAccountUserCollection;
  v5 = [(PKAccountUserCollection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKAccountUserCollection *)v5 _updateWithAccountUsers:v4];
  }

  return v6;
}

- (PKAccountUserCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountUserCollection;
  v5 = [(PKAccountUserCollection *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"accountUsers"];

    [(PKAccountUserCollection *)v5 _updateWithAccountUsers:v9];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountUserCollection *)self _isEqualToAccountUserCollection:v5];
  }

  return v6;
}

- (BOOL)_isEqualToAccountUserCollection:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  accountUsers = self->_accountUsers;
  v4 = *(a3 + 3);
  if (accountUsers)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return accountUsers == v4;
  }

  else
  {
    return [(NSSet *)accountUsers isEqual:?];
  }
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_accountUsers];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)accountUserWithAltDSID:(id)a3
{
  if (a3)
  {
    v4 = [(NSDictionary *)self->_accountUsersByAltDSID objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accountUserForTransaction:(id)a3
{
  v4 = [a3 altDSID];
  if (v4)
  {
    [(PKAccountUserCollection *)self accountUserWithAltDSID:v4];
  }

  else
  {
    [(PKAccountUserCollection *)self currentAccountUser];
  }
  v5 = ;

  return v5;
}

uint64_t __72__PKAccountUserCollection_activeAccountUsersExcludingCurrentAccountUser__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCurrentUser])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 accountState];
    if (v4 <= 5)
    {
      v3 = 0xFu >> v4;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3 & 1;
}

- (id)transactionSourceIdentifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_accountUsers;
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

        v9 = [*(*(&v12 + 1) + 8 * i) transactionSourceIdentifiers];
        if (v9)
        {
          [v3 unionSet:v9];
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"users: '%@'; ", self->_accountUsers];
  [v3 appendFormat:@">"];

  return v3;
}

- (void)_updateWithAccountUsers:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  accountUsers = self->_accountUsers;
  if (v4 && accountUsers)
  {
    if (([(NSSet *)accountUsers isEqual:v4]& 1) != 0)
    {
      goto LABEL_18;
    }
  }

  else if (accountUsers == v4)
  {
    goto LABEL_18;
  }

  v6 = [(NSSet *)v4 copy];
  v7 = self->_accountUsers;
  self->_accountUsers = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v4;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 altDSID];
        if (v15)
        {
          [v8 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v11 = [(NSSet *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v16 = [v8 copy];
  accountUsersByAltDSID = self->_accountUsersByAltDSID;
  self->_accountUsersByAltDSID = v16;

  v18 = [(NSSet *)v9 pk_anyObjectPassingTest:&__block_literal_global_37_1];
  currentAccountUser = self->_currentAccountUser;
  self->_currentAccountUser = v18;

  if ([(PKAccountUser *)self->_currentAccountUser accessLevel]== 1)
  {
    v20 = [(NSSet *)v9 pk_anyObjectPassingTest:&__block_literal_global_39_1];
    coOwnerAccountUser = self->_coOwnerAccountUser;
    self->_coOwnerAccountUser = v20;
  }

  self->_coOwner = self->_coOwnerAccountUser != 0;

LABEL_18:
}

BOOL __51__PKAccountUserCollection__updateWithAccountUsers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 isCurrentUser] & 1) == 0 && objc_msgSend(v2, "accessLevel") == 1;

  return v3;
}

@end