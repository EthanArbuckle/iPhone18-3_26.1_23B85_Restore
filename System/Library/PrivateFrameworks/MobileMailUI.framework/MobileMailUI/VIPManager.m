@interface VIPManager
+ (VIPManager)defaultInstance;
+ (void)setBackingManager:(id)a3;
- (BOOL)hasVIPs;
- (BOOL)isVIPAddress:(id)a3;
- (EAEmailAddressSet)allVIPEmailAddresses;
- (NSSet)allVIPs;
- (VIPManager)initWithBackingManager:(id)a3;
- (id)allVIPEmailAddressesCriterion;
- (id)criterionForEmailAddresses:(id)a3;
- (id)sortedVIPs;
- (id)vipCriteria;
- (id)vipForEmailAddresses:(id)a3 andDisplayNames:(id)a4;
- (id)vipWithIdentifier:(id)a3;
- (void)_vipsDidChange:(id)a3;
- (void)deleteVIPWithIdentifier:(id)a3;
- (void)existingPersonForVIP:(id)a3 usingAddressBook:(void *)a4;
- (void)getAllVIPsWithCompletion:(id)a3;
- (void)removeVIPsWithEmailAddresses:(id)a3;
- (void)removeVIPsWithIdentifiers:(id)a3;
- (void)saveVIP:(id)a3;
- (void)saveVIPs:(id)a3;
@end

@implementation VIPManager

+ (VIPManager)defaultInstance
{
  v4 = [a1 defaultInstanceLock];
  os_unfair_lock_lock(v4);
  v5 = sDefaultInstance;
  os_unfair_lock_unlock(v4);
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"VIPManager.m" lineNumber:55 description:@"+setBackingManager: must be called before attempting to get the default instance"];
  }

  return v5;
}

+ (void)setBackingManager:(id)a3
{
  v7 = a3;
  v4 = [a1 defaultInstanceLock];
  os_unfair_lock_lock(v4);
  v5 = [[VIPManager alloc] initWithBackingManager:v7];
  v6 = sDefaultInstance;
  sDefaultInstance = v5;

  os_unfair_lock_unlock(v4);
}

- (VIPManager)initWithBackingManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = VIPManager;
  v6 = [(VIPManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingManager, a3);
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    abPersonByVIPIdentifierLock = v7->_abPersonByVIPIdentifierLock;
    v7->_abPersonByVIPIdentifierLock = v8;

    v7->_abPersonByVIPIdentifier = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v7 selector:sel__vipsDidChange_ name:*MEMORY[0x277D06D28] object:v7->_backingManager];
  }

  return v7;
}

- (BOOL)hasVIPs
{
  v2 = [(VIPManager *)self backingManager];
  v3 = [v2 hasVIPs];

  return v3;
}

- (NSSet)allVIPs
{
  v2 = [(VIPManager *)self backingManager];
  v3 = [v2 allVIPs];

  return v3;
}

- (EAEmailAddressSet)allVIPEmailAddresses
{
  v2 = [(VIPManager *)self backingManager];
  v3 = [v2 allVIPEmailAddresses];

  return v3;
}

- (id)vipWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(VIPManager *)self backingManager];
  v6 = [v5 vipWithIdentifier:v4];

  return v6;
}

- (BOOL)isVIPAddress:(id)a3
{
  v4 = a3;
  v5 = [(VIPManager *)self backingManager];
  v6 = [v5 isVIPAddress:v4];

  return v6;
}

- (void)saveVIPs:(id)a3
{
  v5 = a3;
  v4 = [(VIPManager *)self backingManager];
  [v4 saveVIPs:v5];
}

- (void)removeVIPsWithIdentifiers:(id)a3
{
  v5 = a3;
  v4 = [(VIPManager *)self backingManager];
  [v4 removeVIPsWithIdentifiers:v5];
}

- (void)removeVIPsWithEmailAddresses:(id)a3
{
  v5 = a3;
  v4 = [(VIPManager *)self backingManager];
  [v4 removeVIPsWithEmailAddresses:v5];
}

- (void)getAllVIPsWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(VIPManager *)self backingManager];
  [v4 getAllVIPsWithCompletion:v5];
}

- (void)_vipsDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D06D30]];
  if ([v6 count])
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__VIPManager__vipsDidChange___block_invoke;
    block[3] = &unk_278181710;
    block[4] = self;
    v14 = v6;
    dispatch_async(v7, block);
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = self;
  v8 = v4;
  v12 = v8;
  v9 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v9 performBlock:&v10];
}

uint64_t __29__VIPManager__vipsDidChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(a1 + 32) + 16);
        v7 = [*(*(&v10 + 1) + 8 * i) identifier];
        CFDictionaryRemoveValue(v6, v7);
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  result = [*(*(a1 + 32) + 8) unlock];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __29__VIPManager__vipsDidChange___block_invoke_2(uint64_t a1)
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userInfo];
  [v4 postNotificationName:*MEMORY[0x277D06D28] object:v2 userInfo:v3];
}

- (void)saveVIP:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_2149C9000, v5, OS_LOG_TYPE_INFO, "#MailServices saveVIP: %@", buf, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v4, 0}];
  [(VIPManager *)self saveVIPs:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteVIPWithIdentifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_2149C9000, v5, OS_LOG_TYPE_INFO, "#MailServices deleteVIPWithIdentifier: %@", buf, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v4, 0}];
  [(VIPManager *)self removeVIPsWithIdentifiers:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)sortedVIPs
{
  v2 = [(VIPManager *)self allVIPs];
  v3 = [v2 allObjects];
  v4 = [v3 mutableCopy];

  [v4 sortUsingComparator:&__block_literal_global_13];

  return v4;
}

uint64_t __24__VIPManager_sortedVIPs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];
  v7 = [v5 localizedCaseInsensitiveCompare:v6];

  return v7;
}

- (id)vipForEmailAddresses:(id)a3 andDisplayNames:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v23 = a4;
  [(VIPManager *)self allVIPs];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v6)
  {
    v28 = 0;
    goto LABEL_25;
  }

  v7 = 0;
  v28 = 0;
  v25 = *v34;
  do
  {
    v27 = v6;
    for (i = 0; i != v27; ++i)
    {
      if (*v34 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v33 + 1) + 8 * i);
      v10 = [v26 mutableCopy];
      v11 = [v9 emailAddresses];
      [v10 intersectSet:v11];

      v12 = [v10 count];
      v13 = v12;
      if (v7 < v12)
      {
        v14 = v28;
        v28 = v9;
LABEL_20:

        v7 = v13;
        goto LABEL_21;
      }

      if (v7 == v12 && v12)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = v23;
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v15)
        {
          v16 = *v30;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v30 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v29 + 1) + 8 * j);
              v19 = [v9 name];
              LODWORD(v18) = [v18 isEqualToString:v19];

              if (v18)
              {
                v20 = v9;

                v13 = v7;
                v28 = v20;
                goto LABEL_20;
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v13 = v7;
        goto LABEL_20;
      }

LABEL_21:
    }

    v6 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  }

  while (v6);
LABEL_25:

  v21 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)existingPersonForVIP:(id)a3 usingAddressBook:(void *)a4
{
  v6 = a3;
  [(NSLock *)self->_abPersonByVIPIdentifierLock lock];
  v7 = [v6 identifier];
  Value = CFDictionaryGetValue(self->_abPersonByVIPIdentifier, v7);
  v9 = Value;
  if (a4 && !Value)
  {
    v10 = [v6 emailAddresses];
    v11 = [v6 name];
    v12 = *MEMORY[0x277CE9888];
    v13 = MFCopyClosestMatchingExistingPersonUsingAddressesAndDisplayName();

    if (v13)
    {
      abPersonByVIPIdentifier = self->_abPersonByVIPIdentifier;
      v15 = [v6 identifier];
      CFDictionarySetValue(abPersonByVIPIdentifier, v15, v13);

      v9 = v13;
    }

    else
    {
      v9 = 0;
    }
  }

  [(NSLock *)self->_abPersonByVIPIdentifierLock unlock];
  return v9;
}

- (id)criterionForEmailAddresses:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v3 = [v20 count];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v3];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v20;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          v10 = [v9 emailAddressValue];
          v11 = [v10 simpleAddress];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = [v9 stringValue];
          }

          v14 = v13;

          v15 = [v14 mf_copyIDNADecodedEmailAddress];
          v16 = [objc_alloc(MEMORY[0x277D28248]) initWithType:35 qualifier:8 expression:v15];
          [v4 addObject:v16];
        }

        v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    v17 = [MEMORY[0x277D28248] orCompoundCriterionWithCriteria:v4];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)vipCriteria
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(VIPManager *)self sortedVIPs];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v7 = *v18;
    *&v6 = 138412290;
    v16 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 name];

        if (v10)
        {
          v11 = [v9 emailAddresses];
          v12 = [(VIPManager *)self criterionForEmailAddresses:v11];

          v13 = [v9 name];
          [v12 setName:v13];

          [v3 addObject:v12];
        }

        else
        {
          v12 = MFLogGeneral();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            v22 = v9;
            _os_log_impl(&dword_2149C9000, v12, OS_LOG_TYPE_INFO, "#MailServices vip Sender name is nil: %@", buf, 0xCu);
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)allVIPEmailAddressesCriterion
{
  v3 = [(VIPManager *)self allVIPEmailAddresses];
  v4 = [(VIPManager *)self criterionForEmailAddresses:v3];

  return v4;
}

@end