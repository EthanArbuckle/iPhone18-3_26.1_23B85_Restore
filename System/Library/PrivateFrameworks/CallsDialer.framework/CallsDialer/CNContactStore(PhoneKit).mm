@interface CNContactStore(PhoneKit)
+ (id)contactStore;
+ (id)suggestedContactStore;
+ (void)contactStore;
- (id)__contactsForHandles:()PhoneKit keyDescriptors:alwaysUnifyLabeledValues:;
- (id)contactsForHandles:()PhoneKit keyDescriptors:alwaysUnifyLabeledValues:;
@end

@implementation CNContactStore(PhoneKit)

+ (id)contactStore
{
  if ([self phoneKit_isAuthorized])
  {
    v1 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v1 setIncludeLocalContacts:1];
    if (_os_feature_enabled_impl())
    {
      [v1 setIncludeAcceptedIntroductions:1];
    }

    v2 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v1];
  }

  else
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CNContactStore(PhoneKit) *)v3 contactStore:v4];
    }

    v2 = 0;
  }

  return v2;
}

+ (id)suggestedContactStore
{
  if ([self phoneKit_isAuthorized])
  {
    v1 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v1 setIncludeLocalContacts:1];
    if ([MEMORY[0x277CBDA58] suggestionsEnabled])
    {
      [v1 setIncludeSuggestedContacts:1];
      [v1 setIncludeDonatedContacts:1];
    }

    if (_os_feature_enabled_impl())
    {
      [v1 setIncludeAcceptedIntroductions:1];
    }

    v2 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v1];
  }

  else
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CNContactStore(PhoneKit) *)v3 contactStore:v4];
    }

    v2 = 0;
  }

  return v2;
}

- (id)contactsForHandles:()PhoneKit keyDescriptors:alwaysUnifyLabeledValues:
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v49 = v9;
  if (![v8 count])
  {
    selfCopy6 = self;
    v17 = a5;
    value = 0;
    goto LABEL_21;
  }

  v10 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v9];
  v11 = [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:v8];
  [v10 setPredicate:v11];

  v12 = NSSelectorFromString(&cfstr_Setalwaysunify.isa);
  v13 = objc_opt_respondsToSelector();
  v14 = PHDefaultLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 138740227;
      v56 = v10;
      v57 = 2117;
      selfCopy3 = self;
      _os_log_impl(&dword_2429BC000, v14, OS_LOG_TYPE_DEFAULT, "Executing contact fetch request %{sensitive}@ without always unifying labels using contact store %{sensitive}@", buf, 0x16u);
    }

    ([v10 methodForSelector:v12])(v10, v12, a5);
  }

  else
  {
    if (v15)
    {
      *buf = 138740227;
      v56 = v10;
      v57 = 2117;
      selfCopy3 = self;
      _os_log_impl(&dword_2429BC000, v14, OS_LOG_TYPE_DEFAULT, "Executing contact fetch request %{sensitive}@ using contact store %{sensitive}@", buf, 0x16u);
    }
  }

  v54 = 0;
  v19 = [self executeFetchRequest:v10 error:&v54];
  v20 = v54;
  v21 = v20;
  if (v19)
  {
    value = [v19 value];
    v22 = PHDefaultLog();
    selfCopy6 = self;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [value count];
      *buf = 134217984;
      v56 = v23;
      _os_log_impl(&dword_2429BC000, v22, OS_LOG_TYPE_DEFAULT, "Contact fetch request returned %lu results", buf, 0xCu);
    }

LABEL_19:
    v17 = a5;

    goto LABEL_20;
  }

  if (v20 && [v20 code] != 200)
  {
    v22 = PHDefaultLog();
    selfCopy6 = self;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(CNContactStore(PhoneKit) *)v21 contactsForHandles:v22 keyDescriptors:v24 alwaysUnifyLabeledValues:v25, v26, v27, v28, v29];
    }

    value = 0;
    goto LABEL_19;
  }

  selfCopy6 = self;
  v17 = a5;
  value = 0;
LABEL_20:

LABEL_21:
  v30 = MEMORY[0x277CBEB98];
  allKeys = [value allKeys];
  v32 = [v30 setWithArray:allKeys];

  array = [MEMORY[0x277CBEB18] array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v34 = v8;
  v35 = [v34 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v51;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v50 + 1) + 8 * i);
        if (([v32 containsObject:v39] & 1) == 0)
        {
          [array addObject:v39];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v36);
  }

  v40 = [selfCopy6 __contactsForHandles:array keyDescriptors:v49 alwaysUnifyLabeledValues:v17];
  v41 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:value];
  [v41 addEntriesFromDictionary:v40];
  v42 = PHDefaultLog();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [value count];
    v44 = [v40 count];
    v45 = [v41 count];
    *buf = 134218496;
    v56 = v43;
    v57 = 2048;
    selfCopy3 = v44;
    v59 = 2048;
    v60 = v45;
    _os_log_impl(&dword_2429BC000, v42, OS_LOG_TYPE_DEFAULT, "TOTAL contacts fetched: regular = %lu accepted = %lu, combined = %lu", buf, 0x20u);
  }

  v46 = [v41 copy];
  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)__contactsForHandles:()PhoneKit keyDescriptors:alwaysUnifyLabeledValues:
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([v6 count])
  {
    [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:v6];
    v26 = v34 = 0;
    v27 = v7;
    v8 = [self unifiedContactsMatchingPredicate:? keysToFetch:? error:?];
    v25 = v34;
    v28 = v6;
    v9 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          phoneNumbers = [v15 phoneNumbers];
          firstObject = [phoneNumbers firstObject];
          value = [firstObject value];
          stringValue = [value stringValue];

          if (!stringValue)
          {
            emailAddresses = [v15 emailAddresses];
            firstObject2 = [emailAddresses firstObject];
            stringValue = [firstObject2 value];
          }

          if ([stringValue length] && objc_msgSend(v9, "containsObject:", stringValue))
          {
            v35 = v15;
            v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
            [dictionary setObject:v22 forKeyedSubscript:stringValue];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v12);
    }

    v7 = v27;
    v6 = v28;
  }

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (void)contactStore
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, self, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)contactsForHandles:()PhoneKit keyDescriptors:alwaysUnifyLabeledValues:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, a2, a3, "Contact fetch failed with the following error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end