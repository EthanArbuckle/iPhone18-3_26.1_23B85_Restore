@interface CNAutocompleteResult
+ (CNContactStore)contactStoreForFetchingFullContacts;
+ (NSOrderedSet)comparators;
+ (id)calDAVResultWithAddress:(id)a3 displayName:(id)a4 nameComponents:(id)a5 resultType:(int64_t)a6 groupMembersProvider:(id)a7 userInfo:(id)a8;
+ (id)contactResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5 identifier:(id)a6;
+ (id)groupResultWithDisplayName:(id)a3 identifier:(id)a4;
+ (id)messagesResultWithAddress:(id)a3 displayName:(id)a4 nameComponents:(id)a5 resultType:(int64_t)a6 addressType:(int64_t)a7 identifier:(id)a8 contactProvider:(id)a9 groupMembersProvider:(id)a10 userInfo:(id)a11;
+ (id)resultWithDisplayName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldUseGroupNamingForResult;
- (BOOL)shouldUseGroupNamingForSource;
- (CNAutocompleteResult)init;
- (NSArray)userInfos;
- (id)address;
- (id)contactWithKeysToFetch:(id)a3 error:(id *)a4;
- (id)description;
- (id)diagnosticLog;
- (id)expandMembers;
- (id)members:(id *)a3;
- (id)resultTypeDescription;
- (id)sourceTypeDescription;
- (id)stringForHashing;
- (int64_t)addressType;
- (int64_t)compare:(id)a3;
- (int64_t)compare:(id)a3 withPriorityComparator:(id)a4;
- (unint64_t)hash;
- (void)addDiagnosticLog:(id)a3;
- (void)addDiagnosticLogFuture:(id)a3;
- (void)expandMembers;
- (void)updateUsingInformationFromRelatedResult:(id)a3;
@end

@implementation CNAutocompleteResult

- (int64_t)compare:(id)a3 withPriorityComparator:(id)a4
{
  v6 = a3;
  v7 = (*(a4 + 2))(a4, self, v6);
  if (!v7)
  {
    v7 = [(CNAutocompleteResult *)self compare:v6];
  }

  return v7;
}

- (int64_t)compare:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() comparators];
  v5 = [v4 mutableCopy];

  v6 = [objc_opt_class() comparators];
  [v5 intersectOrderedSet:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = (*(*(*(&v17 + 1) + 8 * v11) + 16))(*(*(&v17 + 1) + 8 * v11));
        if (v12)
        {
          v13 = v12;
          v14 = CNALoggingContextSorting();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [(CNAutocompleteResult(Sorting) *)v13 compare:v14];
          }

          goto LABEL_13;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)resultWithDisplayName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_282787720;
  }

  v7 = [(__CFString *)v6 copy];

  v8 = v5[1];
  v5[1] = v7;

  return v5;
}

- (CNAutocompleteResult)init
{
  v8.receiver = self;
  v8.super_class = CNAutocompleteResult;
  v2 = [(CNAutocompleteResult *)&v8 init];
  v3 = v2;
  if (v2)
  {
    diagnosticLogs = v2->_diagnosticLogs;
    v2->_diagnosticLogs = MEMORY[0x277CBEBF8];

    displayName = v3->_displayName;
    v3->_displayName = &stru_282787720;

    v6 = v3;
  }

  return v3;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSString *)v2->_descriptionMemo copy];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v4 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:v2];
    v5 = [(CNAutocompleteResult *)v2 identifier];
    v6 = [v4 appendName:@"identifier" object:v5];

    v7 = [(CNAutocompleteResult *)v2 displayName];
    v8 = [v4 appendName:@"name" object:v7];

    v9 = [(CNAutocompleteResult *)v2 value];
    v10 = [v9 address];
    v11 = [v4 appendName:@"address" object:v10];

    v12 = [(CNAutocompleteResult *)v2 resultTypeDescription];
    v13 = [v4 appendName:@"resultType" object:v12];

    v14 = [(CNAutocompleteResult *)v2 sourceTypeDescription];
    v15 = [v4 appendName:@"sourceType" object:v14];

    v16 = [(CNAutocompleteResult *)v2 lastSendingAddress];
    v17 = [v4 appendName:@"lastSendingAddress" object:v16];

    v18 = [(CNAutocompleteResult *)v2 stringForHashing];
    v19 = [v4 appendName:@"stringForHashing" object:v18];

    v20 = CNAutocompleteResultUserInfoDescriptionTransform;
    v21 = [(CNAutocompleteResult *)v2 userInfo];
    v22 = v20[2](v20, v21);
    v23 = [v4 appendName:@"userInfo" object:v22];

    v24 = [(CNAutocompleteResult *)v2 value];
    v25 = [v24 description];
    v26 = [v4 appendName:@"resultValue" object:v25];

    v27 = [v4 build];

    v28 = [v27 copy];
    descriptionMemo = v2->_descriptionMemo;
    v2->_descriptionMemo = v28;

    v30 = v27;
  }

  else
  {
    v30 = v3;
  }

  objc_sync_exit(v2);

  return v30;
}

- (id)resultTypeDescription
{
  v2 = [(CNAutocompleteResult *)self resultType];
  if ((v2 - 1) > 2)
  {
    return @"contact";
  }

  else
  {
    return off_2781C5138[v2 - 1];
  }
}

- (id)sourceTypeDescription
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (([(CNAutocompleteResult *)self sourceType]& 1) != 0)
  {
    [v3 addObject:@"recent"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 2) != 0)
  {
    [v3 addObject:@"contact"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 4) != 0)
  {
    [v3 addObject:@"pseudo"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 0x80) != 0)
  {
    [v3 addObject:@"maid"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 0x100) != 0)
  {
    [v3 addObject:@"extension"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 8) != 0)
  {
    [v3 addObject:@"directory server"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 0x10) != 0)
  {
    [v3 addObject:@"duet"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 0x20) != 0)
  {
    [v3 addObject:@"supplemental"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 0x200) != 0)
  {
    [v3 addObject:@"stewie"];
  }

  if (![v3 count])
  {
    [v3 addObject:@"unknown"];
  }

  v4 = [v3 componentsJoinedByString:{@", "}];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x (%@)", -[CNAutocompleteResult sourceType](self, "sourceType"), v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(CNAutocompleteResult *)self stringForHashing];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(CNAutocompleteResult *)self stringForHashing];
    v9 = [v7 stringForHashing];
    if ([v8 isEqual:v9])
    {
      v10 = [(CNAutocompleteResult *)self userInfo];
      if (v10 && (v11 = v10, [v7 userInfo], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
      {
        v13 = [(CNAutocompleteResult *)self userInfo];
        v14 = [v7 userInfo];
        v15 = [v13 isEqual:v14];
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)stringForHashing
{
  v3 = [(CNAutocompleteResult *)self value];
  v4 = [v3 stringForHashing];

  v5 = *MEMORY[0x277CFBD30];
  if ((*(*MEMORY[0x277CFBD30] + 16))(*MEMORY[0x277CFBD30], v4))
  {

    v4 = [(CNAutocompleteResult *)self identifier];
    if ((*(v5 + 16))(v5, v4))
    {

      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
    }
  }

  return v4;
}

+ (NSOrderedSet)comparators
{
  if (comparators_cn_once_token_0 != -1)
  {
    +[CNAutocompleteResult comparators];
  }

  v3 = comparators_cn_once_object_0;

  return v3;
}

void __35__CNAutocompleteResult_comparators__block_invoke()
{
  v9[4] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB70]);
  v1 = _Block_copy(sSortResultsByCategory);
  v9[0] = v1;
  v2 = _Block_copy(sSortResultsByPreferredDomain);
  v9[1] = v2;
  v3 = _Block_copy(sSortResultsByDisplayName);
  v9[2] = v3;
  v4 = _Block_copy(sSortResultsByAddress);
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v6 = [v0 initWithArray:v5];
  v7 = comparators_cn_once_object_0;
  comparators_cn_once_object_0 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateUsingInformationFromRelatedResult:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  -[CNAutocompleteResult setSourceType:](self, "setSourceType:", [v5 sourceType] | -[CNAutocompleteResult sourceType](self, "sourceType"));
  v6 = [v5 sourceType];
  v7 = MEMORY[0x277CFBD30];
  if ((v6 & 2) != 0 && ([(CNAutocompleteResult *)self identifier], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v18 = CNALoggingContextDebug();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v49 = 138412546;
      v50 = self;
      v51 = 2112;
      v52 = v5;
      _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "Result: %@ is absorbing everything from: %@", &v49, 0x16u);
    }

    v19 = [v5 identifier];
    [(CNAutocompleteResult *)self setIdentifier:v19];

    v20 = [v5 value];
    [(CNAutocompleteResult *)self setValue:v20];

    v21 = [v5 displayName];
    [(CNAutocompleteResult *)self setDisplayName:v21];

    v22 = [v5 nameComponents];
    [(CNAutocompleteResult *)self setNameComponents:v22];

    v23 = [v5 contactProvider];
    [(CNAutocompleteResult *)self setContactProvider:v23];

    v24 = [(CNAutocompleteResult *)self membersProvider];

    if (!v24)
    {
      v25 = [v5 membersProvider];
      [(CNAutocompleteResult *)self setMembersProvider:v25];
LABEL_29:
    }
  }

  else
  {
    v9 = [(CNAutocompleteResult *)self contactProvider];
    if (v9)
    {

      goto LABEL_30;
    }

    v10 = [v5 contactProvider];
    if (v10)
    {
      v11 = v10;
      v12 = [(CNAutocompleteResult *)self identifier];
      if (v12)
      {
        v13 = v12;
        v14 = [(CNAutocompleteResult *)self identifier];
        if (v14 || ([v5 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v15 = [(CNAutocompleteResult *)self identifier];
          v16 = [v5 identifier];
          v17 = [v15 isEqual:v16];

          if (v14)
          {
          }

          else
          {
          }

          if ((v17 & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_20;
        }
      }

LABEL_20:
      v26 = CNALoggingContextDebug();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v49 = 138412546;
        v50 = self;
        v51 = 2112;
        v52 = v5;
        _os_log_impl(&dword_2155FE000, v26, OS_LOG_TYPE_DEFAULT, "Result: %@ is absorbing contact provider and identifier from: %@", &v49, 0x16u);
      }

      v27 = [v5 contactProvider];
      [(CNAutocompleteResult *)self setContactProvider:v27];

      v28 = [v5 identifier];
      [(CNAutocompleteResult *)self setIdentifier:v28];

      v29 = *v7;
      v25 = [(CNAutocompleteResult *)self displayName];
      if ((*(v29 + 16))(v29, v25))
      {
        v30 = [(CNAutocompleteResult *)self nameComponents];
        if (v30)
        {
        }

        else
        {
          v31 = [v5 displayName];
          v32 = (*(v29 + 16))(v29, v31);

          if (v32)
          {
            goto LABEL_30;
          }

          v33 = CNALoggingContextDebug();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v49 = 138412546;
            v50 = self;
            v51 = 2112;
            v52 = v5;
            _os_log_impl(&dword_2155FE000, v33, OS_LOG_TYPE_DEFAULT, "Result: %@ is also taking the display name and name components from: %@", &v49, 0x16u);
          }

          v34 = [v5 displayName];
          [(CNAutocompleteResult *)self setDisplayName:v34];

          v25 = [v5 nameComponents];
          [(CNAutocompleteResult *)self setNameComponents:v25];
        }
      }

      goto LABEL_29;
    }
  }

LABEL_30:
  v35 = [v5 userInfo];

  if (v35)
  {
    v36 = [(CNAutocompleteResult *)self userInfo];

    if (v36)
    {
      v37 = CNALoggingContextDebug();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(CNAutocompleteResult *)self userInfo];
        v39 = [v5 userInfo];
        v49 = 138412546;
        v50 = v38;
        v51 = 2112;
        v52 = v39;
        _os_log_impl(&dword_2155FE000, v37, OS_LOG_TYPE_DEFAULT, "Serious bug: I don't expect dupes with userInfos, dropping %@, keeping only %@", &v49, 0x16u);
      }
    }

    v40 = [v5 userInfo];
    [(CNAutocompleteResult *)self setUserInfo:v40];
  }

  v41 = *v7;
  v42 = [v5 lastSendingAddress];
  if ((*(v41 + 16))(v41, v42))
  {
    goto LABEL_39;
  }

  v43 = [(CNAutocompleteResult *)self lastSendingAddress];
  v44 = (*(v41 + 16))(v41, v43);

  if (v44)
  {
    v42 = [v5 lastSendingAddress];
    [(CNAutocompleteResult *)self setLastSendingAddress:v42];
LABEL_39:
  }

  if (([v5 sourceType] & 8) != 0)
  {
    v45 = *MEMORY[0x277CFBD38];
    v46 = [v5 displayName];
    LODWORD(v45) = (*(v45 + 16))(v45, v46);

    if (v45)
    {
      v47 = [v5 displayName];
      [(CNAutocompleteResult *)self setDisplayName:v47];
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

+ (id)contactResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5 identifier:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = objc_alloc_init(a1);
  v15 = [v13 copy];

  v16 = v14[1];
  v14[1] = v15;

  v17 = v14[6];
  v14[6] = v10;
  v18 = v10;

  v19 = [v12 copy];
  v20 = v14[4];
  v14[4] = v19;

  v21 = [v11 copy];
  v22 = v14[5];
  v14[5] = v21;

  v14[14] = 0;

  return v14;
}

+ (id)groupResultWithDisplayName:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = [a1 resultWithDisplayName:a3];
  v8 = [v6 copy];

  v9 = v7[5];
  v7[5] = v8;

  v7[14] = 1;

  return v7;
}

- (BOOL)shouldUseGroupNamingForSource
{
  v3 = [(CNAutocompleteResult *)self sourceType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(CNAutocompleteResult *)self sourceType]== 16;
  }

  return v3;
}

- (BOOL)shouldUseGroupNamingForResult
{
  if ([(CNAutocompleteResult *)self resultType]!= 1)
  {
    return 0;
  }

  return [(CNAutocompleteResult *)self shouldUseGroupNamingForSource];
}

- (id)members:(id *)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(CNAutocompleteResult *)self expandMembers];
  v5 = [v4 first];

  if (v5)
  {
    v6 = [v4 first];
  }

  else
  {
    v7 = [v4 second];

    if (v7)
    {
      v12 = *MEMORY[0x277CCA7E8];
      v8 = [v4 second];
      v13[0] = v8;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CNContactAutocompleteErrorDomain" code:3 userInfo:v7];
    if (a3)
    {
      v9 = v9;
      *a3 = v9;
    }

    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)expandMembers
{
  v3 = [(CNAutocompleteResult *)self membersProvider];

  if (!v3)
  {
    v17 = [MEMORY[0x277CFBE70] pairWithFirst:MEMORY[0x277CBEBF8] second:0];
    goto LABEL_13;
  }

  v4 = [MEMORY[0x277CFBED0] defaultProvider];
  [v4 timestamp];
  v6 = v5;

  v7 = [(CNAutocompleteResult *)self membersProvider];
  v21 = 0;
  v8 = (v7)[2](v7, &v21);
  v9 = v21;

  v10 = [MEMORY[0x277CFBED0] defaultProvider];
  [v10 timestamp];
  v12 = v11;

  v13 = CNALoggingContextDebug();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(CNAutocompleteResult *)v13 expandMembers];
  }

  if ((v8 != 0) != (v9 != 0))
  {
    goto LABEL_5;
  }

  if (!(v8 | v9))
  {
    v18 = CNALoggingContextTriage();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [(CNAutocompleteResult *)self expandMembers];
    }

    v14 = MEMORY[0x277CFBE70];
    v15 = 0;
    v16 = 0;
    goto LABEL_12;
  }

  if (v8 && v9)
  {
    v20 = CNALoggingContextTriage();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [(CNAutocompleteResult *)self expandMembers];
    }

    v14 = MEMORY[0x277CFBE70];
    v15 = 0;
  }

  else
  {
LABEL_5:
    v14 = MEMORY[0x277CFBE70];
    v15 = v8;
  }

  v16 = v9;
LABEL_12:
  v17 = [v14 pairWithFirst:v15 second:v16];

LABEL_13:

  return v17;
}

+ (CNContactStore)contactStoreForFetchingFullContacts
{
  if (contactStoreForFetchingFullContacts_cn_once_token_8 != -1)
  {
    +[CNAutocompleteResult contactStoreForFetchingFullContacts];
  }

  v3 = contactStoreForFetchingFullContacts_cn_once_object_8;

  return v3;
}

uint64_t __59__CNAutocompleteResult_contactStoreForFetchingFullContacts__block_invoke()
{
  contactStoreForFetchingFullContacts_cn_once_object_8 = objc_alloc_init(MEMORY[0x277CBDAB8]);

  return MEMORY[0x2821F96F8]();
}

- (id)contactWithKeysToFetch:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CNAutocompleteResult *)self contactProvider];

  if (v7)
  {
    v8 = CNALoggingContextDebug();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Using contact provider to retrieve the contact", buf, 2u);
    }

    v9 = [(CNAutocompleteResult *)self contactProvider];
    v10 = (*(v9 + 16))(v9, v6, a4);
    goto LABEL_9;
  }

  if ([(CNAutocompleteResult *)self resultType])
  {
    goto LABEL_6;
  }

  v13 = [(CNAutocompleteResult *)self value];
  v14 = [v13 addressType];

  if (v14 == 2)
  {
    v22 = MEMORY[0x277CBDA58];
    v23 = MEMORY[0x277CBDB70];
    v24 = [(CNAutocompleteResult *)self value];
    v25 = [v24 address];
    v26 = [v23 phoneNumberWithStringValue:v25];
    v9 = [v22 predicateForContactsMatchingPhoneNumber:v26];

    v18 = CNALoggingContextDebug();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v19 = [(CNAutocompleteResult *)self value];
    v20 = [v19 address];
    *buf = 138412290;
    v34 = v20;
    v21 = "Let's do a matching based on phone number: %@";
    goto LABEL_18;
  }

  if (v14 != 1)
  {
LABEL_6:
    v9 = CNALoggingContextDebug();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = self;
      _os_log_impl(&dword_2155FE000, v9, OS_LOG_TYPE_DEFAULT, "I don't know how to return a contact for %@", buf, 0xCu);
    }

    v10 = 0;
    goto LABEL_9;
  }

  v15 = MEMORY[0x277CBDA58];
  v16 = [(CNAutocompleteResult *)self value];
  v17 = [v16 address];
  v9 = [v15 predicateForContactsMatchingEmailAddress:v17];

  v18 = CNALoggingContextDebug();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(CNAutocompleteResult *)self value];
    v20 = [v19 address];
    *buf = 138412290;
    v34 = v20;
    v21 = "Let's do a matching based on email address: %@";
LABEL_18:
    _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
  }

LABEL_19:

  if (!v9)
  {
    goto LABEL_6;
  }

  v27 = [objc_opt_class() contactStoreForFetchingFullContacts];
  v32 = 0;
  v28 = [v27 unifiedContactsMatchingPredicate:v9 keysToFetch:v6 error:&v32];
  v29 = v32;
  v30 = CNALoggingContextDebug();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = v28;
    v35 = 2112;
    v36 = v29;
    _os_log_impl(&dword_2155FE000, v30, OS_LOG_TYPE_DEFAULT, "We received (and returning the first one): %@, error:%@", buf, 0x16u);
  }

  if (v28)
  {
    v10 = [(CNAutocompleteResult *)v28 firstObject];
  }

  else if (a4)
  {
    v31 = v29;
    v10 = 0;
    *a4 = v29;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)addDiagnosticLog:(id)a3
{
  v4 = [MEMORY[0x277CFBE28] lazyFutureWithBlock:a3];
  [(CNAutocompleteResult *)self addDiagnosticLogFuture:v4];
}

- (void)addDiagnosticLogFuture:(id)a3
{
  v4 = a3;
  v6 = [(CNAutocompleteResult *)self diagnosticLogs];
  v5 = [v6 arrayByAddingObject:v4];

  [(CNAutocompleteResult *)self setDiagnosticLogs:v5];
}

- (id)diagnosticLog
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"Result: %@\n", self];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CNAutocompleteResult *)self diagnosticLogs];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v15 = 0;
        v10 = [v9 result:&v15];
        v11 = v15;
        v12 = v11;
        if (v10)
        {
          [v3 appendFormat:@"%@\n", v10];
        }

        else
        {
          [v3 appendFormat:@"Error expanding log: %@\n", v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)calDAVResultWithAddress:(id)a3 displayName:(id)a4 nameComponents:(id)a5 resultType:(int64_t)a6 groupMembersProvider:(id)a7 userInfo:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(CNAutocompleteResultValue);
  [(CNAutocompleteResultValue *)v18 setAddress:v17];

  [(CNAutocompleteResultValue *)v18 setAddressType:1];
  v19 = [(CNAutocompleteResult *)CNAutocompleteCalendarServerResult resultWithDisplayName:v16];

  [v19 setResultType:a6];
  [v19 setMembersProvider:v14];

  [v19 setValue:v18];
  [v19 setNameComponents:v15];

  [v19 setSourceType:32];
  if (v13)
  {
    [v19 setUserInfo:v13];
  }

  return v19;
}

+ (id)messagesResultWithAddress:(id)a3 displayName:(id)a4 nameComponents:(id)a5 resultType:(int64_t)a6 addressType:(int64_t)a7 identifier:(id)a8 contactProvider:(id)a9 groupMembersProvider:(id)a10 userInfo:(id)a11
{
  v16 = a11;
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = objc_alloc_init(CNAutocompleteResultValue);
  [(CNAutocompleteResultValue *)v23 setAddress:v22];

  [(CNAutocompleteResultValue *)v23 setAddressType:a7];
  v24 = objc_alloc_init(CNAutocompleteResult);
  [(CNAutocompleteResult *)v24 setIdentifier:v19];

  [(CNAutocompleteResult *)v24 setContactProvider:v18];
  [(CNAutocompleteResult *)v24 setDisplayName:v21];

  [(CNAutocompleteResult *)v24 setResultType:a6];
  [(CNAutocompleteResult *)v24 setMembersProvider:v17];

  [(CNAutocompleteResult *)v24 setValue:v23];
  [(CNAutocompleteResult *)v24 setNameComponents:v20];

  [(CNAutocompleteResult *)v24 setSourceType:32];
  if (v16)
  {
    [(CNAutocompleteResult *)v24 setUserInfo:v16];
  }

  return v24;
}

- (id)address
{
  v3 = [(CNAutocompleteResult *)self value];
  if ([v3 addressType] == 3)
  {
    v4 = [(CNAutocompleteResult *)self value];
    v5 = [v4 instantMessageAddressService];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277CBDB18]);
      v7 = [(CNAutocompleteResult *)self value];
      v8 = [v7 address];
      v9 = [(CNAutocompleteResult *)self value];
      v10 = [v9 instantMessageAddressService];
      v11 = [v6 initWithUsername:v8 service:v10];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [(CNAutocompleteResult *)self value];
  v11 = [v7 address];
LABEL_6:

  return v11;
}

- (int64_t)addressType
{
  v2 = [(CNAutocompleteResult *)self value];
  v3 = [v2 addressType];

  return v3;
}

- (NSArray)userInfos
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(CNAutocompleteResult *)self userInfo];

  if (v3)
  {
    v4 = [(CNAutocompleteResult *)self userInfo];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)expandMembers
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2155FE000, a2, OS_LOG_TYPE_FAULT, "Error: Autocomplete result %@ expanded to a nil result without specifying an error. This is a violation of the Object + Error API either rule convention. The behavior from here is undefined.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end