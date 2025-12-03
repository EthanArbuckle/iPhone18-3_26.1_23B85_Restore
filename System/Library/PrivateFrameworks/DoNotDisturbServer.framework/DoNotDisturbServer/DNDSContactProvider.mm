@interface DNDSContactProvider
+ (id)sharedContactStore;
- (DNDSContactProvider)init;
- (id)_bestMatchForContact:(id)contact inContacts:(id)contacts;
- (id)contactForContact:(id)contact;
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
    sharedContactStore = [objc_opt_class() sharedContactStore];
    contactStore = v2->_contactStore;
    v2->_contactStore = sharedContactStore;
  }

  return v2;
}

- (id)contactForContact:(id)contact
{
  contactCopy = contact;
  v5 = objc_opt_new();
  phoneNumbers = [contactCopy phoneNumbers];
  allObjects = [phoneNumbers allObjects];
  [v5 addObjectsFromArray:allObjects];

  emailAddresses = [contactCopy emailAddresses];
  allObjects2 = [emailAddresses allObjects];
  [v5 addObjectsFromArray:allObjects2];

  v10 = [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:v5];
  v11 = contactCopy;
  if (v10)
  {
    contactStore = self->_contactStore;
    keysToFetch = [MEMORY[0x277D058F0] keysToFetch];
    v19 = 0;
    v14 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v10 keysToFetch:keysToFetch error:&v19];
    v15 = v19;

    if ([v14 count] < 2)
    {
      [v14 firstObject];
    }

    else
    {
      [(DNDSContactProvider *)self _bestMatchForContact:contactCopy inContacts:v14];
    }
    v16 = ;
    if (v16)
    {
      v11 = [MEMORY[0x277D058F0] contactWithCNContact:v16];
    }

    else
    {
      v17 = DNDSLogSettings;
      v11 = contactCopy;
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
      {
        [(DNDSContactProvider *)contactCopy contactForContact:v17];
        v11 = contactCopy;
      }
    }
  }

  return v11;
}

- (id)_bestMatchForContact:(id)contact inContacts:(id)contacts
{
  v109 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  contactsCopy = contacts;
  v7 = DNDSLogSettings;
  if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 134349314;
    v106 = [contactsCopy count];
    v107 = 2112;
    v108 = contactCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Scoring %{public}llu matches for contact %@", buf, 0x16u);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = contactsCopy;
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
  v79 = contactCopy;
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
      givenName = [v11 givenName];
      v78 = v10;
      if ([givenName length])
      {
        firstName = [contactCopy firstName];
        if ([firstName length])
        {
          givenName2 = [v11 givenName];
          lowercaseString = [givenName2 lowercaseString];
          firstName2 = [contactCopy firstName];
          lowercaseString2 = [firstName2 lowercaseString];
          v18 = [lowercaseString isEqualToString:lowercaseString2];

          v19 = v18 & 1;
          goto LABEL_13;
        }
      }

      v19 = 0;
LABEL_13:
      middleName = [v11 middleName];
      if ([middleName length])
      {
        middleName2 = [contactCopy middleName];
        if ([middleName2 length])
        {
          middleName3 = [v11 middleName];
          lowercaseString3 = [middleName3 lowercaseString];
          middleName4 = [contactCopy middleName];
          lowercaseString4 = [middleName4 lowercaseString];
          v26 = [lowercaseString3 isEqualToString:lowercaseString4];

          v19 += v26 & 1;
          goto LABEL_18;
        }
      }

LABEL_18:
      familyName = [v11 familyName];
      if ([familyName length])
      {
        lastName = [contactCopy lastName];
        if ([lastName length])
        {
          familyName2 = [v11 familyName];
          lowercaseString5 = [familyName2 lowercaseString];
          lastName2 = [contactCopy lastName];
          lowercaseString6 = [lastName2 lowercaseString];
          v33 = [lowercaseString5 isEqualToString:lowercaseString6];

          v19 += v33 & 1;
          goto LABEL_23;
        }
      }

LABEL_23:
      organizationName = [v11 organizationName];
      if ([organizationName length])
      {
        organizationName2 = [contactCopy organizationName];
        if ([organizationName2 length])
        {
          organizationName3 = [v11 organizationName];
          lowercaseString7 = [organizationName3 lowercaseString];
          organizationName4 = [contactCopy organizationName];
          lowercaseString8 = [organizationName4 lowercaseString];
          v40 = [lowercaseString7 isEqualToString:lowercaseString8];

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
      emailAddresses = [v11 emailAddresses];
      v43 = [emailAddresses countByEnumeratingWithState:&v92 objects:v103 count:16];
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
              objc_enumerationMutation(emailAddresses);
            }

            value = [*(*(&v92 + 1) + 8 * i) value];
            [v41 addObject:value];
          }

          v44 = [emailAddresses countByEnumeratingWithState:&v92 objects:v103 count:16];
        }

        while (v44);
      }

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      emailAddresses2 = [v79 emailAddresses];
      v49 = [emailAddresses2 countByEnumeratingWithState:&v88 objects:v102 count:16];
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
              objc_enumerationMutation(emailAddresses2);
            }

            if ([v41 containsObject:*(*(&v88 + 1) + 8 * j)])
            {
              v19 += 10;
            }
          }

          v50 = [emailAddresses2 countByEnumeratingWithState:&v88 objects:v102 count:16];
        }

        while (v50);
      }

      v53 = [MEMORY[0x277CBEB58] set];
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      phoneNumbers = [v11 phoneNumbers];
      v55 = [phoneNumbers countByEnumeratingWithState:&v84 objects:v101 count:16];
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
              objc_enumerationMutation(phoneNumbers);
            }

            value2 = [*(*(&v84 + 1) + 8 * k) value];
            stringValue = [value2 stringValue];
            [v53 addObject:stringValue];
          }

          v56 = [phoneNumbers countByEnumeratingWithState:&v84 objects:v101 count:16];
        }

        while (v56);
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      contactCopy = v79;
      phoneNumbers2 = [v79 phoneNumbers];
      v62 = [phoneNumbers2 countByEnumeratingWithState:&v80 objects:v100 count:16];
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
              objc_enumerationMutation(phoneNumbers2);
            }

            if ([v53 containsObject:*(*(&v80 + 1) + 8 * m)])
            {
              v19 += 10;
            }
          }

          v63 = [phoneNumbers2 countByEnumeratingWithState:&v80 objects:v100 count:16];
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