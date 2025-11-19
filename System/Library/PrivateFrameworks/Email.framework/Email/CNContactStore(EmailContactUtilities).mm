@interface CNContactStore(EmailContactUtilities)
+ (id)em_authorizedContactStore;
+ (id)log;
- (_EMContactsCache)em_cache;
- (id)_allContactsForEmailAddress:()EmailContactUtilities keysToFetch:error:;
- (id)_allContactsForName:()EmailContactUtilities keysToFetch:error:;
- (id)_bestContactForEmailAddress:()EmailContactUtilities keysToFetch:allowMatchOnDisplayName:error:;
- (id)_fetchContactForEmailAddress:()EmailContactUtilities keysToFetch:allowMatchOnDisplayName:createIfNeeded:error:;
- (id)allContactEmailAddressesWithError:()EmailContactUtilities;
- (id)em_contactsFutureOnScheduler:()EmailContactUtilities forEmailAddresses:keysToFetch:;
- (id)em_fetchContactForEmailAddress:()EmailContactUtilities keysToFetch:allowMatchOnDisplayName:createIfNeeded:;
- (id)em_fetchContactForEmailAddress:()EmailContactUtilities keysToFetch:createIfNeeded:;
- (id)em_onScheduler:()EmailContactUtilities contactFutureForEmailAddress:keysToFetch:;
@end

@implementation CNContactStore(EmailContactUtilities)

+ (id)em_authorizedContactStore
{
  v0 = [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0];
  v1 = 0;
  if (v0 == 3)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695CE18]);
  }

  return v1;
}

- (_EMContactsCache)em_cache
{
  v2 = objc_getAssociatedObject(a1, kEMCacheKey);
  if (!v2)
  {
    v2 = [[_EMContactsCache alloc] initWithStore:a1];
    objc_setAssociatedObject(a1, kEMCacheKey, v2, 0x301);
  }

  return v2;
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CNContactStore_EmailContactUtilities__log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_8 != -1)
  {
    dispatch_once(&log_onceToken_8, block);
  }

  v1 = log_log_8;

  return v1;
}

- (id)em_fetchContactForEmailAddress:()EmailContactUtilities keysToFetch:createIfNeeded:
{
  v5 = [a1 em_fetchContactForEmailAddress:a3 keysToFetch:a4 allowMatchOnDisplayName:0 createIfNeeded:a5];

  return v5;
}

- (id)em_fetchContactForEmailAddress:()EmailContactUtilities keysToFetch:allowMatchOnDisplayName:createIfNeeded:
{
  v6 = [a1 _fetchContactForEmailAddress:a3 keysToFetch:a4 allowMatchOnDisplayName:a5 createIfNeeded:a6 error:0];

  return v6;
}

- (id)_fetchContactForEmailAddress:()EmailContactUtilities keysToFetch:allowMatchOnDisplayName:createIfNeeded:error:
{
  v12 = a3;
  v13 = a4;
  v14 = [v12 emailAddressValue];
  if (!v14)
  {
    v20 = [v12 stringValue];
    v17 = v20;
    v15 = 0;
    if (v20 && a6)
    {
      v21 = MEMORY[0x1E695CD58];
      v22 = [v20 ea_addressCommentPersonNameComponents];
      v15 = [v21 em_contactWithPersonNameComponents:v22 emailAddress:v17 emailAddressLabel:0 allowInvalidEmailAddress:1];
    }

    if (a7 && !v15 && a6)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v24 = v23;
      if (v17)
      {
        [v23 setObject:v17 forKeyedSubscript:@"EMContactStoreErrorKeyAddress"];
      }

      *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EMContactStoreErrorDomain" code:0 userInfo:v24];
      v25 = [MEMORY[0x1E695CE18] log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [CNContactStore(EmailContactUtilities) _fetchContactForEmailAddress:v12 keysToFetch:v13 allowMatchOnDisplayName:v25 createIfNeeded:? error:?];
      }
    }

    goto LABEL_16;
  }

  v15 = [a1 _bestContactForEmailAddress:v14 keysToFetch:v13 allowMatchOnDisplayName:a5 error:a7];
  if (!v15 && a6)
  {
    v16 = MEMORY[0x1E695CD58];
    v17 = [v14 displayName];
    v18 = [v17 ec_personNameComponents];
    v19 = [v14 simpleAddress];
    v15 = [v16 em_contactWithPersonNameComponents:v18 emailAddress:v19 emailAddressLabel:0 allowInvalidEmailAddress:1];

LABEL_16:
  }

  return v15;
}

- (id)em_onScheduler:()EmailContactUtilities contactFutureForEmailAddress:keysToFetch:
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E699B7C8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__CNContactStore_EmailContactUtilities__em_onScheduler_contactFutureForEmailAddress_keysToFetch___block_invoke;
  v15[3] = &unk_1E826C770;
  v15[4] = a1;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = [v10 onScheduler:a3 futureWithBlock:v15];

  return v13;
}

- (id)em_contactsFutureOnScheduler:()EmailContactUtilities forEmailAddresses:keysToFetch:
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E699B7C8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__CNContactStore_EmailContactUtilities__em_contactsFutureOnScheduler_forEmailAddresses_keysToFetch___block_invoke;
  v15[3] = &unk_1E826C7C0;
  v16 = v8;
  v17 = a1;
  v18 = v9;
  v11 = v9;
  v12 = v8;
  v13 = [v10 onScheduler:a3 futureWithBlock:v15];

  return v13;
}

- (id)_bestContactForEmailAddress:()EmailContactUtilities keysToFetch:allowMatchOnDisplayName:error:
{
  v10 = a3;
  v11 = a4;
  v12 = [v10 simpleAddress];
  v13 = [a1 _allContactsForEmailAddress:v12 keysToFetch:v11 error:a6];

  if (!v13)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if ([v13 count] == 1)
  {
    goto LABEL_9;
  }

  if (![v13 count])
  {
    if (a5)
    {
      v17 = [v10 displayName];
      v18 = [a1 _allContactsForName:v17 keysToFetch:v11 error:a6];

      v13 = v18;
    }

LABEL_9:
    v14 = [v13 firstObject];
    goto LABEL_10;
  }

  v15 = MEMORY[0x1E695CD58];
  v16 = [v10 displayName];
  v14 = [v15 em_bestMatchForName:v16 fromContacts:v13 keysToCheck:v11];

LABEL_10:
LABEL_11:

  return v14;
}

- (id)_allContactsForEmailAddress:()EmailContactUtilities keysToFetch:error:
{
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v10 = [a1 em_cache];
    v11 = [v10 contactsForEmailAddress:v8 keysToFetch:v9 error:a5];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (id)_allContactsForName:()EmailContactUtilities keysToFetch:error:
{
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v10 = [a1 em_cache];
    v11 = [v10 contactsForName:v8 keysToFetch:v9 error:a5];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (id)allContactEmailAddressesWithError:()EmailContactUtilities
{
  v4 = [a1 em_cache];
  v5 = [v4 allContactEmailAddressesWithError:a3];

  return v5;
}

- (void)_fetchContactForEmailAddress:()EmailContactUtilities keysToFetch:allowMatchOnDisplayName:createIfNeeded:error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_1(&dword_1C6655000, a2, a3, "Failed to fetch contact for email address: %@ using key descriptors: %@ due to EMContactStoreIllegalEmailAddressError", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end