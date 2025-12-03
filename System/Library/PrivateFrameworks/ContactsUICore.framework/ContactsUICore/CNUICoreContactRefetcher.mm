@interface CNUICoreContactRefetcher
+ (id)contactsByReplacingContacts:(id)contacts withContactsHavingMatchingIdentifier:(id)identifier;
+ (id)contactsFoundAndNotFoundByPartioningContacts:(id)contacts usingFoundContacts:(id)foundContacts;
+ (id)refetchedContacts:(id)contacts fromStore:(id)store keysToFetch:(id)fetch;
- (CNUICoreContactRefetcher)init;
- (CNUICoreContactRefetcher)initWithContactStore:(id)store contactsToRefetch:(id)refetch;
- (CNUICoreContactRefetcher)initWithContactStore:(id)store contactsToRefetch:(id)refetch keysToFetch:(id)fetch;
- (id)allContacts;
- (id)contactsFoundAndNotFound;
- (id)foundContacts;
@end

@implementation CNUICoreContactRefetcher

- (CNUICoreContactRefetcher)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreContactRefetcher)initWithContactStore:(id)store contactsToRefetch:(id)refetch
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695CDB8];
  refetchCopy = refetch;
  storeCopy = store;
  keyVectorWithAllKeys = [v6 keyVectorWithAllKeys];
  v13[0] = keyVectorWithAllKeys;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11 = [(CNUICoreContactRefetcher *)self initWithContactStore:storeCopy contactsToRefetch:refetchCopy keysToFetch:v10];

  return v11;
}

- (CNUICoreContactRefetcher)initWithContactStore:(id)store contactsToRefetch:(id)refetch keysToFetch:(id)fetch
{
  storeCopy = store;
  refetchCopy = refetch;
  fetchCopy = fetch;
  if (storeCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_0 != -1)
  {
    [CNUICoreContactRefetcher initWithContactStore:contactsToRefetch:keysToFetch:];
  }

  v12 = CNGuardOSLog_cn_once_object_0_0;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_0, OS_LOG_TYPE_FAULT))
  {
    [(CNUICoreContactRefetcher *)v12 initWithContactStore:v13 contactsToRefetch:v14 keysToFetch:v15, v16, v17, v18, v19];
    if (refetchCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (refetchCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_0 != -1)
  {
    [CNUICoreContactRefetcher initWithContactStore:contactsToRefetch:keysToFetch:];
  }

  v20 = CNGuardOSLog_cn_once_object_0_0;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_0, OS_LOG_TYPE_FAULT))
  {
    [(CNUICoreContactRefetcher *)v20 initWithContactStore:v21 contactsToRefetch:v22 keysToFetch:v23, v24, v25, v26, v27];
  }

LABEL_10:
  if (!fetchCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_0 != -1)
    {
      [CNUICoreContactRefetcher initWithContactStore:contactsToRefetch:keysToFetch:];
    }

    v28 = CNGuardOSLog_cn_once_object_0_0;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_0, OS_LOG_TYPE_FAULT))
    {
      [(CNUICoreContactRefetcher *)v28 initWithContactStore:v29 contactsToRefetch:v30 keysToFetch:v31, v32, v33, v34, v35];
    }
  }

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"contactsToRefetch cannot be empty" userInfo:0];
    objc_exception_throw(v40);
  }

  v41.receiver = self;
  v41.super_class = CNUICoreContactRefetcher;
  v36 = [(CNUICoreContactRefetcher *)&v41 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_contactStore, store);
    objc_storeStrong(&v37->_contactsToRefetch, refetch);
    objc_storeStrong(&v37->_keysToFetch, fetch);
    v38 = v37;
  }

  return v37;
}

- (id)allContacts
{
  foundContacts = [(CNUICoreContactRefetcher *)self foundContacts];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CNUICoreContactRefetcher_allContacts__block_invoke;
  v6[3] = &unk_1E76E8128;
  v6[4] = self;
  v4 = [foundContacts map:v6];

  return v4;
}

id __39__CNUICoreContactRefetcher_allContacts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) contactsToRefetch];
  v6 = [v4 contactsByReplacingContacts:v5 withContactsHavingMatchingIdentifier:v3];

  return v6;
}

- (id)foundContacts
{
  contactsFoundAndNotFound = [(CNUICoreContactRefetcher *)self contactsFoundAndNotFound];
  v3 = [contactsFoundAndNotFound map:&__block_literal_global_9];

  return v3;
}

- (id)contactsFoundAndNotFound
{
  v3 = objc_opt_class();
  contactsToRefetch = [(CNUICoreContactRefetcher *)self contactsToRefetch];
  contactStore = [(CNUICoreContactRefetcher *)self contactStore];
  keysToFetch = [(CNUICoreContactRefetcher *)self keysToFetch];
  v7 = [v3 refetchedContacts:contactsToRefetch fromStore:contactStore keysToFetch:keysToFetch];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__CNUICoreContactRefetcher_contactsFoundAndNotFound__block_invoke;
  v10[3] = &unk_1E76E8170;
  v10[4] = self;
  v8 = [v7 map:v10];

  return v8;
}

id __52__CNUICoreContactRefetcher_contactsFoundAndNotFound__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) contactsToRefetch];
  v6 = [v4 contactsFoundAndNotFoundByPartioningContacts:v5 usingFoundContacts:v3];

  v7 = MEMORY[0x1E69967A8];
  v8 = [v6 second];
  v9 = [v7 pairWithFirst:v3 second:v8];

  return v9;
}

+ (id)refetchedContacts:(id)contacts fromStore:(id)store keysToFetch:(id)fetch
{
  v7 = MEMORY[0x1E695CD78];
  fetchCopy = fetch;
  storeCopy = store;
  contactsCopy = contacts;
  v11 = [[v7 alloc] initWithKeysToFetch:fetchCopy];

  v12 = MEMORY[0x1E695CD58];
  v13 = [contactsCopy _cn_map:&__block_literal_global_25];

  v14 = [v12 predicateForContactsWithIdentifiers:v13];
  [v11 setPredicate:v14];

  [v11 setUnifyResults:0];
  v15 = [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v11 fromStore:storeCopy];

  return v15;
}

+ (id)contactsByReplacingContacts:(id)contacts withContactsHavingMatchingIdentifier:(id)identifier
{
  contactsCopy = contacts;
  v6 = [identifier _cn_indexBy:&__block_literal_global_25];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__CNUICoreContactRefetcher_contactsByReplacingContacts_withContactsHavingMatchingIdentifier___block_invoke;
  v10[3] = &unk_1E76E8198;
  v11 = v6;
  v7 = v6;
  v8 = [contactsCopy _cn_map:v10];

  return v8;
}

void *__93__CNUICoreContactRefetcher_contactsByReplacingContacts_withContactsHavingMatchingIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

+ (id)contactsFoundAndNotFoundByPartioningContacts:(id)contacts usingFoundContacts:(id)foundContacts
{
  contactsCopy = contacts;
  v6 = [foundContacts _cn_indexBy:&__block_literal_global_25];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__CNUICoreContactRefetcher_contactsFoundAndNotFoundByPartioningContacts_usingFoundContacts___block_invoke;
  v10[3] = &unk_1E76E81C0;
  v11 = v6;
  v7 = v6;
  v8 = [contactsCopy _cn_partition:v10];

  return v8;
}

BOOL __92__CNUICoreContactRefetcher_contactsFoundAndNotFoundByPartioningContacts_usingFoundContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 != 0;

  return v5;
}

@end