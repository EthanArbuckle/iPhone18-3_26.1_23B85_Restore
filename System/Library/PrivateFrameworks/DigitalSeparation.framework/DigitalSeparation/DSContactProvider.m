@interface DSContactProvider
+ (id)defaultProvider;
- (DSContactProvider)init;
- (DSContactProvider)initWithStore:(id)a3;
- (id)keysToFetch;
- (id)sanitizeContacts:(id)a3;
- (id)unifiedContactInDictionary:(id)a3 forIdentity:(id)a4;
- (id)unifiedContactsDictionaryForHandleStrings:(id)a3;
- (id)unifiedContactsDictionaryForIdentities:(id)a3;
- (id)unifiedContactsForContactIdentifiers:(id)a3;
@end

@implementation DSContactProvider

+ (id)defaultProvider
{
  if (defaultProvider_onceToken != -1)
  {
    +[DSContactProvider defaultProvider];
  }

  v3 = defaultProvider__defaultProvider;

  return v3;
}

uint64_t __36__DSContactProvider_defaultProvider__block_invoke()
{
  v0 = os_log_create("com.apple.DigitalSeparation", "DSContactProvider");
  v1 = DSLog_8;
  DSLog_8 = v0;

  defaultProvider__defaultProvider = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DSContactProvider)init
{
  v3 = dispatch_queue_create("DSContactProviderContactStoreWork", 0);
  contactStoreWorkQueue = self->_contactStoreWorkQueue;
  self->_contactStoreWorkQueue = v3;

  v5 = self->_contactStoreWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__DSContactProvider_init__block_invoke;
  block[3] = &unk_278F72AC0;
  v6 = self;
  v10 = v6;
  dispatch_async(v5, block);
  v7 = [(DSContactProvider *)v6 initWithStore:0];

  return v7;
}

uint64_t __25__DSContactProvider_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x2821F96F8]();
}

- (DSContactProvider)initWithStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DSContactProvider;
  v6 = [(DSContactProvider *)&v11 init];
  v7 = v6;
  if (v5 && v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = dispatch_queue_create("DSContactProviderContactStoreWork", 0);
    contactStoreWorkQueue = v7->_contactStoreWorkQueue;
    v7->_contactStoreWorkQueue = v8;
  }

  return v7;
}

- (id)sanitizeContacts:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) identifier];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(DSContactProvider *)self unifiedContactsForContactIdentifiers:v5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)unifiedContactsDictionaryForIdentities:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v56 = [MEMORY[0x277CBEB18] array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v66;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v66 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v65 + 1) + 8 * i);
        v10 = [v9 unifiedContactIdentifier];
        v11 = [v10 length];

        if (v11)
        {
          v12 = DSLog_8;
          if (os_log_type_enabled(DSLog_8, OS_LOG_TYPE_INFO))
          {
            v13 = v12;
            v14 = [v9 unifiedContactIdentifier];
            *buf = 138477827;
            v73 = v14;
            _os_log_impl(&dword_248C40000, v13, OS_LOG_TYPE_INFO, "Adding contact identifier %{private}@ to predicate", buf, 0xCu);
          }

          v15 = [v9 unifiedContactIdentifier];
          [v56 addObject:v15];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v6);
  }

  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = [(DSContactProvider *)self unifiedContactsForContactIdentifiers:v56];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v62;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v70 = *(*(&v61 + 1) + 8 * j);
        v22 = v70;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
        v24 = [v22 identifier];
        [v16 setObject:v23 forKey:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v19);
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v26 = v4;
  v27 = [v26 countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v58;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v58 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v57 + 1) + 8 * k);
        v32 = [v31 unifiedContactIdentifier];
        v33 = [v32 length];

        if (v33)
        {
          v34 = [v31 unifiedContactIdentifier];
          v35 = [v16 objectForKeyedSubscript:v34];

          if (v35)
          {
            continue;
          }

          v36 = DSLog_8;
          if (os_log_type_enabled(DSLog_8, OS_LOG_TYPE_INFO))
          {
            v37 = v36;
            v38 = [v31 unifiedContactIdentifier];
            *buf = 138477827;
            v73 = v38;
            _os_log_impl(&dword_248C40000, v37, OS_LOG_TYPE_INFO, "Contact identifier %{private}@ wasn't recognized by ContactStore", buf, 0xCu);
          }
        }

        v39 = [v31 emailAddress];
        v40 = [v39 length];

        if (v40)
        {
          v41 = DSLog_8;
          if (os_log_type_enabled(DSLog_8, OS_LOG_TYPE_INFO))
          {
            v42 = v41;
            v43 = [v31 emailAddress];
            *buf = 138477827;
            v73 = v43;
            _os_log_impl(&dword_248C40000, v42, OS_LOG_TYPE_INFO, "Adding identity email address %{private}@ to predicate", buf, 0xCu);
          }

          v44 = [v31 emailAddress];
          [v25 addObject:v44];
        }

        v45 = [v31 phoneNumber];
        v46 = [v45 length];

        if (v46)
        {
          v47 = DSLog_8;
          if (os_log_type_enabled(DSLog_8, OS_LOG_TYPE_INFO))
          {
            v48 = v47;
            v49 = [v31 phoneNumber];
            *buf = 138477827;
            v73 = v49;
            _os_log_impl(&dword_248C40000, v48, OS_LOG_TYPE_INFO, "Adding identity phone number %{private}@ to predicate", buf, 0xCu);
          }

          v50 = [v31 phoneNumber];
          [v25 addObject:v50];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v28);
  }

  v51 = [(DSContactProvider *)self unifiedContactsDictionaryForHandleStrings:v25];
  if ([v51 count])
  {
    [v16 addEntriesFromDictionary:v51];
  }

  v52 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)unifiedContactInDictionary:(id)a3 forIdentity:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 unifiedContactIdentifier];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v6 unifiedContactIdentifier];
    v10 = [v5 objectForKeyedSubscript:v9];
    v11 = [v10 firstObject];

    v12 = DSLog_8;
    if (v11)
    {
      if (!os_log_type_enabled(DSLog_8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v13 = v12;
      v14 = [v6 unifiedContactIdentifier];
      v28 = 138412547;
      v29 = v14;
      v30 = 2113;
      v31 = v11;
      v15 = "Found contact based on identity %@ %{private}@";
      goto LABEL_15;
    }

    if (os_log_type_enabled(DSLog_8, OS_LOG_TYPE_ERROR))
    {
      [DSContactProvider unifiedContactInDictionary:v6 forIdentity:v12];
    }
  }

  v16 = [v6 phoneNumber];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [v6 phoneNumber];
    v19 = [v5 objectForKeyedSubscript:v18];
    v11 = [v19 firstObject];

    if (v11)
    {
      v20 = DSLog_8;
      if (!os_log_type_enabled(DSLog_8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v13 = v20;
      v14 = [v6 phoneNumber];
      v28 = 138478083;
      v29 = v11;
      v30 = 2113;
      v31 = v14;
      v15 = "Found matching contact %{private}@ based on phone number %{private}@";
      goto LABEL_15;
    }
  }

  v21 = [v6 emailAddress];
  v22 = [v21 length];

  if (v22)
  {
    v23 = [v6 emailAddress];
    v24 = [v5 objectForKeyedSubscript:v23];
    v11 = [v24 firstObject];

    if (v11)
    {
      v25 = DSLog_8;
      if (os_log_type_enabled(DSLog_8, OS_LOG_TYPE_INFO))
      {
        v13 = v25;
        v14 = [v6 emailAddress];
        v28 = 138478083;
        v29 = v11;
        v30 = 2113;
        v31 = v14;
        v15 = "Found matching contact %{private}@ based on email %{private}@";
LABEL_15:
        _os_log_impl(&dword_248C40000, v13, OS_LOG_TYPE_INFO, v15, &v28, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_17:

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)unifiedContactsForContactIdentifiers:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  contactStoreWorkQueue = self->_contactStoreWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__DSContactProvider_unifiedContactsForContactIdentifiers___block_invoke;
  block[3] = &unk_278F73008;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(contactStoreWorkQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__DSContactProvider_unifiedContactsForContactIdentifiers___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBDA70]);
  v3 = [*(a1 + 32) keysToFetch];
  v4 = [v2 initWithKeysToFetch:v3];

  v5 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:*(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 32) store];
  v12 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = [v7 value];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else if (os_log_type_enabled(DSLog_8, OS_LOG_TYPE_ERROR))
  {
    __58__DSContactProvider_unifiedContactsForContactIdentifiers___block_invoke_cold_1();
  }
}

- (id)unifiedContactsDictionaryForHandleStrings:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  contactStoreWorkQueue = self->_contactStoreWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__DSContactProvider_unifiedContactsDictionaryForHandleStrings___block_invoke;
  block[3] = &unk_278F73008;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(contactStoreWorkQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__DSContactProvider_unifiedContactsDictionaryForHandleStrings___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBDA70]);
  v3 = [*(a1 + 32) keysToFetch];
  v4 = [v2 initWithKeysToFetch:v3];

  v5 = [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:*(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 32) store];
  v12 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = [v7 value];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else if (os_log_type_enabled(DSLog_8, OS_LOG_TYPE_ERROR))
  {
    __58__DSContactProvider_unifiedContactsForContactIdentifiers___block_invoke_cold_1();
  }
}

- (id)keysToFetch
{
  v14[18] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBD000];
  v14[0] = *MEMORY[0x277CBD068];
  v14[1] = v2;
  v3 = *MEMORY[0x277CBCFF8];
  v14[2] = *MEMORY[0x277CBD058];
  v14[3] = v3;
  v4 = *MEMORY[0x277CBD0B0];
  v14[4] = *MEMORY[0x277CBD0E0];
  v14[5] = v4;
  v5 = *MEMORY[0x277CBD0B8];
  v14[6] = *MEMORY[0x277CBD0A8];
  v14[7] = v5;
  v6 = *MEMORY[0x277CBD078];
  v14[8] = *MEMORY[0x277CBD070];
  v14[9] = v6;
  v7 = *MEMORY[0x277CBD028];
  v14[10] = *MEMORY[0x277CBD160];
  v14[11] = v7;
  v8 = *MEMORY[0x277CBD020];
  v14[12] = *MEMORY[0x277CBD158];
  v14[13] = v8;
  v9 = *MEMORY[0x277CBCFC0];
  v14[14] = *MEMORY[0x277CBD090];
  v14[15] = v9;
  v10 = *MEMORY[0x277CBCF88];
  v14[16] = *MEMORY[0x277CBD098];
  v14[17] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:18];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)unifiedContactInDictionary:(uint64_t)a1 forIdentity:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248C40000, a2, OS_LOG_TYPE_ERROR, "Identity %@ has a unified contact identifier, but no matching contact was found-- checking handles for match", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __58__DSContactProvider_unifiedContactsForContactIdentifiers___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_248C40000, v0, v1, "Error while fetching contact for fetchRequest %@ [%@]");
  v2 = *MEMORY[0x277D85DE8];
}

@end