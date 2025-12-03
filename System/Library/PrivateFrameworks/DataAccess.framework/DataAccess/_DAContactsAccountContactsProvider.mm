@interface _DAContactsAccountContactsProvider
- (_DAContactsAccountContactsProvider)initWithContactStore:(id)store;
- (id)accountByCreatingAccountWithExternalIdentifier:(id)identifier;
- (id)accountForContainerWithIdentifier:(id)identifier;
- (id)allAccounts;
- (id)fetchedAccountWithExternalIdentifier:(id)identifier;
@end

@implementation _DAContactsAccountContactsProvider

- (_DAContactsAccountContactsProvider)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _DAContactsAccountContactsProvider;
  v6 = [(_DAContactsAccountContactsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (id)fetchedAccountWithExternalIdentifier:(id)identifier
{
  v4 = [MEMORY[0x277CBDA28] predicateForAccountWithExternalIdentifier:identifier];
  contactStore = [(_DAContactsAccountContactsProvider *)self contactStore];
  v6 = [contactStore accountsMatchingPredicate:v4 error:0];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [[DAContactsBasedAccount alloc] initWithAccount:firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accountByCreatingAccountWithExternalIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CBDA28];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithExternalIdentifier:identifierCopy];

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
  contactStore = [(_DAContactsAccountContactsProvider *)self contactStore];
  v20 = 0;
  v3 = [contactStore accountsMatchingPredicate:0 error:&v20];
  v4 = v20;

  array = [MEMORY[0x277CBEB18] array];
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
        [array addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)accountForContainerWithIdentifier:(id)identifier
{
  v4 = [MEMORY[0x277CBDA28] predicateForAccountForContainerWithIdentifier:identifier];
  contactStore = [(_DAContactsAccountContactsProvider *)self contactStore];
  v10 = 0;
  v6 = [contactStore accountsMatchingPredicate:v4 error:&v10];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [[DAContactsBasedAccount alloc] initWithAccount:firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end