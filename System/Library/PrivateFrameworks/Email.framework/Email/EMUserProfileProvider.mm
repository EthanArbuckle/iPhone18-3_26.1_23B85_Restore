@interface EMUserProfileProvider
+ (BOOL)doesAddressList:(id)list containAddressInSet:(id)set;
- (BOOL)_isMyEmailAddressContainedInAddressStrings:(id)strings;
- (BOOL)isMyEmailAddressContainedInAddressList:(id)list;
- (CNContactStore)contactStore;
- (EMUserProfileProvider)init;
- (NSSet)accountsEmailAddresses;
- (NSSet)allEmailAddresses;
- (NSSet)contactEmailAddresses;
- (id)_contactEmailAddresses;
- (id)contact;
- (id)contactWithKeysToFetch:(id)fetch;
- (void)refreshCachedValues;
@end

@implementation EMUserProfileProvider

- (EMUserProfileProvider)init
{
  v15.receiver = self;
  v15.super_class = EMUserProfileProvider;
  v2 = [(EMUserProfileProvider *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_cacheLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.mail.user-profile", v5);
    cacheQueue = v3->_cacheQueue;
    v3->_cacheQueue = v6;

    v3->_outstandingCacheRefreshes = 0;
    array = [MEMORY[0x1E695DF70] array];
    knownToBeMyEmail = v3->_knownToBeMyEmail;
    v3->_knownToBeMyEmail = array;

    array2 = [MEMORY[0x1E695DF70] array];
    knownToNotBeMyEmail = v3->_knownToNotBeMyEmail;
    v3->_knownToNotBeMyEmail = array2;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__accountsChanged_ name:*MEMORY[0x1E699B070] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__contactsChanged_ name:*MEMORY[0x1E695C3D8] object:0];
  }

  return v3;
}

- (void)refreshCachedValues
{
  os_unfair_lock_lock(&self->_cacheLock);
  outstandingCacheRefreshes = self->_outstandingCacheRefreshes;
  if (outstandingCacheRefreshes > 1)
  {

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    self->_outstandingCacheRefreshes = outstandingCacheRefreshes + 1;
    os_unfair_lock_unlock(&self->_cacheLock);
    cacheQueue = self->_cacheQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__EMUserProfileProvider_refreshCachedValues__block_invoke;
    block[3] = &unk_1E826C098;
    block[4] = self;
    dispatch_async(cacheQueue, block);
  }
}

- (NSSet)allEmailAddresses
{
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = [(NSDictionary *)self->_cache objectForKeyedSubscript:@"_all"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  os_unfair_lock_unlock(&self->_cacheLock);

  return v6;
}

void __44__EMUserProfileProvider_refreshCachedValues__block_invoke(uint64_t a1)
{
  obj = [MEMORY[0x1E695DF90] dictionary];
  if ([*(a1 + 32) hasAccountsConfigured])
  {
    v2 = [*(a1 + 32) _accountsEmailAddresses];
    [obj setObject:v2 forKeyedSubscript:@"_account"];

    v3 = [*(a1 + 32) _contactEmailAddresses];
    [obj setObject:v3 forKeyedSubscript:@"_contact"];

    v4 = objc_alloc_init(MEMORY[0x1E699AFD8]);
    v5 = [obj objectForKeyedSubscript:@"_account"];
    [v4 unionSet:v5];

    v6 = [obj objectForKeyedSubscript:@"_contact"];
    [v4 unionSet:v6];

    [obj setObject:v4 forKeyedSubscript:@"_all"];
  }

  v7 = *(a1 + 32);
  os_unfair_lock_lock(v7 + 2);
  objc_storeStrong((*(a1 + 32) + 32), obj);
  --*(*(a1 + 32) + 24);
  v8 = [*(a1 + 32) knownToBeMyEmail];
  [v8 removeAllObjects];

  v9 = [*(a1 + 32) knownToNotBeMyEmail];
  [v9 removeAllObjects];

  os_unfair_lock_unlock(v7 + 2);
}

- (id)_contactEmailAddresses
{
  v3 = objc_alloc_init(MEMORY[0x1E699AFD8]);
  contact = [(EMUserProfileProvider *)self contact];
  v5 = contact;
  if (contact)
  {
    emailAddresses = [contact emailAddresses];
    v7 = [emailAddresses ef_map:&__block_literal_global_29];

    [v3 addObjectsFromArray:v7];
  }

  return v3;
}

- (id)contact
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E695C208];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [(EMUserProfileProvider *)self contactWithKeysToFetch:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    em_authorizedContactStore = [MEMORY[0x1E695CE18] em_authorizedContactStore];
    v5 = self->_contactStore;
    self->_contactStore = em_authorizedContactStore;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

+ (BOOL)doesAddressList:(id)list containAddressInSet:(id)set
{
  v24 = *MEMORY[0x1E69E9840];
  listCopy = list;
  setCopy = set;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = listCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        emailAddressValue = [v11 emailAddressValue];
        simpleAddress = [emailAddressValue simpleAddress];
        v14 = simpleAddress;
        if (simpleAddress)
        {
          stringValue = simpleAddress;
        }

        else
        {
          stringValue = [v11 stringValue];
        }

        v16 = stringValue;

        if (v16 && ([setCopy containsObject:v16] & 1) != 0)
        {

          LOBYTE(v8) = 1;
          goto LABEL_15;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

- (NSSet)accountsEmailAddresses
{
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = [(NSDictionary *)self->_cache objectForKeyedSubscript:@"_account"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  os_unfair_lock_unlock(&self->_cacheLock);

  return v6;
}

- (NSSet)contactEmailAddresses
{
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = [(NSDictionary *)self->_cache objectForKeyedSubscript:@"_contact"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  os_unfair_lock_unlock(&self->_cacheLock);

  return v6;
}

- (id)contactWithKeysToFetch:(id)fetch
{
  fetchCopy = fetch;
  contactStore = [(EMUserProfileProvider *)self contactStore];
  v6 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:fetchCopy error:0];

  return v6;
}

- (BOOL)isMyEmailAddressContainedInAddressList:(id)list
{
  listCopy = list;
  if ([listCopy ef_all:&__block_literal_global_57])
  {
    v5 = [(EMUserProfileProvider *)self _isMyEmailAddressContainedInAddressStrings:listCopy];
  }

  else
  {
    allEmailAddresses = [(EMUserProfileProvider *)self allEmailAddresses];
    v5 = [EMUserProfileProvider doesAddressList:listCopy containAddressInSet:allEmailAddresses];
  }

  return v5;
}

uint64_t __64__EMUserProfileProvider_isMyEmailAddressContainedInAddressList___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_isMyEmailAddressContainedInAddressStrings:(id)strings
{
  v31 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v23 = stringsCopy;
  if ([stringsCopy count])
  {
    os_unfair_lock_lock(&self->_cacheLock);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __68__EMUserProfileProvider__isMyEmailAddressContainedInAddressStrings___block_invoke;
    v29[3] = &unk_1E8270110;
    v29[4] = self;
    if ([stringsCopy ef_any:v29])
    {
      LOBYTE(knownToBeMyEmail) = 1;
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __68__EMUserProfileProvider__isMyEmailAddressContainedInAddressStrings___block_invoke_2;
      v28[3] = &unk_1E8270110;
      v28[4] = self;
      v6 = [stringsCopy ef_filter:v28];
      v22 = v6;
      if ([v6 count])
      {
        v7 = [(NSDictionary *)self->_cache objectForKeyedSubscript:@"_all"];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = v6;
        knownToBeMyEmail = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (knownToBeMyEmail)
        {
          v9 = *v25;
          while (2)
          {
            for (i = 0; i != knownToBeMyEmail; i = i + 1)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(v8);
              }

              v11 = *(*(&v24 + 1) + 8 * i);
              emailAddressValue = [v11 emailAddressValue];
              simpleAddress = [emailAddressValue simpleAddress];
              v14 = simpleAddress;
              if (simpleAddress)
              {
                stringValue = simpleAddress;
              }

              else
              {
                stringValue = [v11 stringValue];
              }

              v16 = stringValue;

              if (v16 && [v7 containsObject:v16])
              {
                knownToBeMyEmail = [(EMUserProfileProvider *)self knownToBeMyEmail];
                [knownToBeMyEmail addObject:v11];

                LOBYTE(knownToBeMyEmail) = 1;
                goto LABEL_21;
              }

              knownToNotBeMyEmail = [(EMUserProfileProvider *)self knownToNotBeMyEmail];
              [knownToNotBeMyEmail addObject:v11];
            }

            knownToBeMyEmail = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
            if (knownToBeMyEmail)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:

        knownToBeMyEmail2 = [(EMUserProfileProvider *)self knownToBeMyEmail];
        [knownToBeMyEmail2 ef_trimToCount:30 fromStart:1];

        knownToNotBeMyEmail2 = [(EMUserProfileProvider *)self knownToNotBeMyEmail];
        [knownToNotBeMyEmail2 ef_trimToCount:30 fromStart:1];
      }

      else
      {
        LOBYTE(knownToBeMyEmail) = 0;
      }
    }

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    LOBYTE(knownToBeMyEmail) = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return knownToBeMyEmail;
}

uint64_t __68__EMUserProfileProvider__isMyEmailAddressContainedInAddressStrings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) knownToBeMyEmail];
  v5 = [v4 containsObject:v3];

  return v5;
}

uint64_t __68__EMUserProfileProvider__isMyEmailAddressContainedInAddressStrings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) knownToNotBeMyEmail];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

id __47__EMUserProfileProvider__contactEmailAddresses__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];

  return v2;
}

@end