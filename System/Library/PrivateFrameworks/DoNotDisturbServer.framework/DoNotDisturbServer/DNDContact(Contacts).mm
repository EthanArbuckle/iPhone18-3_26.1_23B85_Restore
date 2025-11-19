@interface DNDContact(Contacts)
+ (id)contactWithCNContact:()Contacts;
+ (id)keysToFetch;
- (id)sanitizedContactWithContactStore:()Contacts withError:;
@end

@implementation DNDContact(Contacts)

+ (id)contactWithCNContact:()Contacts
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D05A28]);
  v5 = [v3 identifier];
  [v4 setContactIdentifier:v5];

  v6 = [v3 givenName];
  [v4 setFirstName:v6];

  v7 = [v3 middleName];
  [v4 setMiddleName:v7];

  v8 = [v3 familyName];
  [v4 setLastName:v8];

  v9 = [v3 nickname];
  [v4 setNickName:v9];

  v10 = [v3 organizationName];
  [v4 setOrganizationName:v10];

  v11 = [MEMORY[0x277CBEB58] set];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = [v3 emailAddresses];
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v35 + 1) + 8 * i) value];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v14);
  }

  [v4 setEmailAddresses:v11];
  v18 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v30 = v3;
  v19 = [v3 phoneNumbers];
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v31 + 1) + 8 * j) value];
        v25 = [v24 stringValue];

        v26 = [MEMORY[0x277D058F0] normalizePhoneNumber:v25];
        [v18 addObject:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v21);
  }

  [v4 setPhoneNumbers:v18];
  v27 = [v4 copy];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)keysToFetch
{
  if (keysToFetch_onceToken != -1)
  {
    +[DNDContact(Contacts) keysToFetch];
  }

  v1 = keysToFetch_keys;

  return v1;
}

- (id)sanitizedContactWithContactStore:()Contacts withError:
{
  v6 = a3;
  v7 = a1;
  v8 = [MEMORY[0x277D058F0] keysToFetch];
  v9 = [v7 contactIdentifier];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [v7 phoneNumbers];
  if ([v10 count])
  {
    v11 = [v7 emailAddresses];
    v12 = [v11 count];

    if (v12)
    {
      v9 = 0;
LABEL_5:
      v13 = v7;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v14 = [v7 contactIdentifier];
  v19 = 0;
  v15 = [v6 unifiedContactWithIdentifier:v14 keysToFetch:v8 error:&v19];
  v9 = v19;

  v13 = v7;
  if (v15)
  {
    v13 = [MEMORY[0x277D058F0] contactWithCNContact:v15];
  }

  if (v9)
  {
    v16 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
    {
      [(DNDContact(Contacts) *)v7 sanitizedContactWithContactStore:v9 withError:v16];
      if (!a4)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (a4)
    {
LABEL_12:
      v17 = v9;
      *a4 = v9;
    }
  }

LABEL_13:

LABEL_14:

  return v13;
}

- (void)sanitizedContactWithContactStore:()Contacts withError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_24912E000, log, OS_LOG_TYPE_ERROR, "Sanitizing contact %{public}@ failed: error=%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end