@interface VIPManager
+ (VIPManager)defaultInstance;
+ (void)setBackingManager:(id)manager;
- (BOOL)hasVIPs;
- (BOOL)isVIPAddress:(id)address;
- (EAEmailAddressSet)allVIPEmailAddresses;
- (NSSet)allVIPs;
- (VIPManager)initWithBackingManager:(id)manager;
- (id)allVIPEmailAddressesCriterion;
- (id)criterionForEmailAddresses:(id)addresses;
- (id)sortedVIPs;
- (id)vipCriteria;
- (id)vipForEmailAddresses:(id)addresses andDisplayNames:(id)names;
- (id)vipWithIdentifier:(id)identifier;
- (void)_vipsDidChange:(id)change;
- (void)deleteVIPWithIdentifier:(id)identifier;
- (void)existingPersonForVIP:(id)p usingAddressBook:(void *)book;
- (void)getAllVIPsWithCompletion:(id)completion;
- (void)removeVIPsWithEmailAddresses:(id)addresses;
- (void)removeVIPsWithIdentifiers:(id)identifiers;
- (void)saveVIP:(id)p;
- (void)saveVIPs:(id)ps;
@end

@implementation VIPManager

+ (VIPManager)defaultInstance
{
  defaultInstanceLock = [self defaultInstanceLock];
  os_unfair_lock_lock(defaultInstanceLock);
  v5 = sDefaultInstance;
  os_unfair_lock_unlock(defaultInstanceLock);
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VIPManager.m" lineNumber:55 description:@"+setBackingManager: must be called before attempting to get the default instance"];
  }

  return v5;
}

+ (void)setBackingManager:(id)manager
{
  managerCopy = manager;
  defaultInstanceLock = [self defaultInstanceLock];
  os_unfair_lock_lock(defaultInstanceLock);
  v5 = [[VIPManager alloc] initWithBackingManager:managerCopy];
  v6 = sDefaultInstance;
  sDefaultInstance = v5;

  os_unfair_lock_unlock(defaultInstanceLock);
}

- (VIPManager)initWithBackingManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = VIPManager;
  v6 = [(VIPManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingManager, manager);
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    abPersonByVIPIdentifierLock = v7->_abPersonByVIPIdentifierLock;
    v7->_abPersonByVIPIdentifierLock = v8;

    v7->_abPersonByVIPIdentifier = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__vipsDidChange_ name:*MEMORY[0x277D06D28] object:v7->_backingManager];
  }

  return v7;
}

- (BOOL)hasVIPs
{
  backingManager = [(VIPManager *)self backingManager];
  hasVIPs = [backingManager hasVIPs];

  return hasVIPs;
}

- (NSSet)allVIPs
{
  backingManager = [(VIPManager *)self backingManager];
  allVIPs = [backingManager allVIPs];

  return allVIPs;
}

- (EAEmailAddressSet)allVIPEmailAddresses
{
  backingManager = [(VIPManager *)self backingManager];
  allVIPEmailAddresses = [backingManager allVIPEmailAddresses];

  return allVIPEmailAddresses;
}

- (id)vipWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  backingManager = [(VIPManager *)self backingManager];
  v6 = [backingManager vipWithIdentifier:identifierCopy];

  return v6;
}

- (BOOL)isVIPAddress:(id)address
{
  addressCopy = address;
  backingManager = [(VIPManager *)self backingManager];
  v6 = [backingManager isVIPAddress:addressCopy];

  return v6;
}

- (void)saveVIPs:(id)ps
{
  psCopy = ps;
  backingManager = [(VIPManager *)self backingManager];
  [backingManager saveVIPs:psCopy];
}

- (void)removeVIPsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  backingManager = [(VIPManager *)self backingManager];
  [backingManager removeVIPsWithIdentifiers:identifiersCopy];
}

- (void)removeVIPsWithEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  backingManager = [(VIPManager *)self backingManager];
  [backingManager removeVIPsWithEmailAddresses:addressesCopy];
}

- (void)getAllVIPsWithCompletion:(id)completion
{
  completionCopy = completion;
  backingManager = [(VIPManager *)self backingManager];
  [backingManager getAllVIPsWithCompletion:completionCopy];
}

- (void)_vipsDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D06D30]];
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
  selfCopy = self;
  v8 = changeCopy;
  v12 = v8;
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performBlock:&v10];
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

- (void)saveVIP:(id)p
{
  v10 = *MEMORY[0x277D85DE8];
  pCopy = p;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = pCopy;
    _os_log_impl(&dword_2149C9000, v5, OS_LOG_TYPE_INFO, "#MailServices saveVIP: %@", buf, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{pCopy, 0}];
  [(VIPManager *)self saveVIPs:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteVIPWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&dword_2149C9000, v5, OS_LOG_TYPE_INFO, "#MailServices deleteVIPWithIdentifier: %@", buf, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{identifierCopy, 0}];
  [(VIPManager *)self removeVIPsWithIdentifiers:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)sortedVIPs
{
  allVIPs = [(VIPManager *)self allVIPs];
  allObjects = [allVIPs allObjects];
  v4 = [allObjects mutableCopy];

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

- (id)vipForEmailAddresses:(id)addresses andDisplayNames:(id)names
{
  v39 = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  namesCopy = names;
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
      v10 = [addressesCopy mutableCopy];
      emailAddresses = [v9 emailAddresses];
      [v10 intersectSet:emailAddresses];

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
        v14 = namesCopy;
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
              name = [v9 name];
              LODWORD(v18) = [v18 isEqualToString:name];

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

- (void)existingPersonForVIP:(id)p usingAddressBook:(void *)book
{
  pCopy = p;
  [(NSLock *)self->_abPersonByVIPIdentifierLock lock];
  identifier = [pCopy identifier];
  Value = CFDictionaryGetValue(self->_abPersonByVIPIdentifier, identifier);
  v9 = Value;
  if (book && !Value)
  {
    emailAddresses = [pCopy emailAddresses];
    name = [pCopy name];
    v12 = *MEMORY[0x277CE9888];
    v13 = MFCopyClosestMatchingExistingPersonUsingAddressesAndDisplayName();

    if (v13)
    {
      abPersonByVIPIdentifier = self->_abPersonByVIPIdentifier;
      identifier2 = [pCopy identifier];
      CFDictionarySetValue(abPersonByVIPIdentifier, identifier2, v13);

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

- (id)criterionForEmailAddresses:(id)addresses
{
  v26 = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  v3 = [addressesCopy count];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v3];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = addressesCopy;
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
          emailAddressValue = [v9 emailAddressValue];
          simpleAddress = [emailAddressValue simpleAddress];
          v12 = simpleAddress;
          if (simpleAddress)
          {
            stringValue = simpleAddress;
          }

          else
          {
            stringValue = [v9 stringValue];
          }

          v14 = stringValue;

          mf_copyIDNADecodedEmailAddress = [v14 mf_copyIDNADecodedEmailAddress];
          v16 = [objc_alloc(MEMORY[0x277D28248]) initWithType:35 qualifier:8 expression:mf_copyIDNADecodedEmailAddress];
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
  sortedVIPs = [(VIPManager *)self sortedVIPs];
  v5 = [sortedVIPs countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(sortedVIPs);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        name = [v9 name];

        if (name)
        {
          emailAddresses = [v9 emailAddresses];
          v12 = [(VIPManager *)self criterionForEmailAddresses:emailAddresses];

          name2 = [v9 name];
          [v12 setName:name2];

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

      v5 = [sortedVIPs countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)allVIPEmailAddressesCriterion
{
  allVIPEmailAddresses = [(VIPManager *)self allVIPEmailAddresses];
  v4 = [(VIPManager *)self criterionForEmailAddresses:allVIPEmailAddresses];

  return v4;
}

@end