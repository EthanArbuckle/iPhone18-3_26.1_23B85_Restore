@interface _DAContactsAccountABLegacyProvider
- (_DAContactsAccountABLegacyProvider)initWithAddressBook:(void *)a3;
- (id)accountByCreatingAccountWithExternalIdentifier:(id)a3;
- (id)accountForContainerWithIdentifier:(id)a3;
- (id)allAccounts;
- (id)fetchedAccountWithExternalIdentifier:(id)a3;
- (void)dealloc;
@end

@implementation _DAContactsAccountABLegacyProvider

- (_DAContactsAccountABLegacyProvider)initWithAddressBook:(void *)a3
{
  v6.receiver = self;
  v6.super_class = _DAContactsAccountABLegacyProvider;
  v4 = [(_DAContactsAccountABLegacyProvider *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
    self->_addressBook = 0;
  }

  v4.receiver = self;
  v4.super_class = _DAContactsAccountABLegacyProvider;
  [(_DAContactsAccountABLegacyProvider *)&v4 dealloc];
}

- (id)fetchedAccountWithExternalIdentifier:(id)a3
{
  v4 = a3;
  [(_DAContactsAccountABLegacyProvider *)self addressBook];
  v5 = ABAddressBookCopyAccountWithIdentifier();

  if (v5)
  {
    v6 = [[DAABLegacyAccount alloc] initWithABAccout:CFAutorelease(v5)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accountByCreatingAccountWithExternalIdentifier:(id)a3
{
  v4 = a3;
  v5 = ABAccountCreate();
  if (v5)
  {
    ABAccountSetIdentifier();
    ABAddressBookAddRecord([(_DAContactsAccountABLegacyProvider *)self addressBook], v5, 0);
    [(_DAContactsAccountABLegacyProvider *)self addressBook];
    ABAddressBookProcessAddedRecords();
    [(_DAContactsAccountABLegacyProvider *)self addressBook];
    ABDatabaseIntegrityCheckWithAddressBook();
    v5 = [[DAABLegacyAccount alloc] initWithABAccout:CFAutorelease(v5)];
  }

  return v5;
}

- (id)allAccounts
{
  v19 = *MEMORY[0x277D85DE8];
  [(_DAContactsAccountABLegacyProvider *)self addressBook];
  v2 = ABAddressBookCopyArrayOfAllAccounts();
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [DAABLegacyAccount alloc];
        v11 = [(DAABLegacyAccount *)v10 initWithABAccout:v9, v14];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)accountForContainerWithIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(_DAContactsAccountABLegacyProvider *)self addressBook];
  v10[0] = v4;
  [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = ABAddressBookCopySourcesWithUUIDs();
  v6 = [v5 firstObject];

  if (v6)
  {
    [(_DAContactsAccountABLegacyProvider *)self addressBook];
    AccountForSource = ABAddressBookGetAccountForSource();
    if (AccountForSource)
    {
      AccountForSource = [[DAABLegacyAccount alloc] initWithABAccout:AccountForSource];
    }
  }

  else
  {
    AccountForSource = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return AccountForSource;
}

@end