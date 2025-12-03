@interface _DAContactsAccountABLegacyProvider
- (_DAContactsAccountABLegacyProvider)initWithAddressBook:(void *)book;
- (id)accountForContainerWithIdentifier:(id)identifier;
- (id)accountWithExternalIdentifier:(id)identifier createIfNecessary:(BOOL)necessary;
- (id)allAccounts;
- (void)dealloc;
@end

@implementation _DAContactsAccountABLegacyProvider

- (_DAContactsAccountABLegacyProvider)initWithAddressBook:(void *)book
{
  v6.receiver = self;
  v6.super_class = _DAContactsAccountABLegacyProvider;
  v4 = [(_DAContactsAccountABLegacyProvider *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(book);
  }

  return v4;
}

- (void)dealloc
{
  CFRetain(self->_addressBook);
  v3.receiver = self;
  v3.super_class = _DAContactsAccountABLegacyProvider;
  [(_DAContactsAccountABLegacyProvider *)&v3 dealloc];
}

- (id)accountWithExternalIdentifier:(id)identifier createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  [(_DAContactsAccountABLegacyProvider *)self addressBook];
  v7 = ABAddressBookCopyAccountWithIdentifier();
  v8 = v7;
  if (!v7 && necessaryCopy)
  {
    v9 = ABAccountCreate();
    ABAccountSetIdentifier();
    ABAddressBookAddRecord([(_DAContactsAccountABLegacyProvider *)self addressBook], v9, 0);
    [(_DAContactsAccountABLegacyProvider *)self addressBook];
    ABAddressBookProcessAddedRecords();
    [(_DAContactsAccountABLegacyProvider *)self addressBook];
    ABDatabaseIntegrityCheckWithAddressBook();
    v10 = [DAABLegacyAccount alloc];
    v11 = v9;
LABEL_6:
    v12 = [(DAABLegacyAccount *)v10 initWithABAccout:CFAutorelease(v11)];
    goto LABEL_7;
  }

  if (v7)
  {
    v10 = [DAABLegacyAccount alloc];
    v11 = v8;
    goto LABEL_6;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)allAccounts
{
  v19 = *MEMORY[0x277D85DE8];
  [(_DAContactsAccountABLegacyProvider *)self addressBook];
  v2 = ABAddressBookCopyArrayOfAllAccounts();
  array = [MEMORY[0x277CBEB18] array];
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
        [array addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)accountForContainerWithIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(_DAContactsAccountABLegacyProvider *)self addressBook];
  v10[0] = identifierCopy;
  [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = ABAddressBookCopySourcesWithUUIDs();
  firstObject = [v5 firstObject];

  if (firstObject)
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