@interface PKContactResolver
+ (id)contactForFamilyMember:(id)member nameComponents:(id)components imageData:(id)data;
+ (id)defaultContactResolver;
- (BOOL)hasCachedResultForAccountUser:(id)user;
- (BOOL)hasCachedResultForHandle:(id)handle;
- (PKContactResolver)initWithContactStore:(id)store keysToFetch:(id)fetch;
- (id)_predicateForHandle:(id)handle;
- (id)contactForAccountUser:(id)user;
- (id)contactForHandle:(id)handle;
- (id)contactForIdentifier:(id)identifier;
- (void)_accessDelegatesWithHandler:(id)handler;
- (void)_handleContactStoreDidChangeNotification:(id)notification;
- (void)addDelegate:(id)delegate;
- (void)contactForAccountUser:(id)user withCompletion:(id)completion;
- (void)contactForHandle:(id)handle withCompletion:(id)completion;
- (void)contactForHandles:(id)handles withCompletion:(id)completion;
- (void)invalidateCache;
- (void)removeDelegate:(id)delegate;
@end

@implementation PKContactResolver

+ (id)defaultContactResolver
{
  v12[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v12[0] = v2;
  v3 = [(objc_class *)_MergedGlobals_173() descriptorForRequiredKeysWithThreeDTouchEnabled:1];
  v12[1] = v3;
  descriptorForRequiredKeys = [off_1ED6D10C0() descriptorForRequiredKeys];
  v12[2] = descriptorForRequiredKeys;
  descriptorForRequiredKeys2 = [off_1ED6D10C8() descriptorForRequiredKeys];
  v6 = *MEMORY[0x1E695C208];
  v12[3] = descriptorForRequiredKeys2;
  v12[4] = v6;
  v12[5] = *MEMORY[0x1E695C330];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:6];

  v8 = [PKContactResolver alloc];
  v9 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v10 = [(PKContactResolver *)v8 initWithContactStore:v9 keysToFetch:v7];

  return v10;
}

- (PKContactResolver)initWithContactStore:(id)store keysToFetch:(id)fetch
{
  storeCopy = store;
  fetchCopy = fetch;
  v23.receiver = self;
  v23.super_class = PKContactResolver;
  v9 = [(PKContactResolver *)&v23 init];
  v10 = v9;
  if (v9)
  {
    v9->_delegatesLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_contactStore, store);
    v11 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    handleToContactCache = v10->_handleToContactCache;
    v10->_handleToContactCache = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    altDSIDToContactCache = v10->_altDSIDToContactCache;
    v10->_altDSIDToContactCache = v13;

    v15 = dispatch_queue_create("com.apple.PassKit.PKContactResolver.reply", 0);
    replyQueue = v10->_replyQueue;
    v10->_replyQueue = v15;

    v17 = dispatch_queue_create("com.apple.PassKit.PKContactResolver.work", 0);
    workQueue = v10->_workQueue;
    v10->_workQueue = v17;

    objc_storeStrong(&v10->_keysToFetch, fetch);
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    delegates = v10->_delegates;
    v10->_delegates = pk_weakObjectsHashTableUsingPointerPersonality;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__handleContactStoreDidChangeNotification_ name:*MEMORY[0x1E695C3D8] object:0];
  }

  return v10;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_delegatesLock);
  [(NSHashTable *)self->_delegates addObject:delegateCopy];

  os_unfair_lock_unlock(&self->_delegatesLock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_delegatesLock);
  [(NSHashTable *)self->_delegates removeObject:delegateCopy];

  os_unfair_lock_lock(&self->_delegatesLock);
}

- (void)_accessDelegatesWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    os_unfair_lock_lock(&self->_delegatesLock);
    allObjects = [(NSHashTable *)self->_delegates allObjects];
    os_unfair_lock_unlock(&self->_delegatesLock);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__PKContactResolver__accessDelegatesWithHandler___block_invoke;
    v8[3] = &unk_1E79C4A40;
    v9 = allObjects;
    v10 = handlerCopy;
    v7 = allObjects;
    dispatch_async(replyQueue, v8);
  }
}

void __49__PKContactResolver__accessDelegatesWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)invalidateCache
{
  [(NSCache *)self->_handleToContactCache removeAllObjects];
  altDSIDToContactCache = self->_altDSIDToContactCache;

  [(NSCache *)altDSIDToContactCache removeAllObjects];
}

- (void)_handleContactStoreDidChangeNotification:(id)notification
{
  [(PKContactResolver *)self invalidateCache];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PKContactResolver__handleContactStoreDidChangeNotification___block_invoke;
  v4[3] = &unk_1E79D8510;
  v4[4] = self;
  [(PKContactResolver *)self _accessDelegatesWithHandler:v4];
}

- (id)_predicateForHandle:(id)handle
{
  v11 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v4 = handleCopy;
  if (handleCopy)
  {
    if ([handleCopy containsString:@"@"])
    {
      v5 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v4];
    }

    else
    {
      v6 = [MEMORY[0x1E695CF50] phoneNumberWithDigits:v4 countryCode:0];
      if (v6)
      {
        v5 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v6];
      }

      else
      {
        v7 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138412290;
          v10 = 0;
          _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Could not convert phone number to CNPhoneNumber: %@", &v9, 0xCu);
        }

        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasCachedResultForHandle:(id)handle
{
  if (!handle)
  {
    return 0;
  }

  v3 = [(NSCache *)self->_handleToContactCache objectForKey:?];
  v4 = v3 != 0;

  return v4;
}

- (id)contactForHandle:(id)handle
{
  v28 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (!handleCopy)
  {
    v11 = 0;
    goto LABEL_19;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__40;
  v24 = __Block_byref_object_dispose__40;
  v25 = 0;
  v5 = [(NSCache *)self->_handleToContactCache objectForKey:handleCopy];
  if (v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
    if (v5 == null)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    v8 = v21;
    v9 = v7;
    v10 = v8[5];
    v8[5] = v9;
    goto LABEL_17;
  }

  null = [(PKContactResolver *)self _predicateForHandle:handleCopy];
  if (null)
  {
    v10 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:self->_keysToFetch];
    [v10 setPredicate:null];
    contactStore = self->_contactStore;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __38__PKContactResolver_contactForHandle___block_invoke;
    v18[3] = &unk_1E79D8538;
    v18[4] = &v20;
    v19 = 0;
    [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v10 error:&v19 usingBlock:v18];
    v13 = v19;
    if (v13)
    {
      null2 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(null2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_impl(&dword_1AD337000, null2, OS_LOG_TYPE_DEFAULT, "Error fetching contact: %@", buf, 0xCu);
      }
    }

    else
    {
      handleToContactCache = self->_handleToContactCache;
      v16 = v21[5];
      null2 = v16;
      if (!v16)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      [(NSCache *)handleToContactCache setObject:null2 forKey:handleCopy];
      if (v16)
      {
        goto LABEL_16;
      }
    }

LABEL_16:
LABEL_17:
  }

  v11 = v21[5];
  _Block_object_dispose(&v20, 8);

LABEL_19:

  return v11;
}

- (id)contactForIdentifier:(id)identifier
{
  v25[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v6 = MEMORY[0x1E695CD58];
    v25[0] = identifierCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v8 = [v6 predicateForContactsWithIdentifiers:v7];

    v9 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:self->_keysToFetch];
    [v9 setPredicate:v8];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__40;
    v21 = __Block_byref_object_dispose__40;
    v22 = 0;
    contactStore = self->_contactStore;
    v15[4] = &v17;
    v16 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__PKContactResolver_contactForIdentifier___block_invoke;
    v15[3] = &unk_1E79D8538;
    [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v9 error:&v16 usingBlock:v15];
    v11 = v16;
    if (v11)
    {
      v12 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Error fetching contact: %@", buf, 0xCu);
      }
    }

    v13 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)hasCachedResultForAccountUser:(id)user
{
  if (!user)
  {
    return 0;
  }

  altDSIDToContactCache = self->_altDSIDToContactCache;
  altDSID = [user altDSID];
  v5 = [(NSCache *)altDSIDToContactCache objectForKey:altDSID];
  v6 = v5 != 0;

  return v6;
}

- (id)contactForAccountUser:(id)user
{
  v47 = *MEMORY[0x1E69E9840];
  userCopy = user;
  v31 = userCopy;
  if (userCopy)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__40;
    v42 = __Block_byref_object_dispose__40;
    v43 = 0;
    altDSID = [userCopy altDSID];
    [(NSCache *)self->_altDSIDToContactCache objectForKey:altDSID];
    v30 = v29 = altDSID;
    if (v30)
    {
      null = [MEMORY[0x1E695DFB0] null];
      v7 = v30;
      v8 = null;
      if (v30 == null)
      {
        v7 = 0;
      }

      v9 = v39;
      v10 = v7;
      v11 = v9[5];
      v9[5] = v10;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      addressableHandles = [v31 addressableHandles];
      if (addressableHandles)
      {
        [v13 unionSet:addressableHandles];
      }

      v27 = addressableHandles;
      appleID = [v31 appleID];
      if (appleID)
      {
        [v13 addObject:appleID];
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v8 = v13;
      v15 = [v8 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v15)
      {
        v16 = *v35;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(v8);
            }

            v18 = [(PKContactResolver *)self _predicateForHandle:*(*(&v34 + 1) + 8 * i)];
            if (v18)
            {
              v19 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:self->_keysToFetch];
              [v19 setPredicate:v18];
              contactStore = self->_contactStore;
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __43__PKContactResolver_contactForAccountUser___block_invoke;
              v32[3] = &unk_1E79D8538;
              v32[4] = &v38;
              v33 = 0;
              [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v19 error:&v33 usingBlock:v32];
              v21 = v33;
              if (v21)
              {
                v22 = PKLogFacilityTypeGetObject(0xFuLL);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v45 = v21;
                  _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Error fetching contact: %@", buf, 0xCu);
                }
              }

              else if (v39[5])
              {

                goto LABEL_27;
              }
            }
          }

          v15 = [v8 countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:

      altDSIDToContactCache = self->_altDSIDToContactCache;
      v24 = v39[5];
      null2 = v24;
      if (!v24)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      [(NSCache *)altDSIDToContactCache setObject:null2 forKey:v29];
      if (!v24)
      {
      }

      v11 = v27;
    }

    v12 = v39[5];
    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)contactForAccountUser:(id)user withCompletion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if (completionCopy)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PKContactResolver_contactForAccountUser_withCompletion___block_invoke;
    block[3] = &unk_1E79C4D60;
    block[4] = self;
    v10 = userCopy;
    v11 = completionCopy;
    dispatch_async(workQueue, block);
  }
}

void __58__PKContactResolver_contactForAccountUser_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactForAccountUser:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKContactResolver_contactForAccountUser_withCompletion___block_invoke_2;
  v6[3] = &unk_1E79C44A0;
  v4 = *(a1 + 48);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (void)contactForHandles:(id)handles withCompletion:(id)completion
{
  handlesCopy = handles;
  completionCopy = completion;
  if (completionCopy)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PKContactResolver_contactForHandles_withCompletion___block_invoke;
    block[3] = &unk_1E79C4D60;
    v10 = handlesCopy;
    selfCopy = self;
    v12 = completionCopy;
    dispatch_async(workQueue, block);
  }
}

void __54__PKContactResolver_contactForHandles_withCompletion___block_invoke(id *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        if ([a1[5] hasCachedResultForHandle:v9])
        {
          v10 = [*(a1[5] + 6) objectForKey:v9];
          if (v10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v2 setObject:v10 forKey:v9];
            }
          }
        }

        else
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * j);
          v17 = [a1[5] contactForHandle:v16];
          if (v17)
          {
            [v2 setObject:v17 forKey:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v13);
    }
  }

  v18 = *(a1[5] + 1);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__PKContactResolver_contactForHandles_withCompletion___block_invoke_2;
  v21[3] = &unk_1E79C44A0;
  v19 = a1[6];
  v22 = v2;
  v23 = v19;
  v20 = v2;
  dispatch_async(v18, v21);
}

void __54__PKContactResolver_contactForHandles_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)contactForHandle:(id)handle withCompletion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  if (completionCopy)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__PKContactResolver_contactForHandle_withCompletion___block_invoke;
    block[3] = &unk_1E79C4D60;
    block[4] = self;
    v10 = handleCopy;
    v11 = completionCopy;
    dispatch_async(workQueue, block);
  }
}

void __53__PKContactResolver_contactForHandle_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactForHandle:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PKContactResolver_contactForHandle_withCompletion___block_invoke_2;
  v6[3] = &unk_1E79C44A0;
  v4 = *(a1 + 48);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

+ (id)contactForFamilyMember:(id)member nameComponents:(id)components imageData:(id)data
{
  memberCopy = member;
  componentsCopy = components;
  dataCopy = data;
  if (!(memberCopy | componentsCopy))
  {
    v13 = 0;
    goto LABEL_9;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695CF18]);
  if (memberCopy)
  {
    firstName = [memberCopy firstName];
    [v10 setGivenName:firstName];

    lastName = [memberCopy lastName];
LABEL_7:
    v15 = lastName;
    [v10 setFamilyName:lastName];

    goto LABEL_8;
  }

  if (componentsCopy)
  {
    givenName = [componentsCopy givenName];
    [v10 setGivenName:givenName];

    lastName = [componentsCopy familyName];
    goto LABEL_7;
  }

LABEL_8:
  [v10 setImageData:dataCopy];
  v13 = [v10 copy];

LABEL_9:

  return v13;
}

@end