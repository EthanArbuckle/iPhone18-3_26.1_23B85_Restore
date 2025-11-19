@interface _DAContactsAccountContactsProvider
- (_DAContactsAccountContactsProvider)initWithContactStore:(id)a3;
- (id)accountForContainerWithIdentifier:(id)a3;
- (id)accountWithExternalIdentifier:(id)a3 createIfNecessary:(BOOL)a4;
- (id)allAccounts;
@end

@implementation _DAContactsAccountContactsProvider

- (_DAContactsAccountContactsProvider)initWithContactStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DAContactsAccountContactsProvider;
  v6 = [(_DAContactsAccountContactsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
  }

  return v7;
}

- (id)accountWithExternalIdentifier:(id)a3 createIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x277CBDA28] predicateForAccountWithExternalIdentifier:v6];
  v8 = [(_DAContactsAccountContactsProvider *)self contactStore];
  v15 = 0;
  v9 = [v8 accountsMatchingPredicate:v7 error:&v15];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = !v4;
  }

  if (v11)
  {
    if (v10)
    {
      v13 = [[DAContactsBasedAccount alloc] initWithAccount:v10];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CBDA28]) initWithExternalIdentifier:v6];
    v13 = [[DAContactsBasedAccount alloc] initWithAccount:v12];
  }

  return v13;
}

- (id)allAccounts
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [(_DAContactsAccountContactsProvider *)self contactStore];
  v20 = 0;
  v3 = [v2 accountsMatchingPredicate:0 error:&v20];
  v4 = v20;

  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [DAContactsBasedAccount alloc];
        v13 = [(DAContactsBasedAccount *)v12 initWithAccount:v11, v16];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)accountForContainerWithIdentifier:(id)a3
{
  v4 = [MEMORY[0x277CBDA28] predicateForAccountForContainerWithIdentifier:a3];
  v5 = [(_DAContactsAccountContactsProvider *)self contactStore];
  v10 = 0;
  v6 = [v5 accountsMatchingPredicate:v4 error:&v10];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [[DAContactsBasedAccount alloc] initWithAccount:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end