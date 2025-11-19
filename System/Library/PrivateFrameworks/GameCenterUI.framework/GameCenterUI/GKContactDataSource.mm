@interface GKContactDataSource
- (GKContactDataSource)init;
- (id)fetchContactWithID:(id)a3;
- (id)fullContactWithIdentifier:(id)a3;
- (id)keysToFetch;
- (void)loadContactsWithHandler:(id)a3;
@end

@implementation GKContactDataSource

- (GKContactDataSource)init
{
  v5.receiver = self;
  v5.super_class = GKContactDataSource;
  v2 = [(GKContactDataSource *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    [(GKContactDataSource *)v2 setStore:v3];
  }

  return v2;
}

- (id)keysToFetch
{
  v16[14] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v3 = *MEMORY[0x277CBD018];
  v16[0] = v2;
  v16[1] = v3;
  v4 = *MEMORY[0x277CBD098];
  v16[2] = *MEMORY[0x277CBCFC0];
  v16[3] = v4;
  v5 = *MEMORY[0x277CBD000];
  v16[4] = *MEMORY[0x277CBD068];
  v16[5] = v5;
  v6 = *MEMORY[0x277CBCFF8];
  v16[6] = *MEMORY[0x277CBD058];
  v16[7] = v6;
  v7 = *MEMORY[0x277CBD070];
  v16[8] = *MEMORY[0x277CBD0E0];
  v16[9] = v7;
  v8 = *MEMORY[0x277CBD160];
  v16[10] = *MEMORY[0x277CBD078];
  v16[11] = v8;
  v9 = *MEMORY[0x277CBD158];
  v16[12] = *MEMORY[0x277CBD028];
  v16[13] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:14];

  v11 = *MEMORY[0x277CBD128];
  v15[0] = *MEMORY[0x277CBD130];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v13 = [v10 arrayByAddingObjectsFromArray:v12];

  return v13;
}

- (void)loadContactsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKContactDataSource *)self keysToFetch];
  v6 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v5];
  [v6 setSortOrder:1];
  v7 = [(CNContactStore *)self->_store _crossPlatformUnifiedMeContactWithKeysToFetch:v5 error:0];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  store = self->_store;
  v22 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __47__GKContactDataSource_loadContactsWithHandler___block_invoke;
  v18 = &unk_27966AF78;
  v11 = v7;
  v19 = v11;
  v12 = v8;
  v20 = v12;
  v13 = v9;
  v21 = v13;
  [(CNContactStore *)store enumerateContactsWithFetchRequest:v6 error:&v22 usingBlock:&v15];
  v14 = v22;
  [(GKContactDataSource *)self setContacts:v12, v15, v16, v17, v18];
  [(GKContactDataSource *)self setContactLookup:v13];
  if (v4)
  {
    v4[2](v4, v12, v14);
  }
}

uint64_t __47__GKContactDataSource_loadContactsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if (![v16 contactType])
  {
    v4 = [v16 identifier];
    v5 = [*(a1 + 32) identifier];
    if ([v4 isEqualToString:v5])
    {
LABEL_3:

LABEL_15:
      goto LABEL_16;
    }

    v6 = [v16 givenName];
    v7 = [v6 length];
    v8 = v16;
    v9 = v7;
    if (!v7)
    {
      v2 = [v16 familyName];
      if (![v2 length])
      {

        goto LABEL_3;
      }

      v8 = v16;
    }

    v10 = [v8 emailAddresses];
    if ([v10 count])
    {

      if (!v9)
      {
      }

      v11 = v16;
LABEL_14:
      [*(a1 + 40) addObject:v11];
      v14 = *(a1 + 48);
      v4 = [v16 identifier];
      [v14 setObject:v16 forKeyedSubscript:v4];
      goto LABEL_15;
    }

    v12 = [v16 phoneNumbers];
    v13 = [v12 count];

    if (!v9)
    {
    }

    v11 = v16;
    if (v13)
    {
      goto LABEL_14;
    }
  }

LABEL_16:

  return MEMORY[0x2821F96F8]();
}

- (id)fetchContactWithID:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKContactDataSource *)self keysToFetch];
  v6 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v5];
  v7 = MEMORY[0x277CBDA58];
  v21[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v9 = [v7 predicateForContactsWithIdentifiers:v8];
  [v6 setPredicate:v9];

  v10 = [(GKContactDataSource *)self store];
  v20 = 0;
  v11 = [v10 enumeratorForContactFetchRequest:v6 error:&v20];
  v12 = v20;

  v13 = [v11 value];

  if (!v13 || v12)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v17 = GKOSLoggers();
    }

    v18 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [GKContactDataSource fetchContactWithID:v18];
    }

    v16 = 0;
  }

  else
  {
    v14 = [v11 value];
    v15 = [v14 allObjects];
    v16 = [v15 firstObject];
  }

  return v16;
}

- (id)fullContactWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(GKContactDataSource *)self contactLookup];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

@end