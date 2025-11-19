@interface _DAContactsAccountContactsProvider
- (_DAContactsAccountContactsProvider)initWithContactStore:(id)a3;
- (id)accountByCreatingAccountWithExternalIdentifier:(id)a3;
- (id)accountForContainerWithIdentifier:(id)a3;
- (id)allAccounts;
- (id)fetchedAccountWithExternalIdentifier:(id)a3;
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

- (id)fetchedAccountWithExternalIdentifier:(id)a3
{
  v4 = [MEMORY[0x277CBDA28] predicateForAccountWithExternalIdentifier:a3];
  v5 = [(_DAContactsAccountContactsProvider *)self contactStore];
  v6 = [v5 accountsMatchingPredicate:v4 error:0];
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

- (id)accountByCreatingAccountWithExternalIdentifier:(id)a3
{
  v3 = MEMORY[0x277CBDA28];
  v4 = a3;
  v5 = [[v3 alloc] initWithExternalIdentifier:v4];

  if (v5)
  {
    v6 = [[DAContactsBasedAccount alloc] initWithAccount:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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