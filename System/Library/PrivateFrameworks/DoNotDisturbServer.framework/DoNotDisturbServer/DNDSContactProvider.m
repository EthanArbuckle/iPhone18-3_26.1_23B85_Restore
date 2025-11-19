@interface DNDSContactProvider
+ (id)sharedContactStore;
- (DNDSContactProvider)init;
- (id)_bestMatchForContact:(id)a3 inContacts:(id)a4;
- (id)contactForContact:(id)a3;
@end

@implementation DNDSContactProvider

+ (id)sharedContactStore
{
  if (sharedContactStore_onceToken != -1)
  {
    +[DNDSContactProvider sharedContactStore];
  }

  v3 = sharedContactStore_contactStore;

  return v3;
}

uint64_t __41__DNDSContactProvider_sharedContactStore__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v1 = sharedContactStore_contactStore;
  sharedContactStore_contactStore = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (DNDSContactProvider)init
{
  v6.receiver = self;
  v6.super_class = DNDSContactProvider;
  v2 = [(DNDSContactProvider *)&v6 init];
  if (v2)
  {
    v3 = [objc_opt_class() sharedContactStore];
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;
  }

  return v2;
}

- (id)contactForContact:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 phoneNumbers];
  v7 = [v6 allObjects];
  [v5 addObjectsFromArray:v7];

  v8 = [v4 emailAddresses];
  v9 = [v8 allObjects];
  [v5 addObjectsFromArray:v9];

  v10 = [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:v5];
  v11 = v4;
  if (v10)
  {
    contactStore = self->_contactStore;
    v13 = [MEMORY[0x277D058F0] keysToFetch];
    v19 = 0;
    v14 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v10 keysToFetch:v13 error:&v19];
    v15 = v19;

    if ([v14 count] < 2)
    {
      [v14 firstObject];
    }

    else
    {
      [(DNDSContactProvider *)self _bestMatchForContact:v4 inContacts:v14];
    }
    v16 = ;
    if (v16)
    {
      v11 = [MEMORY[0x277D058F0] contactWithCNContact:v16];
    }

    else
    {
      v17 = DNDSLogSettings;
      v11 = v4;
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
      {
        [(DNDSContactProvider *)v4 contactForContact:v17];
        v11 = v4;
      }
    }
  }

  return v11;
}

- (id)_bestMatchForContact:(id)a3 inContacts:(id)a4
{
  v109 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = DNDSLogSettings;
  if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 134349314;
    v106 = [v6 count];
    v107 = 2112;
    v108 = v5;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Scoring %{public}llu matches for contact %@", buf, 0x16u);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v6;
  v76 = [obj countByEnumeratingWithState:&v96 objects:v104 count:16];
  if (!v76)
  {
    v75 = 0;
    v77 = 0;
    goto LABEL_70;
  }

  v77 = 0;
  v74 = *v97;
  v75 = 0;
  *&v9 = 134349056;
  v72 = v9;
  v79 = v5;
  do
  {
    v10 = 0;
    do
    {
      if (*v97 != v74)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v96 + 1) + 8 * v10);
      v12 = [v11 givenName];
      v78 = v10;
      if ([v12 length])
      {
        v13 = [v5 firstName];
        if ([v13 length])
        {
          v14 = [v11 givenName];
          v15 = [v14 lowercaseString];
          v16 = [v5 firstName];
          v17 = [v16 lowercaseString];
          v18 = [v15 isEqualToString:v17];

          v19 = v18 & 1;
          goto LABEL_13;
        }
      }

      v19 = 0;
LABEL_13:
      v20 = [v11 middleName];
      if ([v20 length])
      {
        v21 = [v5 middleName];
        if ([v21 length])
        {
          v22 = [v11 middleName];
          v23 = [v22 lowercaseString];
          v24 = [v5 middleName];
          v25 = [v24 lowercaseString];
          v26 = [v23 isEqualToString:v25];

          v19 += v26 & 1;
          goto LABEL_18;
        }
      }

LABEL_18:
      v27 = [v11 familyName];
      if ([v27 length])
      {
        v28 = [v5 lastName];
        if ([v28 length])
        {
          v29 = [v11 familyName];
          v30 = [v29 lowercaseString];
          v31 = [v5 lastName];
          v32 = [v31 lowercaseString];
          v33 = [v30 isEqualToString:v32];

          v19 += v33 & 1;
          goto LABEL_23;
        }
      }

LABEL_23:
      v34 = [v11 organizationName];
      if ([v34 length])
      {
        v35 = [v5 organizationName];
        if ([v35 length])
        {
          v36 = [v11 organizationName];
          v37 = [v36 lowercaseString];
          v38 = [v5 organizationName];
          v39 = [v38 lowercaseString];
          v40 = [v37 isEqualToString:v39];

          v19 += v40 & 1;
          goto LABEL_28;
        }
      }

LABEL_28:
      v41 = [MEMORY[0x277CBEB58] set];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v42 = [v11 emailAddresses];
      v43 = [v42 countByEnumeratingWithState:&v92 objects:v103 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v93;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v93 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = [*(*(&v92 + 1) + 8 * i) value];
            [v41 addObject:v47];
          }

          v44 = [v42 countByEnumeratingWithState:&v92 objects:v103 count:16];
        }

        while (v44);
      }

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v48 = [v79 emailAddresses];
      v49 = [v48 countByEnumeratingWithState:&v88 objects:v102 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v89;
        do
        {
          for (j = 0; j != v50; ++j)
          {
            if (*v89 != v51)
            {
              objc_enumerationMutation(v48);
            }

            if ([v41 containsObject:*(*(&v88 + 1) + 8 * j)])
            {
              v19 += 10;
            }
          }

          v50 = [v48 countByEnumeratingWithState:&v88 objects:v102 count:16];
        }

        while (v50);
      }

      v53 = [MEMORY[0x277CBEB58] set];
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v54 = [v11 phoneNumbers];
      v55 = [v54 countByEnumeratingWithState:&v84 objects:v101 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v85;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v85 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = [*(*(&v84 + 1) + 8 * k) value];
            v60 = [v59 stringValue];
            [v53 addObject:v60];
          }

          v56 = [v54 countByEnumeratingWithState:&v84 objects:v101 count:16];
        }

        while (v56);
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v5 = v79;
      v61 = [v79 phoneNumbers];
      v62 = [v61 countByEnumeratingWithState:&v80 objects:v100 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v81;
        do
        {
          for (m = 0; m != v63; ++m)
          {
            if (*v81 != v64)
            {
              objc_enumerationMutation(v61);
            }

            if ([v53 containsObject:*(*(&v80 + 1) + 8 * m)])
            {
              v19 += 10;
            }
          }

          v63 = [v61 countByEnumeratingWithState:&v80 objects:v100 count:16];
        }

        while (v63);
      }

      v66 = DNDSLogSettings;
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v106 = v11;
        v107 = 2050;
        v108 = v19;
        _os_log_impl(&dword_24912E000, v66, OS_LOG_TYPE_DEFAULT, "Contact %@ scored %{public}llu", buf, 0x16u);
      }

      if (v19 > v77)
      {
        v67 = DNDSLogSettings;
        if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v72;
          v106 = v19;
          _os_log_impl(&dword_24912E000, v67, OS_LOG_TYPE_DEFAULT, "New high score: %{public}llu", buf, 0xCu);
        }

        v68 = v11;

        v75 = v68;
        v77 = v19;
      }

      v10 = v78 + 1;
    }

    while (v78 + 1 != v76);
    v76 = [obj countByEnumeratingWithState:&v96 objects:v104 count:16];
  }

  while (v76);
LABEL_70:

  v69 = DNDSLogSettings;
  if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v106 = v75;
    v107 = 2050;
    v108 = v77;
    _os_log_impl(&dword_24912E000, v69, OS_LOG_TYPE_DEFAULT, "Contact %@ has the high score %{public}llu", buf, 0x16u);
  }

  v70 = *MEMORY[0x277D85DE8];

  return v75;
}

- (void)contactForContact:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Could not fetch a contact for contact: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end