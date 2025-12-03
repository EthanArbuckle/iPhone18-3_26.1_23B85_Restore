@interface _DAContactsContainerProvider
- (BOOL)setLastSyncDateForContainer:(id)container;
- (_DAContactsContainerProvider)initWithContactStore:(id)store;
- (id)allContainers;
- (id)allContainersForAccountWithExternalIdentifier:(id)identifier;
- (id)containerWithExternalIdentifier:(id)identifier forAccountWithExternalIdentifier:(id)externalIdentifier;
- (void)setDefaultContainer:(id)container withLocalDBHelper:(id)helper onlyIfNotSet:(BOOL)set;
@end

@implementation _DAContactsContainerProvider

- (_DAContactsContainerProvider)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _DAContactsContainerProvider;
  v6 = [(_DAContactsContainerProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (id)containerWithExternalIdentifier:(id)identifier forAccountWithExternalIdentifier:(id)externalIdentifier
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [MEMORY[0x277CBDA28] predicateForAccountWithExternalIdentifier:externalIdentifier];
  contactStore = [(_DAContactsContainerProvider *)self contactStore];
  v36 = 0;
  v9 = [contactStore accountsMatchingPredicate:v7 error:&v36];
  v10 = v36;
  firstObject = [v9 firstObject];

  v12 = MEMORY[0x277CBDAD8];
  identifier = [firstObject identifier];
  v14 = [v12 predicateForContainersInAccountWithIdentifier:identifier includingDisabledContainers:1];

  contactStore2 = [(_DAContactsContainerProvider *)self contactStore];
  v35 = 0;
  v16 = [contactStore2 containersMatchingPredicate:v14 error:&v35];
  v17 = v35;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v19)
  {
    v28 = v17;
    v29 = v10;
    v30 = v7;
    v20 = *v32;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v32 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v22 = *(*(&v31 + 1) + 8 * v21);
      externalIdentifier = [v22 externalIdentifier];
      v24 = [externalIdentifier isEqualToString:identifierCopy];

      if (v24)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v18 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v19)
        {
          goto LABEL_3;
        }

        v25 = v18;
        goto LABEL_12;
      }
    }

    v25 = v22;

    if (v25)
    {
      v19 = [[DAContactsContainer alloc] initWithCNContainer:v25];
LABEL_12:
      v10 = v29;
      v7 = v30;
      v17 = v28;
      goto LABEL_14;
    }

    v19 = 0;
    v10 = v29;
    v7 = v30;
    v17 = v28;
  }

  else
  {
    v25 = v18;
LABEL_14:
  }

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)allContainers
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBDAD8] predicateForContainersIncludingDisabled:1];
  contactStore = [(_DAContactsContainerProvider *)self contactStore];
  v22 = 0;
  v5 = [contactStore containersMatchingPredicate:v3 error:&v22];
  v6 = v22;

  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [DAContactsContainer alloc];
        v15 = [(DAContactsContainer *)v14 initWithCNContainer:v13, v18];
        [array addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)allContainersForAccountWithExternalIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBDA28] predicateForAccountWithExternalIdentifier:identifier];
  contactStore = [(_DAContactsContainerProvider *)self contactStore];
  v30 = 0;
  v24 = v4;
  v6 = [contactStore accountsMatchingPredicate:v4 error:&v30];
  v23 = v30;
  firstObject = [v6 firstObject];

  v8 = MEMORY[0x277CBDAD8];
  identifier = [firstObject identifier];
  v10 = [v8 predicateForContainersInAccountWithIdentifier:identifier includingDisabledContainers:1];

  contactStore2 = [(_DAContactsContainerProvider *)self contactStore];
  v29 = 0;
  v12 = [contactStore2 containersMatchingPredicate:v10 error:&v29];
  v13 = v29;

  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [[DAContactsContainer alloc] initWithCNContainer:*(*(&v25 + 1) + 8 * i)];
        [array addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)setDefaultContainer:(id)container withLocalDBHelper:(id)helper onlyIfNotSet:(BOOL)set
{
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    *v7 = 0;
    _os_log_impl(&dword_24844D000, v5, v6, "Setting default container is not implemented yet. <rdar://problem/40239535>", v7, 2u);
  }
}

- (BOOL)setLastSyncDateForContainer:(id)container
{
  containerCopy = container;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    *v7 = 0;
    _os_log_impl(&dword_24844D000, v4, v5, "Setting last sync date on container is not implemented yet.", v7, 2u);
  }

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"setLastSyncDateForContainer" userInfo:0];
  objc_exception_throw(v6);
}

@end