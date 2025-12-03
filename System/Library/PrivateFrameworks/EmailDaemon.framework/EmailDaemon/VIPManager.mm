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

+ (void)setBackingManager:(id)manager
{
  managerCopy = manager;
  defaultInstanceLock = [self defaultInstanceLock];
  os_unfair_lock_lock(defaultInstanceLock);
  v5 = [[VIPManager alloc] initWithBackingManager:managerCopy];
  v6 = qword_100185B60;
  qword_100185B60 = v5;

  os_unfair_lock_unlock(defaultInstanceLock);
}

+ (VIPManager)defaultInstance
{
  defaultInstanceLock = [self defaultInstanceLock];
  os_unfair_lock_lock(defaultInstanceLock);
  v5 = qword_100185B60;
  os_unfair_lock_unlock(defaultInstanceLock);
  if (!v5)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"VIPManager.m" lineNumber:55 description:@"+setBackingManager: must be called before attempting to get the default instance"];
  }

  return v5;
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
    v8 = objc_alloc_init(NSLock);
    abPersonByVIPIdentifierLock = v7->_abPersonByVIPIdentifierLock;
    v7->_abPersonByVIPIdentifierLock = v8;

    v7->_abPersonByVIPIdentifier = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v7 selector:"_vipsDidChange:" name:EMVIPsDidChangeNotification object:v7->_backingManager];
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
  v6 = [userInfo objectForKeyedSubscript:EMVIPsRemovedKey];
  if ([v6 count])
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BB738;
    block[3] = &unk_1001563D8;
    block[4] = self;
    v14 = v6;
    dispatch_async(v7, block);
  }

  selfCopy = self;
  v8 = changeCopy;
  v12 = v8;
  v9 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v9 performBlock:&v10];
}

- (void)saveVIP:(id)p
{
  pCopy = p;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = pCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#MailServices saveVIP: %@", buf, 0xCu);
  }

  v6 = [[NSSet alloc] initWithObjects:{pCopy, 0}];
  [(VIPManager *)self saveVIPs:v6];
}

- (void)deleteVIPWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#MailServices deleteVIPWithIdentifier: %@", buf, 0xCu);
  }

  v6 = [[NSSet alloc] initWithObjects:{identifierCopy, 0}];
  [(VIPManager *)self removeVIPsWithIdentifiers:v6];
}

- (id)sortedVIPs
{
  allVIPs = [(VIPManager *)self allVIPs];
  allObjects = [allVIPs allObjects];
  v4 = [allObjects mutableCopy];

  [v4 sortUsingComparator:&stru_10015AAA8];

  return v4;
}

- (id)vipForEmailAddresses:(id)addresses andDisplayNames:(id)names
{
  addressesCopy = addresses;
  namesCopy = names;
  [(VIPManager *)self allVIPs];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v6)
  {
    v27 = 0;
    goto LABEL_25;
  }

  v7 = 0;
  v27 = 0;
  v24 = *v33;
  do
  {
    v26 = v6;
    for (i = 0; i != v26; i = i + 1)
    {
      if (*v33 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v32 + 1) + 8 * i);
      v10 = [addressesCopy mutableCopy];
      emailAddresses = [v9 emailAddresses];
      [v10 intersectSet:emailAddresses];

      v12 = [v10 count];
      v13 = v12;
      if (v7 < v12)
      {
        v14 = v27;
        v27 = v9;
LABEL_20:

        v7 = v13;
        goto LABEL_21;
      }

      if (v7 == v12 && v12)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = namesCopy;
        v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          v16 = *v29;
          while (2)
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v28 + 1) + 8 * j);
              name = [v9 name];
              LODWORD(v18) = [v18 isEqualToString:name];

              if (v18)
              {
                v20 = v9;

                v13 = v7;
                v27 = v20;
                goto LABEL_20;
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
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

    v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  }

  while (v6);
LABEL_25:

  return v27;
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
    v12 = MFCopyClosestMatchingExistingPersonUsingAddressesAndDisplayName();

    if (v12)
    {
      abPersonByVIPIdentifier = self->_abPersonByVIPIdentifier;
      identifier2 = [pCopy identifier];
      CFDictionarySetValue(abPersonByVIPIdentifier, identifier2, v12);

      v9 = v12;
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
  addressesCopy = addresses;
  v3 = [addressesCopy count];
  if (v3)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:v3];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = addressesCopy;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
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
          v16 = [[MFMessageCriterion alloc] initWithType:35 qualifier:8 expression:mf_copyIDNADecodedEmailAddress];
          [v4 addObject:v16];
        }

        v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    v17 = [MFMessageCriterion orCompoundCriterionWithCriteria:v4];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)vipCriteria
{
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  sortedVIPs = [(VIPManager *)self sortedVIPs];
  v5 = [sortedVIPs countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = *v17;
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(sortedVIPs);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
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
            *buf = v15;
            v21 = v9;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#MailServices vip Sender name is nil: %@", buf, 0xCu);
          }
        }
      }

      v5 = [sortedVIPs countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)allVIPEmailAddressesCriterion
{
  allVIPEmailAddresses = [(VIPManager *)self allVIPEmailAddresses];
  v4 = [(VIPManager *)self criterionForEmailAddresses:allVIPEmailAddresses];

  return v4;
}

@end