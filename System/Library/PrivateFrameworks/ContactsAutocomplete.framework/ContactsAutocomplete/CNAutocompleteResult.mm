@interface CNAutocompleteResult
+ (CNContactStore)contactStoreForFetchingFullContacts;
+ (NSOrderedSet)comparators;
+ (id)calDAVResultWithAddress:(id)address displayName:(id)name nameComponents:(id)components resultType:(int64_t)type groupMembersProvider:(id)provider userInfo:(id)info;
+ (id)contactResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components identifier:(id)identifier;
+ (id)groupResultWithDisplayName:(id)name identifier:(id)identifier;
+ (id)messagesResultWithAddress:(id)address displayName:(id)name nameComponents:(id)components resultType:(int64_t)type addressType:(int64_t)addressType identifier:(id)identifier contactProvider:(id)provider groupMembersProvider:(id)self0 userInfo:(id)self1;
+ (id)resultWithDisplayName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldUseGroupNamingForResult;
- (BOOL)shouldUseGroupNamingForSource;
- (CNAutocompleteResult)init;
- (NSArray)userInfos;
- (id)address;
- (id)contactWithKeysToFetch:(id)fetch error:(id *)error;
- (id)description;
- (id)diagnosticLog;
- (id)expandMembers;
- (id)members:(id *)members;
- (id)resultTypeDescription;
- (id)sourceTypeDescription;
- (id)stringForHashing;
- (int64_t)addressType;
- (int64_t)compare:(id)compare;
- (int64_t)compare:(id)compare withPriorityComparator:(id)comparator;
- (unint64_t)hash;
- (void)addDiagnosticLog:(id)log;
- (void)addDiagnosticLogFuture:(id)future;
- (void)expandMembers;
- (void)updateUsingInformationFromRelatedResult:(id)result;
@end

@implementation CNAutocompleteResult

- (int64_t)compare:(id)compare withPriorityComparator:(id)comparator
{
  compareCopy = compare;
  v7 = (*(comparator + 2))(comparator, self, compareCopy);
  if (!v7)
  {
    v7 = [(CNAutocompleteResult *)self compare:compareCopy];
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  v22 = *MEMORY[0x277D85DE8];
  compareCopy = compare;
  comparators = [objc_opt_class() comparators];
  v5 = [comparators mutableCopy];

  comparators2 = [objc_opt_class() comparators];
  [v5 intersectOrderedSet:comparators2];

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

+ (id)resultWithDisplayName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(self);
  if (nameCopy)
  {
    v6 = nameCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_descriptionMemo copy];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v4 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:selfCopy];
    identifier = [(CNAutocompleteResult *)selfCopy identifier];
    v6 = [v4 appendName:@"identifier" object:identifier];

    displayName = [(CNAutocompleteResult *)selfCopy displayName];
    v8 = [v4 appendName:@"name" object:displayName];

    value = [(CNAutocompleteResult *)selfCopy value];
    address = [value address];
    v11 = [v4 appendName:@"address" object:address];

    resultTypeDescription = [(CNAutocompleteResult *)selfCopy resultTypeDescription];
    v13 = [v4 appendName:@"resultType" object:resultTypeDescription];

    sourceTypeDescription = [(CNAutocompleteResult *)selfCopy sourceTypeDescription];
    v15 = [v4 appendName:@"sourceType" object:sourceTypeDescription];

    lastSendingAddress = [(CNAutocompleteResult *)selfCopy lastSendingAddress];
    v17 = [v4 appendName:@"lastSendingAddress" object:lastSendingAddress];

    stringForHashing = [(CNAutocompleteResult *)selfCopy stringForHashing];
    v19 = [v4 appendName:@"stringForHashing" object:stringForHashing];

    v20 = CNAutocompleteResultUserInfoDescriptionTransform;
    userInfo = [(CNAutocompleteResult *)selfCopy userInfo];
    v22 = v20[2](v20, userInfo);
    v23 = [v4 appendName:@"userInfo" object:v22];

    value2 = [(CNAutocompleteResult *)selfCopy value];
    v25 = [value2 description];
    v26 = [v4 appendName:@"resultValue" object:v25];

    build = [v4 build];

    v28 = [build copy];
    descriptionMemo = selfCopy->_descriptionMemo;
    selfCopy->_descriptionMemo = v28;

    v30 = build;
  }

  else
  {
    v30 = v3;
  }

  objc_sync_exit(selfCopy);

  return v30;
}

- (id)resultTypeDescription
{
  resultType = [(CNAutocompleteResult *)self resultType];
  if ((resultType - 1) > 2)
  {
    return @"contact";
  }

  else
  {
    return off_2781C5138[resultType - 1];
  }
}

- (id)sourceTypeDescription
{
  array = [MEMORY[0x277CBEB18] array];
  if (([(CNAutocompleteResult *)self sourceType]& 1) != 0)
  {
    [array addObject:@"recent"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 2) != 0)
  {
    [array addObject:@"contact"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 4) != 0)
  {
    [array addObject:@"pseudo"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 0x80) != 0)
  {
    [array addObject:@"maid"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 0x100) != 0)
  {
    [array addObject:@"extension"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 8) != 0)
  {
    [array addObject:@"directory server"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 0x10) != 0)
  {
    [array addObject:@"duet"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 0x20) != 0)
  {
    [array addObject:@"supplemental"];
  }

  if (([(CNAutocompleteResult *)self sourceType]& 0x200) != 0)
  {
    [array addObject:@"stewie"];
  }

  if (![array count])
  {
    [array addObject:@"unknown"];
  }

  v4 = [array componentsJoinedByString:{@", "}];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x (%@)", -[CNAutocompleteResult sourceType](self, "sourceType"), v4];

  return v5;
}

- (unint64_t)hash
{
  stringForHashing = [(CNAutocompleteResult *)self stringForHashing];
  v3 = [stringForHashing hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
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
    stringForHashing = [(CNAutocompleteResult *)self stringForHashing];
    stringForHashing2 = [v7 stringForHashing];
    if ([stringForHashing isEqual:stringForHashing2])
    {
      userInfo = [(CNAutocompleteResult *)self userInfo];
      if (userInfo && (v11 = userInfo, [v7 userInfo], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
      {
        userInfo2 = [(CNAutocompleteResult *)self userInfo];
        userInfo3 = [v7 userInfo];
        v15 = [userInfo2 isEqual:userInfo3];
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
  value = [(CNAutocompleteResult *)self value];
  stringForHashing = [value stringForHashing];

  v5 = *MEMORY[0x277CFBD30];
  if ((*(*MEMORY[0x277CFBD30] + 16))(*MEMORY[0x277CFBD30], stringForHashing))
  {

    stringForHashing = [(CNAutocompleteResult *)self identifier];
    if ((*(v5 + 16))(v5, stringForHashing))
    {

      stringForHashing = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
    }
  }

  return stringForHashing;
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

- (void)updateUsingInformationFromRelatedResult:(id)result
{
  v53 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  -[CNAutocompleteResult setSourceType:](self, "setSourceType:", [resultCopy sourceType] | -[CNAutocompleteResult sourceType](self, "sourceType"));
  sourceType = [resultCopy sourceType];
  v7 = MEMORY[0x277CFBD30];
  if ((sourceType & 2) != 0 && ([(CNAutocompleteResult *)self identifier], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v18 = CNALoggingContextDebug();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v49 = 138412546;
      selfCopy3 = self;
      v51 = 2112;
      v52 = resultCopy;
      _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "Result: %@ is absorbing everything from: %@", &v49, 0x16u);
    }

    identifier = [resultCopy identifier];
    [(CNAutocompleteResult *)self setIdentifier:identifier];

    value = [resultCopy value];
    [(CNAutocompleteResult *)self setValue:value];

    displayName = [resultCopy displayName];
    [(CNAutocompleteResult *)self setDisplayName:displayName];

    nameComponents = [resultCopy nameComponents];
    [(CNAutocompleteResult *)self setNameComponents:nameComponents];

    contactProvider = [resultCopy contactProvider];
    [(CNAutocompleteResult *)self setContactProvider:contactProvider];

    membersProvider = [(CNAutocompleteResult *)self membersProvider];

    if (!membersProvider)
    {
      membersProvider2 = [resultCopy membersProvider];
      [(CNAutocompleteResult *)self setMembersProvider:membersProvider2];
LABEL_29:
    }
  }

  else
  {
    contactProvider2 = [(CNAutocompleteResult *)self contactProvider];
    if (contactProvider2)
    {

      goto LABEL_30;
    }

    contactProvider3 = [resultCopy contactProvider];
    if (contactProvider3)
    {
      v11 = contactProvider3;
      identifier2 = [(CNAutocompleteResult *)self identifier];
      if (identifier2)
      {
        v13 = identifier2;
        identifier3 = [(CNAutocompleteResult *)self identifier];
        if (identifier3 || ([resultCopy identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier4 = [(CNAutocompleteResult *)self identifier];
          identifier5 = [resultCopy identifier];
          v17 = [identifier4 isEqual:identifier5];

          if (identifier3)
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
        selfCopy3 = self;
        v51 = 2112;
        v52 = resultCopy;
        _os_log_impl(&dword_2155FE000, v26, OS_LOG_TYPE_DEFAULT, "Result: %@ is absorbing contact provider and identifier from: %@", &v49, 0x16u);
      }

      contactProvider4 = [resultCopy contactProvider];
      [(CNAutocompleteResult *)self setContactProvider:contactProvider4];

      identifier6 = [resultCopy identifier];
      [(CNAutocompleteResult *)self setIdentifier:identifier6];

      v29 = *v7;
      membersProvider2 = [(CNAutocompleteResult *)self displayName];
      if ((*(v29 + 16))(v29, membersProvider2))
      {
        nameComponents2 = [(CNAutocompleteResult *)self nameComponents];
        if (nameComponents2)
        {
        }

        else
        {
          displayName2 = [resultCopy displayName];
          v32 = (*(v29 + 16))(v29, displayName2);

          if (v32)
          {
            goto LABEL_30;
          }

          v33 = CNALoggingContextDebug();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v49 = 138412546;
            selfCopy3 = self;
            v51 = 2112;
            v52 = resultCopy;
            _os_log_impl(&dword_2155FE000, v33, OS_LOG_TYPE_DEFAULT, "Result: %@ is also taking the display name and name components from: %@", &v49, 0x16u);
          }

          displayName3 = [resultCopy displayName];
          [(CNAutocompleteResult *)self setDisplayName:displayName3];

          membersProvider2 = [resultCopy nameComponents];
          [(CNAutocompleteResult *)self setNameComponents:membersProvider2];
        }
      }

      goto LABEL_29;
    }
  }

LABEL_30:
  userInfo = [resultCopy userInfo];

  if (userInfo)
  {
    userInfo2 = [(CNAutocompleteResult *)self userInfo];

    if (userInfo2)
    {
      v37 = CNALoggingContextDebug();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        userInfo3 = [(CNAutocompleteResult *)self userInfo];
        userInfo4 = [resultCopy userInfo];
        v49 = 138412546;
        selfCopy3 = userInfo3;
        v51 = 2112;
        v52 = userInfo4;
        _os_log_impl(&dword_2155FE000, v37, OS_LOG_TYPE_DEFAULT, "Serious bug: I don't expect dupes with userInfos, dropping %@, keeping only %@", &v49, 0x16u);
      }
    }

    userInfo5 = [resultCopy userInfo];
    [(CNAutocompleteResult *)self setUserInfo:userInfo5];
  }

  v41 = *v7;
  lastSendingAddress = [resultCopy lastSendingAddress];
  if ((*(v41 + 16))(v41, lastSendingAddress))
  {
    goto LABEL_39;
  }

  lastSendingAddress2 = [(CNAutocompleteResult *)self lastSendingAddress];
  v44 = (*(v41 + 16))(v41, lastSendingAddress2);

  if (v44)
  {
    lastSendingAddress = [resultCopy lastSendingAddress];
    [(CNAutocompleteResult *)self setLastSendingAddress:lastSendingAddress];
LABEL_39:
  }

  if (([resultCopy sourceType] & 8) != 0)
  {
    v45 = *MEMORY[0x277CFBD38];
    displayName4 = [resultCopy displayName];
    LODWORD(v45) = (*(v45 + 16))(v45, displayName4);

    if (v45)
    {
      displayName5 = [resultCopy displayName];
      [(CNAutocompleteResult *)self setDisplayName:displayName5];
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

+ (id)contactResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components identifier:(id)identifier
{
  valueCopy = value;
  identifierCopy = identifier;
  componentsCopy = components;
  nameCopy = name;
  v14 = objc_alloc_init(self);
  v15 = [nameCopy copy];

  v16 = v14[1];
  v14[1] = v15;

  v17 = v14[6];
  v14[6] = valueCopy;
  v18 = valueCopy;

  v19 = [componentsCopy copy];
  v20 = v14[4];
  v14[4] = v19;

  v21 = [identifierCopy copy];
  v22 = v14[5];
  v14[5] = v21;

  v14[14] = 0;

  return v14;
}

+ (id)groupResultWithDisplayName:(id)name identifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [self resultWithDisplayName:name];
  v8 = [identifierCopy copy];

  v9 = v7[5];
  v7[5] = v8;

  v7[14] = 1;

  return v7;
}

- (BOOL)shouldUseGroupNamingForSource
{
  sourceType = [(CNAutocompleteResult *)self sourceType];
  if (sourceType != 1)
  {
    LOBYTE(sourceType) = [(CNAutocompleteResult *)self sourceType]== 16;
  }

  return sourceType;
}

- (BOOL)shouldUseGroupNamingForResult
{
  if ([(CNAutocompleteResult *)self resultType]!= 1)
  {
    return 0;
  }

  return [(CNAutocompleteResult *)self shouldUseGroupNamingForSource];
}

- (id)members:(id *)members
{
  v13[1] = *MEMORY[0x277D85DE8];
  expandMembers = [(CNAutocompleteResult *)self expandMembers];
  first = [expandMembers first];

  if (first)
  {
    first2 = [expandMembers first];
  }

  else
  {
    second = [expandMembers second];

    if (second)
    {
      v12 = *MEMORY[0x277CCA7E8];
      second2 = [expandMembers second];
      v13[0] = second2;
      second = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CNContactAutocompleteErrorDomain" code:3 userInfo:second];
    if (members)
    {
      v9 = v9;
      *members = v9;
    }

    first2 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return first2;
}

- (id)expandMembers
{
  membersProvider = [(CNAutocompleteResult *)self membersProvider];

  if (!membersProvider)
  {
    v17 = [MEMORY[0x277CFBE70] pairWithFirst:MEMORY[0x277CBEBF8] second:0];
    goto LABEL_13;
  }

  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v6 = v5;

  membersProvider2 = [(CNAutocompleteResult *)self membersProvider];
  v21 = 0;
  v8 = (membersProvider2)[2](membersProvider2, &v21);
  v9 = v21;

  defaultProvider2 = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider2 timestamp];
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

- (id)contactWithKeysToFetch:(id)fetch error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  fetchCopy = fetch;
  contactProvider = [(CNAutocompleteResult *)self contactProvider];

  if (contactProvider)
  {
    v8 = CNALoggingContextDebug();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Using contact provider to retrieve the contact", buf, 2u);
    }

    contactProvider2 = [(CNAutocompleteResult *)self contactProvider];
    firstObject = (*(contactProvider2 + 16))(contactProvider2, fetchCopy, error);
    goto LABEL_9;
  }

  if ([(CNAutocompleteResult *)self resultType])
  {
    goto LABEL_6;
  }

  value = [(CNAutocompleteResult *)self value];
  addressType = [value addressType];

  if (addressType == 2)
  {
    v22 = MEMORY[0x277CBDA58];
    v23 = MEMORY[0x277CBDB70];
    value2 = [(CNAutocompleteResult *)self value];
    address = [value2 address];
    v26 = [v23 phoneNumberWithStringValue:address];
    contactProvider2 = [v22 predicateForContactsMatchingPhoneNumber:v26];

    v18 = CNALoggingContextDebug();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    value3 = [(CNAutocompleteResult *)self value];
    address2 = [value3 address];
    *buf = 138412290;
    selfCopy = address2;
    v21 = "Let's do a matching based on phone number: %@";
    goto LABEL_18;
  }

  if (addressType != 1)
  {
LABEL_6:
    contactProvider2 = CNALoggingContextDebug();
    if (os_log_type_enabled(contactProvider2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2155FE000, contactProvider2, OS_LOG_TYPE_DEFAULT, "I don't know how to return a contact for %@", buf, 0xCu);
    }

    firstObject = 0;
    goto LABEL_9;
  }

  v15 = MEMORY[0x277CBDA58];
  value4 = [(CNAutocompleteResult *)self value];
  address3 = [value4 address];
  contactProvider2 = [v15 predicateForContactsMatchingEmailAddress:address3];

  v18 = CNALoggingContextDebug();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    value3 = [(CNAutocompleteResult *)self value];
    address2 = [value3 address];
    *buf = 138412290;
    selfCopy = address2;
    v21 = "Let's do a matching based on email address: %@";
LABEL_18:
    _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
  }

LABEL_19:

  if (!contactProvider2)
  {
    goto LABEL_6;
  }

  contactStoreForFetchingFullContacts = [objc_opt_class() contactStoreForFetchingFullContacts];
  v32 = 0;
  v28 = [contactStoreForFetchingFullContacts unifiedContactsMatchingPredicate:contactProvider2 keysToFetch:fetchCopy error:&v32];
  v29 = v32;
  v30 = CNALoggingContextDebug();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = v28;
    v35 = 2112;
    v36 = v29;
    _os_log_impl(&dword_2155FE000, v30, OS_LOG_TYPE_DEFAULT, "We received (and returning the first one): %@, error:%@", buf, 0x16u);
  }

  if (v28)
  {
    firstObject = [(CNAutocompleteResult *)v28 firstObject];
  }

  else if (error)
  {
    v31 = v29;
    firstObject = 0;
    *error = v29;
  }

  else
  {
    firstObject = 0;
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)addDiagnosticLog:(id)log
{
  v4 = [MEMORY[0x277CFBE28] lazyFutureWithBlock:log];
  [(CNAutocompleteResult *)self addDiagnosticLogFuture:v4];
}

- (void)addDiagnosticLogFuture:(id)future
{
  futureCopy = future;
  diagnosticLogs = [(CNAutocompleteResult *)self diagnosticLogs];
  v5 = [diagnosticLogs arrayByAddingObject:futureCopy];

  [(CNAutocompleteResult *)self setDiagnosticLogs:v5];
}

- (id)diagnosticLog
{
  v21 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"Result: %@\n", self];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  diagnosticLogs = [(CNAutocompleteResult *)self diagnosticLogs];
  v5 = [diagnosticLogs countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(diagnosticLogs);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v15 = 0;
        v10 = [v9 result:&v15];
        v11 = v15;
        v12 = v11;
        if (v10)
        {
          [string appendFormat:@"%@\n", v10];
        }

        else
        {
          [string appendFormat:@"Error expanding log: %@\n", v11];
        }
      }

      v6 = [diagnosticLogs countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return string;
}

+ (id)calDAVResultWithAddress:(id)address displayName:(id)name nameComponents:(id)components resultType:(int64_t)type groupMembersProvider:(id)provider userInfo:(id)info
{
  infoCopy = info;
  providerCopy = provider;
  componentsCopy = components;
  nameCopy = name;
  addressCopy = address;
  v18 = objc_alloc_init(CNAutocompleteResultValue);
  [(CNAutocompleteResultValue *)v18 setAddress:addressCopy];

  [(CNAutocompleteResultValue *)v18 setAddressType:1];
  v19 = [(CNAutocompleteResult *)CNAutocompleteCalendarServerResult resultWithDisplayName:nameCopy];

  [v19 setResultType:type];
  [v19 setMembersProvider:providerCopy];

  [v19 setValue:v18];
  [v19 setNameComponents:componentsCopy];

  [v19 setSourceType:32];
  if (infoCopy)
  {
    [v19 setUserInfo:infoCopy];
  }

  return v19;
}

+ (id)messagesResultWithAddress:(id)address displayName:(id)name nameComponents:(id)components resultType:(int64_t)type addressType:(int64_t)addressType identifier:(id)identifier contactProvider:(id)provider groupMembersProvider:(id)self0 userInfo:(id)self1
{
  infoCopy = info;
  membersProviderCopy = membersProvider;
  providerCopy = provider;
  identifierCopy = identifier;
  componentsCopy = components;
  nameCopy = name;
  addressCopy = address;
  v23 = objc_alloc_init(CNAutocompleteResultValue);
  [(CNAutocompleteResultValue *)v23 setAddress:addressCopy];

  [(CNAutocompleteResultValue *)v23 setAddressType:addressType];
  v24 = objc_alloc_init(CNAutocompleteResult);
  [(CNAutocompleteResult *)v24 setIdentifier:identifierCopy];

  [(CNAutocompleteResult *)v24 setContactProvider:providerCopy];
  [(CNAutocompleteResult *)v24 setDisplayName:nameCopy];

  [(CNAutocompleteResult *)v24 setResultType:type];
  [(CNAutocompleteResult *)v24 setMembersProvider:membersProviderCopy];

  [(CNAutocompleteResult *)v24 setValue:v23];
  [(CNAutocompleteResult *)v24 setNameComponents:componentsCopy];

  [(CNAutocompleteResult *)v24 setSourceType:32];
  if (infoCopy)
  {
    [(CNAutocompleteResult *)v24 setUserInfo:infoCopy];
  }

  return v24;
}

- (id)address
{
  value = [(CNAutocompleteResult *)self value];
  if ([value addressType] == 3)
  {
    value2 = [(CNAutocompleteResult *)self value];
    instantMessageAddressService = [value2 instantMessageAddressService];

    if (instantMessageAddressService)
    {
      v6 = objc_alloc(MEMORY[0x277CBDB18]);
      value3 = [(CNAutocompleteResult *)self value];
      address = [value3 address];
      value4 = [(CNAutocompleteResult *)self value];
      instantMessageAddressService2 = [value4 instantMessageAddressService];
      address2 = [v6 initWithUsername:address service:instantMessageAddressService2];

      goto LABEL_6;
    }
  }

  else
  {
  }

  value3 = [(CNAutocompleteResult *)self value];
  address2 = [value3 address];
LABEL_6:

  return address2;
}

- (int64_t)addressType
{
  value = [(CNAutocompleteResult *)self value];
  addressType = [value addressType];

  return addressType;
}

- (NSArray)userInfos
{
  v8[1] = *MEMORY[0x277D85DE8];
  userInfo = [(CNAutocompleteResult *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(CNAutocompleteResult *)self userInfo];
    v8[0] = userInfo2;
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
  selfCopy = self;
  _os_log_fault_impl(&dword_2155FE000, a2, OS_LOG_TYPE_FAULT, "Error: Autocomplete result %@ expanded to a nil result without specifying an error. This is a violation of the Object + Error API either rule convention. The behavior from here is undefined.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end